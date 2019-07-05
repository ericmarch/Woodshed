unit dmoMaintenanceU;

interface

uses
  System.SysUtils,
  System.Classes,
  Data.DB,
  Data.Win.ADODB,
  VCL.Dialogs,
  Datasnap.DBClient,
  SysUserClass,
  ContactClass;

type
  TdmoMaintenance = class(TDataModule)
    dstCardSearch: TADODataSet;
    qryCard: TADOQuery;
    dstPostCode: TADODataSet;
    dstUDF1Name: TADODataSet;
    dstUDF2Name: TADODataSet;
    dstCardCategory: TADODataSet;
    qryCardCatLookup: TADOQuery;
    cmd1: TADOCommand;
    dstCardCatLink: TADODataSet;

    cds: TClientDataSet;
    dst1: TADODataSet;
    qryAddressPostal: TADOQuery;
    qryAddressLocation: TADOQuery;
    qryOrganisation: TADOQuery;
    qryCustomFieldName: TADOQuery;
    qryNote: TADOQuery;
    dstNoteAbbrev: TADODataSet;
    dstOmnibus: TADODataSet;
    dstFamily: TADODataSet;
    qryMember: TADOQuery;
    dstMemCat: TADODataSet;
    dstMemCatLink: TADODataSet;
    dstMemType: TADODataSet;
    dstMemStatus: TADODataSet;
    dstMemGender: TADODataSet;
    dstMemOccLink: TADODataSet;
    dstMemOccupation: TADODataSet;
    dstPartnerType: TADODataSet;
    qryCardTemp: TADOQuery;

    Procedure DataModuleCreate(Sender: TObject);
    Procedure DataModuleDestroy(Sender: TObject);
    Procedure dstNoteAbbrevAfterScroll(DataSet: TDataSet);
  private
    { Private declarations }
    Procedure AddCardNote(iCardID: Integer; sNote: String);
    Function  NewCardID:Integer;
  public
    { Public declarations }

    //------------------- Contact Procedures ------------------------------//
    Procedure SelectContact(aContact: TContact;aSysUser: TSysUser);
    Function  CardExists(fSname, fFname: String): Boolean;
    Procedure AddContact(aContact: TContact;aSysUser:TSysUser);
    procedure UpdateOperatorColumns(aContact: TContact;aSysUser: TSysUser);
    Function  CardIDAlpha(aContact: TContact; iRecID: Integer):String;
    Procedure CardReset;
    Procedure SaveContact(iOrgID: Integer; aContact:TContact);
    Procedure FilterGridName(sSname, sFname, sMobile, sOrg: String);
    Procedure SetID_SearchGrid(aContact:TContact);
    Procedure GetID_Address(aContact:TContact);
    Function  GroupName(iGroupID: Integer):String;
    Function  IsContactAMember:Boolean;
    Procedure GetCardCategories(iCardID: Integer);
    Procedure AddCategory(iCatID: Integer);
    Procedure DelCategory;
    Function  GetCardOrgID(s1: String): Integer;
    Function  CheckCardOrg(s1: String):Boolean;
    Procedure AddOrganisation;
    Procedure GetNoteAbbrev(iCardID: Integer);
    Function  GetNote(iCardID: Integer): String;
    Procedure SaveCardNote(aContact:TContact);
    Procedure ClearPostTown;
    Procedure FilterPostCode(sTown, sState: String);
    Procedure GetCustomFieldNames;
    Function  SaveCustomFieldName(sNewName: String):Boolean;
    Procedure RecTemp1;
    Procedure RecTemp2;
    Procedure AddContactFamily(fTypeID: Integer; fSurname, fFirstName, fMobile,
                               fLandLine, fEmail, fMoreInfo: String);

    //------------------- Member Procedures ------------------------------//
    Function  GetMember(aMember: TMember):Boolean;
    Procedure AddMember(aMember: TMember);
    Procedure SaveMember(amember:TMember);
End;

var
  dmoMaintenance: TdmoMaintenance;
  aContact: TContact;
  aMember: TMember;
//  TheSysUser: TSysUser;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses dmoConnectU;

{$R *.dfm}

{ TdmoMaintContact }


Procedure TdmoMaintenance.DataModuleCreate(Sender: TObject);
Var
  s1: String;
Begin
  qryCard.Active:= True;
  qryAddressPostal.Active:= True;
  qryAddressLocation.Active:= True;
  qryOrganisation.Active:= True;
  dstCardSearch.Active:= True;
  dstPostCode.Active:= True;
  dstUDF1Name.Active:= True;
  dstUDF2Name.Active:= True;
  dstOmnibus.Active:= True;
  dst1.Active:= False;
  dst1.CommandText:= 'Select ID, Description from CardOrganisation Where ID > 2';
  dst1.Active:= True;

  qryMember.Active:= True;
  dstMemStatus.Active:= True;
  dstMemGender.Active:= True;
  dstMemType.Active:= True;
//    s1:= TheSysUser.DisplayName;
End;


