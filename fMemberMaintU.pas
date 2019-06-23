unit fMemberMaintU;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Vcl.Buttons, Data.DB,
  Vcl.Grids, Vcl.DBGrids, SMDBGrid, Vcl.StdCtrls, Vcl.DBCtrls, Vcl.Mask;

type
  TfMemberMaint = class(TForm)
    PageControl1: TPageControl;
    tsSearch: TTabSheet;
    tsMaintain: TTabSheet;
    btnCancel: TSpeedButton;
    btnSave: TSpeedButton;
    btnExit: TSpeedButton;
    smdbgMemberSearchGrid: TSMDBGrid;
    dscCard: TDataSource;
    edtFirstNameSearch: TEdit;
    edtSurname: TEdit;
    edtMobile: TEdit;
    txtFirstNameSearch: TStaticText;
    txtMobileSearch: TStaticText;
    txtSurnameSearch: TStaticText;
    btnAdd: TSpeedButton;
    lblFirstname: TLabel;
    lblSurname: TLabel;
    lblPreferredName: TLabel;
    dbePreferredName: TDBEdit;
    dbeMobile: TDBEdit;
    txtMobile: TStaticText;
    txtLandLine: TStaticText;
    dbeLandLine: TDBEdit;
    dbePostalLine1: TDBEdit;
    dbePostalLine2: TDBEdit;
    dbePostalPostcade: TDBEdit;
    dbePostalState: TDBEdit;
    StaticText4: TStaticText;
    DBLookupListBox1: TDBLookupListBox;
    dbluComboBoxCategories: TDBLookupComboBox;
    StaticText1: TStaticText;
    txtNoteAdded: TStaticText;
    smdbgNoteAbbrev: TSMDBGrid;
    txtNoteDetail: TStaticText;
    memNote: TMemo;
    dbeFirstName: TDBEdit;
    dbeSurname: TDBEdit;
    dscMemSearchGrid: TDataSource;
    DBEdit1: TDBEdit;
    cbxInActive: TCheckBox;
    txtDOB: TStaticText;
    DBEdit2: TDBEdit;
    dscMember: TDataSource;
    procedure FormCreate(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
    procedure btnExitClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure smdbgMemberSearchGridDblClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure edtSurnameKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
    procedure CardSelected;
    procedure UpdSearchGrid;
  public
    { Public declarations }
    fTop: Integer;
    fLeft: Integer;
  end;

var
  fMemberMaint: TfMemberMaint;

implementation

{$R *.dfm}

uses dmoMemberU;

procedure TfMemberMaint.FormCreate(Sender: TObject);
begin
  dmoMember:= TdmoMember.Create(Self);
  dmoMember.dstMemSearchGrid.Active:= True;
end;

procedure TfMemberMaint.FormDestroy(Sender: TObject);
begin
  dmoMember.Destroy;
  dmoMember.dstMemSearchGrid.Active:= False;
end;

procedure TfMemberMaint.FormShow(Sender: TObject);
begin
  PageControl1.TabIndex:= 0;
  tsSearch.Show;
end;

procedure TfMemberMaint.smdbgMemberSearchGridDblClick(Sender: TObject);
begin
  PageControl1.TabIndex:= 1;
  tsMaintain.Show;
end;


procedure TfMemberMaint.UpdSearchGrid;
begin
  dmoMember.FilterGridName(edtSurname.Text, edtFirstNameSearch.Text, edtMobile.Text);
end;

procedure TfMemberMaint.btnCancelClick(Sender: TObject);
begin
  PageControl1.TabIndex:= 0;
  tsSearch.Show;
end;

procedure TfMemberMaint.btnExitClick(Sender: TObject);
begin
  Close;
end;

procedure TfMemberMaint.CardSelected;
Var
  iCardID : Integer;
Begin
  iCardID:= smdbgMemberSearchGrid.DataSource.DataSet.FieldByName('card.ID').AsInteger;
  if iCardID > 0 then
  Begin
    smdbgMemberSearchGrid.Visible:= False;
    edtSurname.Visible:= False;
    txtSurnameSearch.Visible:= False;
    edtFirstNameSearch.Visible:= False;
    txtFirstNameSearch.Visible:= False;
    edtMobile.Visible:= False;
    txtMobileSearch.Visible:= False;
    dmoMember.SelectMember(iCardID);
  End
  Else
  Begin
    ShowMessage('No Record Available');
    smdbgMemberSearchGrid.ClearFilter;
  End;
end;

procedure TfMemberMaint.edtSurnameKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key <> 13 then
  Begin
    UpdSearchGrid;
  End
  Else
  Begin
    CardSelected;
  End;
end;

end.
