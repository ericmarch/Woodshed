Unit dmoReportU;

Interface

Uses
  System.SysUtils,
  System.Classes,
  Data.DB,
  Data.Win.ADODB,
  Datasnap.DBClient,
  Vcl.DBGrids,
  ContactReportsClass;

Type
  TdmoReport = class(TDataModule)
    dstGridSelection: TADODataSet;
    dstContactPrintRun: TADODataSet;
    dstHeader: TADODataSet;
    dst1: TADODataSet;
    dstGroup: TADODataSet;
    Procedure  DataModuleCreate(Sender: TObject);
    Procedure  DataModuleDestroy(Sender: TObject);
  Private
    { Private declarations }
  Public
    { Public declarations }
    sDataDirectory: String;
    aReport: TReportClass;
    Function  UpdateWhere:String;
    Function  GroupName(iWhichGroup: Integer):String;
    Procedure SetPrintRunData(aReport:TReportClass);
    Procedure SelectReportData(aReport:TReportClass);
  End;

Var
  dmoReport: TdmoReport;

Implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

Uses
  dmoConnectU;

{$R *.dfm}

{ TdmoContactReport }


Procedure  TdmoReport.DataModuleCreate(Sender: TObject);
Begin
  dstGridSelection.Active:= True;
  sDataDirectory:= dmoConnect.sDirectory;
End;


Procedure  TdmoReport.DataModuleDestroy(Sender: TObject);
Begin
  dstGridSelection.Active:= False;
End;


Function  TdmoReport.GroupName(iWhichGroup: Integer):String;
Begin
  dstGroup.Active:= False;
  dstGroup.CommandText:= 'Select ID, Description FROM tbGroup WHERE ' + IntToStr(iWhichGroup);
  dstGroup.Active:= True;
  Result:= dstGroup.FieldByName('Description').AsString;
End;


Function  TdmoReport.UpdateWhere:String;
Var
  ii: Integer;
  sWherePlus, sWhere: String;
  SelectStr: WideString;
Begin
  sWhere:= areport.rWhere;

  if sWherePlus > ' ' then
  Begin
    sWhere:= sWhere + ' AND (' + sWherePlus + ')'
  End;
  sWhere:= aReport.rWhere;

  SelectStr:= aReport.rSelect + ' '
            + aReport.rFrom + ' '
            + sWhere + ' '
            + aReport.rOrderBy;
  aReport.rSelect:= SelectStr;
End;


Procedure TdmoReport.SelectReportData(aReport:TReportClass);
Begin
  aReport.rID:= dstGridSelection.FieldByName('rID').AsInteger;
  dst1.Active:= False;
  dst1.CommandText:= 'Select * from ReportSelect WHERE rID = ' + IntToStr(aReport.rID);
  dst1.Active:= True;
  if dst1.RecordCount = 1 then
  Begin
    aReport.rDefault:= dst1.FieldByName('rDefault').AsBoolean;
    aReport.rName:= dst1.FieldByName('rName').AsString;
    aReport.rFileName:= sDataDirectory + 'DBReports\' + aReport.rName;
    aReport.rDescription:= dst1.FieldByName('rDescription').AsString;
    aReport.rSelect:= dst1.FieldByName('rColumns').AsString;
    aReport.rFrom:= dst1.FieldByName('rFrom').AsString;
    aReport.rWhere:= dst1.FieldByName('rWhere').AsString;
    aReport.rOrderBy:= dst1.FieldByName('rOrderBy').AsString;
  End
  Else
  Begin
    aReport.rID:= 0;
  End;
End;


Procedure TdmoReport.SetPrintRunData(aReport: TReportClass);
Var
  s1: String;
Begin
  s1:= aReport.rSelect + ' ' + aReport.rFrom;
  if aReport.rWhere > '' then
    s1:= s1 + ' ' + aReport.rWhere;
  if aReport.rOrderBy > '' Then
    s1:= s1 + ' ' + aReport.rOrderBy;
  dstContactPrintRun.Active:= False;
  dstContactPrintRun.CommandText:= s1;
  dstContactPrintRun.Active:= True;
End;


End.