Procedure TdmoMaintenance.DataModuleDestroy(Sender: TObject);
Begin
  qryCard.Active:= False;
  qryAddressPostal.Active:= False;
  qryAddressLocation.Active:= False;
  qryOrganisation.Active:= False;
  dstCardSearch.Active:= False;
  dstPostCode.Active:= False;
  dstUDF1Name.Active:= False;
  dstOmnibus.Active:= False;
  dst1.Active:= False;

  qryMember.Active:= False;
  dstMemStatus.Active:= False;
  dstMemGender.Active:= False;
  dstMemType.Active:= False;
End;


Function TdmoMaintenance.IsContactAMember: Boolean;
Var
  ii: Integer;
Begin
  Result:= False;
  If dstCardCategory.RecordCount > 0 then
  Begin
    dstCardCategory.First;
    for ii := 0 to dstCardCategory.RecordCount do
    Begin
      If dstCardCategory.FieldByName('Description').AsString = 'Member' then
      Begin
        Result:= True;
      End;
      dstCardCategory.Next;
    End;
  End;
End;


Procedure TdmoMaintenance.GetCardCategories(iCardID: Integer);
Begin
  dstCardCategory.Active:= False;
  dstCardCategory.CommandText:= 'SELECT CardID, CatID, '
     + 'Description '
     + 'FROM CardCatLink '
     + 'LEFT JOIN CardCategory ON CardCatLink.CatID = CardCategory.ID '
     + 'WHERE CardID = ' + IntToStr(iCardID);
  dstCardCategory.Active:= True;
  dstCardCatLink.Active:= False;   //  Select all categories that are NOT allocated to iCardID
  dstCardCatLink.CommandText:= 'SELECT * '
                  + 'FROM CardCategory AS tblCat WHERE NOT EXISTS '
                  + '(Select * FROM CardCatLink AS tblCatLink '
                  + 'WHERE tblCatLink.CatID = tblCat.ID '
                  + 'AND '
                  + 'tblCatLink.CardID = '
                  + IntToStr(iCardID)
                  + ')' + 'Order by Description';
  dstCardCatLink.Active:= True;
End;


Procedure TdmoMaintenance.DelCategory;
Var
  iCardID, iCatID: Integer;
Begin
  // Delete Card Category
  iCardID:= qryCard.FieldByName('ID').AsInteger;
  iCatID:= dstCardCategory.FieldByName('CatID').AsInteger;
  dstOmnibus.Active:= False;
  dstOmnibus.CommandText:= 'Select catID From CardCatLink Where CardID = '
                  + IntToStr(iCardID)
                  + ' AND CatID = ' + IntToStr(iCatID);
  dstOmnibus.Active:= True;
  if dstOmnibus.RecordCount = 1 then
  Begin
    cmd1.CommandText:= 'Delete FROM CardCatLink WHERE CardID ='
                  + IntToStr(iCardID) + ' AND CatID = '
                  + IntToStr(iCatID);
    cmd1.Execute;
  End;
  GetCardCategories(iCardID);
End;


Procedure TdmoMaintenance.AddCardNote(iCardID: Integer; sNote: String);
Var
  iLengthNote: Integer;
  sAbbreviation: String;
Begin
  iLengthNote:= Length(sNote);
  if iLengthNote > 40 then
  Begin
    iLengthNote:= 40;
  End;
  sAbbreviation:= Copy(sNote, 1, iLengthNote);
  cmd1.CommandText:= 'Insert into CardNote (CardID, TheTime, '
           + 'Abbreviation, NoteInfo) VALUES ('
           + IntToStr(iCardID) + ', :pTime ' + ', '
           + QuotedStr(sAbbreviation) + ', '
           + QuotedStr(sNote) + ')';
  cmd1.Parameters.ParamByName('pTime').Value:= Now;
  cmd1.Execute;
End;


Procedure TdmoMaintenance.AddCategory(iCatID: Integer);
Var
  iCardID: Integer;
Begin
  iCardID:= qryCard.FieldByName('ID').AsInteger;
  dstOmnibus.Active:= False;
  dstOmnibus.CommandText:= 'Select catID From CardCatLink Where CardID = '
                  + IntToStr(iCardID)
                  + ' AND CatID = ' + IntToStr(iCatID);
  dstOmnibus.Active:= True;
  if dstOmnibus.RecordCount = 0 then
  Begin
    cmd1.CommandText:= 'Insert Into CardCatLink Values ('
                  + IntToStr(iCardID) + ', '
                  + IntToStr(iCatID) + ')';
    cmd1.Execute;
  End;
  GetCardCategories(iCardID);
End;


Procedure TdmoMaintenance.GetNoteAbbrev(iCardID: Integer);
Begin
  dstNoteAbbrev.Active:= False;
  dstNoteAbbrev.CommandText:= 'Select CardId, NoteID, TheTime, Abbreviation '
          + 'FROM CardNote Where CardID = ' + IntToStr(iCardID)
          + ' ORDER BY TheTime';
  dstNoteAbbrev.Active:= True;
  dstNoteAbbrev.Last;
