unit fMaintenanceU;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.ComCtrls,
  Vcl.DBCtrls,
  Vcl.ExtCtrls,
  Vcl.Mask,
  Vcl.StdCtrls,
  Vcl.Grids,
  Vcl.DBGrids,
  Data.DB,
  STRUtils,
  SMDBGrid,
  SysUserClass,
  ContactClass,
  fAddCardU, Vcl.Imaging.jpeg, Vcl.ExtDlgs;




type
  TfMaintenance = class(TForm)
    PageControl1: TPageControl;
    btnAdd: TSpeedButton;
    btnCancel: TSpeedButton;
    btnExit: TSpeedButton;
    btnSave: TSpeedButton;
    edtFirstNameSearch: TEdit;
    edtMobile: TEdit;
    edtSurname: TEdit;
    txtSurnameSearch: TStaticText;
    txtFirstNameSearch: TStaticText;
    txtMobileSearch: TStaticText;
    tshMember: TTabSheet;
    tshSearch: TTabSheet;
    smdbContactSearchGrid: TSMDBGrid;
    dscCardSearch: TDataSource;
    dscCard: TDataSource;
    dscAddressPostal: TDataSource;
    dscAddressLocation: TDataSource;
    dscUDF2Names: TDataSource;
    dscUDF1Names: TDataSource;
    dscCardCatLink: TDataSource;
    dscCardCategory: TDataSource;
    dscOrganisation: TDataSource;
    dscPostCode: TDataSource;
    dscNotes: TDataSource;
    dscNoteAbbrev: TDataSource;
    tshNotes: TTabSheet;
    smdbgNoteAbbrev: TSMDBGrid;
    txtNoteDetail: TStaticText;
    memNote: TMemo;
    dscFamily: TDataSource;
    DBLookupListBoxMemCat: TDBLookupListBox;
    txtMemCategory: TStaticText;
    DBLookupComboBoxMemcat: TDBLookupComboBox;
    txtAccepted: TStaticText;
    txtDOB: TStaticText;
    txtPoliceClearance: TStaticText;
    dbeReceiptNumber: TDBEdit;
    StaticText2: TStaticText;
    StaticText3: TStaticText;
    txtReceiptNumber: TStaticText;
    dscMemCat: TDataSource;
    dscMemCatLink: TDataSource;
    dscMember: TDataSource;
    txtMemType: TStaticText;
    DBLUComboBoxMemType: TDBLookupComboBox;
    DBLUComboBoxMemStatus: TDBLookupComboBox;
    txtMemberStatus: TStaticText;
    dscMemType: TDataSource;
    dscMemStatus: TDataSource;
    txtGender: TStaticText;
    DBLUComboBoxMemGender: TDBLookupComboBox;
    dscMemGender: TDataSource;
    txtIDDesc: TStaticText;
    edtID: TEdit;
    edtOrgSearch: TEdit;
    txtOrgSearch: TStaticText;
    tshContact: TTabSheet;
    lblSurname: TLabel;
    lblFirstname: TLabel;
    lblPreferredName: TLabel;
    txtGroups: TStaticText;
    txtAddressPostal: TStaticText;
    cbxPostAust: TCheckBox;
    txtAddressLocation: TStaticText;
    cbxLocnAust: TCheckBox;
    dbeLandLine: TDBEdit;
    dbeLocationLine1: TDBEdit;
    dbeLocationLine2: TDBEdit;
    dbeLocationPostCode: TDBEdit;
    dbeLocationState: TDBEdit;
    dbeMobile: TDBEdit;
    dbePostalLine1: TDBEdit;
    dbePostalLine2: TDBEdit;
    dbePostalPostcade: TDBEdit;
    dbePostalState: TDBEdit;
    dblucbTownLocation: TDBLookupComboBox;
    dblucbTownPostal: TDBLookupComboBox;
    txtMobile: TStaticText;
    txtLandLine: TStaticText;
    txtEmail: TStaticText;
    txtOrganisation: TStaticText;
    dbluComboBoxOrg: TDBLookupComboBox;
    dbeEmail: TDBEdit;
    txtUDF_Header: TStaticText;
    txtUDF_Add: TStaticText;
    dblucbUDF1: TDBLookupComboBox;
    dblucbUDF2: TDBLookupComboBox;
    dbeUDF1Detail: TDBEdit;
    dbeUDF2Detail: TDBEdit;
    DBLookupListBoxCategories: TDBLookupListBox;
    txtCategories: TStaticText;
    dbluComboBoxCategories: TDBLookupComboBox;
    dbeFirstName: TDBEdit;
    dbeSurname: TDBEdit;
    dbePreferredName: TDBEdit;
    smdbgFamily: TSMDBGrid;
    txtAssociates: TStaticText;
    txtFamily: TStaticText;
    dbchbGroup1: TDBCheckBox;
    dbchbGroup2: TDBCheckBox;
    dbchbGroup3: TDBCheckBox;
    dbchbGroup4: TDBCheckBox;
    dbchbGroup5: TDBCheckBox;
    dbchbGroup6: TDBCheckBox;
    dbeOccupation: TDBEdit;
    lblOccupation: TLabel;
    lblOccupationDetail: TLabel;
    dbeOccupationDetail: TDBEdit;
    dbchbFinancial: TDBCheckBox;
    dbeAcceptedDate: TDBEdit;
    dbeDOB: TDBEdit;
    dbeReceiptDate: TDBEdit;
    dbeFinancialTo: TDBEdit;
    dbchbIsInactive: TDBCheckBox;
    dbchbBadgePrinted: TDBCheckBox;
    dbchbChildClearance: TDBCheckBox;
    dbchbPoliceClearance: TDBCheckBox;
    dscAttachment: TDataSource;
    OpenPictureDialog1: TOpenPictureDialog;
    tshAttachments: TTabSheet;
    pnlAttachments: TPanel;
    BtnNext: TSpeedButton;
    btnPrev: TSpeedButton;
    btnAttachmentExit: TSpeedButton;
    Image1: TImage;
    txtNoneAvailable: TStaticText;
    txtNoteAdded: TStaticText;
    StaticText1: TStaticText;
    txtAttachShow: TStaticText;
    txtAttachmentAdd: TStaticText;
    Procedure FormShow(Sender: TObject);
    Procedure FormCreate(Sender: TObject);
    Procedure FormDestroy(Sender: TObject);
    Procedure btnAddClick(Sender: TObject);
    Procedure btnCancelClick(Sender: TObject);
    Procedure btnSaveClick(Sender: TObject);
    Procedure btnExitClick(Sender: TObject);
    Procedure tshSearchShow(Sender: TObject);
    Procedure edtSurnameKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    Procedure edtFirstNameSearchKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    Procedure edtMobileKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    Procedure smdbContactSearchGridDblClick(Sender: TObject);
    Procedure DBLookupListBoxCategoriesDblClick(Sender: TObject);  // DBLookupListBox1DblClick
    Procedure dbluComboBoxCategoriesCloseUp(Sender: TObject);
    Procedure dbluComboBoxOrgCloseUp(Sender: TObject);
    Procedure dbeMobileEnter(Sender: TObject);
    Procedure dbeMobileExit(Sender: TObject);
    Procedure dbeMobileKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    Procedure dbeLandLineEnter(Sender: TObject);
    Procedure dbeLandLineExit(Sender: TObject);
    Procedure txtUDF_AddClick(Sender: TObject);
    Procedure txtNoteAddedClick(Sender: TObject);
    Procedure smdbgNoteAbbrevCellClick(Column: TColumn);
    Procedure smdbContactSearchGridCellClick(Column: TColumn);
    Procedure dtpAcceptedDateCloseUp(Sender: TObject);
    Procedure tshContactShow(Sender: TObject);
    procedure edtIDKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edtOrgSearchKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure txtFamilyClick(Sender: TObject);
    procedure txtAttachShowClick(Sender: TObject);
    procedure btnAttachmentExitClick(Sender: TObject);
  private
    { Private declarations }
    Procedure CardSelected;
    Procedure UpdSearchGrid;
    Procedure PopulateMemNote(s1: String);
    Procedure aMemberUpdate;
    Procedure SaveContactCard;
    Procedure aContacUpdtNote(iLines: Integer);
  public
    { Public declarations }
