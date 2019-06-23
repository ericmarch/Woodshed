program Woodshed;

uses
  Vcl.Forms,
  fLoginU in 'fLoginU.pas' {fLogin},
  fMaintenanceU in 'fMaintenanceU.pas' {fMaintenance},
  ContactClass in 'ContactClass.pas',
  dmoMaintenanceU in 'dmoMaintenanceU.pas' {dmoMaintenance: TDataModule},
  dmoConnectU in 'dmoConnectU.pas' {dmoConnect: TDataModule},
  CheckPhoneNumberU in 'CheckPhoneNumberU.pas',
  dmoLoginU in 'dmoLoginU.pas' {dmoLogin: TDataModule},
  fMainU in 'fMainU.pas' {fMain},
  SysUserClass in 'SysUserClass.pas',
  fAddCardU in 'fAddCardU.pas' {fAddCard},
  fSearchU in 'fSearchU.pas' {fSearch},
  dmoSearchU in 'dmoSearchU.pas' {dmoSearch: TDataModule},
  fReportContactU in 'fReportContactU.pas' {fReportContact},
  dmoReportU in 'dmoReportU.pas' {dmoReport: TDataModule},
  ContactBuildSelectString in 'ContactBuildSelectString.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.Title := 'Contacts';
  Application.CreateForm(TdmoConnect, dmoConnect);
  Application.CreateForm(TfMain, fMain);
  Application.Run;
end.