End;


function TdmoMaintenance.GroupName(iGroupID: Integer): String;
Begin
  dstOmnibus.Active:= False;
  dstOmnibus.CommandText:= 'SELECT ID, Description From tbGroup '
           + 'WHERE ID = ' + IntToStr(iGroupID);
  dstOmnibus.Active:= True;
  if dstOmnibus.RecordCount = 1 Then
    Result:= dstOmnibus.FieldByName('Description').AsString
  Else
    Result:= 'Invalid Group ID ' + IntToStr(iGroupID);
End;



Function  TdmoMaintenance.GetNote(iCardID: Integer): String;
Var
  iNoteID: Integer;
  s1: String;
Begin
  qryNote.Active:= False;
  qryNote.SQL.Clear;
  iNoteID:= dstNoteAbbrev.FieldByName('NoteID').AsInteger;
  if iNoteID > 0 then
  Begin
    s1:= 'SELECT Card.ID, SurName, FirstName, CardNote.CardID, '
            + 'CardNote.NoteID, CardNote.TheTime, '
            + 'CardNote.Abbreviation, CardNote.NoteInfo '
            + 'FROM (Card LEFT JOIN '
            + 'CardNote ON Card.ID = CardNote.CardID) '
            + 'where CardNote.CardID = ' + IntToStr(iCardID)
            + ' AND CardNote.NoteID = ' + IntToStr(iNoteID);
    qryNote.SQL.Add(s1);
    qryNote.Active:= True;
    Result:= qryNote.FieldByName('NoteInfo').Value;
  End
  Else
  Begin
    Result:= '';
  End;
End;


Procedure TdmoMaintenance.dstNoteAbbrevAfterScroll(DataSet: TDataSet);
Var
  iCardID: Integer;
Begin
  iCardID:= qryCard.FieldByName('ID').AsInteger;
  GetNote(iCardID);
End;


Procedure TdmoMaintenance.GetCustomFieldNames;
Begin
  qryCustomFieldName.Active:= False;
  qryCustomFieldName.Active:= True;
End;


procedure TdmoMaintenance.SetID_SearchGrid(aContact: TContact);
Var
  s1: String;
begin
  dstCardSearch.Active:= False;
  s1:= 'SELECT Card.ID, Card.IDAlpha, Card.SurName, Card.FirstName, Card.Mobile, '
        + 'au_Towns.pcName, au_Towns.ID, au_Towns.pcState_Code, au_Towns.pcCode '
        + 'FROM Card LEFT JOIN au_Towns ON Card.PostauTownsID = au_Towns.ID '
        + 'ORDER BY Card.SurName, Card.FirstName, Card.IDAlpha'
      + 'WHERE ID = ' + IntToStr(aContact.iCardID);
  dstCardSearch.CommandText:= s1;
  dstCardSearch.Active:= True;
End;


Procedure TdmoMaintenance.GetID_Address(aContact:TContact);
Var
  s1: String;
Begin
  s1:= dstCardSearch.CommandText;             // Debug use only
  s1:= dstCardSearch.FieldByName('PostalTownName').AsString;
  aContact.iCardID:= dstCardSearch.FieldByName('ID').AsInteger;
  aContact.PostalPcode:= dstCardSearch.FieldByName('PostauTownsID').AsInteger;
  aContact.PostalTown:= dstCardSearch.FieldByName('PostalTownName').AsString;
  aContact.PostalState:= dstCardSearch.FieldByName('PostalState').AsString;
End;


Procedure TdmoMaintenance.FilterGridName(sSname, sFname, sMobile, sOrg: String);
Var
  iSelectOption, iSname, iFname, iMobile, iOrganisation: Integer;
  SelectStr: String;
