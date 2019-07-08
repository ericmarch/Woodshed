unit dmoSystemU;

interface

uses
  System.SysUtils,
  System.Classes,
  Data.DB,
  Data.Win.ADODB;

type
  TdmoSystem = class(TDataModule)
    dstSystem: TADODataSet;
  private
    { Private declarations }
  public
    { Public declarations }
    Function GetGroupCaption(iTheID: Integer): String;
  end;

var
  dmoSystem: TdmoSystem;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses dmoConnectU;

{$R *.dfm}

{ TdmoSystem }

Function TdmoSystem.GetGroupCaption(iTheID: Integer): String;
Begin
  dstSystem.Active:= False;
  dstSystem.CommandText:= 'SELECT ID, Description From tbGroup '
           + 'WHERE ID = ' + IntToStr(iTheID);
  dstSystem.Active:= True;
  if dstSystem.RecordCount = 1 Then
    Result:= dstSystem.FieldByName('Description').AsString
  Else
    Result:= 'Invalid Group ID ' + IntToStr(iTheID);
End;

End.
