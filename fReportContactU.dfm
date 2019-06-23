object fReportContact: TfReportContact
  Left = 0
  Top = 0
  Caption = 'Contact Reports'
  ClientHeight = 580
  ClientWidth = 861
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object stgReports: TStringGrid
    Left = 8
    Top = 32
    Width = 201
    Height = 321
    ColCount = 1
    FixedCols = 0
    RowCount = 1
    FixedRows = 0
    GridLineWidth = 0
    TabOrder = 0
    OnClick = stgReportsClick
    OnDblClick = stgReportsDblClick
    ColWidths = (
      304)
  end
  object StaticText1: TStaticText
    Left = 24
    Top = 8
    Width = 88
    Height = 17
    Caption = 'Available Reports'
    TabOrder = 1
  end
  object MainMenu1: TMainMenu
    Left = 248
    object Select: TMenuItem
      Caption = '&Select'
      OnClick = SelectClick
    end
    object Display1: TMenuItem
      Caption = '&Display'
      Enabled = False
    end
    object Exit1: TMenuItem
      Caption = 'E&xit'
      OnClick = Exit1Click
    end
  end
  object frxDBDataset1: TfrxDBDataset
    UserName = 'frxDBDataset1'
    CloseDataSource = False
    DataSource = dscPrintRun
    BCDToCurrency = False
    Left = 392
  end
  object dscPrintRun: TDataSource
    Left = 320
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
    Left = 464
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
end