Begin
  iSname:= 0;                            // FIX THIS
  iFname:= 0;
  iMobile:= 0;
  iOrganisation:= 0;
  if sSname > '' then                   // Surname has content
  Begin
    sSname:= '%' + sSname + '%';
    iSname:= 1000;
  End;
  if sFname > '' then
  Begin
    sFname:= '%' + sFname + '%';
    iFname:= 100;
  End;
  if sMobile > '' then
  Begin
    sMobile:= '%' + sMobile + '%';
    iMobile:= 10;
  End;
  if sOrg > '' then
  Begin
    sOrg:= '%' + sOrg + '%';
    iOrganisation:= 1;
  End;
  iSelectOption:= 90000 + iSname + iFname + iMobile+ iOrganisation;
  if iSelectOption > 90000 then
  Begin
    SelectStr:= 'SELECT * FROM qCardCatGroup WHERE ';
    case iSelectOption of
       90001 : SelectStr:= SelectStr + 'CardOrganisation.Description LIKE ' + QuotedStr(sOrg);
       90010 : SelectStr:= SelectStr + 'Mobile LIKE ' + quotedStr(sMobile);
       90011 : SelectStr:= SelectStr + 'Mobile LIKE ' + quotedStr(sMobile)
             + ' AND CardOrganisation.Description LIKE ' + QuotedStr(sOrg);
       90100 : SelectStr:= SelectStr + 'FirstName LIKE ' + QuotedStr(sFName);
       90101 : SelectStr:= SelectStr + 'FirstName LIKE ' + QuotedStr(sFName)
             + ' AND CardOrganisation.Description LIKE ' + QuotedStr(sOrg);
       90110 : SelectStr:= SelectStr + 'FirstName LIKE ' + QuotedStr(sFName)
             + ' AND Mobile LIKE ' + quotedStr(sMobile);
       90111 : SelectStr:= SelectStr + 'FirstName LIKE ' + QuotedStr(sFName)
             + ' AND Mobile LIKE ' + quotedStr(sMobile)
             + ' AND CardOrganisation.Description LIKE ' + QuotedStr(sOrg);

       91000 : SelectStr:= SelectStr + 'Surname LIKE ' + QuotedStr(sSname);
       91001 : SelectStr:= SelectStr + 'Surname LIKE ' + QuotedStr(sSname)
             + ' AND CardOrganisation.Description LIKE ' + QuotedStr(sOrg);
       91010 : SelectStr:= SelectStr + 'Surname LIKE ' + QuotedStr(sSname)
             + ' AND FirstName LIKE ' + QuotedStr(sFName);
       91011 : SelectStr:= SelectStr + 'Surname LIKE ' + QuotedStr(sSname)
             + ' AND FirstName LIKE ' + QuotedStr(sFName)
             + ' AND CardOrganisation.Description LIKE ' + QuotedStr(sOrg);
       91100 : SelectStr:= SelectStr + 'Surname LIKE ' + QuotedStr(sSname)
             + ' AND FirstName LIKE ' + QuotedStr(sFName);
       91101 : SelectStr:= SelectStr + 'Surname LIKE ' + QuotedStr(sSname)
             + ' AND FirstName LIKE ' + QuotedStr(sFName)
             + ' AND CardOrganisation.Description LIKE ' + QuotedStr(sOrg);
       91110 : SelectStr:= SelectStr + 'Surname LIKE ' + QuotedStr(sSname)
             + ' AND FirstName LIKE ' + QuotedStr(sFName)
             + ' AND Mobile LIKE ' + quotedStr(sMobile);
       91111 : SelectStr:= SelectStr + 'Surname LIKE ' + QuotedStr(sSname)
             + ' AND FirstName LIKE ' + QuotedStr(sFName)
             + ' AND Mobile LIKE ' + quotedStr(sMobile)
             + ' AND CardOrganisation.Description LIKE ' + QuotedStr(sOrg);
    End;
    SelectStr:= SelectStr + ' Order by Surname, FirstName, ID';
    End
    Else
    Begin
    SelectStr:= 'SELECT * FROM qCardCatGroup '
            + 'ORDER BY SurName, FirstName, ID';
  End;
  dstCardSearch.Active:= False;
  dstCardSearch.CommandText:= SelectStr;
  dstCardSearch.Active:= True;
End;


function TdmoMaintenance.SaveCustomFieldName(sNewName: String): Boolean;
Begin
  dstOmnibus.Active:= False;
  dstOmnibus.CommandText:= 'Select Description FROM CardCustomFieldName '
            + 'WHERE Description = ' + QuotedStr(sNewName);
  dstOmnibus.Active:= True;
  if dstOmnibus.RecordCount > 0 then
  Begin
    Showmessage('Duplicate Field name - Not allowed');
    Result:= False;
  End
  Else
  Begin
    cmd1.CommandText:= 'Insert into CardCustomFieldName (Description) Values ('
            + QuotedStr(sNewName) + ')';
    Try
      cmd1.Execute;
    Except
        on E : Exception do
      Begin
        ShowMessage('Exception class name = '+E.ClassName);
        ShowMessage('Exception message = '+E.Message);
      End;
    End;
    Result:= True;
  End;
End;

Procedure TdmoMaintenance.AddOrganisation;
Begin
  //
End;

function TdmoMaintenance.CheckCardOrg(s1: String): Boolean;
Begin
  s1:= s1 + '%';
  dst1.Active:= False;
  dst1.CommandText:= 'Select ID, Description from CardOrganisation '
          + 'Where Description LIKE ' + QuotedStr(s1);
  dst1.Active:= True;
  Result:= False;
  if dst1.RecordCount > 0 then
  Begin
    Result:= True;
  End;
End;


function TdmoMaintenance.GetCardOrgID(s1: String): Integer;
begin
  Result:= 0;
  If CheckCardOrg(s1) Then
  Begin
    Result:= dst1.FieldByName('ID').AsInteger;
  End;
End;


Procedure TdmoMaintenance.ClearPostTown;
Begin
  aContact.PostalPcode:= qryCard.FieldByName('PostauTownsID').AsInteger;
  qryCard.FieldByName('PostauTownsID').AsInteger:= 0;
