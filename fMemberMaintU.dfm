object fMemberMaint: TfMemberMaint
  Left = 0
  Top = 0
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = 'Member Maintenance'
  ClientHeight = 721
  ClientWidth = 954
  Color = clBtnFace
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
  object btnCancel: TSpeedButton
    Left = 180
    Top = 0
    Width = 60
    Height = 22
    Caption = 'Cancel'
    OnClick = btnCancelClick
  end
  object btnSave: TSpeedButton
    Left = 100
    Top = 0
    Width = 60
    Height = 22
    Caption = 'Save'
  end
  object btnExit: TSpeedButton
    Left = 260
    Top = 0
    Width = 60
    Height = 22
    Caption = 'Exit'
    OnClick = btnExitClick
  end
  object btnAdd: TSpeedButton
    Left = 20
    Top = 0
    Width = 60
    Height = 22
    Caption = 'Add'
  end
  object PageControl1: TPageControl
    Left = 0
    Top = 26
    Width = 954
    Height = 695
    ActivePage = tsMaintain
    Align = alBottom
    TabOrder = 0
    object tsSearch: TTabSheet
      Caption = 'Search'
      TabVisible = False
      object smdbgMemberSearchGrid: TSMDBGrid
        Left = 0
        Top = 0
        Width = 946
        Height = 685
        Align = alClient
        DataSource = dscMemSearchGrid
        Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        OnDblClick = smdbgMemberSearchGridDblClick
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
            FieldName = 'IDAlpha'
            Width = 100
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'SurName'
            Width = 150
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'FirstName'
            Width = 100
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'pcName'
            Title.Caption = 'Town'
            Width = 100
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'pcState_Code'
            Title.Caption = 'State'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Mobile'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Email'
            Width = 350
            Visible = True
          end>
      end
    end
    object tsMaintain: TTabSheet
      Caption = 'tsMaintain'
      ImageIndex = 1
      TabVisible = False
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object lblFirstname: TLabel
        Left = 82
        Top = 19
        Width = 51
        Height = 13
        Alignment = taRightJustify
        Caption = 'First Name'
      end
      object lblSurname: TLabel
        Left = 30
        Top = 46
        Width = 103
        Height = 13
        Alignment = taRightJustify
        Caption = 'Surname or Company'
      end
      object lblPreferredName: TLabel
        Left = 57
        Top = 73
        Width = 76
        Height = 13
        Alignment = taRightJustify
        Caption = 'Preferred Name'
      end
      object dbePreferredName: TDBEdit
        Left = 150
        Top = 70
        Width = 121
        Height = 21
        TabStop = False
        DataField = 'PreferredName'
        DataSource = dscCard
        ReadOnly = True
        TabOrder = 0
      end
      object dbeMobile: TDBEdit
        Left = 150
        Top = 97
        Width = 90
        Height = 21
        DataField = 'Mobile'
        DataSource = dscCard
        ReadOnly = True
        TabOrder = 1
        Visible = False
      end
      object txtMobile: TStaticText
        Left = 94
        Top = 100
        Width = 34
        Height = 17
        Alignment = taRightJustify
        Caption = 'Mobile'
        TabOrder = 3
      end
      object txtLandLine: TStaticText
        Left = 87
        Top = 127
        Width = 46
        Height = 17
        Alignment = taRightJustify
        Caption = 'LandLine'
        TabOrder = 4
      end
      object dbeLandLine: TDBEdit
        Left = 150
        Top = 124
        Width = 90
        Height = 21
        TabStop = False
        DataField = 'LandLine'
        DataSource = dscCard
        ReadOnly = True
        TabOrder = 5
      end
      object dbePostalLine1: TDBEdit
        Left = 712
        Top = 16
        Width = 185
        Height = 21
        TabStop = False
        DataField = 'Locn1'
        DataSource = dscCard
        ReadOnly = True
        TabOrder = 6
      end
      object dbePostalLine2: TDBEdit
        Left = 712
        Top = 43
        Width = 185
        Height = 21
        TabStop = False
        DataField = 'Locn2'
        DataSource = dscCard
        ReadOnly = True
        TabOrder = 7
      end
      object dbePostalPostcade: TDBEdit
        Left = 776
        Top = 97
        Width = 121
        Height = 21
        TabStop = False
        DataField = 'pcCode'
        DataSource = dscCard
        ReadOnly = True
        TabOrder = 8
      end
      object dbePostalState: TDBEdit
        Left = 712
        Top = 97
        Width = 43
        Height = 21
        TabStop = False
        DataField = 'pcState_Code'
        DataSource = dscCard
        ReadOnly = True
        TabOrder = 9
      end
      object StaticText4: TStaticText
        Left = 777
        Top = 238
        Width = 74
        Height = 20
        Caption = 'Categories'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 10
      end
      object DBLookupListBox1: TDBLookupListBox
        Left = 682
        Top = 264
        Width = 215
        Height = 69
        KeyField = 'CatID'
        ListField = 'Description'
        TabOrder = 11
      end
      object dbluComboBoxCategories: TDBLookupComboBox
        Left = 682
        Top = 347
        Width = 215
        Height = 21
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        KeyField = 'ID'
        ListField = 'Description'
        ParentFont = False
        TabOrder = 12
      end
      object StaticText1: TStaticText
        Left = 42
        Top = 361
        Width = 41
        Height = 20
        Caption = 'Notes'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 13
      end
      object txtNoteAdded: TStaticText
        Left = 100
        Top = 357
        Width = 20
        Height = 27
        Caption = '+'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 14
      end
      object smdbgNoteAbbrev: TSMDBGrid
        Left = 8
        Top = 387
        Width = 380
        Height = 265
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
        ReadOnly = True
        TabOrder = 15
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
        GridStyle.Style = gsCustom
        GridStyle.OddColor = clInactiveCaption
        GridStyle.EvenColor = clWindow
        TitleHeight.PixelCount = 24
        FooterColor = clBtnFace
        ExOptions = [eoENTERlikeTAB, eoKeepSelection, eoStandardPopup, eoBLOBEditor, eoTitleWordWrap]
        RegistryKey = 'Software\Scalabium'
        RegistrySection = 'SMDBGrid'
        WidthOfIndicator = 11
        DefaultRowHeight = 17
        ScrollBars = ssVertical
        Columns = <
          item
            Expanded = False
            FieldName = 'TheTime'
            Width = 121
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Abbreviation'
            Visible = True
          end>
      end
      object txtNoteDetail: TStaticText
        Left = 395
        Top = 361
        Width = 48
        Height = 20
        Caption = 'Details'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 16
      end
      object memNote: TMemo
        Left = 394
        Top = 408
        Width = 505
        Height = 240
        Lines.Strings = (
          '')
        TabOrder = 17
      end
      object dbeFirstName: TDBEdit
        Left = 150
        Top = 16
        Width = 121
        Height = 21
        TabStop = False
        DataField = 'FirstName'
        DataSource = dscCard
        ReadOnly = True
        TabOrder = 18
      end
      object dbeSurname: TDBEdit
        Left = 150
        Top = 43
        Width = 419
        Height = 21
        TabStop = False
        DataField = 'SurName'
        DataSource = dscCard
        ReadOnly = True
        TabOrder = 19
      end
      object DBEdit1: TDBEdit
        Left = 712
        Top = 70
        Width = 185
        Height = 21
        TabStop = False
        DataField = 'pcName'
        DataSource = dscCard
        ReadOnly = True
        TabOrder = 20
      end
      object cbxInActive: TCheckBox
        Left = 93
        Top = 177
        Width = 70
        Height = 17
        Alignment = taLeftJustify
        Caption = 'Inactive'
        TabOrder = 2
      end
      object txtDOB: TStaticText
        Left = 68
        Top = 154
        Width = 65
        Height = 17
        Caption = 'Date of Birth'
        TabOrder = 21
      end
      object DBEdit2: TDBEdit
        Left = 152
        Top = 152
        Width = 121
        Height = 21
        DataField = 'DOB'
        DataSource = dscMember
        TabOrder = 22
      end
    end
  end
  object edtFirstNameSearch: TEdit
    Left = 570
    Top = 0
    Width = 121
    Height = 21
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
  end
  object edtSurname: TEdit
    Left = 390
    Top = 0
    Width = 115
    Height = 21
    TabOrder = 2
    OnKeyUp = edtSurnameKeyUp
  end
  object edtMobile: TEdit
    Left = 735
    Top = 0
    Width = 121
    Height = 21
    TabOrder = 3
  end
  object txtFirstNameSearch: TStaticText
    Left = 513
    Top = 3
    Width = 52
    Height = 17
    Caption = 'FirstName'
    TabOrder = 4
  end
  object txtMobileSearch: TStaticText
    Left = 700
    Top = 3
    Width = 34
    Height = 17
    Caption = 'Mobile'
    TabOrder = 5
  end
  object txtSurnameSearch: TStaticText
    Left = 340
    Top = 3
    Width = 46
    Height = 17
    Caption = 'Surname'
    ParentShowHint = False
    ShowHint = True
    TabOrder = 6
  end
  object dscCard: TDataSource
    Left = 460
    Top = 210
  end
  object dscMemSearchGrid: TDataSource
    Left = 164
    Top = 216
  end
  object dscMember: TDataSource
    Left = 324
    Top = 208
  end
end
