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
    dstCardGroup: TADODataSet;
    dstContactPrintRun: TADODataSet;
    dstCardCategory: TADODataSet;
    dst1: TADODataSet;
    Procedure  DataModuleCreate(Sender: TObject);
    Procedure  DataModuleDestroy(Sender: TObject);
  Private
    { Private declarations }
    Procedure SelectEmailInfo;
    Procedure SelectGroupInfo;
  Public
    { Public declarations }
    sDataDirectory: String;
    aReport: TReportClass;
    Function  GetReportData(sGroupList: TStringList):Integer;
    Function  GroupName(iWhichGroup: Integer):String;
    Procedure availableCategories(BookmarkList: TBookmarkList);
    Procedure SetPrintRunData(aReport:TReportClass);
    Function  SelectReportData(aReport:TReportClass): Integer;
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
  dstCardGroup.Active:= True;
  dstCardCategory.Active:= True;
  sDataDirectory:= dmoConnect.sDirectory;
End;


Procedure  TdmoReport.DataModuleDestroy(Sender: TObject);
Begin
  dstGridSelection.Active:= False;
  dstCardGroup.Active:= False;
  dstCardCategory.Active:= False;
End;


Function  TdmoReport.GroupName(iWhichGroup: Integer):String;
Begin
  dst1.Active:= False;
  dst1.CommandText:= 'Select * FROM CardGroup Where ID = ' + IntToStr(iWhichGroup);
  dst1.Active:= True;
  Result:= dst1.FieldByName('Description').AsString;
End;


Procedure TdmoReport.availableCategories(BookmarkList: TBookmarkList);
Var
  ii: Integer;
Begin
  for ii := 0 to BookmarkList.Count - 1 do
  Begin
    dstCardGroup.GotoBookmark(BookmarkList[ii]);
  End;
End;


Function  TdmoReport.GetReportData(sGroupList: TStringList):Integer;
Var
  ii: Integer;
  sCols, sFrom, sWherePlus, sOrderBy, sWhere: String;
  SelectStr: WideString;
Begin
  sCols:= dstGridSelection.FieldByName('SelectString').AsString;
  sFrom:= dstGridSelection.FieldByName('SelectFrom').AsString;
  sWherePlus:= dstGridSelection.FieldByName('SelectWhere').AsString;
  sOrderBy:= dstGridSelection.FieldByName('SelectOrderBy').AsString;
  sWhere:= 'WHERE ((CardGroup.Description = ';
  for ii := 0 to sGroupList.Count - 1 do
  Begin
    sWhere:= sWhere + QuotedStr(sGrouplist[ii]) + ')';
    if ii < sGroupList.Count - 1 then
    Begin
      sWhere:= sWhere + ' OR (CardGroup.Description = ';
    End;
  End;

  if sWherePlus > 'x' then
  Begin
    sWhere:= sWhere + ' AND (' + sWherePlus + ')'
  End;
  sWhere:= sWhere + ')';

    SelectStr:= sCols + ' '
            + sFrom + ' '
            + sWhere + ' '
            + sOrderBy;
    dstContactPrintRun.Active:= False;
    dstContactPrintRun.CommandText:= SelectStr;
    dstContactPrintRun.Active:= True;
    if dstContactPrintRun.RecordCount > 0 then
    Begin
      Result:= dstContactPrintRun.RecordCount;
      dst1.Active:= False;
      dst1.CommandText:= 'SELECT COUNT(CardID)' + ' ' + sFrom + ' ' + sWhere;   // Used in report
      dst1.Active:= True;
    End
    Else
    Begin
      Result:= 0;
    End;
End;


procedure TdmoReport.SelectEmailInfo;
begin
  dstContactPrintRun.Active:= False;
  dstContactPrintRun.CommandText:= 'Select Surname, Firstname, Email from Card';
  dstContactPrintRun.Active:= True;
end;

procedure TdmoReport.SelectGroupInfo;
begin
  dstContactPrintRun.Active:= False;
  dstContactPrintRun.CommandText:= 'Select Surname, Firstname, Email from Card';
  dstContactPrintRun.Active:= True;
end;

Function  TdmoReport.SelectReportData(aReport:TReportClass): Integer;
Begin
  dst1.Active:= False;
  dst1.CommandText:= 'Select * from tbReportSelect WHERE ReportName = ' + QuotedStr(aReport.rName);
  dst1.Active:= True;
  if dst1.RecordCount = 1 then
  Begin
    aReport.rID:= dst1.FieldByName('ID').AsInteger;
    aReport.rSelect:= dst1.FieldByName('SelectColumns').AsString;
    aReport.rFrom:= dst1.FieldByName('SelectFrom').AsString;
    aReport.rWhere:= dst1.FieldByName('SelectWhere').AsString;
    aReport.rOrderBy:= dst1.FieldByName('SelectOrderBy').AsString;
    Result:= dst1.FieldByName('ID').AsInteger;
  End
  Else
  Begin
    Result:= 0;
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
