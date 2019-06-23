Unit fContactReportU;

Interface

Uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Grids, Vcl.DBGrids,
  SMDBGrid, Vcl.Buttons,
  Data.DB,
  Data.Win.ADODB,
  Datasnap.DBClient,
  frxClass, frxDBSet, Vcl.StdCtrls, Vcl.ExtCtrls;

Type
  TfContactReport = class(TForm)
    btnDisplay: TSpeedButton;
    btnExit: TSpeedButton;
    dscPrintRun: TDataSource;
    smdbgContactReport: TSMDBGrid;
    smdbgContactReportGroup: TSMDBGrid;
    dscGridSelection: TDataSource;
    dscCardGroup: TDataSource;
    frxDBDataset1: TfrxDBDataset;
    frxReport1: TfrxReport;
    smdbgField: TSMDBGrid;
    dscCardCategory: TDataSource;
    TheCount: TLabeledEdit;
    frxDBDataset2: TfrxDBDataset;
    frxDBDataset3: TfrxDBDataset;
    dsc1: TDataSource;
    cbxIncludeInactive: TCheckBox;
    Procedure btnExitClick(Sender: TObject);
    Procedure FormCreate(Sender: TObject);
    Procedure FormDestroy(Sender: TObject);
    Procedure FormShow(Sender: TObject);
    Procedure btnDisplayClick(Sender: TObject);
    procedure smdbgContactReportGroupMouseUp(Sender: TObject;
      Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
  Private
    { Private declarations }
  Public
    { Public declarations }
    fTop: Integer;
    fLeft: Integer;
  End;

Var
  fContactReport: TfContactReport;
  BookmarkList: TBookmarkList;

Implementation

{$R *.dfm}

Uses dmoContactReportU;

Procedure TfContactReport.FormCreate(Sender: TObject);
Begin
  dmoContactReport:= TdmoContactReport.Create(Self);
End;

Procedure TfContactReport.FormDestroy(Sender: TObject);
Begin
  dmoContactReport.Destroy;
End;

Procedure TfContactReport.btnDisplayClick(Sender: TObject);
Var
  iReportRecords,
  ii: Integer;
  sReportname: String;
  sGroupsList: TStringList;
Begin
  sGroupsList:= TStringList.Create;
  if smdbgContactReportGroup.SelectedRows.Count > 0 then
    with smdbgContactReportGroup.DataSource.DataSet do
      for ii:=0 to smdbgContactReportGroup.SelectedRows.Count-1 do
      begin
        GotoBookmark(smdbgContactReportGroup.SelectedRows.Items[ii]);
        sGroupsList.Add(smdbgContactReportGroup.Fields[2].AsString)
      end;
  if ((smdbgContactReport.SelectedRows.Count > 0) AND
     (smdbgContactReportGroup.SelectedRows.Count > 0)) then
  Begin
    sReportName:= smdbgContactReport.DataSource.DataSet.FieldByName('ReportName').AsString;
    iReportRecords:= dmoContactReport.GetReportData(sGroupsList);
    TheCount.Text:= IntToStr(iReportRecords);
    if ((FileExists(sReportName)) AND
         (iReportRecords > 0)) then
    Begin
    frxReport1.LoadFromFile(sReportName);
    frxReport1.ShowReport;
    End;
  End
  Else
  Begin
    ShowMessage('Insufficient selections to design a report');
  End;
  sGroupsList.Free;
End;

Procedure TfContactReport.btnExitClick(Sender: TObject);
Begin
  Close;
End;

Procedure TfContactReport.FormShow(Sender: TObject);
Begin
  Top:= fTop;
  Left:= fLeft;
End;


Procedure TfContactReport.smdbgContactReportGroupMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
Var
  ii: Integer;
Begin
  if smdbgContactReportGroup.SelectedRows.Count > 0 then
  begin
    for ii := 0 to smdbgContactReportGroup.SelectedRows.Count-1 do
    begin
      smdbgContactReportGroup.DataSource.DataSet.Bookmark := smdbgContactReportGroup.SelectedRows[ii];
//      ShowMessage(dmoContactReport.dstCardGroup.FieldByName('Description').AsString);
    end;
  end;
End;


End.
