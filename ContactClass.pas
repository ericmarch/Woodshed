unit ContactClass;

interface

uses
  Classes,
  SysUtils,
  StrUtils;

type
  TContact = class
  private
    fbNewContact: Boolean;
    fbNewAdded: Boolean;
    fiCardID: Integer;
    fsIDAlpha: String;
    fsSurname: String;
    fsFirstName: String;
    bGroup1: Boolean;
    bGroup2: Boolean;
    bGroup3: Boolean;
    bGroup4: Boolean;
    bGroup5: Boolean;
    bGroup6: Boolean;
    bNoteAdded: Boolean;
    sPostalTown: String;
    sPostalState: String;
    iPostalPcode: Integer;
    sLastNote: WideString;
    sUserName: String;
    sUserPWD: String;
    fbIsMember: Boolean;
//    Function  getKms: Integer;
    Function  GetAlphaID: String;
//    function GetRego: String;
  public
    property bNewContact: Boolean read fbNewContact write fbNewContact;
    property bNewAdded: Boolean read fbNewAdded write fbNewAdded;
    property iCardID: Integer read fiCardID write fiCardID;
    property sNewAlphaID: String read GetAlphaID;
    property sIDAlpha: String read fsIDAlpha write fsIDAlpha;
    property sSurname: String read fsSurname write fsSurname;
    property sFirstName: String read fsFirstName write fsFirstName;
    property Group1: Boolean read bGroup1 write bGroup1;
    property Group2: Boolean read bGroup2 write bGroup2;
    property Group3: Boolean read bGroup3 write bGroup3;
    property Group4: Boolean read bGroup4 write bGroup4;
    property Group5: Boolean read bGroup5 write bGroup5;
    property Group6: Boolean read bGroup6 write bGroup6;
    property NoteAdded: Boolean read bNoteAdded write bNoteAdded;
    property PostalTown: String read sPostalTown write sPostalTown;
    property PostalState: String read sPostalState write sPostalState;
    property PostalPcode: Integer read iPostalPcode write iPostalPcode;
    property LastNote: WideString read sLastNote write sLastNote;
    property UserName: String read sUserName write sUserName;
    property UserPWD: String read sUserPWD write sUserPWD;
    property bIsMember: Boolean Read fbIsMember Write fbIsMember;

    constructor Create;
    destructor Destroy; override;
  end;

  TMember = Class
  Private
    fiCardID: Integer;
    fbIsInactive: Boolean;
    fiMemberType: Integer;
    fiStatus: Integer;
    fiGender: Integer;
    fdAccepted: TDate;
    fdDOB: TDate;
    fbBadgePrinted: Boolean;
    fiOccupation: Integer;
    fsOccupationDetail: String;
    fbFinancial: Boolean;
    fdReceiptDate: TDate;
    fsReceiptNum: String;
    fdFinancialTo: TDate;
    fbChildClearance: Boolean;
    fbPoliceClearance: Boolean;
  Public
    property iCardID: Integer Read fiCardID Write fiCardID;
    property bIsInactive: Boolean Read fbIsInactive Write fbIsInactive;
    property iMemberType: Integer Read fiMemberType Write fiMemberType;
    property iStatus: Integer Read fiStatus Write fiStatus;
    property iGender: Integer Read fiGender Write fiGender;
    property dAccepted: TDate Read fdAccepted Write fdAccepted;
    property dDOB: TDate Read fdDOB Write fdDOB;
    property bBadgePrinted: Boolean Read fbBadgePrinted Write fbBadgePrinted;
    property iOccupation: Integer Read fiOccupation Write fiOccupation;
    property sOccupationDetail: String Read fsOccupationDetail Write fsOccupationDetail;
    property bFinancial: Boolean Read fbFinancial Write fbFinancial;
    property dReceiptDate: TDate Read fdReceiptDate Write fdReceiptDate;
    property sReceiptNum: String Read fsReceiptNum Write fsReceiptNum;
    property dFinancialTo: TDate Read fdFinancialTo Write fdFinancialTo;
    property bChildClearance: Boolean Read fbChildClearance Write fbChildClearance;
    property bPoliceClearance: Boolean Read fbPoliceClearance Write fbPoliceClearance;
    constructor Create;
    destructor Destroy; override;
  End;

implementation


{ TContact }

constructor TContact.Create;
begin
  inherited;
end;

destructor TContact.Destroy;
begin
  Inherited Destroy;
end;


Function  TContact.GetAlphaID: String;
Var
  fiL1, fiL2, fiL3: Integer;
  fs1: String;
  fLsSurname, fLsFirstName: String;
begin
  fLsSurname:= fsSurname;
  fLsFirstname:= fsFirstName;
  fs1:= fLsSurname + fLsFirstname;
  fiL1:= Length(fLsSurname);
  fiL2:= Length(fLsFirstname);
  fiL3:= fiL1 + fiL2;
  if fiL3 < 6 then
  Begin
    If (fiL1 < 3) AND (fiL2 < 3) then
    Begin
      while fiL1 < 3 do
      Begin
        fLsSurname:= fLsSurname + '0';
        fiL1:= fiL1 + 1;
      End;
      while fiL2 < 3 do
      Begin
        fLsFirstname:= fLsFirstname + '0';
        fiL2:= fiL2 + 1;
      End;
    End
    Else
    Begin
      if fiL1 < 3 then
      Begin
        while fiL3 < 6 do
        Begin
          fLsFirstname:= fLsFirstname + '0';
          fiL3:= fiL3 + 1;
        End;
      End;
    End;
  End;
    // First 3 of Surname + First 3 of FirstName
  if Length(fLsSurname) > 3 then
  Begin
    fLsSurname:= Copy(fLsSurname, 1, 3);
  End;
  if Length(fLsFirstName) > 3 then
  Begin
    fLsFirstName:= Copy(fLsFirstName, 1, 3);
  End;
  Result:= fLsSurname + fLsFirstName;
End;


{ TMember }

constructor TMember.Create;
begin
  inherited;
end;

destructor TMember.Destroy;
begin
  Inherited Destroy;
end;


End.
