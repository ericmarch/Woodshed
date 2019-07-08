unit SysUserClass;

interface

uses
  Classes,
  SysUtils,
  StrUtils;

type
  TSysUser = class
  private
    fsExeDirectory: String;
    fID: Integer;
    fAccessLevel: Integer;
    fUID: String;
    fPWD: String;
    fDispayName: String;
    fEmail: String;
    fLoggedOn: Boolean;
    fLogonTime: TDateTime;
    fsGroup1Caption: String;             //  Can be differnt Group Names for different users
    fsGroup2Caption: String;
    fsGroup3Caption: String;
    fsGroup4Caption: String;
    fsGroup5Caption: String;
    fsGroup6Caption: String;
    Procedure GetGroupCaptions;
  public
    property sExeDirectory: String read fsExeDirectory write fsExeDirectory;
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

uses dmoSystemU;

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
  fsGroup1Caption:= dmoSystem.GetGroupCaption(1);
  fsGroup2Caption:= dmoSystem.GetGroupCaption(2);
  fsGroup3Caption:= dmoSystem.GetGroupCaption(3);
  fsGroup4Caption:= dmoSystem.GetGroupCaption(4);
  fsGroup5Caption:= dmoSystem.GetGroupCaption(5);
  fsGroup6Caption:= dmoSystem.GetGroupCaption(6);
End;


end.
