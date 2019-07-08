unit fMainU;

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
  Vcl.ComCtrls,
  Vcl.ExtCtrls,
  Data.DB,
  Vcl.Grids,
  Vcl.DBGrids,
  SMDBGrid,
  Vcl.Menus,
  Vcl.Imaging.jpeg,
  CheckPhoneNumberU,
  dmoSystemU,
  SysUserClass,
  ContactClass;

type
  TfMain = class(TForm)
    MainMenu1: TMainMenu;
    Maintenance1: TMenuItem;
    Reports1: TMenuItem;
    Exit1: TMenuItem;
    Image1: TImage;
    Logon1: TMenuItem;
    Search1: TMenuItem;
    procedure Exit1Click(Sender: TObject);
    procedure Logon1Click(Sender: TObject);
    procedure Maintenance1Click(Sender: TObject);
    procedure Reports1Click(Sender: TObject);
    procedure Search1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
      private
    { Private declarations }
  public
    { Public declarations }
    sDirectory: String;
  End;

var
  fMain: TfMain;
  aContact: TContact;
  aSysUser: TSysUser;

implementation

{$R *.dfm}

uses dmoConnectU,
     fMaintenanceU,
     fReportContactU,
     fLoginU,
     fSearchU;


Procedure TfMain.Exit1Click(Sender: TObject);
Begin
  Close;
End;

Procedure TfMain.FormCreate(Sender: TObject);
Begin
  dmoSystem:= TdmoSystem.Create(Self);
  aSysUser:= TSysUser.Create;
  aContact:= TContact.Create;
  fLogin:= TfLogin.Create(Self);
End;

Procedure TfMain.FormDestroy(Sender: TObject);
Begin
  dmoSystem.Free;
  aSysUser.Free;
  aContact.Free;
  fLogin.Free;
End;

Procedure TfMain.Logon1Click(Sender: TObject);
Begin
  if Logon1.Caption = '&Logon' then
  Begin
    If fLogin.ShowModal = mrOK Then
    Begin
      aSysUser.sExeDirectory:= dmoConnect.sDirectory;
      Logon1.Caption:= '&Logoff';
      Maintenance1.Enabled:= True;
      Reports1.Enabled:= True;
    End;
  End
  Else
  Begin
    Logon1.Caption:= '&Logon';
    Maintenance1.Enabled:= False;
    Reports1.Enabled:= False;
  End;
End;

Procedure TfMain.Maintenance1Click(Sender: TObject);
Var
  afMaintenance: TfMaintenance;
Begin
  afMaintenance:= TfMaintenance.Create(Self);
  afMaintenance.TheSysUser:= aSysUser;
  Visible:= False;
  afMaintenance.ShowModal;
  FreeAndNil(afMaintenance);
  Visible:= True;
End;


Procedure TfMain.Reports1Click(Sender: TObject);
Var
  afReport: TfReportContact;
Begin
  afReport:= TfReportContact.Create(Self);
  afReport.fTop:= Top - 60;
  afReport.fLeft:= Left - 20;
  afReport.aSysUser:= aSysUser;
  afReport.ShowModal;
  FreeAndNil(afReport);
End;


Procedure TfMain.Search1Click(Sender: TObject);
Var
  afSearch: TfSearch;
Begin
  afSearch:= TfSearch.Create(Self);
  afSearch.fTop:= Top - 160;
  afSearch.fLeft:= Left - 120;
  afSearch.fHeight:= 900;
  afSearch.fWidth:= 900;
  afSearch.ShowModal;
  FreeAndNil(afSearch);
End;

End.
