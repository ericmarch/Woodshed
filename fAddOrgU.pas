unit fAddOrgU;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.StdCtrls, Data.DB,
  Vcl.DBCtrls, Vcl.Grids, Vcl.DBGrids, SMDBGrid;

type
  TfAddOrg = class(TForm)
    btnSave: TSpeedButton;
    btnCancel: TSpeedButton;
    edtNewOrgDescription: TEdit;
    dsc1: TDataSource;
    DBLookupListBox1: TDBLookupListBox;
    SMDBGrid1: TSMDBGrid;
    procedure btnSaveClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure edtNewOrgDescriptionKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
    fTop: Integer;
    fLeft: Integer;
  end;

var
  fAddOrg: TfAddOrg;

implementation

{$R *.dfm}

uses dmoMaintenanceU;

procedure TfAddOrg.btnSaveClick(Sender: TObject);
begin
  Close;
  ModalResult:= mrOK;
end;

procedure TfAddOrg.edtNewOrgDescriptionKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key<> VK_RETURN) and (edtNewOrgDescription.Text > '') Then
  Begin
     dmoMaintenance.CheckCardOrg(edtNewOrgDescription.Text);
  End;
  DBLookupListBox1.Refresh;
  dmoMaintenance.dst1.Active:= False;
  dmoMaintenance.dst1.Active:= True;
end;

procedure TfAddOrg.FormShow(Sender: TObject);
begin
  Top:= fTop;
  Left:= fLeft;
end;

end.