//    fTop: Integer;
//    fLeft: Integer;
    TheSysUser: TSysUser;
  End;

var
  fMaintenance: TfMaintenance;
  aContact: TContact;
  aMember: TMember;
  fAddCard: TfAddCard;


implementation

{$R *.dfm}

uses CheckPhoneNumberU,
     fCustomFieldNameU,
     fFamilyU,
     fAddOrgU,
     dmoMaintenanceU;


Procedure TfMaintenance.FormCreate(Sender: TObject);
Begin
  aContact:= TContact.Create;
  aMember:= TMember.Create;
  fAddCard:= TfAddCard.Create(Self);
  dmoMaintenance:= TdmoMaintenance.Create(Self);
End;

Procedure TfMaintenance.FormDestroy(Sender: TObject);
Begin
  aContact.Free;
  aMember.Free;
  fAddCard.Free;
  dmoMaintenance.Free;
End;


Procedure TfMaintenance.FormShow(Sender: TObject);
Begin
//  Top:= fTop;
//  Left:= fLeft;
  dbchbGroup1.Caption:= TheSysUser.sGroup1Caption;     //  Can be differnt Group Names for different users
  dbchbGroup2.Caption:= TheSysUser.sGroup2Caption;
  dbchbGroup3.Caption:= TheSysUser.sGroup3Caption;
  dbchbGroup4.Caption:= TheSysUser.sGroup4Caption;
  dbchbGroup5.Caption:= TheSysUser.sGroup5Caption;
  dbchbGroup6.Caption:= TheSysUser.sGroup6Caption;

  dmoMaintenance.CardReset;
  edtSurname.SetFocus;
  aContact.bNewContact:= False;
  tshSearch.Show;
