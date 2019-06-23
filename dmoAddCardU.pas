unit dmoAddCardU;

interface

uses
  System.SysUtils, System.Classes, Data.DB,
  Data.Win.ADODB;

type
  TdmoAddCard = class(TDataModule)
    cmd1: TADOCommand;
    dstOmnibus: TADODataSet;
    dst1: TADODataSet;
    Function  CardExists(fSname, fFname: String): Boolean;
    Function  InsertNewCard(fSname, fFname: String):Integer;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmoAddCard: TdmoAddCard;


implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses dmoConnectU;

{$R *.dfm}

{ TdmoAddCard }


Function TdmoAddCard.CardExists(fSname, fFname: String): Boolean;
Var
  s1: String;
Begin
  s1:= 'Select ID, IDAlpha, Surname, FirstName FROM Card WHERE '
             + 'Surname = ' + QuotedStr(fSname)
             + ' AND '
             + 'FirstName = ' + QuotedStr(fFname)
             + ' Order By ID';
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


Function TdmoAddCard.InsertNewCard(fSname, fFname: String): Integer;
//Var
//  s1, s2, s3: String;
Begin
//  s1:= 'Insert Into Card (Surname, FirstName) VALUES ('
//                + QuotedStr(fSname) + ', '
//                + QuotedStr(fFname) + ')';
//  cmd1.CommandText:= s1;
//  cmd1.Execute;
//  s1:= 'Select ID, Surname, FirstName FROM Card '
//             + 'WHERE '
//             + 'Surname = ' + QuotedStr(fSname)
//             + ' AND Firstname = ' + QuotedStr(fFname);
//  dstOmnibus.Active:= False;
//  dstOmnibus.CommandText:= s1;
//  dstOmnibus.Active:= True;
//  Result:= dstOmnibus.FieldByName('ID').AsInteger;
End;


End.
