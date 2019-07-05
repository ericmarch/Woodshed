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
  ContactReportsClass,
  SMDBGrid1;


Type
  TfReportContact = class(TForm)
    frxDBDataset1: TfrxDBDataset;
    dscPrintRun01: TDataSource;
    frxReport1: TfrxReport;
    frxDBDataset2: TfrxDBDataset;
    dscPrintRun02: TDataSource;
    edtFromSurname: TLabeledEdit;
    edtToSurname: TLabeledEdit;
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    CheckBox3: TCheckBox;
    ComboBox1: TComboBox;
    ComboBox2: TComboBox;
    lblGroup1: TLabel;
    LblGroup2: TLabel;
    lblGroup3: TLabel;
    lblCategory1: TLabel;
    lblToCategory: TLabel;
    lblGroup4: TLabel;
    CheckBox4: TCheckBox;
    SMDBGrid1: TSMDBGrid;
    dscGridSelection: TDataSource;
    MainMenu1: TMainMenu;
    mnuPrint: TMenuItem;
    mnuXL: TMenuItem;
    mnuExit: TMenuItem;
    Procedure mnuExitClick(Sender: TObject);
    Procedure FormCreate(Sender: TObject);
    Procedure FormDestroy(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure mnuPrintClick(Sender: TObject);
    procedure SMDBGrid1CellClick(Column: TColumn);
  Private
    { Private declarations }
    sReportDir: String;    // See dmoConnect - Directory where Report Files are stored
    Procedure NewReportSelects(aDirectory: string);
    Procedure ClearForm;
  Public
    { Public declarations }
    fTop: Integer;
    fLeft: Integer;
  End;

Const
  CRLF = #13#10;
Var
  fReportContact: TfReportContact;
  aReport: TReportClass;    // ContactReportClass

Implementation

{$R *.dfm}

Uses dmoReportU;

Procedure TfReportContact.mnuExitClick(Sender: TObject);
Begin
  Close;
End;


Procedure TfReportContact.FormCreate(Sender: TObject);
var
  ii, iLn, iFont: Integer;
Begin
  dmoReport:= TdmoReport.Create(Self);
  aReport:= TReportClass.Create;
  sReportDir:= dmoReport.sDataDirectory + 'frf\';
End;


Procedure TfReportContact.FormDestroy(Sender: TObject);
Begin
  dmoReport.Free;
  aReport.Free;
End;


Procedure TfReportContact.FormShow(Sender: TObject);
Begin
  lblGroup1.Caption:= dmoReport.GroupName(1);
  lblGroup2.Caption:= dmoReport.GroupName(2);
  lblGroup3.Caption:= dmoReport.GroupName(3);
  lblGroup4.Caption:= dmoReport.GroupName(4);
  ClearForm;
End;


Procedure TfReportContact.NewReportSelects(aDirectory: string);       // Check Text File against Fast Report Files
Var                                                                   // Update as necessary
  MySearch: TSearchRec;                                               // To Do as at 1/7/19
  s1: String;
  FindResult, iGridRow, iGridRowCount: Integer;
Begin
  iGridRow:= 0;
  FindResult:=FindFirst(aDirectory+'\*.*', faAnyFile, MySearch);
  While FindNext(MySearch)=0 do
  Begin
    if (MySearch.Attr<>faDirectory)and(MySearch.Name<>'.')and(MySearch.Name<>'..') then
    Begin
//      iGridRow:= stgReportGrid.RowCount;
//      s1:= MySearch.Name;
//      stgReportGrid.Cells[0, iGridRow-1]:= s1;
//      stgReportGrid.RowCount:= iGridRow + 1;
    End;
  End;
//  stgReportGrid.RowCount:= iGridRow - 1;
End;


procedure TfReportContact.SMDBGrid1CellClick(Column: TColumn);
begin
  aReport.rID:= dmoReport.dstGridSelection.FieldByName('ID').AsInteger;
  dmoReport.SelectReportData(aReport);
  if aReport.rID > 0 then
  Begin
    mnuPrint.Enabled:= True;
  End
  Else
  Begin
    mnuPrint.Enabled:= False;
    ShowMessage('Report info not in ReportSelect Table');
  End;
End;

Procedure TfReportContact.ClearForm;
Begin
  CheckBox1.Checked:= True;
  CheckBox2.Checked:= True;
  CheckBox3.Checked:= True;
  CheckBox4.Checked:= True;
End;


Procedure TfReportContact.mnuPrintClick(Sender: TObject);
Begin
  dmoReport.SetPrintRunData(aReport);

  frxDBDataset1.DataSet:= dmoReport.dstContactPrintRun;
  frxReport1.LoadFromFile(aReport.rFileName);
  frxReport1.ShowReport;
End;


End.
