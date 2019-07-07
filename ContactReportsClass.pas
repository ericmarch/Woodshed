Unit ContactReportsClass;

Interface
Uses
  Classes,
  SysUtils,
  StrUtils;

Type
  TReportClass = class
  Private
    frID: Integer;
    frDefault: Boolean;
    frName: String;
    frFileName: String;
    frDescription: String;
    frSelect: WideString;
    frFrom: String;
    frWhere: String;
    frOrderBy: String;
    // Selections from fReportContact passed to dmoReport
    frGroup1: Boolean;
    frGroup2: Boolean;
    frGroup3: Boolean;
    frGroup4: Boolean;
    frGroup5: Boolean;
    frGroup6: Boolean;
    frCategory1: String;
    frCategory2: String;
    frSurname1: String;
    frSurname2: String;

  Public
    property rID: Integer read frID write frID;
    property rDefault: Boolean read frDefault write frDefault;
    property rName: String read frName write frName;
    property rFileName: String read frFileName write frFileName;
    property rDescription: String read frDescription write frDescription;
    property rSelect: WideString read frSelect write frSelect;
    property rFrom: String read frFrom write frFrom;
    property rWhere: String read frWhere write frWhere;
    property rOrderBy: String read frOrderBy write frOrderBy;

    property rGroup1: Boolean read frGroup1 write frGroup1;
    property rGroup2: Boolean read frGroup2 write frGroup2;
    property rGroup3: Boolean read frGroup3 write frGroup3;
    property rGroup4: Boolean read frGroup4 write frGroup4;
    property rGroup5: Boolean read frGroup5 write frGroup5;
    property rGroup6: Boolean read frGroup6 write frGroup6;
    Property rCategory1: String read frCategory1 write frCategory1;
    Property rCategory2: String read frCategory2 write frCategory2;
    Property rSurname1: String read frSurname1 write frSurname1;
    Property rSurname2: String read frSurname2 write frSurname2;

    constructor Create;
    destructor Destroy; override;
  End;

Implementation


{ TReport }

Constructor TReportClass.Create;
Begin
  Inherited;
End;

Destructor TReportClass.Destroy;
Begin
  Inherited Destroy;
End;


End.
