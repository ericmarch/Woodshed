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
    MainMenu1: TMainMenu;
    mnuSelect: TMenuItem;
    mnuDisplay: TMenuItem;
    mnuExit: TMenuItem;
    stgReportGrid: TStringGrid;
    StaticText1: TStaticText;
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
    Procedure mnuExitClick(Sender: TObject);
    Procedure FormCreate(Sender: TObject);
    Procedure FormDestroy(Sender: TObject);
    Procedure stgReportGridDblClick(Sender: TObject);
    Procedure stgReportGridClick(Sender: TObject);
    Procedure mnuSelectClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure mnuDisplayClick(Sender: TObject);
  Private
    { Private declarations }
    sReportDir: String;    // See dmoConnect - Directory where Report Files are stored
    Procedure DoSelect;
    Procedure ShowReportNames(aDirectory: string);
    Procedure GetReportOptions;
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
  sReportDir:= dmoReport.sDataDirectory + 'frf\Contacts\';
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
  ClearForm;
End;


Procedure TfReportContact.ShowReportNames(aDirectory: string);
Var
  MySearch: TSearchRec;
  s1: String;
  FindResult, iGridRow, iGridRowCount: Integer;
Begin
  iGridRow:= 0;
  FindResult:=FindFirst(aDirectory+'\*.*', faAnyFile, MySearch);
  While FindNext(MySearch)=0 do
  Begin
    if (MySearch.Attr<>faDirectory)and(MySearch.Name<>'.')and(MySearch.Name<>'..') then
    Begin
      iGridRow:= stgReportGrid.RowCount;
      s1:= MySearch.Name;
      stgReportGrid.Cells[0, iGridRow-1]:= s1;
      stgReportGrid.RowCount:= iGridRow + 1;
    End;
  End;
  stgReportGrid.RowCount:= iGridRow - 1;
End;


Procedure TfReportContact.ClearForm;
Begin
  stgReportGrid.RowCount:= 1;
  stgReportGrid.Cells[0, 0]:= '';
  mnuDisplay.Enabled:= False;
  ShowReportNames(sReportdir);
End;


Procedure TfReportContact.mnuSelectClick(Sender: TObject);
begin
  ClearForm;
End;


Procedure TfReportContact.mnuDisplayClick(Sender: TObject);
Begin
  dmoReport.SetPrintRunData(aReport);

  frxDBDataset1.DataSet:= dmoReport.dstContactPrintRun;
  frxReport1.LoadFromFile(aReport.rFileName);
  frxReport1.ShowReport;
End;


Procedure TfReportContact.GetReportOptions;
Begin
  aReport.rName:= stgReportGrid.Cells[0, stgReportGrid.Row];
  aReport.rFileName:= sReportDir + aReport.rName;
  ShowMessage('File = ' + sReportDir + CRLF
        + 'Name = ' + aReport.rName);
  If dmoReport.SelectReportData(aReport) > 0 Then
  Begin
      mnuDisplay.Enabled:= True;
  End
  Else
  Begin
    mnuDisplay.Enabled:= False;
    ShowMessage('Selected report does not exist in ' + CRLF + 'Table tbReportSelect');
  End;
End;


Procedure TfReportContact.stgReportGridClick(Sender: TObject);
Begin
  GetReportOptions;
End;


Procedure TfReportContact.stgReportGridDblClick(Sender: TObject);
Begin
  GetReportOptions;
End;


Procedure TfReportContact.DoSelect;
Begin
  ShowReportNames(sReportdir);
End;


End.
