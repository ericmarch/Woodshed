unit SysUserClass;

interface

uses
  Classes,
  SysUtils,
  StrUtils;

type
  TSysUser = class
  private
    fID: Integer;
    fAccessLevel: Integer;
    fUID: String;
    fPWD: String;
    fDispayName: String;
    fEmail: String;
    fLoggedOn: Boolean;
    fLogonTime: TDateTime;
//    function GetKms: Integer;
//    function GetMakeModel: String;
//    function GetRego: String;
  public
    property ID: Integer read fID write fID;
    property AccessLevel: Integer read fAccessLevel write fAccessLevel;
    property UID: String read fUID write fUID;
    property PWD: String read fPWD write fPWD;
    property DisplayName: String read fDispayName write fDispayName;
    property Email: String read fEmail write fEmail;
    property LoggedOn: Boolean read fLoggedOn write fLoggedOn;
    property LogonTime: TDateTime read fLogonTime write fLogonTime;
    constructor Create;
    destructor Destroy; override;
  end;

implementation


{ TContact }

constructor TSysUser.Create;
begin
  inherited;
  fLoggedON:= False;
end;

destructor TSysUser.Destroy;
begin
  Inherited Destroy;
end;

end.
