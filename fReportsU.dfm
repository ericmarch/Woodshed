object fCardReports: TfCardReports
  Left = 0
  Top = 0
  BorderIcons = []
  Caption = 'Card Reports'
  ClientHeight = 488
  ClientWidth = 653
  Color = clHighlightText
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object btnExit: TSpeedButton
    Left = 81
    Top = 0
    Width = 60
    Height = 22
    Caption = 'Exit'
    OnClick = btnExitClick
  end
  object btnDisplay: TSpeedButton
    Left = 1
    Top = 0
    Width = 60
    Height = 22
    Caption = 'Display'
  end
  object smdbfReport: TSMDBGrid
    Left = -1
    Top = 30
    Width = 223
    Height = 460
    DataSource = dsccardreportName
    Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    TabOrder = 0
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
    Columns = <
      item
        Expanded = False
        FieldName = 'Description'
        Title.Caption = 'Report'
        Width = 201
        Visible = True
      end>
  end
  object smdbgGroup: TSMDBGrid
    Left = 219
    Top = 30
    Width = 220
    Height = 460
    DataSource = dscCardReportFilter
    Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    TabOrder = 1
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
    ExOptions = [eoBooleanAsCheckBox, eoENTERlikeTAB, eoKeepSelection, eoStandardPopup, eoBLOBEditor, eoTitleWordWrap, eoFilterAutoApply]
    RegistryKey = 'Software\Scalabium'
    RegistrySection = 'SMDBGrid'
    WidthOfIndicator = 11
    DefaultRowHeight = 17
    ScrollBars = ssHorizontal
    Columns = <
      item
        Expanded = False
        FieldName = 'IsSelected'
        Title.Caption = 'Inc'
        Width = 31
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Description'
        Title.Caption = 'Filter'
        Width = 169
        Visible = True
      end>
  end
  object SMDBGrid1: TSMDBGrid
    Left = 435
    Top = 30
    Width = 220
    Height = 460
    DataSource = dscCardReportField
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
    ExOptions = [eoBooleanAsCheckBox, eoKeepSelection, eoStandardPopup, eoBLOBEditor, eoTitleWordWrap, eoFilterAutoApply]
    RegistryKey = 'Software\Scalabium'
    RegistrySection = 'SMDBGrid'
    WidthOfIndicator = 11
    DefaultRowHeight = 17
    ScrollBars = ssHorizontal
    Columns = <
      item
        Expanded = False
        FieldName = 'IsSelected'
        Title.Caption = 'Inc'
        Width = 29
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Description'
        Title.Caption = 'Column'
        Width = 173
        Visible = True
      end>
  end
  object dsccardreportName: TDataSource
    DataSet = dmoContactReport.dstcardreportName
    Left = 40
    Top = 184
  end
  object dscCardReportFilter: TDataSource
    DataSet = dmoContactReport.dstCardReportFilter
    Left = 184
    Top = 176
  end
  object dscCardReportField: TDataSource
    DataSet = dmoContactReport.dstCardReportField
    Left = 320
    Top = 168
  end
  object dscPrinyRun: TDataSource
    Left = 312
  end
end
