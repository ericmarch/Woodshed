unit fReportContactU;

interface

uses
  Winapi.Windows, Winapi.Messages,
  System.SysUtils, System.Variants, System.Classes,
  Vcl.Dialogs,
  Vcl.Buttons,
  Vcl.Controls,
  Vcl.DBGrids,
  Vcl.ExtCtrls,
  Vcl.Forms,
  Vcl.Graphics,
  Vcl.Grids,
  Vcl.Menus,
  Vcl.StdCtrls,
  Data.DB,
  Data.Win.ADODB,
  Datasnap.DBClient,
  SMDBGrid,
  frxClass,
  frxDBSet,
  SMDBGrid1;


Type
  TfReportContact = class(TForm)
    MainMenu1: TMainMenu;
    Select: TMenuItem;
    Display1: TMenuItem;
    Exit1: TMenuItem;
    stgReports: TStringGrid;
    StaticText1: TStaticText;
    frxDBDataset1: TfrxDBDataset;
    dscPrintRun: TDataSource;
    frxReport1: TfrxReport;
    Procedure Exit1Click(Sender: TObject);
    Procedure FormCreate(Sender: TObject);
    Procedure FormDestroy(Sender: TObject);
    Procedure stgReportsDblClick(Sender: TObject);
    Procedure stgReportsClick(Sender: TObject);
    Procedure SelectClick(Sender: TObject);
  Private
    { Private declarations }
    Procedure DoSelect;
    Procedure SearchFiles(aDirectory: string);
    Procedure GetReportOptions;
    Procedure ClearForm;
  Public
    { Public declarations }
    fTop: Integer;
    fLeft: Integer;
  End;

Var
  fReportContact: TfReportContact;

Implementation

{$R *.dfm}

Uses dmoReportU;

Procedure TfReportContact.Exit1Click(Sender: TObject);
Begin
  Close;
End;


Procedure TfReportContact.FormCreate(Sender: TObject);
Begin
  dmoReport:= TdmoReport.Create(Self);
  DoSelect;
End;


Procedure TfReportContact.FormDestroy(Sender: TObject);
Begin
  dmoReport.Free;
End;


Procedure TfReportContact.SearchFiles(aDirectory: string);
Var
  MySearch: TSearchRec;
  s1: String;
  FindResult, iGridRow, iGridRowCount: Integer;
Begin
  FindResult:=FindFirst(aDirectory+'\*.*', faAnyFile, MySearch);
  While FindNext(MySearch)=0 do
  Begin
    if (MySearch.Attr<>faDirectory)and(MySearch.Name<>'.')and(MySearch.Name<>'..') then
    Begin
      iGridRow:= stgReports.RowCount;
      s1:= MySearch.Name;
      stgReports.Cells[0, iGridRow-1]:= s1;
      stgReports.RowCount:= iGridRow + 1;
    End;
  End;
  stgReports.RowCount:= iGridRow - 1;
End;


Procedure TfReportContact.ClearForm;
Begin
   stgReports.RowCount:= 1;
   stgReports.Cells[0, 0]:= '';
End;


Procedure TfReportContact.DoSelect;
Var
  sFrxDir: String;    // Directory where Report Files are stored
Begin
  sFrxDir:= dmoReport.sDataDirectory + 'frf\Contacts\';
  SearchFiles(sFrxdir);
End;


Procedure TfReportContact.SelectClick(Sender: TObject);
begin
  ClearForm;
  DoSelect;
End;


Procedure TfReportContact.GetReportOptions;
Var
  sReportname, sFrxFile: String;
  sFrxDir: String;    // Directory where Report Files are stored
Begin
  sFrxDir:= dmoReport.sDataDirectory + 'frf\Contacts\';
  sReportName:= stgReports.Cells[0, stgReports.Row];
  sFrxFile:= sFrxDir + sReportName;
//  ShowMessage(sFrxFile + ' ' + IntToStr(stgReports.Row));
  dmoReport.SelectReportData(stgReports.Row + 1);
  frxDBDataset1.DataSet:= dmoReport.dstContactPrintRun;
  frxReport1.LoadFromFile(sFrxFile);
  frxReport1.ShowReport;
End;


Procedure TfReportContact.stgReportsClick(Sender: TObject);
Begin
  GetReportOptions;
End;


Procedure TfReportContact.stgReportsDblClick(Sender: TObject);
Begin
  GetReportOptions;
End;


End.
