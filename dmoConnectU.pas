unit dmoConnectU;

interface

uses
  System.SysUtils, System.Classes, Data.DB, Data.Win.ADODB;

type
  TdmoConnect = class(TDataModule)
    conConnect: TADOConnection;
    procedure conConnectBeforeConnect(Sender: TObject);
    procedure DataModuleCreate(Sender: TObject);
    procedure DataModuleDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    sDirectory: String;
  end;

var
  dmoConnect: TdmoConnect;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

procedure TdmoConnect.conConnectBeforeConnect(Sender: TObject);
var
  iLast: Integer;
  vDatasource:TStringList;
  ds:Widestring;
  initString:string;
begin

  InitString:= 'Provider=Microsoft.Jet.OLEDB.4.0;User ID=Admin;Mode=Share Deny None;'
             + 'Jet OLEDB:System database="";Jet OLEDB:Registry Path="";Jet OLEDB:Database Password="";'
             + 'Jet OLEDB:Engine Type=5;Jet OLEDB:Database Locking Mode=1;'
             + 'Jet OLEDB:Global Partial Bulk Ops=2;Jet OLEDB:Global Bulk Transactions=1;'
             + 'Jet OLEDB:New Database Password="";Jet OLEDB:Create System Database=False;'
             + 'Jet OLEDB:Encrypt Database=False;'
             + 'Jet OLEDB:Compact Without Replica Repair=False;Jet OLEDB:SFP=False;';

  ds:= 'E:\database\Woodshed.mdb';
  if fileexists('connect.cfg') then begin
    vDataSource:=TStringList.Create;
    vDataSource.LoadFromFile('connect.cfg');
    ds:=vDataSource.Strings[0];
    freeandnil(vDataSource);
  end;
  conConnect.ConnectionString:= initString + 'Data Source=' + ds;
  iLast:= LastDelimiter('\', ds);
  sDirectory:= Copy(ds, 1, iLast);
end;

procedure TdmoConnect.DataModuleCreate(Sender: TObject);
begin
  conConnect.Connected:= True;
end;

procedure TdmoConnect.DataModuleDestroy(Sender: TObject);
begin
  conConnect.Connected:= False;
end;

end.
