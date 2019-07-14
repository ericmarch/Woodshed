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
  object edtFromSurname: TLabeledEdit
    Left = 120
    Top = 227
    Width = 145
    Height = 21
    EditLabel.Width = 75
    EditLabel.Height = 13
    EditLabel.Caption = 'From Surname  '
    LabelPosition = lpLeft
    TabOrder = 0
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
    TabOrder = 1
    Text = '*'
  end
  object ComboBox1: TComboBox
    Left = 120
    Top = 160
    Width = 145
    Height = 21
    TabOrder = 2
    Text = 'ComboBox1'
  end
  object ComboBox2: TComboBox
    Left = 120
    Top = 195
    Width = 145
    Height = 21
    TabOrder = 3
    Text = 'ComboBox2'
  end
  object SMDBGrid1: TSMDBGrid
    Left = 278
    Top = 0
    Width = 256
    Height = 361
    Align = alRight
    DataSource = dscGridSelection
    Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    TabOrder = 4
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnCellClick = SMDBGrid1CellClick
    OnDblClick = SMDBGrid1DblClick
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
        FieldName = 'rID'
        Title.Caption = 'ID'
        Width = 23
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'rDescription'
        Title.Caption = 'Description'
        Width = 190
        Visible = True
      end>
  end
  object txtGroups: TStaticText
    Left = 80
    Top = -4
    Width = 49
    Height = 20
    Caption = 'Groups'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 5
  end
  object dbchbGroup1: TDBCheckBox
    Left = 11
    Top = 23
    Width = 97
    Height = 17
    Caption = 'Group1'
    DataField = 'Group1'
    TabOrder = 6
  end
  object dbchbGroup2: TDBCheckBox
    Left = 11
    Top = 46
    Width = 97
    Height = 17
    Caption = 'Group2'
    DataField = 'Group2'
    TabOrder = 7
  end
  object dbchbGroup3: TDBCheckBox
    Left = 11
    Top = 69
    Width = 97
    Height = 17
    Caption = 'Group3'
    DataField = 'Group3'
    TabOrder = 8
  end
  object dbchbGroup4: TDBCheckBox
    Left = 155
    Top = 31
    Width = 97
    Height = 17
    Caption = 'Group4'
    DataField = 'Group4'
    TabOrder = 9
  end
  object dbchbGroup5: TDBCheckBox
    Left = 155
    Top = 54
    Width = 97
    Height = 17
    Caption = 'Group5'
    DataField = 'Group5'
    TabOrder = 10
  end
  object dbchbGroup6: TDBCheckBox
    Left = 155
    Top = 77
    Width = 97
    Height = 17
    Caption = 'Group6'
    DataField = 'Group6'
    TabOrder = 11
  end
  object frxDBDataset1: TfrxDBDataset
    UserName = 'frxDBDataset1'
    CloseDataSource = False
    DataSet = dmoReport.dstContactPrintRun
    BCDToCurrency = False
    Left = 89
    Top = 192
  end
  object dscPrintRun01: TDataSource
    DataSet = dmoReport.dstContactPrintRun
    Left = 22
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
    ReportOptions.CreateDate = 43093.447400740700000000
    ReportOptions.LastChange = 43660.739573981480000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 216
    Top = 8
    Datasets = <
      item
        DataSet = frxDBDataset1
        DataSetName = 'frxDBDataset1'
      end
      item
        DataSet = frxDBDataset2
        DataSetName = 'frxDBDataset2'
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
        Height = 64.252010000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Memo1: TfrxMemoView
          AllowVectorExport = True
          Left = 192.756030000000000000
          Width = 332.598640000000000000
          Height = 22.677180000000000000
          DataField = 'RegisteredName'
          DataSet = frxDBDataset2
          DataSetName = 'frxDBDataset2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDataset2."RegisteredName"]')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          Align = baCenter
          AllowVectorExport = True
          Left = 194.645795000000000000
          Top = 18.897650000000000000
          Width = 328.819110000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Contacts -- All Details')
          ParentFont = False
        end
        object Line1: TfrxLineView
          Align = baBottom
          AllowVectorExport = True
          Top = 64.252010000000000000
          Width = 718.110700000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Memo16: TfrxMemoView
          AllowVectorExport = True
          Left = 480.000310000000000000
          Top = 37.795300000000000000
          Width = 68.031540000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Physical')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          AllowVectorExport = True
          Left = 120.944960000000000000
          Top = 37.795300000000000000
          Width = 49.133890000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Postal')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Frame.Typ = []
        Height = 147.401670000000000000
        Top = 143.622140000000000000
        Width = 718.110700000000000000
        DataSet = frxDBDataset1
        DataSetName = 'frxDBDataset1'
        RowCount = 0
        object Memo5: TfrxMemoView
          AllowVectorExport = True
          Left = 204.110390000000000000
          Top = 30.118110240000000000
          Width = 170.078850000000000000
          Height = 18.897650000000000000
          DataField = 'Post2'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."Post2"]')
        end
        object Memo6: TfrxMemoView
          AllowVectorExport = True
          Top = 45.236220470000000000
          Width = 188.976377950000000000
          Height = 18.897650000000000000
          DataField = 'PostTown'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."PostTown"]')
        end
        object Memo7: TfrxMemoView
          AllowVectorExport = True
          Left = 204.094488190000000000
          Top = 45.236220470000000000
          Width = 30.236220470000000000
          Height = 18.897650000000000000
          AutoWidth = True
          DataField = 'PostState'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."PostState"]')
        end
        object Memo8: TfrxMemoView
          AllowVectorExport = True
          Left = 241.889763780000000000
          Top = 45.236220470000000000
          Width = 68.031540000000000000
          Height = 18.897650000000000000
          DataField = 'PostPostCode'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."PostPostCode"]')
        end
        object Memo14: TfrxMemoView
          AllowVectorExport = True
          Left = 102.047310000000000000
          Top = 64.133858270000000000
          Width = 362.834670080000000000
          Height = 18.897650000000000000
          DataField = 'Email'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."Email"]')
        end
        object Memo20: TfrxMemoView
          AllowVectorExport = True
          Left = 574.488188980000000000
          Top = 45.236220470000000000
          Width = 30.236220470000000000
          Height = 18.897650000000000000
          DataField = 'LocnState'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."LocnState"]')
        end
        object Memo21: TfrxMemoView
          AllowVectorExport = True
          Left = 612.283464570000000000
          Top = 45.236220470000000000
          Width = 68.031496060000000000
          Height = 18.897650000000000000
          DataField = 'LocnPostCode'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."LocnPostCode"]')
        end
        object Memo24: TfrxMemoView
          AllowVectorExport = True
          Left = 385.511811020000000000
          Top = 45.236220470000000000
          Width = 188.976377950000000000
          Height = 18.897650000000000000
          DataField = 'LocnTown'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."LocnTown"]')
        end
        object Memo32: TfrxMemoView
          AllowVectorExport = True
          Top = 83.031496060000000000
          Width = 113.385826770000000000
          Height = 18.897650000000000000
          DataField = 'CustFldName1'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."CustFldName1"]')
        end
        object Memo33: TfrxMemoView
          AllowVectorExport = True
          Top = 98.149606300000000000
          Width = 113.385826770000000000
          Height = 18.897650000000000000
          DataField = 'CustFldName2'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."CustFldName2"]')
        end
        object Memo35: TfrxMemoView
          AllowVectorExport = True
          Left = 132.283464570000000000
          Top = 83.031496060000000000
          Width = 585.827052360000000000
          Height = 20.997389490000000000
          DataField = 'CustomField1'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."CustomField1"]')
        end
        object Memo36: TfrxMemoView
          AllowVectorExport = True
          Left = 132.283464570000000000
          Top = 98.149606300000000000
          Width = 585.827052360000000000
          Height = 20.997389490000000000
          DataField = 'CustomField2'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."CustomField2"]')
        end
        object Memo2: TfrxMemoView
          AllowVectorExport = True
          Left = 1.889763780000000000
          Top = 15.000000000000000000
          Width = 317.480520000000000000
          Height = 18.897650000000000000
          DataField = 'FullName'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."FullName"]')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          AllowVectorExport = True
          Top = 30.118110240000000000
          Width = 188.976377950000000000
          Height = 18.897650000000000000
          DataField = 'Post1'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."Post1"]')
        end
        object Memo17: TfrxMemoView
          AllowVectorExport = True
          Left = 574.488188980000000000
          Top = 28.677180000000000000
          Width = 170.078740160000000000
          Height = 18.897650000000000000
          DataField = 'Locn2'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."Locn2"]')
        end
        object Memo23: TfrxMemoView
          AllowVectorExport = True
          Left = 385.511811020000000000
          Top = 30.118110240000000000
          Width = 188.976377950000000000
          Height = 18.897650000000000000
          DataField = 'Locn1'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."Locn1"]')
        end
        object Memo45: TfrxMemoView
          AllowVectorExport = True
          Top = 64.133858270000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          DataField = 'Mobile'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."Mobile"]')
        end
        object Memo37: TfrxMemoView
          AllowVectorExport = True
          Left = 1.889763780000000000
          Width = 56.692913390000000000
          Height = 18.897650000000000000
          DataField = 'ID'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."ID"]')
          ParentFont = False
        end
        object Memo41: TfrxMemoView
          AllowVectorExport = True
          Left = 397.826771650000000000
          Width = 45.354330710000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            'Added')
        end
        object Memo42: TfrxMemoView
          AllowVectorExport = True
          Left = 444.094488190000000000
          Width = 71.811023620000000000
          Height = 18.897650000000000000
          DataField = 'AddedDate'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."AddedDate"]')
          ParentFont = False
        end
        object Memo43: TfrxMemoView
          AllowVectorExport = True
          Left = 386.488188980000000000
          Top = 15.118110240000000000
          Width = 54.803149610000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            'Modified')
        end
        object Memo50: TfrxMemoView
          AllowVectorExport = True
          Left = 444.094488188976000000
          Top = 15.118120000000000000
          Width = 71.811023620000000000
          Height = 18.897650000000000000
          DataField = 'ModifiedDate'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."ModifiedDate"]')
          ParentFont = False
        end
        object Memo53: TfrxMemoView
          AllowVectorExport = True
          Left = 519.685039370079000000
          Width = 22.677165350000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'By')
          ParentFont = False
        end
        object Memo54: TfrxMemoView
          AllowVectorExport = True
          Left = 519.685039370000000000
          Top = 15.118110240000000000
          Width = 22.677165350000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'By')
          ParentFont = False
        end
        object Memo55: TfrxMemoView
          AllowVectorExport = True
          Left = 548.031496060000000000
          Width = 173.858380000000000000
          Height = 18.897650000000000000
          DataField = 'WhoAddedCard'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."WhoAddedCard"]')
          ParentFont = False
        end
        object Memo56: TfrxMemoView
          AllowVectorExport = True
          Left = 548.031496060000000000
          Top = 15.118110240000000000
          Width = 170.078801180000000000
          Height = 18.897637800000000000
          DataField = 'WhoModCard'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."WhoModCard"]')
          ParentFont = False
        end
        object Line3: TfrxLineView
          AllowVectorExport = True
          Top = 132.283464566929100000
          Width = 718.110700000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        Frame.Typ = []
        Height = 22.677180000000000000
        Top = 351.496290000000000000
        Width = 718.110700000000000000
        object Memo44: TfrxMemoView
          AllowVectorExport = True
          Left = 593.386210000000000000
          Width = 41.574830000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            'Page')
        end
        object Memo46: TfrxMemoView
          AllowVectorExport = True
          Left = 60.472480000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            '[Date]')
        end
        object Memo47: TfrxMemoView
          AllowVectorExport = True
          Width = 49.133890000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            'Printed')
        end
        object Memo48: TfrxMemoView
          AllowVectorExport = True
          Left = 143.622140000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            '[Time]')
        end
        object Memo49: TfrxMemoView
          AllowVectorExport = True
          Left = 642.520100000000000000
          Width = 56.692950000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            '[Page#]')
        end
      end
    end
    object Page2: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      Frame.Typ = []
    end
  end
  object frxDBDataset2: TfrxDBDataset
    UserName = 'frxDBDataset2'
    CloseDataSource = False
    DataSet = dmoReport.dstHeader
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
    Left = 102
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
