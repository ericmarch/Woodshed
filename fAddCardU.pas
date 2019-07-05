unit fAddCardU;

interface

uses
  Winapi.Windows, Winapi.Messages,
  System.SysUtils, System.Variants, System.Classes, System.UITypes,
  Vcl.Graphics,Vcl.Controls, Vcl.Forms,
  Vcl.Dialogs,
  Vcl.StdCtrls,
  Vcl.ExtCtrls,
  Vcl.Buttons,
  ContactClass;

type
  TfAddCard = class(TForm)
    cbxGroup1: TCheckBox;
    cbxGroup2: TCheckBox;
    cbxGroup3: TCheckBox;
    btnAddCancel: TSpeedButton;
    edtFirstName: TEdit;
    edtSurname: TEdit;
    StaticText1: TStaticText;
    txtFirstName: TStaticText;
    btnAddOK: TSpeedButton;
    cbxGroup4: TCheckBox;
    cbxGroup5: TCheckBox;
    cbxGroup6: TCheckBox;
    Procedure edtSurnameKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    Procedure btnAddOKClick(Sender: TObject);
    procedure btnAddCancelClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    Procedure UpdateAContact(aContact: TContact);
  public
    { Public declarations }
    aContact: TContact;
    Procedure AddAContact(aContact: TContact);
  End;

var
  fAddCard: TfAddCard;

implementation

{$R *.dfm}

uses CheckPhoneNumberU, dmoMaintenanceU;


Procedure TfAddCard.UpdateAContact;
Begin
  aContact.bNewContact:= True;
  aContact.sSurname:= edtSurname.Text;
  aContact.sFirstName:= edtFirstName.Text;
  aContact.sIDAlpha:= aContact.sNewAlphaID;

  aContact.Group1:= False;
  aContact.Group2:= False;
  aContact.Group3:= False;
  aContact.Group4:= False;
  aContact.Group5:= False;
  aContact.Group6:= False;

  if cbxGroup1.Checked then
  Begin
    aContact.Group1:= True;
  End;
  if cbxGroup2.Checked then
  Begin
    aContact.Group2:= True;
  End;
  if cbxGroup3.Checked then
  Begin
    aContact.Group3:= True;
  End;
  aContact.sIDAlpha:= aContact.sNewAlphaID;
End;


Procedure TfAddCard.edtSurnameKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
Begin
  btnAddOK.Enabled:= (Length(MyStripOut(edtSurname.Text)) > 1);
End;


Procedure TfAddCard.FormShow(Sender: TObject);
Begin
  edtSurname.SetFocus;
End;


procedure TfAddCard.AddAContact(aContact: TContact);
Begin
  btnAddOK.Enabled:= False;
  edtSurname.SetFocus;
end;


procedure TfAddCard.btnAddCancelClick(Sender: TObject);
begin
  ModalResult:= mrCancel;
end;


Procedure TfAddCard.btnAddOKClick(Sender: TObject);
Var
  iBtn: Integer;
  s1, s2: String;
Begin
  s1:= edtSurname.Text;
  s2:= edtFirstName.Text;
  If dmoMaintenance.CardExists(s1, s2) = True then
  Begin
    iBtn:= MessageDlgPos('Name already exists!' + #10 + #13 + 'OK to Add anyway?',
             mtError, [mbYes,mbNo], 0, 800, 200);
    ModalResult:= mrCancel;
    If iBtn = mrYes Then
    Begin
      UpdateAContact(aContact);
      aContact.bNewAdded:= True;
      ModalResult:= mrOK;
    End;
  End
  Else
  Begin
    UpdateAContact(aContact);
    aContact.bNewAdded:= True;
    ModalResult:= mrOK;
  End;
End;


End.
