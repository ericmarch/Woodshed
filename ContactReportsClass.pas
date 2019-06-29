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
    frName: String;
    frFileName: String;
    frSelect: String;
    frFrom: String;
    frWhere: String;
    frOrderBy: String;

  Public
    property rID: Integer read frID write frID;
    property rName: String read frName write frName;
    property rFileName: String read frFileName write frFileName;
    property rSelect: String read frSelect write frSelect;
    property rFrom: String read frFrom write frFrom;
    property rWhere: String read frWhere write frWhere;
    property rOrderBy: String read frOrderBy write frOrderBy;

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
