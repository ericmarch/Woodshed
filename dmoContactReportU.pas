unit dmoContactReportU;

interface

uses
  System.SysUtils,
  System.Classes,
  Data.DB,
  Data.Win.ADODB,
  Datasnap.DBClient,
  Vcl.DBGrids;

type
  TdmoContactReport = class(TDataModule)
    dstGridSelection: TADODataSet;
    dstCardGroup: TADODataSet;
    dstContactPrintRun: TADODataSet;
    dstCardCategory: TADODataSet;
    dst1: TADODataSet;
    procedure DataModuleCreate(Sender: TObject);
    procedure DataModuleDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    Function  GetReportData(sGroupList: TStringList):Integer;
    Procedure availableCategories(BookmarkList: TBookmarkList);
  End;

var
  dmoContactReport: TdmoContactReport;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses dmoConnectU;

{$R *.dfm}

{ TdmoContactReport }


procedure TdmoContactReport.DataModuleCreate(Sender: TObject);
begin
  dstGridSelection.Active:= True;
  dstCardGroup.Active:= True;
  dstCardCategory.Active:= True;
end;

procedure TdmoContactReport.DataModuleDestroy(Sender: TObject);
begin
  dstGridSelection.Active:= False;
  dstCardGroup.Active:= False;
  dstCardCategory.Active:= False;
end;

procedure TdmoContactReport.availableCategories(BookmarkList: TBookmarkList);
Var
  ii: Integer;
begin
  for ii := 0 to BookmarkList.Count - 1 do
  Begin
    dstCardGroup.GotoBookmark(BookmarkList[ii]);
  End;
end;


Function  TdmoContactReport.GetReportData(sGroupList: TStringList):Integer;
Var
  ii: Integer;
  sCols, sFrom, sWherePlus, sOrderBy, sWhere: String;
  SelectStr: WideString;
begin
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


End.
