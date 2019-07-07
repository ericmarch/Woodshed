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
    fsGroup1Caption: String;             //  Can be differnt Group Names for different users
    fsGroup2Caption: String;
    fsGroup3Caption: String;
    fsGroup4Caption: String;
    fsGroup5Caption: String;
    fsGroup6Caption: String;
    Procedure GetGroupCaptions;
//    function GetKms: Integer;
//    function GetMakeModel: String;
  public
    property ID: Integer read fID write fID;
    property AccessLevel: Integer read fAccessLevel write fAccessLevel;
    property UID: String read fUID write fUID;
    property PWD: String read fPWD write fPWD;
    property DisplayName: String read fDispayName write fDispayName;
    property Email: String read fEmail write fEmail;
    property LoggedOn: Boolean read fLoggedOn write fLoggedOn;
    property LogonTime: TDateTime read fLogonTime write fLogonTime;
    property sGroup1Caption: String read fsGroup1Caption write fsGroup1Caption;
    property sGroup2Caption: String read fsGroup2Caption write fsGroup1Caption;
    property sGroup3Caption: String read fsGroup3Caption write fsGroup1Caption;
    property sGroup4Caption: String read fsGroup4Caption write fsGroup1Caption;
    property sGroup5Caption: String read fsGroup5Caption write fsGroup1Caption;
    property sGroup6Caption: String read fsGroup6Caption write fsGroup1Caption;
    constructor Create;
    destructor Destroy; override;
  end;

implementation


{ TContact }

uses dmoMaintenanceU;

constructor TSysUser.Create;
begin
  inherited;
  fLoggedON:= False;
  GetGroupCaptions;
end;

destructor TSysUser.Destroy;
begin
  Inherited Destroy;
end;

procedure TSysUser.GetGroupCaptions;
Begin
    fsGroup1Caption:= dmoMaintenance.GroupName(1);
    fsGroup2Caption:= dmoMaintenance.GroupName(2);
    fsGroup3Caption:= dmoMaintenance.GroupName(3);
    fsGroup4Caption:= dmoMaintenance.GroupName(4);
    fsGroup5Caption:= dmoMaintenance.GroupName(5);
    fsGroup6Caption:= dmoMaintenance.GroupName(6);
End;


end.