End;


Procedure TdmoMaintenance.FilterPostCode(sTown, sState: String);
Var
  s1: String;
Begin
  if (sTown > '') AND (sState > '') then
  Begin
    sTown:= sTown + '%';
    s1:= 'Select ID, pcName, pcState_Code, pcCode From au_Towns '
         + 'Where pcName Like '
         + quotedStr(sTown) + ' AND '
         + 'pcState_Code = '
         + quotedStr(sState);
  End
  Else
  Begin
    if sTown > '' then
    Begin
      sTown:= sTown + '%';
      s1:= 'Select ID, pcName, pcState_Code, pcCode From au_Towns '
         + 'Where pcName Like '
         + quotedStr(sTown);
    End
    Else
    Begin
      s1:= 'Select ID, pcName, pcState_Code, pcCode From au_Towns '
         + 'Where pcState_Code = '
         + quotedStr(sState);;
    End;
  End;
  dstPostCode.Active := False;
  dstPostCode.CommandText:= s1;
  dstPostCode.Active := True;
End;


Procedure TdmoMaintenance.SaveCardNote(aContact:TContact);
Var
  iCardID: Integer;
  sNoteInfo: WideString;
Begin
//  if qryNote.Active then
//  Begin
    iCardID:= qryCard.FieldByName('ID').AsInteger;
    if aContact.NoteAdded then
    Begin
      AddCardNote(iCardID, aContact.LastNote);
      aContact.NoteAdded:= False;
    End
    Else
    Begin
      if qryNote.State in [dsEdit, dsInsert] then
      Begin
        qryNote.Post;
      End
      Else
      Begin
        if qryNote.Active = True then
        Begin
          sNoteInfo:= qryNote.FieldByName('NoteInfo').Value;
          if aContact.LastNote <> sNoteInfo then
          Begin
            qryNote.Edit;
            qryNote.FieldByName('NoteInfo').Value:= aContact.LastNote;
            qryNote.Post;
          End;
        End;
      End;
    End;
//  End;
End;


Function TdmoMaintenance.CardExists(fSname, fFname: String): Boolean;
Var
  s1: String;
Begin
  s1:= 'Select ID, IDAlpha, Surname, FirstName FROM Card WHERE '
             + 'Surname = ' + QuotedStr(fSname)
             + ' AND '
             + 'FirstName = ' + QuotedStr(fFname)
             + ' Order By IDAlpha';
  dst1.Active:= False;
  dst1.CommandText:= s1;
  dst1.Active:= True;
  If dst1.RecordCount > 0 Then
  Begin
    Result := True;
  End
  Else
  Begin
    Result:= False;
  End;
End;


function TdmoMaintenance.CardIDAlpha(aContact: TContact; iRecID: Integer): String;
Var
 iLN: Integer;
 s1: String;
begin
  s1:= '0000' + IntToStr(iRecID);
  iLN:= Length(s1) - 4;
  s1:= copy(s1, iLN, 5);
  Result:= aContact.sIDAlpha + s1;
End;


function TdmoMaintenance.NewCardID: Integer;
begin
  dst1.Active:= False;
  dst1.CommandText:= 'Select TOP 1 * FROM Card ORDER BY ID DESC';
  dst1.Active:= True;
  Result:= dst1.FieldByName('ID').AsInteger;
End;


procedure TdmoMaintenance.AddContact(aContact: TContact;aSysUser: TSysUser);
var
  iRecID, iLN, iGroupID: Integer;
  s1: String;
begin
  iRecID:= NewCardID + 1;
  aContact.sIDAlpha:= CardIDAlpha(aContact, iRecID);
  s1:= 'Insert into Card (IDAlpha, Surname, FirstName, PreferredName) '
            + 'Values ('
            + QuotedStr(aContact.sIDAlpha) + ', '
            + QuotedStr(aContact.sSurname) + ', '
            + QuotedStr(aContact.sFirstName) + ', '
            + QuotedStr(aContact.sFirstName) + ')';
  cmd1.CommandText:= s1;
  cmd1.Execute;
  CardReset;
  aContact.iCardID:= iRecID;

  qryCard.Active:= False;
  qryCard.SQL.Clear;
  s1:= 'Select * FROM Card WHERE ID = ' + IntToStr(iRecID);
  qryCard.SQL.Add(s1);
  qryCard.Active:= True;

  UpdateOperatorColumns(aContact, aSysUser);
End;


procedure TdmoMaintenance.UpdateOperatorColumns(aContact: TContact;aSysUser: TSysUser);
begin
  qryCard.Edit;
  if aContact.bNewContact = True then
  Begin
    qryCard.FieldByName('AddedDate').AsDateTime:= Now;
    qryCard.FieldByName('AddedUID').AsInteger:= aSysUser.ID;
  End;
  qryCard.FieldByName('ModifiedDate').AsDateTime:= Now;
  qryCard.FieldByName('ModifiedUID').AsInteger:= aSysUser.ID;
  qryCard.Post;
  qryCard.Edit;
