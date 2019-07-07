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
  SysUserClass,
  SMDBGrid1, Vcl.DBCtrls;


Type
  TfReportContact = class(TForm)
    frxDBDataset1: TfrxDBDataset;
    dscPrintRun01: TDataSource;
    frxReport1: TfrxReport;
    frxDBDataset2: TfrxDBDataset;
    dscPrintRun02: TDataSource;
    edtFromSurname: TLabeledEdit;
    edtToSurname: TLabeledEdit;
    ComboBox1: TComboBox;
    ComboBox2: TComboBox;
    lblCategory1: TLabel;
    lblToCategory: TLabel;
    SMDBGrid1: TSMDBGrid;
    dscGridSelection: TDataSource;
    MainMenu1: TMainMenu;
    mnuPrint: TMenuItem;
    mnuXL: TMenuItem;
    mnuExit: TMenuItem;
    txtGroups: TStaticText;
    dbchbGroup1: TDBCheckBox;
    dbchbGroup2: TDBCheckBox;
    dbchbGroup3: TDBCheckBox;
    dbchbGroup4: TDBCheckBox;
    dbchbGroup5: TDBCheckBox;
    dbchbGroup6: TDBCheckBox;
    Procedure mnuExitClick(Sender: TObject);
    Procedure FormCreate(Sender: TObject);
    Procedure FormDestroy(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure mnuPrintClick(Sender: TObject);
    procedure SMDBGrid1DblClick(Sender: TObject);
    procedure SMDBGrid1CellClick(Column: TColumn);
  Private
    { Private declarations }
    Procedure Printit;
    Procedure NewReportSelects(aDirectory: string);      //  Tempory Code to reflect DB Changes
  Public
    { Public declarations }
    fTop: Integer;
    fLeft: Integer;
    aSysUser: TSysUser;
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
End;


Procedure TfReportContact.FormDestroy(Sender: TObject);
Begin
  dmoReport.Free;
  aReport.Free;
End;


Procedure TfReportContact.FormShow(Sender: TObject);
Begin
  dbchbGroup1.Caption:= aSysUser.sGroup1Caption;
  dbchbGroup2.Caption:= aSysUser.sGroup2Caption;
  dbchbGroup3.Caption:= aSysUser.sGroup3Caption;
  dbchbGroup4.Caption:= aSysUser.sGroup4Caption;
  dbchbGroup5.Caption:= aSysUser.sGroup5Caption;
  dbchbGroup6.Caption:= aSysUser.sGroup6Caption;
End;


Procedure TfReportContact.Printit;
Begin
  dmoReport.SelectReportData(aReport);
  dmoReport.SetPrintRunData(aReport);
  frxDBDataset1.DataSet:= dmoReport.dstContactPrintRun;
  frxReport1.LoadFromFile(aReport.rFileName);
  frxReport1.ShowReport;
End;


procedure TfReportContact.SMDBGrid1CellClick(Column: TColumn);
begin
  Printit;
end;

Procedure TfReportContact.SMDBGrid1DblClick(Sender: TObject);
Begin
  Printit;
End;


Procedure TfReportContact.mnuPrintClick(Sender: TObject);
Begin
  Printit;
End;


Procedure TfReportContact.NewReportSelects(aDirectory: string);       //  Tempory Code to reflect DB Changes
Var                                                                   // Check Text File against Fast Report Files
  MySearch: TSearchRec;                                               // Update as necessary
  s1: String;                                                         // To Do as at 1/7/19
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


End.
