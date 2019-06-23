unit fSearchU;

Interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics,
  Vcl.Controls,
  Vcl.Forms,
  Vcl.Dialogs, Vcl.Menus, Vcl.ComCtrls, Vcl.StdCtrls,
  Vcl.ExtCtrls, Vcl.DBCtrls,
  Vcl.Buttons,
  Data.DB;

Type
  TfSearch = class(TForm)
    PageControl1: TPageControl;
    tshLayout: TTabSheet;
    tshSortGroup: TTabSheet;
    txtAvailableColumns: TStaticText;
    Panel1: TPanel;
    Panel2: TPanel;
    tshSelect: TTabSheet;
    ListBox1: TListBox;
    ListBox2: TListBox;
    ListBox3: TListBox;
    ListBox4: TListBox;
    txtLine1: TStaticText;
    txtLine2: TStaticText;
    txtLine4: TStaticText;
    txtLine3: TStaticText;
    dscAvailableColumns: TDataSource;
    DBLookupListBox3: TDBLookupListBox;
    dbLULBAvailableColumns: TDBLookupListBox;
    dbLULBSelectedColumns: TDBLookupListBox;
    dscSelectedColumns: TDataSource;
    btnClear: TSpeedButton;
    btnExit: TSpeedButton;
    btnDisplay: TSpeedButton;
    Procedure FormCreate(Sender: TObject);
    Procedure FormDestroy(Sender: TObject);
    Procedure dbLULBAvailableColumnsDblClick(Sender: TObject);
    Procedure btnExitClick(Sender: TObject);
    Procedure btnClearClick(Sender: TObject);
  Private
    { Private declarations }
    arrID: Array of Integer;
    Procedure ClearSelectedColumns;
  Public
    { Public declarations }
    fTop: Integer;
    fLeft: Integer;
    fHeight: Integer;
    fWidth: Integer;
  End;

Var
  fSearch: TfSearch;

Implementation

{$R *.dfm}

Uses dmoSearchU;

Procedure TfSearch.FormCreate(Sender: TObject);
Begin
  dmoSearch:= TdmoSearch.Create(Self);
End;


Procedure TfSearch.FormDestroy(Sender: TObject);
Begin
  dmoSearch.Free;
End;


Procedure TfSearch.btnClearClick(Sender: TObject);
Begin
  ClearSelectedColumns;
End;


Procedure TfSearch.btnExitClick(Sender: TObject);
Begin
  Close;
End;


Procedure TfSearch.ClearSelectedColumns;
Begin
  If Length(arrID) > 0 then
  Begin
    arrID[1] := 0;
    dmoSearch.SelectedColumns(arrID);
    SetLength(arrID, 0);
  End;
  dmoSearch.SelectedColumns(arrID);
End;


Procedure TfSearch.dbLULBAvailableColumnsDblClick(Sender: TObject);
Begin
  SetLength(arrID, Length(arrID)+1);
  arrID[High(arrID)] := dbLULBAvailableColumns.KeyValue;
  dmoSearch.SelectedColumns(arrID);
End;


End.
