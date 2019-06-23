unit dmoLoginU;

interface

uses
  System.SysUtils,
  System.Classes,
  Data.DB,
  Data.Win.ADODB,
  SysUserClass;

type
  TdmoLogin = class(TDataModule)
    dstUser: TADODataSet;
    cmdUser: TADOCommand;
    Function  CheckUserName(TheName: String):Boolean;
    Function  CheckPassWord(ThePWD: String): Boolean;
    Procedure UpdateSysUser(Var TheSysUser: TSysUser);
  private
    { Private declarations }
  public
    { Public declarations }
  End;

var
  dmoLogin: TdmoLogin;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses dmoConnectU;

{$R *.dfm}

{ TdmoLogin }

function TdmoLogin.CheckPassWord(ThePWD: String): Boolean;
begin
  dstUser.Active:= False;
  dstUser.CommandText:= 'Select * from tbUser where PWD = ' + QuotedStr(ThePWD);
  dstUser.Active:= True;
  if dstUser.RecordCount = 1 then
  Begin
    Result:= True;
  End
  Else
  Begin
    Result := False;
  End;
End;


function TdmoLogin.CheckUserName(TheName: String): Boolean;
begin
  dstUser.Active:= False;
  dstUser.CommandText:= 'Select * from tbUser where UID = ' + QuotedStr(TheName);
  dstUser.Active:= True;
  if dstUser.RecordCount = 1 then
  Begin
    Result:= True;
  End
  Else
  Begin
    Result := False;
  End;
End;


procedure TdmoLogin.UpdateSysUser(var TheSysUser: TSysUser);
begin
  TheSysUser.ID:= dstUser.FieldByName('ID').AsInteger;
  TheSysUser.AccessLevel:= dstUser.FieldByName('ID').AsInteger;
  TheSysUser.UID:= dstUser.FieldByName('UID').AsString;
  TheSysUser.PWD:= dstUser.FieldByName('PWD').AsString;
  TheSysUser.DisplayName:= dstUser.FieldByName('DisplayName').AsString;
  TheSysUser.Email:= dstUser.FieldByName('Email').AsString;
  TheSysUser.LoggedOn:= True;
  TheSysUser.LogonTime:= Now();
End;


End.
