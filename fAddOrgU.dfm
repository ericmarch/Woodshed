object fAddOrg: TfAddOrg
  Left = 0
  Top = 0
  Caption = 'Add an organisation'
  ClientHeight = 198
  ClientWidth = 531
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object btnSave: TSpeedButton
    Left = 20
    Top = 0
    Width = 60
    Height = 22
    Caption = 'Save'
    OnClick = btnSaveClick
  end
  object btnCancel: TSpeedButton
    Left = 100
    Top = 0
    Width = 60
    Height = 22
    Caption = 'Cancel'
  end
  object edtNewOrgDescription: TEdit
    Left = 24
    Top = 48
    Width = 473
    Height = 21
    TabOrder = 0
    OnKeyUp = edtNewOrgDescriptionKeyUp
  end
  object DBLookupListBox1: TDBLookupListBox
    Left = 24
    Top = 75
    Width = 473
    Height = 108
    KeyField = 'ID'
    ListField = 'Description'
    ListSource = dsc1
    TabOrder = 1
    Visible = False
  end
  object SMDBGrid1: TSMDBGrid
    Left = 36
    Top = 75
    Width = 441
    Height = 121
    DataSource = dsc1
    Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Flat = False
    BandsFont.Charset = DEFAULT_CHARSET
    BandsFont.Color = clWindowText
    BandsFont.Height = -11
    BandsFont.Name = 'Tahoma'
    BandsFont.Style = []
    Groupings = <>
    GridStyle.Style = gsNormal
    GridStyle.OddColor = clWindow
    GridStyle.EvenColor = clWindow
    TitleHeight.PixelCount = 24
    FooterColor = clBtnFace
    ExOptions = [eoENTERlikeTAB, eoKeepSelection, eoStandardPopup, eoBLOBEditor, eoTitleWordWrap, eoFilterAutoApply]
    RegistryKey = 'Software\Scalabium'
    RegistrySection = 'SMDBGrid'
    WidthOfIndicator = 11
    DefaultRowHeight = 17
    ScrollBars = ssHorizontal
  end
  object dsc1: TDataSource
    Left = 272
    Top = 16
  end
end
