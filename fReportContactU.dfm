object fReportContact: TfReportContact
  Left = 0
  Top = 0
  Caption = 'Contact Reports'
  ClientHeight = 361
  ClientWidth = 534
  Color = clBtnFace
  Constraints.MaxHeight = 420
  Constraints.MaxWidth = 550
  Constraints.MinHeight = 420
  Constraints.MinWidth = 550
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object lblGroup1: TLabel
    Left = 180
    Top = 20
    Width = 45
    Height = 13
    Alignment = taRightJustify
    Caption = 'lblGroup1'
  end
  object LblGroup2: TLabel
    Left = 180
    Top = 50
    Width = 45
    Height = 13
    Alignment = taRightJustify
    Caption = 'lblGroup2'
  end
  object lblGroup3: TLabel
    Left = 180
    Top = 80
    Width = 45
    Height = 13
    Alignment = taRightJustify
    Caption = 'lblGroup2'
  end
  object lblCategory1: TLabel
    Left = 38
    Top = 163
    Width = 72
    Height = 13
    Alignment = taRightJustify
    Caption = 'From Category'
  end
  object lblToCategory: TLabel
    Left = 50
    Top = 198
    Width = 60
    Height = 13
    Alignment = taRightJustify
    Caption = 'To Category'
  end
  object lblGroup4: TLabel
    Left = 180
    Top = 110
    Width = 45
    Height = 13
    Alignment = taRightJustify
    Caption = 'lblGroup3'
  end
  object edtFromSurname: TLabeledEdit
    Left = 120
    Top = 227
    Width = 145
    Height = 21
    EditLabel.Width = 75
    EditLabel.Height = 13
    EditLabel.Caption = 'From Surname  '
    LabelPosition = lpLeft
    TabOrder = 1
    Text = '*'
  end
  object edtToSurname: TLabeledEdit
    Left = 120
    Top = 265
    Width = 145
    Height = 21
    EditLabel.Width = 63
    EditLabel.Height = 13
    EditLabel.Caption = 'To Surname  '
    LabelPosition = lpLeft
    LabelSpacing = 5
    TabOrder = 2
    Text = '*'
  end
  object CheckBox1: TCheckBox
    Left = 240
    Top = 20
    Width = 17
    Height = 17
    Alignment = taLeftJustify
    Checked = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    State = cbChecked
    TabOrder = 0
  end
  object CheckBox2: TCheckBox
    Left = 240
    Top = 50
    Width = 17
    Height = 17
    Alignment = taLeftJustify
    Checked = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    State = cbChecked
    TabOrder = 3
  end
  object CheckBox3: TCheckBox
    Left = 240
    Top = 80
    Width = 17
    Height = 17
    Alignment = taLeftJustify
    Checked = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    State = cbChecked
    TabOrder = 4
  end
  object ComboBox1: TComboBox
    Left = 120
    Top = 160
    Width = 145
    Height = 21
    TabOrder = 5
    Text = 'ComboBox1'
  end
  object ComboBox2: TComboBox
    Left = 120
    Top = 195
    Width = 145
    Height = 21
    TabOrder = 6
    Text = 'ComboBox2'
  end
  object CheckBox4: TCheckBox
    Left = 240
    Top = 110
    Width = 17
    Height = 17
    Alignment = taLeftJustify
    Checked = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    State = cbChecked
    TabOrder = 7
  end
  object SMDBGrid1: TSMDBGrid
    Left = 278
    Top = 0
    Width = 256
    Height = 361
    Align = alRight
    DataSource = dscGridSelection
    Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    TabOrder = 8
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnCellClick = SMDBGrid1CellClick
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
        FieldName = 'ID'
        Width = 23
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Description'
        Width = 190
        Visible = True
      end>
  end
  object frxDBDataset1: TfrxDBDataset
    UserName = 'frxDBDataset1'
    CloseDataSource = False
    DataSource = dscPrintRun01
    BCDToCurrency = False
    Left = 89
    Top = 192
  end
  object dscPrintRun01: TDataSource
    DataSet = dmoReport.dstContactPrintRun
    Left = 16
    Top = 88
  end
  object frxReport1: TfrxReport
    Version = '6.2.1'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbCopy, pbSelection]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 43335.823303229200000000
    ReportOptions.LastChange = 43338.873828379600000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 96
    Top = 88
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
        Height = 22.677180000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        DataSet = frxDBDataset1
        DataSetName = 'frxDBDataset1'
        RowCount = 0
        object Memo1: TfrxMemoView
          AllowVectorExport = True
          Left = 11.338590000000000000
          Top = 3.023622050000000000
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
          Left = 121.118120000000000000
          Top = 3.023622050000000000
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
          Left = 234.330860000000000000
          Top = 3.023622050000000000
          Width = 336.378170000000000000
          Height = 18.897650000000000000
          AutoWidth = True
          DataField = 'Email'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."Email"]')
        end
      end
    end
  end
  object frxDBDataset2: TfrxDBDataset
    UserName = 'frxDBDataset1'
    CloseDataSource = False
    DataSource = dscPrintRun02
    BCDToCurrency = False
    Left = 73
    Top = 264
  end
  object dscPrintRun02: TDataSource
    Left = 32
    Top = 216
  end
  object dscGridSelection: TDataSource
    DataSet = dmoReport.dstGridSelection
    Left = 104
    Top = 32
  end
  object MainMenu1: TMainMenu
    Left = 16
    Top = 32
    object mnuPrint: TMenuItem
      Caption = '&Print'
      Enabled = False
      OnClick = mnuPrintClick
    end
    object mnuXL: TMenuItem
      Caption = '&XL'
      Enabled = False
    end
    object mnuExit: TMenuItem
      Caption = '&Exit'
      OnClick = mnuExitClick
    end
  end
end