End;


Procedure TfMaintenance.PopulateMemNote(s1: String);
Begin
  memNote.Clear;
  memNote.Lines[0]:= s1;
End;


Procedure TfMaintenance.smdbContactSearchGridCellClick(Column: TColumn);
Var
  ColumnID: Integer;
  sFldName: String;
Begin
  ColumnID:= smdbContactSearchGrid.Columns[Column.ID].ID;
  smdbContactSearchGrid.Columns[ColumnID].SortType:= stAscending;
  sFldName:= smdbContactSearchGrid.Columns[ColumnID].FieldName;
End;


Procedure TfMaintenance.smdbContactSearchGridDblClick(Sender: TObject);
Begin
  aContact.bNewContact:= False;
  btnSave.Enabled:= True;
  CardSelected;
End;

Procedure TfMaintenance.smdbgNoteAbbrevCellClick(Column: TColumn);
Var
  iCardID: Integer;
Begin
  iCardID:= dmoMaintenance.qryCard.FieldByName('ID').AsInteger;
  memNote.Clear;
  memNote.Lines[0]:= dmoMaintenance.GetNote(iCardID);
End;


Procedure TfMaintenance.tshSearchShow(Sender: TObject);
Begin
  btnSave.Enabled:= False;
End;


Procedure TfMaintenance.txtAttachShowClick(Sender: TObject);
Begin
  pnlAttachments.Align:= alBottom;
  pnlAttachments.Height:= 630;
  if OpenPictureDialog1.Execute then
    Image1.Picture.LoadFromFile(OpenPictureDialog1.FileName);
  //    Image1.Picture.LoadFromFile('Z:\Eric\Woodshed\Membership\MembersDB\DoNotChange\1.jpg');
  pnlAttachments.Visible:= True;
End;


Procedure TfMaintenance.btnAttachmentExitClick(Sender: TObject);
Begin
  pnlAttachments.Align:= alNone;
  pnlAttachments.Visible:= False;
End;


