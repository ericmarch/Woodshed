unit dmoMemberU;

interface

uses
  System.SysUtils, System.Classes, Data.DB, Data.Win.ADODB;

type
  TdmoMember = class(TDataModule)
    dstCard: TADODataSet;
    dstCardCategory: TADODataSet;
    dstcardGroup: TADODataSet;
    dstMemSearchGrid: TADODataSet;
    qryMember: TADOQuery;
    procedure DataModuleCreate(Sender: TObject);
    procedure DataModuleDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    Procedure FilterGridName(sSname, sFname, sMobile: String);
    Procedure SelectMember(iCardID: Integer);
  end;

var
  dmoMember: TdmoMember;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses dmoConnectU;

{$R *.dfm}

procedure TdmoMember.DataModuleCreate(Sender: TObject);
begin
  dstcard.Active:= True;
end;

procedure TdmoMember.DataModuleDestroy(Sender: TObject);
begin
  dstcard.Active:= False;
end;

procedure TdmoMember.FilterGridName(sSname, sFname, sMobile: String);
Var
  iSelectOption: Integer;
  SelectStr: String;
Begin
  iSelectOption:= 9000;
  if sSname > '' then
  Begin
    iSelectOption:= 9100;              // Surname T FirstName F Mobile F
    sSname:= '%' + sSname + '%';
    if sFname > '' then
    Begin
      iSelectOption:= 9110;            // Surname T FirstName T Mobile F
      sFname:= '%' + sFname + '%';
      if sMobile > '' then
      Begin
        iSelectOption:= 9111;          // Surname T FirstName T Mobile T
        sMobile:= '%' + sMobile + '%';
      End;
    End
    Else
    Begin
      if sMobile > '' then
      Begin
        iSelectOption:= 9101;
        sMobile:= '%' + sMobile + '%'; // Surname T FirstName F Mobile T
      End;
    End;
  End
  Else
  Begin
    if sFname > '' then
    Begin
      iSelectOption:= 9010;            // Surname F FirstName T Mobile F
      sFname:= '%' + sFname + '%';
      if sMobile > '' then
      Begin
        iSelectOption:= 9011;          // Surname F FirstName T Mobile T
        sMobile:= '%' + sMobile + '%';
      End;
    End
    Else
    Begin
      if sMobile > '' then
      Begin
        iSelectOption:= 9001;          // Surname F FirstName F  Mobile T
        sMobile:= '%' + sMobile + '%';
      End;
    End;
  End;
  if iSelectOption > 9000 then
  Begin
    SelectStr:= 'select IDAlpha, Card.SurName, Card.FirstName, '
              + 'PreferredName, Card.Mobile, LocnPcName, Card.Email, '
              + 'ID from qCard WHERE ';
    case iSelectOption of
       9001 : SelectStr:= SelectStr + 'Mobile LIKE ' + quotedStr(sMobile);
       9010 : SelectStr:= SelectStr + 'FirstName LIKE ' + QuotedStr(sFName);
       9011 : SelectStr:= SelectStr + 'FirstName LIKE ' + QuotedStr(sFName)
            + ' AND Mobile LIKE ' + QuotedStr(sMobile);
       9100 : SelectStr:= SelectStr + 'Surname LIKE ' + QuotedStr(sSname);
       9101 : SelectStr:= SelectStr + 'Surname LIKE ' + QuotedStr(sSname)
            + ' AND Mobile LIKE ' + QuotedStr(sMobile);
       9110 : SelectStr:= SelectStr + 'Surname LIKE ' + QuotedStr(sSname)
            + ' AND FirstName LIKE ' + QuotedStr(sFName);
       9111 : SelectStr:= SelectStr + 'Surname LIKE ' + QuotedStr(sSname)
            + ' AND FirstName LIKE ' + QuotedStr(sFName)
            + ' AND Mobile LIKE ' + QuotedStr(sMobile);
    end;
    SelectStr:= SelectStr + ' Order by Surname, FirstName, Card.ID';
    End
    Else
    Begin
    SelectStr:= 'select IDAlpha, Card.SurName, Card.FirstName, '
              + 'PreferredName, Card.Mobile, LocnPcName, Card.Email, '
              + 'ID from qCard Order by Card.SurName, Card.FirstName';
  End;
  dstMemSearchGrid.Active:= False;
  dstMemSearchGrid.CommandText:= SelectStr;
  dstMemSearchGrid.Active:= True;
end;

procedure TdmoMember.SelectMember(iCardID: Integer);
begin
  //
end;

end.
