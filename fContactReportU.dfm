object fContactReport: TfContactReport
  Left = 0
  Top = 0
  BorderIcons = []
  Caption = 'Contact Reports'
  ClientHeight = 491
  ClientWidth = 762
  Color = clHighlightText
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object btnDisplay: TSpeedButton
    Left = 12
    Top = 0
    Width = 60
    Height = 22
    Caption = 'Display'
    OnClick = btnDisplayClick
  end
  object btnExit: TSpeedButton
    Left = 81
    Top = 0
    Width = 60
    Height = 22
    Caption = 'Exit'
    OnClick = btnExitClick
  end
  object smdbgContactReport: TSMDBGrid
    Left = 2
    Top = 24
    Width = 223
    Height = 467
    DataSource = dscGridSelection
    Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    ReadOnly = True
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
    ExOptions = [eoBooleanAsCheckBox, eoCheckBoxSelect, eoDisableDelete, eoDisableInsert, eoENTERlikeTAB, eoKeepSelection, eoStandardPopup, eoBLOBEditor, eoTitleWordWrap, eoFilterAutoApply]
    RegistryKey = 'Software\Scalabium'
    RegistrySection = 'SMDBGrid'
    WidthOfIndicator = 23
    DefaultRowHeight = 17
    ScrollBars = ssHorizontal
    Columns = <
      item
        Expanded = False
        FieldName = 'Description'
        Title.Caption = 'Report'
        Width = 201
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ID'
        Visible = False
      end>
  end
  object smdbgContactReportGroup: TSMDBGrid
    Left = 231
    Top = 24
    Width = 220
    Height = 467
    DataSource = dscCardGroup
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgMultiSelect, dgTitleClick, dgTitleHotTrack]
    ReadOnly = True
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnMouseUp = smdbgContactReportGroupMouseUp
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
    ExOptions = [eoBooleanAsCheckBox, eoCheckBoxSelect, eoENTERlikeTAB, eoFixedLikeColumn, eoKeepSelection, eoStandardPopup, eoBLOBEditor, eoTitleWordWrap, eoFilterAutoApply]
    RegistryKey = 'Software\Scalabium'
    RegistrySection = 'SMDBGrid'
    WidthOfIndicator = 23
    DefaultRowHeight = 17
    ScrollBars = ssHorizontal
    Columns = <
      item
        Expanded = False
        FieldName = 'ID'
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'IsSelected'
        Title.Caption = 'INC'
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'Description'
        Title.Caption = 'Group'
        Width = 183
        Visible = True
      end>
  end
  object smdbgField: TSMDBGrid
    Left = 414
    Top = 24
    Width = 340
    Height = 467
    DataSource = dscCardCategory
    Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    ReadOnly = True
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
    ExOptions = [eoBooleanAsCheckBox, eoENTERlikeTAB, eoKeepSelection, eoStandardPopup, eoBLOBEditor, eoTitleWordWrap, eoFilterAutoApply]
    RegistryKey = 'Software\Scalabium'
    RegistrySection = 'SMDBGrid'
    WidthOfIndicator = 11
    DefaultRowHeight = 17
    ScrollBars = ssHorizontal
    Columns = <
      item
        Expanded = False
        FieldName = 'ID'
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'IsSelected'
        Title.Caption = 'INC'
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'Description'
        Title.Caption = 'Category'
        Width = 322
        Visible = True
      end>
  end
  object TheCount: TLabeledEdit
    Left = 219
    Top = 3
    Width = 55
    Height = 15
    Alignment = taRightJustify
    BorderStyle = bsNone
    EditLabel.Width = 47
    EditLabel.Height = 13
    EditLabel.Caption = 'TheCount'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    LabelPosition = lpLeft
    LabelSpacing = 15
    ParentFont = False
    TabOrder = 3
  end
  object cbxIncludeInactive: TCheckBox
    Left = 328
    Top = 3
    Width = 97
    Height = 17
    Alignment = taLeftJustify
    Caption = 'Include Inactive'
    Checked = True
    State = cbChecked
    TabOrder = 4
  end
  object dscPrintRun: TDataSource
    DataSet = dmoContactReport.dstContactPrintRun
    Left = 288
    Top = 72
  end
  object dscGridSelection: TDataSource
    DataSet = dmoContactReport.dstGridSelection
    Left = 288
    Top = 128
  end
  object dscCardGroup: TDataSource
    DataSet = dmoContactReport.dstCardGroup
    Left = 296
    Top = 192
  end
  object frxDBDataset1: TfrxDBDataset
    UserName = 'frxDBDataset1'
    CloseDataSource = False
    DataSource = dscPrintRun
    BCDToCurrency = False
    Left = 384
    Top = 72
  end
  object frxReport1: TfrxReport
    Version = '6.2.1'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 43335.823303229200000000
    ReportOptions.LastChange = 43339.700128958300000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 176
    Top = 72
    Datasets = <
      item
        DataSet = frxDBDataset1
        DataSetName = 'frxDBDataset1'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      Frame.Typ = []
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Frame.Typ = []
        Height = 41.574830000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        DataSet = frxDBDataset1
        DataSetName = 'frxDBDataset1'
        RowCount = 0
        object Memo4: TfrxMemoView
          AllowVectorExport = True
          Left = 438.425480000000000000
          Top = 1.889763780000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          DataField = 'Locn2'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."Locn2"]')
        end
        object Memo5: TfrxMemoView
          AllowVectorExport = True
          Left = 535.307360000000000000
          Top = 1.889763780000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          DataField = 'pcName'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."pcName"]')
        end
        object Memo6: TfrxMemoView
          AllowVectorExport = True
          Left = 637.520100000000000000
          Top = 1.889763780000000000
          Width = 26.456710000000000000
          Height = 18.897650000000000000
          DataField = 'pcState_Code'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."pcState_Code"]')
        end
        object Memo7: TfrxMemoView
          AllowVectorExport = True
          Left = 660.197280000000000000
          Top = 1.889763780000000000
          Width = 52.913420000000000000
          Height = 18.897650000000000000
          DataField = 'pcCode'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."pcCode"]')
        end
        object Memo1: TfrxMemoView
          AllowVectorExport = True
          Left = 1.779530000000000000
          Top = 1.889763779527560000
          Width = 109.606370000000000000
          Height = 18.897650000000000000
          DataField = 'SurName'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."SurName"]')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          AllowVectorExport = True
          Left = 113.897650000000000000
          Top = 1.889763780000000000
          Width = 109.606370000000000000
          Height = 18.897650000000000000
          DataField = 'FirstName'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."FirstName"]')
        end
        object Memo3: TfrxMemoView
          AllowVectorExport = True
          Left = 227.330860000000000000
          Top = 2.110233780000000000
          Width = 204.094620000000000000
          Height = 18.897650000000000000
          DataField = 'Locn1'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."Locn1"]')
        end
      end
    end
  end
  object dscCardCategory: TDataSource
    DataSet = dmoContactReport.dstCardCategory
    Left = 520
    Top = 192
  end
  object frxDBDataset2: TfrxDBDataset
    UserName = 'frxDBDataset2'
    CloseDataSource = False
    DataSource = dscGridSelection
    BCDToCurrency = False
    Left = 496
    Top = 72
  end
  object frxDBDataset3: TfrxDBDataset
    UserName = 'frxDBDataset2'
    CloseDataSource = False
    DataSource = dscGridSelection
    BCDToCurrency = False
    Left = 632
    Top = 72
  end
  object dsc1: TDataSource
    DataSet = dmoContactReport.dst1
    Left = 624
    Top = 136
  end
end
