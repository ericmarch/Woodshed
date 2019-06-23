object fSearch: TfSearch
  Left = 0
  Top = 0
  Caption = 'Search'
  ClientHeight = 861
  ClientWidth = 884
  Color = clBtnFace
  Constraints.MinHeight = 900
  Constraints.MinWidth = 900
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
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 884
    Height = 41
    Align = alTop
    TabOrder = 0
    object btnClear: TSpeedButton
      Left = 13
      Top = 7
      Width = 41
      Height = 22
      Caption = 'Clear'
      OnClick = btnClearClick
    end
    object btnExit: TSpeedButton
      Left = 135
      Top = 7
      Width = 30
      Height = 22
      Caption = 'Exit'
      OnClick = btnExitClick
    end
    object btnDisplay: TSpeedButton
      Left = 74
      Top = 7
      Width = 39
      Height = 22
      Caption = 'Display'
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 41
    Width = 884
    Height = 820
    Align = alBottom
    Caption = 'Panel2'
    TabOrder = 1
    object PageControl1: TPageControl
      Left = 1
      Top = 1
      Width = 882
      Height = 818
      ActivePage = tshSelect
      Align = alClient
      TabOrder = 0
      object tshLayout: TTabSheet
        Caption = 'Layout'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        object txtAvailableColumns: TStaticText
          Left = 16
          Top = 9
          Width = 88
          Height = 17
          Caption = 'Available columns'
          Color = clWindow
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMenuHighlight
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          TabOrder = 0
        end
        object ListBox1: TListBox
          Left = 280
          Top = 30
          Width = 273
          Height = 320
          ItemHeight = 13
          TabOrder = 1
        end
        object ListBox2: TListBox
          Left = 584
          Top = 30
          Width = 273
          Height = 320
          ItemHeight = 13
          TabOrder = 2
        end
        object ListBox3: TListBox
          Left = 280
          Top = 400
          Width = 273
          Height = 320
          ItemHeight = 13
          TabOrder = 3
        end
        object ListBox4: TListBox
          Left = 584
          Top = 400
          Width = 273
          Height = 320
          ItemHeight = 13
          TabOrder = 4
        end
        object txtLine1: TStaticText
          Left = 280
          Top = 9
          Width = 32
          Height = 17
          Caption = 'Line 1'
          TabOrder = 5
        end
        object txtLine2: TStaticText
          Left = 584
          Top = 9
          Width = 32
          Height = 17
          Caption = 'Line 2'
          TabOrder = 6
        end
        object txtLine4: TStaticText
          Left = 584
          Top = 376
          Width = 32
          Height = 17
          Caption = 'Line 4'
          TabOrder = 7
        end
        object txtLine3: TStaticText
          Left = 280
          Top = 376
          Width = 32
          Height = 17
          Caption = 'Line 3'
          TabOrder = 8
        end
        object DBLookupListBox3: TDBLookupListBox
          Left = 3
          Top = 32
          Width = 254
          Height = 693
          KeyField = 'ID'
          ListField = 'TableColumn'
          ListSource = dscAvailableColumns
          TabOrder = 9
        end
      end
      object tshSelect: TTabSheet
        Caption = 'Selection'
        ImageIndex = 2
        object dbLULBAvailableColumns: TDBLookupListBox
          Left = 8
          Top = 16
          Width = 185
          Height = 745
          KeyField = 'ID'
          ListField = 'TableColumn'
          ListSource = dscAvailableColumns
          TabOrder = 0
          OnDblClick = dbLULBAvailableColumnsDblClick
        end
        object dbLULBSelectedColumns: TDBLookupListBox
          Left = 199
          Top = 16
          Width = 674
          Height = 732
          KeyField = 'ID'
          ListField = 'TableColumn'
          ListSource = dscSelectedColumns
          TabOrder = 1
        end
      end
      object tshSortGroup: TTabSheet
        Caption = 'Grouping / Sorting'
        ImageIndex = 1
      end
    end
  end
  object dscAvailableColumns: TDataSource
    DataSet = dmoSearch.dstAvailColumns
    Left = 93
    Top = 225
  end
  object dscSelectedColumns: TDataSource
    DataSet = dmoSearch.dstSelectedColumns
    Left = 685
    Top = 258
  end
end