End;


Procedure TdmoMaintenance.AddContactFamily(fTypeID: Integer; fSurname, fFirstName,
  fMobile, fLandLine, fEmail, fMoreInfo: String);
Var
  iCardID, iRelationID: Integer;
  sTemp: String;
Begin
  cmd1.CommandText:= 'Insert INTO CardPartner (' +
                     'RelationshipTypeID, Surname, FirstName, Mobile, LandLine, ' +
                     'Email, MoreInfo) VALUES (' +
                     IntToStr(fTypeID) + ', ' + QuotedStr(fSurname) +', ' +
                     QuotedStr(fFirstName) + ', ' + QuotedStr(fMobile) + ', ' +
                     QuotedStr(fLandLine) +', ' + QuotedStr(fEmail) + ', ' +
                     QuotedStr(fMoreInfo) +')';
  dstFamily.Active:= False;
  cmd1.Execute;

  sTemp:= dstFamily.CommandText;
  dstFamily.CommandText:= 'select TOP 1 ID from CardPartner Order By ID desc';
  dstFamily.Active:= True;
  iRelationID:= dstFamily.FieldByName('ID').AsInteger;
  dstFamily.Active:= False;
  dstFamily.CommandText:= sTemp;
  dstFamily.Active:= True;

  iCardID := qryCard.FieldByName('ID').AsInteger;
  cmd1.CommandText:= 'Insert INTO CardPartnerLink ' +
                     '(CardID, CardPartnerID) VALUES (' +
                     IntToStr(iCardID) + ', ' + IntToStr(iRelationID) +')';
  cmd1.Execute;
End;

Procedure TdmoMaintenance.CardReset;
Begin
  qryCard.Active:= False;
  qryCard.Active:= True;
End;


Procedure TdmoMaintenance.SaveContact(iOrgID: Integer; aContact:TContact);
Var
  iCardID, iOrgIDOld: Integer;
Begin
  iCardID:= qryCard.FieldByName('ID').AsInteger;
  iOrgIDOld:= qryCard.FieldByName('OrgID').AsInteger;
  if NOT (qryCard.State in [dsEdit, dsInsert]) then
  Begin
    qryCard.Edit;
  End;
  if iOrgID = 0 then
  Begin
    qryCard.FieldByName('OrgID').Clear;
  End
  Else
  Begin
    if iOrgID <> iOrgIDOld then
    Begin
      qryCard.FieldByName('OrgID').AsInteger:= iOrgID;
    End;
  End;
  qryCard.FieldByName('PostauTownsID').AsInteger:= dstPostCode.FieldByName('ID').AsInteger;
  qryCard.Post;
End;


Procedure TdmoMaintenance.SelectContact(aContact: TContact;aSysUser: TSysUser);
Var
  s1: String;
Begin
  s1:= aSysUser.UID;

   s1:= 'Select * from Card where ID = ' + IntToStr(aContact.iCardID);
  qryCard.Active:= False;
  qryCard.SQL.Clear;
  qryCard.SQL.Add(s1);
  qryCard.Active:= True;
  aContact.bNewContact:= False;
  aContact.iCardID:= aContact.iCardID;
  aContact.sIDAlpha:= qryCard.FieldByName('IDAlpha').AsString;
  aContact.sSurname:= qryCard.FieldByName('Surname').AsString;
  aContact.sFirstName:= qryCard.FieldByName('FirstName').AsString;
  aContact.Group1:= qryCard.FieldByName('Group1').AsBoolean;
  aContact.Group2:= qryCard.FieldByName('Group2').AsBoolean;
  aContact.Group3:= qryCard.FieldByName('Group3').AsBoolean;
  aContact.Group4:= qryCard.FieldByName('Group4').AsBoolean;
  aContact.Group5:= qryCard.FieldByName('Group5').AsBoolean;
  aContact.Group6:= qryCard.FieldByName('Group6').AsBoolean;
  GetCardCategories(aContact.iCardID);
  aContact.bIsMember:= IsContactAMember;

  qryCard.Edit;

  dstPostCode.Active:= False;
  s1:= 'select pcName, pcCode, pcState_Code, ID FROM au_Towns '
            + 'WHERE pcState_Code = ' + QuotedStr(aContact.PostalState);
  dstPostCode.CommandText:= s1;
  dstPostCode.Active:= True;

  qryAddressPostal.Active:= False;
  s1:= 'SELECT Card.ID, Post1, Post2, PostauTownsID, pcName, pcState_Code, pcCode '
            + 'FROM Card INNER JOIN au_Towns ON Card.PostauTownsID = au_Towns.ID '
            + 'where Card.ID = ' + IntToStr(aContact.iCardID)
            + ' AND pcState_Code = ' + QuotedStr(aContact.PostalState);
  qryAddressPostal.SQL.Clear;
  qryAddressPostal.SQL.Add(s1);
  qryAddressPostal.Active:= True;

  qryAddressLocation.Active:= False;
  s1:= 'SELECT Card.ID, Locn1, Locn2, LocnauTownsID, pcName, pcState_Code, pcCode '
            + 'FROM Card INNER JOIN au_Towns ON Card.LocnauTownsID = au_Towns.ID '
            + 'where Card.ID = ' + IntToStr(aContact.iCardID);
  qryAddressLocation.SQL.Clear;
  qryAddressLocation.SQL.Add(s1);
  qryAddressLocation.Active:= True;

  dstFamily.Active:= False;
  dstFamily.CommandText:= 'Select * From qCardPartner WHERE CardID = ' + IntToStr(aContact.iCardID);
  dstFamily.Active:= True;
