Unit fFamilyU;

Interface

Uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.DBCtrls,
  Data.DB, Vcl.Mask;

Type
  TfFamily = class(TForm)
    txtRelationship: TStaticText;
    txtSurname: TStaticText;
    txtMobile: TStaticText;
    txtFirstName: TStaticText;
    StaticText1: TStaticText;
    StaticText2: TStaticText;
    StaticText3: TStaticText;
    btnSave: TSpeedButton;
    btnCancel: TSpeedButton;
    edtSurname: TEdit;
    DBLookupComboBox1: TDBLookupComboBox;
    dscPartnerType: TDataSource;
    edtFirstNames: TEdit;
    edtMobile: TMaskEdit;
    edtLandLine: TMaskEdit;
    edtEMail: TEdit;
    memNotes: TMemo;
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
    procedure btnSaveClick(Sender: TObject);
    procedure memNotesKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
  Private
    { Private declarations }
  Public
    { Public declarations }
    fTop: Integer;
    fLeft: Integer;
  End;

Var
  fFamily: TfFamily;

implementation

{$R *.dfm}

Uses dmoMaintenanceU;


Procedure TfFamily.btnCancelClick(Sender: TObject);
Begin
  ModalResult:= mrCancel;
End;


Procedure TfFamily.btnSaveClick(Sender: TObject);
Var
  fTypeID: Integer;
  fSurname, fFirstName, fMobile, fLandLine, fEmail, fMoreInfo: String;
Begin
  fTypeID:= DBLookupComboBox1.KeyValue;
  fSurname:= edtSurname.Text;
  fFirstName:= edtFirstNames.Text;
  fMobile:= edtMobile.Text;
  fLandLine:= edtLandLine.Text;
  fEmail:= edtEMail.Text;
  fMoreInfo:= memNotes.Lines[0] + '  ' + memNotes.Lines[1];
  dmoMaintenance.AddContactFamily(fTypeID, fSurname, fFirstName,
                 fMobile, fLandLine, fEmail, fMoreInfo);
  ModalResult:= mrOk;
End;


Procedure TfFamily.FormCreate(Sender: TObject);
Begin
  fTop:= 0;
  fLeft:= 0;
End;


Procedure TfFamily.FormShow(Sender: TObject);
Var
//  iCardID,
  iPartnerID, iPartnerTypeID: Integer;
Begin
  if fTop > 1 then
    Top:= fTop;
  if fLeft > 0 Then
    Left:= fLeft;
//  iCardID:= dmoMaintenance.qryCard.FieldByName('ID').AsInteger;
  dmoMaintenance.dstPartnerType.Active:= False;
  dmoMaintenance.dstPartnerType.Active:= True;
End;


Procedure TfFamily.memNotesKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
Begin
  if (Length(memNotes.Lines[0]) + Length(memNotes.Lines[1])) > 250 then
    Showmessage('Notes must not exceed 250 Characters');
End;


End.
