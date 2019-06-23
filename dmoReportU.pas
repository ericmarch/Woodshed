Unit dmoReportU;

Interface

Uses
  System.SysUtils,
  System.Classes,
  Data.DB,
  Data.Win.ADODB,
  Datasnap.DBClient,
  Vcl.DBGrids;

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
    Procedure DoEmail;
  Public
    { Public declarations }
    sDataDirectory: String;
    Function  GetReportData(sGroupList: TStringList):Integer;
    Procedure availableCategories(BookmarkList: TBookmarkList);
    Procedure SelectReportData(iReportNumber: Integer);
  End;

Var
  dmoReport: TdmoReport;

Implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

Uses
  dmoConnectU,
  ContactBuildSelectString;

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


Procedure  TdmoReport.availableCategories(BookmarkList: TBookmarkList);
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


Procedure TdmoReport.DoEmail;
Begin
  dstContactPrintRun.Active:= False;
  dstContactPrintRun.CommandText:= 'Select Surname, Firstname, Email from Card';
  dstContactPrintRun.Active:= True;
End;


Procedure TdmoReport.SelectReportData(iReportNumber: Integer);
Begin
  case iReportNumber OF
    5 :  DoEmail;
  end;
End;


End.
