unit fCustomFieldNameU;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons,
  Vcl.StdCtrls,
  Vcl.Grids,
  Vcl.DBGrids,
  Data.DB;

type
  TfCustomFieldName = class(TForm)
    btnCancel: TSpeedButton;
    btnSave: TSpeedButton;
    dbgCustomFieldname: TDBGrid;
    dscCustomFieldName: TDataSource;
    edtDescription: TEdit;
    procedure btnCancelClick(Sender: TObject);
    procedure btnSaveClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    fTop: Integer;
    fLeft: Integer;
  end;

var
  fCustomFieldName: TfCustomFieldName;

implementation

{$R *.dfm}

uses dmoMaintenanceU;

procedure TfCustomFieldName.btnCancelClick(Sender: TObject);
begin
  ModalResult:= mrCancel;
end;

procedure TfCustomFieldName.btnSaveClick(Sender: TObject);
begin
  If dmoMaintenance.SaveCustomFieldName(edtDescription.Text) Then
  Begin
    dmoMaintenance.GetCustomFieldNames;
    dbgCustomFieldname.Refresh;
    ModalResult:= mrOK;
  End;
end;

procedure TfCustomFieldName.FormShow(Sender: TObject);
begin
  dmoMaintenance.GetCustomFieldNames;
end;

end.