End;


//--------------------------- Member Information -----------------------------------//

Function  TdmoMaintenance.GetMember(aMember: TMember):Boolean;
Var
  s1: String;
Begin
  Result:= False;
  qryMember.Active:= False;
  qryMember.SQL.Clear;
  s1:= 'Select * FROM Member where CardID = ' + IntToStr(aMember.iCardID);
  qryMember.SQL.Add(s1);
  qryMember.Active:= True;
  if qryMember.RecordCount = 1 then
  Begin
    Result:= True;
    aMember.bIsInactive:= qryMember.FieldByName('IsInactive').AsBoolean;

    aMember.iMemberType:= qryMember.FieldByName('MemberType').AsInteger;
    dstMemType.Active:= False;
    dstMemType.CommandText:= 'Select * From MemType';
    dstMemType.Active:= True;

    aMember.iStatus:= qryMember.FieldByName('Status').AsInteger;
    aMember.iGender:= qryMember.FieldByName('Gender').AsInteger;
    aMember.dAccepted:= qryMember.FieldByName('Accepted').AsDateTime;
    aMember.dDOB:= qryMember.FieldByName('DOB').AsDateTime;
    aMember.bBadgePrinted:= qryMember.FieldByName('BadgePrinted').AsBoolean;
    aMember.iOccupation:=  qryMember.FieldByName('Occupation').AsInteger;
    aMember.sOccupationDetail:=  qryMember.FieldByName('OccupationDetail').AsString;
    aMember.bFinancial:= qryMember.FieldByName('Financial').AsBoolean;
    aMember.dReceiptDate:= qryMember.FieldByName('ReceiptDate').AsDateTime;
    aMember.sReceiptNum:= qryMember.FieldByName('ReceiptNum').AsString;
    amember.dFinancialTo:= qryMember.FieldByName('FinancialTo').AsDateTime;
    aMember.bChildClearance:= qryMember.FieldByName('ChildrenClearance').AsBoolean;
    aMember.bPoliceClearance:= qryMember.FieldByName('PoliceClearance').AsBoolean;
  End;
End;


Procedure TdmoMaintenance.SaveMember(amember: TMember);   // Fix this & above later
Begin
  if NOT (qryMember.State in dsEditModes) then
  Begin
    qryMember.Edit;
  End;
  qryMember.FieldByName('IsInactive').AsBoolean:= aMember.bIsInactive;
//  qryMember.FieldByName('MemberType').AsInteger:= aMember.iMemberType;
//  qryMember.FieldByName('Status').AsInteger:= aMember.iStatus;
//  qryMember.FieldByName('Gender').AsInteger:= aMember.iGender;
  qryMember.FieldByName('Accepted').AsDateTime:= aMember.dAccepted;
  qryMember.FieldByName('BadgePrinted').AsBoolean:= aMember.bBadgePrinted;
//  qryMember.FieldByName('Occupation').AsInteger:= aMember.iOccupation;
//  qryMember.FieldByName('OccupationDetail').AsString:= aMember.sOccupationDetail;
  qryMember.FieldByName('Financial').AsBoolean:= aMember.bFinancial;
  qryMember.FieldByName('ReceiptDate').AsDateTime:= aMember.dReceiptDate;

  qryMember.FieldByName('FinancialTo').AsDateTime:= aMember.dFinancialTo;
  qryMember.FieldByName('ChildrenClearance').AsBoolean:= aMember.bChildClearance;
  qryMember.FieldByName('PoliceClearance').AsBoolean:= aMember.bPoliceClearance;
//  qryMember.Post;
End;



procedure TdmoMaintenance.AddMember(aMember: TMember);
Var
  s1: String;
begin
  // -------------------- If exists Update Member else add a member --------------  //
  s1:= 'Select CardID FROM Member WHERE CardId = ' + IntToStr(aMember.iCardID);
  dst1.Active:= False;
  dst1.CommandText:= s1;
  dst1.Active:= True;
  if dst1.RecordCount = 1 then
  Begin
    dmoMaintenance.GetMember(aMember);
  End
  Else
  Begin
    qryMember.AppEnd;
    qryMember.FieldByName('CardID').AsInteger:= aMember.iCardID;
  End;
  //  qryMember.FieldByName('IsInactive').AsBoolean:= aMember.bIsInactive;
