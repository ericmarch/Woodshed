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
    ReportOptions.CreateDate = 43653.684748865700000000
    ReportOptions.LastChange = 43653.722062858800000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      'begin'
      ''
      'end.')
    Left = 216
    Top = 8
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
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        Frame.Typ = []
        Height = 18.897650000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Memo12: TfrxMemoView
          AllowVectorExport = True
          Left = 257.008040000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            'All Information')
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Frame.Typ = []
        Height = 79.370130000000000000
        Top = 98.267780000000000000
        Width = 718.110700000000000000
        DataSet = frxDBDataset1
        DataSetName = 'frxDBDataset1'
        RowCount = 0
        object Memo20: TfrxMemoView
          AllowVectorExport = True
          Left = 0.811006540000000000
          Top = 19.007874015748000000
          Width = 105.826771650000000000
          Height = 18.897650000000000000
          DataField = 'Mobile'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."Mobile"]')
        end
        object Memo22: TfrxMemoView
          AllowVectorExport = True
          Left = 135.874150000000000000
          Top = 19.007874015748000000
          Width = 113.385826770000000000
          Height = 18.897650000000000000
          DataField = 'LandLine'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."LandLine"]')
        end
        object Memo21: TfrxMemoView
          AllowVectorExport = True
          Left = 1.472480000000000000
          Top = 56.692913390000000000
          Width = 249.448911650000000000
          Height = 18.897650000000000000
          DataField = 'Locn1'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."Locn1"]')
        end
        object Memo4: TfrxMemoView
          AllowVectorExport = True
          ShiftMode = smWhenOverlapped
          Left = 2.252010000000000000
          Top = 2.000000000000000000
          Width = 317.480520000000000000
          Height = 18.897650000000000000
          Restrictions = [rfDontEdit]
          Clipped = False
          DataField = 'FullName'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."FullName"]')
        end
        object Memo34: TfrxMemoView
          AllowVectorExport = True
          Left = 377.953000000000000000
          Top = 39.795275590551200000
          Width = 238.110390000000000000
          Height = 18.897650000000000000
          DataField = 'CustomField2'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."CustomField2"]')
        end
        object Memo37: TfrxMemoView
          AllowVectorExport = True
          Left = 260.787338110000000000
          Top = 39.795275590551200000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          DataField = 'CustFldName2'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."CustFldName2"]')
        end
        object Memo33: TfrxMemoView
          AllowVectorExport = True
          Left = 377.953000000000000000
          Top = 21.653543307086600000
          Width = 238.110390000000000000
          Height = 18.897650000000000000
          DataField = 'CustomField1'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."CustomField1"]')
        end
        object Memo36: TfrxMemoView
          AllowVectorExport = True
          Left = 260.787338110000000000
          Top = 21.653543307086600000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          DataField = 'CustFldName1'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."CustFldName1"]')
        end
        object Memo6: TfrxMemoView
          Align = baRight
          AllowVectorExport = True
          Left = 631.181510000000000000
          Top = -1.779529999999990000
          Width = 86.929190000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            'Contact Code')
        end
        object Memo5: TfrxMemoView
          Align = baRight
          AllowVectorExport = True
          Left = 631.181510000000000000
          Top = 17.118110240000000000
          Width = 86.929190000000000000
          Height = 18.897650000000000000
          AutoWidth = True
          DataField = 'IDAlpha'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."IDAlpha"]')
        end
        object Memo7: TfrxMemoView
          AllowVectorExport = True
          Left = 328.425480000000000000
          Top = 6.889763780000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            'Custom Fields')
        end
        object Memo8: TfrxMemoView
          AllowVectorExport = True
          Left = 260.787401570000000000
          Top = 56.692913390000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          AutoWidth = True
          DataField = 'LocnTown'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."LocnTown"]')
        end
        object Memo9: TfrxMemoView
          AllowVectorExport = True
          Left = 377.953000000000000000
          Top = 56.803149610000000000
          Width = 37.795275590000000000
          Height = 18.897650000000000000
          DataField = 'LocnState'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."LocnState"]')
        end
        object Memo10: TfrxMemoView
          AllowVectorExport = True
          Left = 434.645950000000000000
          Top = 56.803149610000000000
          Width = 56.692913390000000000
          Height = 18.897650000000000000
          DataField = 'LocnPostCode'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."LocnPostCode"]')
        end
        object Memo11: TfrxMemoView
          AllowVectorExport = True
          Top = 39.795275590000000000
          Width = 249.448911650000000000
          Height = 18.897650000000000000
          DataField = 'Locn2'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."Locn2"]')
        end
        object Line1: TfrxLineView
          AllowVectorExport = True
          Width = 718.110245980000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        Frame.Typ = []
        Height = 22.677180000000000000
        Top = 238.110390000000000000
        Width = 718.110700000000000000
        object Memo23: TfrxMemoView
          AllowVectorExport = True
          Left = 617.945270000000000000
          Top = -7.559059999999990000
          Width = 45.354360000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            'Page')
        end
        object SysMemo1: TfrxSysMemoView
          AllowVectorExport = True
          Left = 665.197280000000000000
          Top = -7.559059999999990000
          Width = 52.913420000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            '[PAGE#]')
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
