object fReportContact: TfReportContact
  Left = 0
  Top = 0
  Caption = 'Contact Reports'
  ClientHeight = 361
  ClientWidth = 554
  Color = clBtnFace
  Constraints.MaxHeight = 420
  Constraints.MaxWidth = 570
  Constraints.MinHeight = 420
  Constraints.MinWidth = 570
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
    Left = 222
    Top = 65
    Width = 150
    Height = 13
    Alignment = taRightJustify
    Caption = 'lblGroup1'
  end
  object LblGroup2: TLabel
    Left = 222
    Top = 97
    Width = 150
    Height = 13
    Alignment = taRightJustify
    Caption = 'lblGroup2'
  end
  object lblGroup3: TLabel
    Left = 222
    Top = 129
    Width = 150
    Height = 13
    Alignment = taRightJustify
    Caption = 'lblGroup2'
  end
  object lblCategory1: TLabel
    Left = 222
    Top = 163
    Width = 150
    Height = 13
    Alignment = taRightJustify
    Caption = 'From Category'
  end
  object lblToCategory: TLabel
    Left = 222
    Top = 198
    Width = 150
    Height = 13
    Alignment = taRightJustify
    Caption = 'To Category'
  end
  object stgReportGrid: TStringGrid
    Left = 10
    Top = 24
    Width = 201
    Height = 321
    ColCount = 1
    FixedCols = 0
    RowCount = 1
    FixedRows = 0
    GridLineWidth = 0
    TabOrder = 0
    OnClick = stgReportGridClick
    OnDblClick = stgReportGridDblClick
    ColWidths = (
      304)
  end
  object StaticText1: TStaticText
    Left = 16
    Top = 0
    Width = 88
    Height = 17
    Caption = 'Available Reports'
    TabOrder = 2
  end
  object edtFromSurname: TLabeledEdit
    Left = 382
    Top = 227
    Width = 145
    Height = 21
    EditLabel.Width = 75
    EditLabel.Height = 13
    EditLabel.Caption = 'From Surname  '
    LabelPosition = lpLeft
    TabOrder = 3
    Text = '*'
  end
  object edtToSurname: TLabeledEdit
    Left = 382
    Top = 265
    Width = 145
    Height = 21
    EditLabel.Width = 63
    EditLabel.Height = 13
    EditLabel.Caption = 'To Surname  '
    LabelPosition = lpLeft
    LabelSpacing = 5
    TabOrder = 4
    Text = '*'
  end
  object CheckBox1: TCheckBox
    Left = 376
    Top = 64
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
    TabOrder = 1
  end
  object CheckBox2: TCheckBox
    Left = 376
    Top = 96
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
    TabOrder = 5
  end
  object CheckBox3: TCheckBox
    Left = 376
    Top = 128
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
    TabOrder = 6
  end
  object ComboBox1: TComboBox
    Left = 382
    Top = 160
    Width = 145
    Height = 21
    TabOrder = 7
    Text = 'ComboBox1'
  end
  object ComboBox2: TComboBox
    Left = 382
    Top = 195
    Width = 145
    Height = 21
    TabOrder = 8
    Text = 'ComboBox2'
  end
  object MainMenu1: TMainMenu
    Left = 248
    object mnuSelect: TMenuItem
      Caption = '&Select'
      OnClick = mnuSelectClick
    end
    object mnuDisplay: TMenuItem
      Caption = '&Display'
      Enabled = False
      OnClick = mnuDisplayClick
    end
    object mnuExit: TMenuItem
      Caption = 'E&xit'
      OnClick = mnuExitClick
    end
  end
  object frxDBDataset1: TfrxDBDataset
    UserName = 'frxDBDataset1'
    CloseDataSource = False
    DataSource = dscPrintRun01
    BCDToCurrency = False
    Left = 248
    Top = 160
  end
  object dscPrintRun01: TDataSource
    Left = 248
    Top = 48
  end
  object frxReport1: TfrxReport
    Version = '6.2.1'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbCopy, pbSelection]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 43373.551228518500000000
    ReportOptions.LastChange = 43373.569042488400000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 336
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
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        Frame.Typ = []
        Height = 52.913420000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
      end
      object Memo1: TfrxMemoView
        AllowVectorExport = True
        Left = 219.212740000000000000
        Top = 15.118120000000000000
        Width = 234.330860000000000000
        Height = 49.133890000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -19
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = []
        HAlign = haCenter
        Memo.UTF8W = (
          'Contact Group '
          'No Details')
        ParentFont = False
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Frame.Typ = []
        Height = 26.456710000000000000
        Top = 132.283550000000000000
        Width = 718.110700000000000000
        DataSet = frxDBDataset1
        DataSetName = 'frxDBDataset1'
        RowCount = 0
        object Memo2: TfrxMemoView
          AllowVectorExport = True
          Left = 181.417440000000000000
          Top = 11.559060000000000000
          Width = 298.582870000000000000
          Height = 18.897650000000000000
          DataField = 'Description'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."Description"]')
        end
      end
    end
  end
  object frxDBDataset2: TfrxDBDataset
    UserName = 'frxDBDataset1'
    CloseDataSource = False
    DataSource = dscPrintRun02
    BCDToCurrency = False
    Left = 248
    Top = 232
  end
  object dscPrintRun02: TDataSource
    Left = 248
    Top = 104
  end
end
