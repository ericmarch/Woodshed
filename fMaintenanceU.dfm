object fMaintenance: TfMaintenance
  Left = 0
  Top = 0
  BorderIcons = []
  Caption = 'Maintenance'
  ClientHeight = 720
  ClientWidth = 1104
  Color = clBtnFace
  Constraints.MinWidth = 1120
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object btnAdd: TSpeedButton
    Left = 20
    Top = -1
    Width = 60
    Height = 22
    Caption = 'Add'
    OnClick = btnAddClick
  end
  object btnCancel: TSpeedButton
    Left = 176
    Top = -1
    Width = 60
    Height = 22
    Caption = 'Cancel'
    OnClick = btnCancelClick
  end
  object btnExit: TSpeedButton
    Left = 265
    Top = -1
    Width = 60
    Height = 22
    Caption = 'Exit'
    OnClick = btnExitClick
  end
  object btnSave: TSpeedButton
    Left = 101
    Top = -1
    Width = 60
    Height = 22
    Caption = 'Save'
    Enabled = False
    OnClick = btnSaveClick
  end
  object PageControl1: TPageControl
    Left = 0
    Top = 45
    Width = 1104
    Height = 675
    ActivePage = tshContact
    Align = alBottom
    TabOrder = 0
    object tshSearch: TTabSheet
      Caption = 'Search'
      ImageIndex = 2
      OnShow = tshSearchShow
      object smdbContactSearchGrid: TSMDBGrid
        Left = 0
        Top = 0
        Width = 1096
        Height = 647
        Align = alClient
        DataSource = dscCardSearch
        Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
        ReadOnly = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        OnCellClick = smdbContactSearchGridCellClick
        OnDblClick = smdbContactSearchGridDblClick
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
        ExOptions = [eoENTERlikeTAB, eoFixedLikeColumn, eoKeepSelection, eoStandardPopup, eoBLOBEditor, eoTitleWordWrap, eoFilterAutoApply]
        RegistryKey = 'Software\Scalabium'
        RegistrySection = 'SMDBGrid'
        WidthOfIndicator = 11
        DefaultRowHeight = 17
        ScrollBars = ssHorizontal
        Columns = <
          item
            Expanded = False
            FieldName = 'ID'
            Title.Alignment = taCenter
            Title.Caption = 'Entry ID'
            Visible = True
            SortType = stAscending
          end
          item
            Expanded = False
            FieldName = 'FirstName'
            Title.Alignment = taCenter
            Width = 150
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'SurName'
            Title.Caption = '        SurName'
            Width = 233
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Mobile'
            Title.Alignment = taCenter
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'cardOrganisation.Description'
            Width = 300
            Visible = True
          end>
      end
    end
    object tshContact: TTabSheet
      Caption = 'Contact'
      OnShow = tshContactShow
      object lblSurname: TLabel
        Left = 30
        Top = 19
        Width = 103
        Height = 13
        Alignment = taRightJustify
        Caption = 'Surname or Company'
      end
      object lblFirstname: TLabel
        Left = 82
        Top = 46
        Width = 51
        Height = 13
        Alignment = taRightJustify
        Caption = 'First Name'
      end
      object lblPreferredName: TLabel
        Left = 57
        Top = 73
        Width = 76
        Height = 13
        Alignment = taRightJustify
        Caption = 'Preferred Name'
      end
      object txtGroup1Name: TStaticText
        Left = 624
        Top = 19
        Width = 104
        Height = 17
        AutoSize = False
        Caption = 'txtGroup1Name'
        TabOrder = 0
      end
      object txtGroups: TStaticText
        Left = 624
        Top = 1
        Width = 49
        Height = 20
        Caption = 'Groups'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
      end
      object cbxGroup1: TCheckBox
        Left = 595
        Top = 19
        Width = 15
        Height = 17
        TabOrder = 2
      end
      object txtGroup2Name: TStaticText
        Left = 624
        Top = 46
        Width = 104
        Height = 21
        AutoSize = False
        Caption = 'txtGroup2Name'
        TabOrder = 3
      end
      object cbxGroup2: TCheckBox
        Left = 595
        Top = 46
        Width = 15
        Height = 17
        TabOrder = 4
      end
      object txtGroup3Name: TStaticText
        Left = 624
        Top = 73
        Width = 104
        Height = 17
        AutoSize = False
        Caption = 'txtGroup3Name'
        TabOrder = 5
      end
      object cbxGroup3: TCheckBox
        Left = 595
        Top = 73
        Width = 15
        Height = 17
        TabOrder = 6
      end
      object txtAddressPostal: TStaticText
        Left = 79
        Top = 108
        Width = 44
        Height = 20
        Caption = 'Postal'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 7
      end
      object cbxPostAust: TCheckBox
        Left = 65
        Top = 135
        Width = 73
        Height = 17
        Alignment = taLeftJustify
        Caption = 'Australian'
        Checked = True
        State = cbChecked
        TabOrder = 8
      end
      object txtAddressLocation: TStaticText
        Left = 405
        Top = 108
        Width = 59
        Height = 20
        Caption = 'Location'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 9
      end
      object cbxLocnAust: TCheckBox
        Left = 391
        Top = 135
        Width = 73
        Height = 17
        Alignment = taLeftJustify
        Caption = 'Australian'
        Checked = True
        State = cbChecked
        TabOrder = 10
      end
      object dbeLandLine: TDBEdit
        Left = 480
        Top = 70
        Width = 90
        Height = 21
        DataField = 'LandLine'
        DataSource = dscCard
        TabOrder = 11
        OnEnter = dbeLandLineEnter
        OnExit = dbeLandLineExit
      end
      object dbeLocationLine1: TDBEdit
        Left = 480
        Top = 107
        Width = 220
        Height = 21
        DataField = 'Locn1'
        DataSource = dscCard
        TabOrder = 12
      end
      object dbeLocationLine2: TDBEdit
        Left = 480
        Top = 134
        Width = 220
        Height = 21
        DataField = 'Locn2'
        DataSource = dscCard
        TabOrder = 13
      end
      object dbeLocationPostCode: TDBEdit
        Left = 545
        Top = 188
        Width = 70
        Height = 21
        TabStop = False
        DataField = 'pcCode'
        DataSource = dscAddressLocation
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Orientation = 1
        Font.Style = []
        ParentFont = False
        TabOrder = 14
      end
      object dbeLocationState: TDBEdit
        Left = 480
        Top = 188
        Width = 43
        Height = 21
        DataField = 'pcState_Code'
        DataSource = dscAddressLocation
        TabOrder = 15
      end
      object dbeMobile: TDBEdit
        Left = 480
        Top = 43
        Width = 90
        Height = 21
        DataField = 'Mobile'
        DataSource = dscCard
        TabOrder = 16
        OnEnter = dbeMobileEnter
        OnExit = dbeMobileExit
        OnKeyUp = dbeMobileKeyUp
      end
      object dbePostalLine1: TDBEdit
        Left = 150
        Top = 107
        Width = 220
        Height = 21
        DataField = 'Post1'
        DataSource = dscCard
        TabOrder = 17
      end
      object dbePostalLine2: TDBEdit
        Left = 150
        Top = 134
        Width = 220
        Height = 21
        DataField = 'Post2'
        DataSource = dscCard
        TabOrder = 18
      end
      object dbePostalPostcade: TDBEdit
        Left = 205
        Top = 188
        Width = 70
        Height = 21
        DataField = 'pcCode'
        DataSource = dscAddressPostal
        TabOrder = 19
      end
      object dbePostalState: TDBEdit
        Left = 150
        Top = 188
        Width = 43
        Height = 21
        DataField = 'pcState_Code'
        DataSource = dscAddressPostal
        TabOrder = 20
      end
      object dblucbTownLocation: TDBLookupComboBox
        Left = 480
        Top = 161
        Width = 220
        Height = 21
        DataField = 'LocnauTownsID'
        DataSource = dscCard
        DropDownRows = 10
        KeyField = 'ID'
        ListField = 'pcName'
        ListSource = dscPostCode
        TabOrder = 21
      end
      object dblucbTownPostal: TDBLookupComboBox
        Left = 150
        Top = 161
        Width = 220
        Height = 21
        DataField = 'PostauTownsID'
        DataSource = dscCard
        DropDownRows = 10
        KeyField = 'ID'
        ListField = 'pcName'
        ListSource = dscPostCode
        TabOrder = 22
      end
      object txtMobile: TStaticText
        Left = 430
        Top = 46
        Width = 34
        Height = 17
        Caption = 'Mobile'
        TabOrder = 23
      end
      object txtLandLine: TStaticText
        Left = 418
        Top = 76
        Width = 46
        Height = 17
        Caption = 'LandLine'
        TabOrder = 24
      end
      object txtEmail: TStaticText
        Left = 110
        Top = 218
        Width = 28
        Height = 17
        Caption = 'Email'
        TabOrder = 25
      end
      object txtOrganisation: TStaticText
        Left = 110
        Top = 245
        Width = 22
        Height = 17
        Caption = 'Org'
        TabOrder = 26
      end
      object dbluComboBoxOrg: TDBLookupComboBox
        Left = 150
        Top = 245
        Width = 577
        Height = 21
        DataField = 'OrgID'
        DataSource = dscCard
        KeyField = 'ID'
        ListField = 'Description'
        ListSource = dscOrganisation
        TabOrder = 27
        OnCloseUp = dbluComboBoxOrgCloseUp
      end
      object dbeEmail: TDBEdit
        Left = 150
        Top = 215
        Width = 577
        Height = 21
        DataField = 'Email'
        DataSource = dscCard
        TabOrder = 28
      end
      object txtUDF_Header: TStaticText
        Left = 97
        Top = 271
        Width = 125
        Height = 20
        Caption = 'User Defined Fields'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 29
      end
      object txtUDF_Add: TStaticText
        Left = 246
        Top = 266
        Width = 20
        Height = 27
        Caption = '+'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 30
        OnClick = txtUDF_AddClick
      end
      object dblucbUDF1: TDBLookupComboBox
        Left = 16
        Top = 288
        Width = 136
        Height = 21
        DataField = 'CustomField1NameKey'
        DataSource = dscCard
        KeyField = 'id'
        ListField = 'Description'
        ListSource = dscUDF1Names
        TabOrder = 31
      end
      object dblucbUDF2: TDBLookupComboBox
        Left = 16
        Top = 315
        Width = 136
        Height = 21
        DataField = 'CustomField2NameKey'
        DataSource = dscCard
        KeyField = 'id'
        ListField = 'Description'
        ListSource = dscUDF2Names
        TabOrder = 32
      end
      object dbeUDF1Detail: TDBEdit
        Left = 164
        Top = 288
        Width = 564
        Height = 21
        DataField = 'CustomField1'
        DataSource = dscCard
        TabOrder = 33
      end
      object dbeUDF2Detail: TDBEdit
        Left = 164
        Top = 315
        Width = 564
        Height = 21
        DataField = 'CustomField2'
        DataSource = dscCard
        TabOrder = 34
      end
      object DBLookupListBoxCategories: TDBLookupListBox
        Left = 766
        Top = 27
        Width = 260
        Height = 147
        KeyField = 'CatID'
        ListField = 'Description'
        ListSource = dscCardCategory
        TabOrder = 35
        OnDblClick = DBLookupListBoxCategoriesDblClick
      end
      object txtCategories: TStaticText
        Left = 856
        Top = 1
        Width = 74
        Height = 20
        Caption = 'Categories'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 36
      end
      object dbluComboBoxCategories: TDBLookupComboBox
        Left = 766
        Top = 188
        Width = 260
        Height = 21
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        KeyField = 'ID'
        ListField = 'Description'
        ListSource = dscCardCatLink
        ParentFont = False
        TabOrder = 37
        OnCloseUp = dbluComboBoxCategoriesCloseUp
      end
      object dbeFirstName: TDBEdit
        Left = 150
        Top = 43
        Width = 121
        Height = 21
        DataField = 'FirstName'
        DataSource = dscCard
        TabOrder = 38
      end
      object dbeSurname: TDBEdit
        Left = 150
        Top = 16
        Width = 420
        Height = 21
        DataField = 'SurName'
        DataSource = dscCard
        TabOrder = 39
      end
      object dbePreferredName: TDBEdit
        Left = 150
        Top = 70
        Width = 121
        Height = 21
        DataField = 'PreferredName'
        DataSource = dscCard
        TabOrder = 40
      end
      object smdbgFamily: TSMDBGrid
        Left = 16
        Top = 364
        Width = 857
        Height = 276
        DataSource = dscFamily
        Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
        TabOrder = 41
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
        ExOptions = [eoENTERlikeTAB, eoKeepSelection, eoStandardPopup, eoBLOBEditor, eoTitleWordWrap, eoFilterAutoApply, eoCellWordWrap]
        RegistryKey = 'Software\Scalabium'
        RegistrySection = 'SMDBGrid'
        WidthOfIndicator = 11
        DefaultRowHeight = 17
        ScrollBars = ssHorizontal
        Columns = <
          item
            Expanded = False
            FieldName = 'Description'
            Title.Caption = 'Type'
            Width = 100
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'SurName'
            Width = 100
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
            FieldName = 'Mobile'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'MoreInfo'
            Width = 442
            Visible = True
          end>
      end
      object txtAssociates: TStaticText
        Left = 97
        Top = 342
        Width = 146
        Height = 20
        Caption = 'Family and Associates'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 42
      end
      object txtFamily: TStaticText
        Left = 249
        Top = 336
        Width = 20
        Height = 27
        Caption = '+'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 43
        OnClick = txtFamilyClick
      end
    end
    object tshNotes: TTabSheet
      Caption = 'Notes'
      ImageIndex = 3
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object StaticText1: TStaticText
        Left = 58
        Top = 3
        Width = 41
        Height = 20
        Caption = 'Notes'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
      end
      object smdbgNoteAbbrev: TSMDBGrid
        Left = 3
        Top = 23
        Width = 393
        Height = 629
        DataSource = dscNoteAbbrev
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
        ReadOnly = True
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        OnCellClick = smdbgNoteAbbrevCellClick
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
      object txtNoteAdded: TStaticText
        Left = 105
        Top = -2
        Width = 20
        Height = 27
        Caption = '+'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 2
        OnClick = txtNoteAddedClick
      end
      object txtNoteDetail: TStaticText
        Left = 434
        Top = 1
        Width = 48
        Height = 20
        Caption = 'Details'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 3
      end
      object memNote: TMemo
        Left = 402
        Top = 23
        Width = 690
        Height = 629
        Lines.Strings = (
          '')
        TabOrder = 4
      end
    end
    object tshMember: TTabSheet
      Caption = 'Member'
      ImageIndex = 1
      OnShow = tshMemberShow
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object txtIsInactive: TStaticText
        Left = 61
        Top = 159
        Width = 80
        Height = 17
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'IsInactive'
        TabOrder = 0
      end
      object txtBadgePrinted: TStaticText
        Left = 16
        Top = 190
        Width = 125
        Height = 17
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Badge Printed'
        TabOrder = 1
      end
      object txtFinancial: TStaticText
        Left = 256
        Top = 161
        Width = 80
        Height = 17
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Financial'
        TabOrder = 2
      end
      object cbxIsInactive: TCheckBox
        Left = 158
        Top = 160
        Width = 15
        Height = 17
        TabOrder = 3
      end
      object cbxBadgePrinted: TCheckBox
        Left = 158
        Top = 190
        Width = 15
        Height = 17
        TabOrder = 4
      end
      object cbxFinancial: TCheckBox
        Left = 362
        Top = 161
        Width = 15
        Height = 17
        TabOrder = 5
      end
      object DBLookupListBoxMemCat: TDBLookupListBox
        Left = 362
        Top = 38
        Width = 215
        Height = 82
        KeyField = 'CatID'
        ListField = 'Description'
        ListSource = dscCardCategory
        TabOrder = 6
        OnDblClick = DBLookupListBoxCategoriesDblClick
      end
      object txtMemCategory: TStaticText
        Left = 406
        Top = 14
        Width = 74
        Height = 20
        Caption = 'Categories'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 7
      end
      object DBLookupComboBoxMemcat: TDBLookupComboBox
        Left = 362
        Top = 129
        Width = 215
        Height = 21
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        KeyField = 'ID'
        ListField = 'Description'
        ListSource = dscMemCat
        ParentFont = False
        TabOrder = 8
        OnCloseUp = dbluComboBoxCategoriesCloseUp
      end
      object txtAccepted: TStaticText
        Left = 92
        Top = 10
        Width = 49
        Height = 17
        Caption = 'Accepted'
        TabOrder = 9
      end
      object txtDOB: TStaticText
        Left = 116
        Top = 40
        Width = 25
        Height = 17
        Alignment = taRightJustify
        Caption = 'DOB'
        TabOrder = 10
      end
      object cbxChildClearance: TCheckBox
        Left = 158
        Top = 221
        Width = 15
        Height = 17
        TabOrder = 11
      end
      object txtChildClearance: TStaticText
        Left = 61
        Top = 221
        Width = 80
        Height = 17
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Child Clearance'
        TabOrder = 12
      end
      object cbxPoliceClearance: TCheckBox
        Left = 158
        Top = 251
        Width = 15
        Height = 17
        TabOrder = 13
      end
      object txtPoliceClearance: TStaticText
        Left = 61
        Top = 251
        Width = 80
        Height = 17
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Police Clearance'
        TabOrder = 14
      end
      object dbeReceiptNumber: TDBEdit
        Left = 362
        Top = 248
        Width = 100
        Height = 21
        DataField = 'ReceiptNum'
        DataSource = dscMember
        TabOrder = 15
      end
      object dtpReceiptDate: TDateTimePicker
        Left = 362
        Top = 188
        Width = 100
        Height = 21
        Date = 43485.000000000000000000
        Time = 0.884536446763377200
        TabOrder = 16
      end
      object dtpFinancialTo: TDateTimePicker
        Left = 362
        Top = 218
        Width = 100
        Height = 21
        Date = 43409.000000000000000000
        Time = 0.884536446763377200
        TabOrder = 17
      end
      object StaticText2: TStaticText
        Left = 256
        Top = 188
        Width = 80
        Height = 17
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Receipt Date'
        TabOrder = 18
      end
      object StaticText3: TStaticText
        Left = 256
        Top = 218
        Width = 80
        Height = 17
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Financial To'
        TabOrder = 19
      end
      object txtReceiptNumber: TStaticText
        Left = 256
        Top = 248
        Width = 80
        Height = 17
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Receipt Number'
        TabOrder = 20
      end
      object txtMemType: TStaticText
        Left = 72
        Top = 70
        Width = 69
        Height = 17
        Alignment = taRightJustify
        Caption = 'Member Type'
        TabOrder = 21
      end
      object DBLUComboBoxMemType: TDBLookupComboBox
        Left = 158
        Top = 67
        Width = 145
        Height = 21
        DataField = 'MemberType'
        DataSource = dscMember
        DropDownRows = 10
        KeyField = 'ID'
        ListField = 'Description'
        ListSource = dscMemType
        TabOrder = 22
      end
      object DBLUComboBoxMemStatus: TDBLookupComboBox
        Left = 158
        Top = 98
        Width = 145
        Height = 21
        DataField = 'Status'
        DataSource = dscMember
        KeyField = 'ID'
        ListField = 'Description'
        ListSource = dscMemStatus
        TabOrder = 23
      end
      object txtMemberStatus: TStaticText
        Left = 68
        Top = 100
        Width = 73
        Height = 17
        Caption = 'MemberStatus'
        TabOrder = 24
      end
      object txtGender: TStaticText
        Left = 102
        Top = 131
        Width = 39
        Height = 17
        Alignment = taRightJustify
        Caption = 'Gender'
        TabOrder = 25
      end
      object DBLUComboBoxMemGender: TDBLookupComboBox
        Left = 158
        Top = 129
        Width = 145
        Height = 21
        DataField = 'Gender'
        DataSource = dscMember
        KeyField = 'ID'
        ListField = 'Description'
        ListSource = dscMemGender
        TabOrder = 26
      end
      object dtpDateBirth: TDateTimePicker
        Left = 158
        Top = 38
        Width = 100
        Height = 21
        Date = 43478.000000000000000000
        Time = 0.902307256947096900
        TabOrder = 27
      end
      object dtpAcceptedDate: TDateTimePicker
        Left = 158
        Top = 7
        Width = 100
        Height = 21
        Date = 43479.000000000000000000
        Time = 0.909811886573152200
        TabOrder = 28
        OnCloseUp = dtpAcceptedDateCloseUp
      end
    end
  end
  object edtFirstNameSearch: TEdit
    Left = 578
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
    OnKeyUp = edtFirstNameSearchKeyUp
  end
  object edtMobile: TEdit
    Left = 743
    Top = 0
    Width = 121
    Height = 21
    TabOrder = 2
    OnKeyUp = edtMobileKeyUp
  end
  object edtSurname: TEdit
    Left = 397
    Top = 0
    Width = 115
    Height = 21
    TabOrder = 3
    OnKeyUp = edtSurnameKeyUp
  end
  object txtSurnameSearch: TStaticText
    Left = 332
    Top = 3
    Width = 46
    Height = 17
    Caption = 'Surname'
    TabOrder = 4
  end
  object txtFirstNameSearch: TStaticText
    Left = 518
    Top = 3
    Width = 52
    Height = 17
    Caption = 'FirstName'
    TabOrder = 5
  end
  object txtMobileSearch: TStaticText
    Left = 704
    Top = 3
    Width = 34
    Height = 17
    Caption = 'Mobile'
    TabOrder = 6
  end
  object txtIDDesc: TStaticText
    Left = 242
    Top = 27
    Width = 17
    Height = 17
    Caption = 'ID'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 7
  end
  object edtID: TEdit
    Left = 266
    Top = 27
    Width = 60
    Height = 15
    Constraints.MaxHeight = 15
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 8
    OnKeyUp = edtIDKeyUp
  end
  object edtOrgSearch: TEdit
    Left = 397
    Top = 27
    Width = 467
    Height = 21
    TabOrder = 9
    OnKeyUp = edtOrgSearchKeyUp
  end
  object txtOrgSearch: TStaticText
    Left = 331
    Top = 27
    Width = 65
    Height = 17
    Caption = 'Organisation'
    TabOrder = 10
  end
  object dscCardSearch: TDataSource
    DataSet = dmoMaintenance.dstCardSearch
    Left = 913
    Top = 280
  end
  object dscCard: TDataSource
    DataSet = dmoMaintenance.qryCard
    Left = 904
    Top = 4
  end
  object dscAddressPostal: TDataSource
    DataSet = dmoMaintenance.qryAddressPostal
    Left = 864
    Top = 52
  end
  object dscAddressLocation: TDataSource
    DataSet = dmoMaintenance.qryAddressLocation
    Left = 1008
    Top = 12
  end
  object dscUDF2Names: TDataSource
    DataSet = dmoMaintenance.dstUDF1Name
    Left = 904
    Top = 61
  end
  object dscUDF1Names: TDataSource
    DataSet = dmoMaintenance.dstUDF1Name
    Left = 984
    Top = 69
  end
  object dscCardCatLink: TDataSource
    DataSet = dmoMaintenance.dstCardCatLink
    Left = 920
    Top = 117
  end
  object dscCardCategory: TDataSource
    DataSet = dmoMaintenance.dstCardCategory
    Left = 1001
    Top = 120
  end
  object dscOrganisation: TDataSource
    DataSet = dmoMaintenance.qryOrganisation
    Left = 920
    Top = 181
  end
  object dscPostCode: TDataSource
    DataSet = dmoMaintenance.dstPostCode
    Left = 1000
    Top = 197
  end
  object dscNotes: TDataSource
    DataSet = dmoMaintenance.qryNote
    Left = 992
    Top = 340
  end
  object dscNoteAbbrev: TDataSource
    DataSet = dmoMaintenance.dstNoteAbbrev
    Left = 912
    Top = 332
  end
  object dscFamily: TDataSource
    DataSet = dmoMaintenance.dstFamily
    Left = 1004
    Top = 285
  end
  object dscMemCat: TDataSource
    Left = 908
    Top = 397
  end
  object dscMemCatLink: TDataSource
    Left = 988
    Top = 405
  end
  object dscMember: TDataSource
    DataSet = dmoMaintenance.qryMember
    Left = 908
    Top = 453
  end
  object dscMemType: TDataSource
    DataSet = dmoMaintenance.dstMemType
    Left = 996
    Top = 469
  end
  object dscMemStatus: TDataSource
    DataSet = dmoMaintenance.dstMemStatus
    Left = 916
    Top = 525
  end
  object dscMemGender: TDataSource
    DataSet = dmoMaintenance.dstMemGender
    Left = 1004
    Top = 533
  end
end
