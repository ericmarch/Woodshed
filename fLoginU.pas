unit fLoginU;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics,
  Vcl.Controls,
  Vcl.Forms,
  Vcl.Dialogs,
  Vcl.Buttons,
  Vcl.StdCtrls,
  Vcl.ExtCtrls,
  dmoLoginU;

type
  TfLogin = class(TForm)
    ledUserName: TLabeledEdit;
    ledPassword: TLabeledEdit;
    edtUsernameError: TEdit;
    edtPwdError: TEdit;
    btnOK: TButton;
    btnCancel: TButton;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnOKClick(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
    procedure ledUserNameEnter(Sender: TObject);
    procedure ledPasswordEnter(Sender: TObject);
    procedure ledPasswordKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ledUserNameKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
    procedure InvalidUserName;
    const UIDError = '   User does not exist';
    const UIDtooShort = 'User ID must be more than 2 chars';
    const PWDError = '     Invalid Password';
    const PWDtooShort = 'Password Must Be more than 5 Chars';
  public
    { Public declarations }
  End;

var
  fLogin: TfLogin;
  dmoLogin: TdmoLogin;

implementation

{$R *.dfm}

uses fMainU;

procedure TfLogin.FormCreate(Sender: TObject);
begin
  dmoLogin:= TdmoLogin.Create(Self);
End;


procedure TfLogin.FormDestroy(Sender: TObject);
begin
  dmoLogin.Free;
End;


procedure TfLogin.btnCancelClick(Sender: TObject);
begin
  ModalResult:= mrCancel;
end;


procedure TfLogin.FormShow(Sender: TObject);
begin
  if aSysUser.LoggedOn = True then
  Begin
    aSysUser.LoggedOn:= False;
  End;
  btnOK.Enabled:= False;
  ledPassword.Clear;
  ledUserName.Clear;
  ledPassword.Enabled:= False;
  ledUserName.Enabled:= True;
  ledUserName.SetFocus;
End;


procedure TfLogin.btnOKClick(Sender: TObject);
begin
  edtUsernameError.Visible:= False;
  edtPwdError.Visible:= False;
  btnOK.Enabled:= False;
  if dmoLogin.CheckPassWord(ledPassword.Text) = True then
  Begin
    dmoLogin.UpdateSysUser(aSysUser);
    ModalResult:= mrOK;
  End
  Else
  Begin
    edtPwdError.Text:= PWDError;
    edtPwdError.Visible:= True;
    ledPassword.Text:= '';
    ledPassword.SetFocus;
  End;
End;


procedure TfLogin.ledUserNameEnter(Sender: TObject);
begin
  ledPassword.Enabled:= True;
  ledPassword.Text:= '';
  ledUserName.Text:= '';
End;


procedure TfLogin.ledUserNameKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if ((Length(ledUserName.Text) > 2) AND (edtUsernameError.Visible = True)) then
    edtUsernameError.Visible:= False;
  if Key = VK_RETURN Then
  Begin
    ledPassword.Enabled:= True;
    ledPassword.SetFocus;
  End;
end;


procedure TfLogin.InvalidUserName;
begin
  edtUsernameError.Visible:= True;
  ledUserName.Text:= '';
  ledUserName.SetFocus;
end;


procedure TfLogin.ledPasswordEnter(Sender: TObject);
begin
  btnOK.Enabled:= True;
  if Length(ledUserName.Text) > 2 then
  Begin
    If dmoLogin.CheckUserName(ledUserName.Text) = True Then
    Begin
      aContact.UserName:= ledUserName.Text;
    End
    Else
    Begin
      InvalidUserName;
    End;
  End
  Else
  Begin
    edtUsernameError.Visible:= True;
    ledUserName.SetFocus;
  End;
End;


procedure TfLogin.ledPasswordKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Length(ledPassword.Text) > 5 then
  Begin
    btnOK.Enabled:= True;
  End
  Else
  Begin
    if Length(ledPassword.Text) > 2 then
    Begin
      edtPwdError.Text:= PWDError;
      edtPwdError.Left:= 88;
      edtPwdError.width:= 200;
      edtPwdError.Visible:= False;
    End;
  End;
  if Key = VK_RETURN then
   Begin
     if Length(ledPassword.Text) > 5 then
     Begin
       btnOK.SetFocus;
     End
     Else
     Begin
       edtPwdError.Text:= UIDtooShort;
       edtPwdError.Left:= 44;
       edtPwdError.width:= 288;
       edtPwdError.Visible:= True;
     End;
   End;
End;


End.