Procedure TfMaintenance.txtFamilyClick(Sender: TObject);
Var
  fFamily: TfFamily;
Begin
  fFamily:= TfFamily.Create(Self);
  fFamily.Top:= Top + 40;
  fFamily.Left:= Left + 250;
  if (fFamily.ShowModal = mrOk) then
  Begin
    ShowMessage('New family or Associate added');
  End;
  fFamily.Destroy;
End;

Procedure TfMaintenance.txtNoteAddedClick(Sender: TObject);
Begin
  txtNoteAdded.Enabled:= False;
  aContact.NoteAdded:= True;
  memNote.Clear;
  memNote.SetFocus;
End;


Procedure TfMaintenance.txtUDF_AddClick(Sender: TObject);
Var
  fUDFName: TfCustomFieldName;
Begin
  fUDFName:= TfCustomFieldName.Create(Self);
  fUDFName.Top:= Top + 40;
  fUDFName.Left:= Left + 250;
  if (fUDFName.ShowModal = mrOk) then
  Begin
    ShowMessage('New Custom Field name added');
  End;
  fUDFName.Destroy;
End;



Procedure TfMaintenance.UpdSearchGrid;
Begin
  dmoMaintenance.FilterGridName(edtSurname.Text, edtFirstNameSearch.Text,
                                edtMobile.Text, edtOrgSearch.Text);
End;


Procedure TfMaintenance.btnAddClick(Sender: TObject);
Begin
  PageControl1.ActivePage:= tshSearch;
  smdbContactSearchGrid.ClearFilter;
  dmoMaintenance.CardReset;
  fAddCard.aContact:= aContact;
  If fAddCard.ShowModal = mrOK Then
  Begin
    dmoMaintenance.AddContact(aContact, TheSysUser);
    dmoMaintenance.UpdateOperatorColumns(aContact, TheSysUser);
  End;
End;



Procedure TfMaintenance.tshContactShow(Sender: TObject);
Begin
  btnSave.Enabled:= True;
End;


Procedure TfMaintenance.btnCancelClick(Sender: TObject);
Begin
  tshMember.TabVisible:= False;
  tshSearch.Visible:= True;
  tshSearch.Enabled:= True;
  tshSearch.Show;
  smdbContactSearchGrid.Visible:= True;
  edtFirstNameSearch.Text:= '';
  edtMobile.Text:= '';
  edtSurname.Text:= '';
  edtID.Text:= '';
  edtOrgSearch.Text:= '';
  edtSurname.SetFocus;
  btnSave.Enabled:= True;
  dmoMaintenance.CardReset;
  dmoMaintenance.GridSearchReset;
End;


Procedure TfMaintenance.btnExitClick(Sender: TObject);
Begin
  Close;
End;


Procedure TfMaintenance.SaveContactCard;
Var
  iOrgID: Integer;
Begin
  If dbluComboBoxOrg.KeyValue = 2 then
     dbluComboBoxOrg.KeyValue:= null;
  If dbluComboBoxOrg.KeyValue > 0 then
    iOrgID:= dbluComboBoxOrg.KeyValue
  Else
    iOrgID:= 0;
  aContact.Group1:= dbchbGroup1.Checked;
  aContact.Group2:= dbchbGroup2.Checked;
  aContact.Group3:= dbchbGroup3.Checked;
  aContact.Group4:= dbchbGroup4.Checked;
  aContact.Group5:= dbchbGroup5.Checked;
  aContact.Group6:= dbchbGroup6.Checked;
  dmoMaintenance.SaveContact(iOrgID, aContact);
//  dmoMaintenance.CardReset;
  dmoMaintenance.UpdateOperatorColumns(aContact, TheSysUser);
End;


Procedure TfMaintenance.aContacUpdtNote(iLines: Integer);
Var
  ii: Integer;
Begin
  ii:= 0;
  aContact.LastNote:= memNote.Lines[ii];
  ii:= 1;
  while ii < iLines do
  Begin
    aContact.LastNote:= aContact.LastNote + '  ' + memNote.Lines[ii];
    ii:= ii + 1;
  End;
