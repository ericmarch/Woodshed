unit dmoSearchU;

interface

Uses
  System.SysUtils,
  System.Classes,
  Data.DB,
  Data.Win.ADODB,
  Datasnap.DBClient;

Type
  TdmoSearch = class(TDataModule)
    dstSearch1: TADODataSet;
    dstAvailColumns: TADODataSet;
    dstSelectedColumns: TADODataSet;
    cds0: TClientDataSet;
    dstSelectedData: TADODataSet;


    procedure DataModuleCreate(Sender: TObject);
    procedure DataModuleDestroy(Sender: TObject);
  Private
    { Private declarations }
  Public
    { Public declarations }
    procedure SelectedColumns(arrID: Array of Integer);
    procedure SelectTheData;
  End;

Var
  dmoSearch: TdmoSearch;

Implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

Uses dmoConnectU;

{$R *.dfm}

Procedure TdmoSearch.DataModuleCreate(Sender: TObject);
Var
  iii: Integer;
Begin
  dstAvailColumns.Active:= True;
  iii:= dstAvailColumns.RecordCount;
End;


Procedure TdmoSearch.DataModuleDestroy(Sender: TObject);
Begin
  dstAvailColumns.Active:= False;
  cds0.Destroy;
End;


Procedure TdmoSearch.SelectedColumns(arrID: Array of Integer);
Var
  iCount, ii, iTheID: Integer;
  s1: String;
Begin
  iCount:= Length(arrID);
  If iCount > 0 then
  Begin
    iTheID:= arrID[0];
    dstSelectedColumns.Active := False;
    s1:= 'select ID, TableColumn, ColumnType, ColumnSize from qTableColumn '
               + 'WHERE ID = ' + IntToStr(iTheID);
    If iCount > 1 then
    Begin
      For ii := 1 to iCount-1 DO
      Begin
        iTheID:= arrID[ii];
        s1:= s1 + ' OR ID = ' + IntToStr(iTheID);
      End;
    End;
    dstSelectedColumns.CommandText:= s1;
    dstSelectedColumns.Active := True;
  End
  Else
  Begin
    //  IF the ID passed is zero close the dataset
    // The 'Clear' Button was pressed in the fSearch form
    dstSelectedColumns.Active:= False;
  End;
End;


Procedure TdmoSearch.SelectTheData;
Var
  sColumnList: TStringlist;
Begin
  // Add selected columns to string list
  // Sort Column List
  // Build dstSelectedData CommandText from sColumnList
End;


End.
