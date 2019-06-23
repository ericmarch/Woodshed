unit fReportsU;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Data.DB, Vcl.Grids,
  Vcl.DBGrids, SMDBGrid;

type
  TfCardReports = class(TForm)
    btnExit: TSpeedButton;
    btnDisplay: TSpeedButton;
    smdbfReport: TSMDBGrid;
    smdbgGroup: TSMDBGrid;
    SMDBGrid1: TSMDBGrid;
    dsccardreportName: TDataSource;
    dscCardReportFilter: TDataSource;
    dscCardReportField: TDataSource;
    dscPrinyRun: TDataSource;
    procedure btnExitClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fCardReports: TfCardReports;

implementation

{$R *.dfm}

uses dmoContactReportU;

procedure TfCardReports.btnExitClick(Sender: TObject);
begin
  Close;
end;

procedure TfCardReports.FormCreate(Sender: TObject);
begin
  dmoContactReport:= TdmoContactReport.Create(Self);
end;

procedure TfCardReports.FormDestroy(Sender: TObject);
begin
  dmoContactReport.Destroy;
end;

end.