End;


Procedure TfMaintenance.aMemberUpdate;
Begin
  aMember.iMemberType:= DBLUComboBoxMemType.KeyValue;
  aMember.iStatus:= DBLUComboBoxMemStatus.KeyValue;
  aMember.iGender:= DBLUComboBoxMemGender.KeyValue;
End;


Procedure TfMaintenance.btnSaveClick(Sender: TObject);
Begin
  if (length(aContact.sSurname) + Length(aContact.sFirstName)) > 5 Then
  Begin
    If dmoMaintenance.qryCard.State in [dsEdit, dsInsert] then
    Begin
      SaveContactCard;
    End;

    if memNote.Lines.Count > 0 then
    Begin
      aContacUpdtNote(memNote.Lines.Count);
    End;
    dmoMaintenance.SaveCardNote(aContact);
    txtNoteAdded.Enabled:= True;

    if aContact.bIsMember then
    Begin
      aMemberUpdate;
      dmoMaintenance.SaveMember(aMember);
    End;

  End
  Else
  Begin
    ShowMessage('Must have at least 6 letters in the name' + #13#10 + 'Contact Eric on 0418 418 995');
  End;
//  btnAdd.Enabled:= False;
End;


Procedure TfMaintenance.edtIDKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
Begin
  if Key = VK_RETURN then
  Begin
    aContact.iCardID:= strToInt(edtID.Text);
    dmoMaintenance.SetID_SearchGrid(aContact);
    CardSelected;
  End;
End;


Procedure TfMaintenance.CardSelected;
Var
  iOrgID : Integer;
  sNote: String;
Begin
  dmoMaintenance.GetID_Address(aContact);
  if aContact.iCardID > 0 then
  Begin
    dmoMaintenance.SelectContact(aContact,TheSysUser);
    dbluComboBoxOrg.KeyValue:= 0;
    iOrgID:= dmoMaintenance.qryCard.FieldByName('OrgID').AsInteger;
    if iOrgID > 0 then
      dbluComboBoxOrg.KeyValue:= iOrgID;
    tshMember.TabVisible:= aContact.Group3;
    dbchbGroup1.Checked:= aContact.Group1;
    dbchbGroup2.Checked:= aContact.Group2;
    dbchbGroup3.Checked:= aContact.Group3;
    dbchbGroup4.Checked:= aContact.Group4;
    dbchbGroup5.Checked:= aContact.Group5;
    dbchbGroup6.Checked:= aContact.Group6;

    dmoMaintenance.GetNoteAbbrev(aContact.iCardID);
    sNote:= dmoMaintenance.GetNote(aContact.iCardID);
    PopulateMemNote(sNote);

    aMember.iCardID:= aContact.iCardID;
//    if (aContact.bIsMember)
//        AND (dmoMaintenance.GetMember(aMember)) then
//    Begin
//      tshMember.TabVisible:= True;
//      tshMember.Show;   //  Fills in pagecontrol sheet with DB info
//    End;
    edtSurname.Text:= aContact.sSurname;
    edtFirstNameSearch.Text:= aContact.sFirstName;
    edtID.Text:= IntToStr(aContact.iCardID);
    edtMobile.Text:= dmoMaintenance.dstCardSearch.FieldByName('Mobile').AsString;
    tshContact.Show;     // Ready to start
  End
  Else
  Begin
    ShowMessage('No Record Available');
    smdbContactSearchGrid.ClearFilter;
  End;
  dbeLocationLine1.SetFocus;
End;



Procedure TfMaintenance.dbeLandLineEnter(Sender: TObject);
Begin
  btnSave.Enabled:= False;
End;


Procedure TfMaintenance.dbeLandLineExit(Sender: TObject);
var
  s1: String;
Begin
  s1:= FmtPhoneNumber(dbeLandLine.Text);
  if s1 = 'Error' then
  Begin
    ShowMessage('Invalid phone number');
    dbeLandLine.Clear;
    dbeLandLine.SetFocus;
  End
  Else
  Begin
    dbeLandLine.Text:= s1;
    dbeEmail.SetFocus;
  End;
  btnSave.Enabled:= True;
End;


Procedure TfMaintenance.dbeMobileEnter(Sender: TObject);
Begin
  btnSave.Enabled:= False;
End;


Procedure TfMaintenance.dbeMobileExit(Sender: TObject);
Begin
  btnSave.Enabled:= True;
End;


Procedure TfMaintenance.dbeMobileKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
Var
  CharsEntered: Integer;
  s1: string;
Begin
  s1:= dbeMobile.Text;
  CharsEntered:= Length(MyStripOut(s1));
  if (CharsEntered = 10) AND (AnsiLeftStr(s1,1) = '0') then
  Begin
    dbeMobile.Text:= FmtMobileNumber(s1);
    dbeLandLine.SetFocus;
  End
  Else
  Begin
    if (CharsEntered = 11) AND (AnsiLeftStr(s1,1) <> '0') then
    Begin
      dbeMobile.Text:= FmtMobileNumber(s1);
      dbeLandLine.SetFocus;
    End;
  End;
End;


Procedure TfMaintenance.DBLookupListBoxCategoriesDblClick(Sender: TObject);
Begin
  dmoMaintenance.DelCategory;
  aContact.bIsMember:= dmoMaintenance.IsContactAMember;
  if aContact.bIsMember then
  Begin
    tshMember.TabVisible:= True;
    aMember.iCardID:= aContact.iCardID;
    //  Add a member
  End
  Else
  Begin
    tshMember.TabVisible:= False;
    //  Delete a Member
  End;
End;


Procedure TfMaintenance.dbluComboBoxCategoriesCloseUp(Sender: TObject);
Begin
  dmoMaintenance.AddCategory(dbluComboBoxCategories.KeyValue);
  aContact.bIsMember:= dmoMaintenance.IsContactAMember;
  if aContact.bIsMember then
  Begin
    tshMember.TabVisible:= True;
    aMember.iCardID:= aContact.iCardID;
    //  Add a Member
  End
  Else
  Begin
    tshMember.TabVisible:= False;
    //  Delete a Member
  End;
End;


Procedure TfMaintenance.dbluComboBoxOrgCloseUp(Sender: TObject);
var
  fAddOrg: TfAddOrg;
Begin
  if dbluComboBoxOrg.KeyValue = 1 then
  Begin
    fAddOrg:= TfAddOrg.Create(Self);
    fAddOrg.fLeft:= Left + 50;
    fAddOrg.fTop:= Top + 350;
    if (fAddOrg.ShowModal = mrOk) then
    Begin
      ShowMessage('New Organisation added');
    End
    Else
    Begin
      dbluComboBoxOrg.KeyValue:= 0;
      dbluComboBoxOrg.SetFocus;
    End;
//    FreeandNil(fAddOrg);
    fAddOrg.Destroy;
  End
  Else
  Begin
    //
  End;
End;


Procedure TfMaintenance.dtpAcceptedDateCloseUp(Sender: TObject);
Begin
//  aMember.dAccepted:= dtpAcceptedDate.Date;
End;

Procedure TfMaintenance.edtFirstNameSearchKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
Begin
  if Key <> 13 then
  Begin
    UpdSearchGrid;
  End
  Else
  Begin
    CardSelected;
  End;
End;


Procedure TfMaintenance.edtMobileKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
Begin
  if Key <> 13 then
  Begin
    UpdSearchGrid;
  End
  Else
  Begin
    CardSelected;
  End;
End;


procedure TfMaintenance.edtOrgSearchKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key <> 13 then
  Begin
    UpdSearchGrid;
  End
  Else
  Begin
    if Length(edtOrgSearch.Text) > 0 then
    Begin
      CardSelected;
    End;
  End;
end;

Procedure TfMaintenance.edtSurnameKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
Begin
  if Key <> 13 then
  Begin
    UpdSearchGrid;
  End
  Else
  Begin
    CardSelected;
  End;
End;




End.
