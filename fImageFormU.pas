unit fImageFormU;

interface

uses
  Winapi.Windows,
  Winapi.Messages,
  System.SysUtils,
  System.Variants,
  System.Classes,
  Vcl.Graphics,
  Vcl.Controls,
  Vcl.Forms,
  Vcl.Dialogs,
  Vcl.Menus,
  Vcl.BaseImageCollection,
  Vcl.ImageCollection,
  ContactClass, System.ImageList, Vcl.ImgList;

type
  TfImageForm = class(TForm)
    MainMenu1: TMainMenu;
    OK1: TMenuItem;
    Cancel1: TMenuItem;
    ImageCollection1: TImageCollection;
    ImageList1: TImageList;
    procedure Cancel1Click(Sender: TObject);
    procedure OK1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    aContact: TContact;
  end;

var
  fImageForm: TfImageForm;
  fTheImage: String;

implementation
  {$R *.dfm}

uses dmoMaintenanceU;

procedure TfImageForm.Cancel1Click(Sender: TObject);
begin
  aContact.sAttachment:= '';
  ModalResult:= mrCancel;
End;


procedure TfImageForm.OK1Click(Sender: TObject);
begin
  aContact.sAttachment:= fTheImage;
  ModalResult:= mrOK;
End;


procedure TfImageForm.FormShow(Sender: TObject);
var
  s1: String;
begin
  If dmoMaintenance.GetAttachment(aContact.iCardID) > 0 Then
  Begin
    ImageCollection1.Images.Clear;
    dmoMaintenance.dst1.First;
    while NOT dmoMaintenance.dst1.Eof do
    Begin
      s1:= dmoMaintenance.dst1.FieldByName('Documentname').AsString;
    End;
//    ImageCollection1.Images.Add.SourceImages.
  End;
End;


End.