//  qryMember.FieldByName('MemberType').AsInteger:= aMember.iMemberType;
//  qryMember.FieldByName('Status').AsInteger:= aMember.iStatus;
//  qryMember.FieldByName('Gender').AsInteger:= aMember.iGender;
//  qryMember.FieldByName('Accepted').AsDateTime:= aMember.dAccepted;
//  qryMember.FieldByName('Occupation').AsInteger:= aMember.iOccupation;
//  qryMember.FieldByName('OccupationDetail').AsString:= aMember.sOccupationDetail;
//  qryMember.FieldByName('Financial').AsBoolean:= aMember.bFinancial;
//  qryMember.FieldByName('ReceiptDate').AsDateTime:= aMember.dReceiptDate;
//
//  qryMember.FieldByName('FinancialTo').AsDateTime:= amember.dFinancialTo;
//  qryMember.FieldByName('ChildrenClearance').AsBoolean:= aMember.bChildClearance;
//  qryMember.FieldByName('PoliceClearance').AsBoolean:= aMember.bPoliceClearance;
//  qryMember.Post;
End;




Procedure TdmoMaintenance.RecTemp1;
Var
  nn: Integer;
  s1, sIDAlpha, sSurname, sFirstName, sIDasSTR: String;
Begin
  s1:= 'Select ID, IDAlpha, Surname, FirstName From Card Order By ID';
  qryCard.Active:= False;
  qryCard.SQL.Clear;
  qryCard.SQL.Add(s1);
  qryCard.Active:= True;
  while NOT qryCard.Eof do
  Begin
    sSurname:= qryCard.FieldByName('Surname').AsString;
    nn:= Length(sSurname);
    if nn > 3 then
      sSurname:= Copy(sSurname, 1, 3);
    sFirstName:= qryCard.FieldByName('FirstName').AsString;
    if Length(sFirstName) > 3 then
      sFirstName:= Copy(sFirstName, 1, 3);
    sIDasSTR:= IntToStr(qryCard.FieldByName('ID').AsInteger);
    while Length(sIDasStr) < 4 do
    Begin
      sIDasStr:= '0' + sIDasStr;
    End;
    sIDAlpha:= sSurname + sFirstName + sIDasSTR;
    qryCard.FieldByName('IDAlpha').AsString:= sIDAlpha;
    qryCard.Post;
    qryCard.Next;
  End;
End;


Procedure TdmoMaintenance.RecTemp2;
Var
  b1, b2, b3: Boolean;
  nn: Integer;
  s1 : String;
Begin
  dstOmnibus.Active:= False;
  dstOmnibus.CommandText:= 'Select ID, Group1, Group2, Group3, Group4, Group5, Group6 From Card Order By ID';
  dstOmnibus.Active:= True;
  while NOT dstOmnibus.Eof do
  Begin
    nn:= dstOmnibus.FieldByName('ID').AsInteger;
    s1:= 'Select * From Card WHERE ID = ' + IntToStr(nn);
    qryCardTemp.Active:= False;
    qryCardTemp.SQL.Clear;
    qryCardTemp.SQL.Add(s1);
    qryCardTemp.Active:= True;
    qryCardTemp.Edit;

    qryCardTemp.FieldByName('Group1').AsBoolean:= False;
    qryCardTemp.FieldByName('Group2').AsBoolean:= False;
    qryCardTemp.FieldByName('Group3').AsBoolean:= False;
    qryCardTemp.FieldByName('Group4').AsBoolean:= False;
    qryCardTemp.FieldByName('Group5').AsBoolean:= False;
    qryCardTemp.FieldByName('Group6').AsBoolean:= False;

    s1:= 'Select CardID, GroupID From CardGroupLink Where ((CardID = ' + IntToStr(nn) + ') AND (GroupID = 1))';
    dst1.Active:= False;
    dst1.CommandText:= s1;
    dst1.Active:= True;
    if dst1.RecordCount = 1 then
    Begin
      qryCardTemp.FieldByName('Group3').AsBoolean:= True;
    End;
    s1:= 'Select CardID, GroupID From CardGroupLink Where ((CardID = ' + IntToStr(nn) + ') AND (GroupID = 2))';
    dst1.Active:= False;
    dst1.CommandText:= s1;
    dst1.Active:= True;
    if dst1.RecordCount = 1 then
    Begin
      qryCardTemp.FieldByName('Group4').AsBoolean:= True;
    End;
    s1:= 'Select CardID, GroupID From CardGroupLink Where ((CardID = ' + IntToStr(nn) + ') AND (GroupID = 3))';
    dst1.Active:= False;
    dst1.CommandText:= s1;
    dst1.Active:= True;
    if dst1.RecordCount = 1 then
    Begin
      qryCardTemp.FieldByName('Group5').AsBoolean:= True;
    End;
    qryCardTemp.Post;
    dstOmnibus.Next;
  End;
End;


End.
