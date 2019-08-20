object fMaintenance: TfMaintenance
  Left = 0
  Top = 0
  BorderIcons = []
  Caption = 'Maintenance'
  ClientHeight = 776
  ClientWidth = 1054
  Color = clBtnFace
  Constraints.MaxWidth = 1070
  Constraints.MinWidth = 1070
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
    Left = 96
    Top = -1
    Width = 60
    Height = 22
    Caption = 'Save'
    Enabled = False
    OnClick = btnSaveClick
  end
  object PageControl1: TPageControl
    Left = 0
    Top = 32
    Width = 1054
    Height = 744
    ActivePage = tshAttachments
    Align = alBottom
    TabOrder = 0
    object tshSearch: TTabSheet
      Caption = 'Search'
      ImageIndex = 2
      OnShow = tshSearchShow
      object smdbContactSearchGrid: TSMDBGrid
        Left = 0
        Top = 0
        Width = 1046
        Height = 716
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
            FieldName = 'Organisation'
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
      object txtGroups: TStaticText
        Left = 595
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
        TabOrder = 0
      end
      object txtAddressPostal: TStaticText
        Left = 79
        Top = 151
        Width = 44
        Height = 20
        Caption = 'Postal'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
      end
      object cbxPostAust: TCheckBox
        Left = 65
        Top = 178
        Width = 73
        Height = 17
        Alignment = taLeftJustify
        Caption = 'Australian'
        Checked = True
        State = cbChecked
        TabOrder = 2
      end
      object txtAddressLocation: TStaticText
        Left = 405
        Top = 151
        Width = 59
        Height = 20
        Caption = 'Location'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 3
      end
      object cbxLocnAust: TCheckBox
        Left = 391
        Top = 178
        Width = 73
        Height = 17
        Alignment = taLeftJustify
        Caption = 'Australian'
        Checked = True
        State = cbChecked
        TabOrder = 4
      end
      object dbeLandLine: TDBEdit
        Left = 480
        Top = 70
        Width = 90
        Height = 21
        DataField = 'LandLine'
        DataSource = dscCard
        TabOrder = 5
        OnEnter = dbeLandLineEnter
        OnExit = dbeLandLineExit
      end
      object dbeLocationLine1: TDBEdit
        Left = 480
        Top = 150
        Width = 220
        Height = 21
        DataField = 'Locn1'
        DataSource = dscCard
        TabOrder = 6
      end
      object dbeLocationLine2: TDBEdit
        Left = 480
        Top = 177
        Width = 220
        Height = 21
        DataField = 'Locn2'
        DataSource = dscCard
        TabOrder = 7
      end
      object dbeLocationPostCode: TDBEdit
        Left = 545
        Top = 231
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
        TabOrder = 8
      end
      object dbeLocationState: TDBEdit
        Left = 480
        Top = 231
        Width = 43
        Height = 21
        DataField = 'pcState_Code'
        DataSource = dscAddressLocation
        TabOrder = 9
      end
      object dbeMobile: TDBEdit
        Left = 480
        Top = 43
        Width = 90
        Height = 21
        DataField = 'Mobile'
        DataSource = dscCard
        TabOrder = 10
        OnEnter = dbeMobileEnter
        OnExit = dbeMobileExit
        OnKeyUp = dbeMobileKeyUp
      end
      object dbePostalLine1: TDBEdit
        Left = 150
        Top = 150
        Width = 220
        Height = 21
        DataField = 'Post1'
        DataSource = dscCard
        TabOrder = 11
      end
      object dbePostalLine2: TDBEdit
        Left = 150
        Top = 177
        Width = 220
        Height = 21
        DataField = 'Post2'
        DataSource = dscCard
        TabOrder = 12
      end
      object dbePostalPostcode: TDBEdit
        Left = 205
        Top = 231
        Width = 70
        Height = 21
        DataField = 'pcCode'
        DataSource = dscAddressPostal
        TabOrder = 13
      end
      object dbePostalState: TDBEdit
        Left = 150
        Top = 231
        Width = 43
        Height = 21
        DataField = 'pcState_Code'
        DataSource = dscAddressPostal
        TabOrder = 14
      end
      object dblucbTownLocation: TDBLookupComboBox
        Left = 480
        Top = 204
        Width = 220
        Height = 21
        DataField = 'LocnauTownsID'
        DataSource = dscCard
        DropDownRows = 10
        KeyField = 'ID'
        ListField = 'pcName'
        ListSource = dscPostCode
        TabOrder = 15
      end
      object dblucbTownPostal: TDBLookupComboBox
        Left = 154
        Top = 204
        Width = 220
        Height = 21
        DataField = 'PostauTownsID'
        DataSource = dscCard
        DropDownRows = 10
        KeyField = 'ID'
        ListField = 'pcName'
        ListSource = dscPostCode
        TabOrder = 16
      end
      object txtMobile: TStaticText
        Left = 430
        Top = 43
        Width = 34
        Height = 17
        Caption = 'Mobile'
        TabOrder = 17
      end
      object txtLandLine: TStaticText
        Left = 418
        Top = 76
        Width = 46
        Height = 17
        Caption = 'LandLine'
        TabOrder = 18
      end
      object txtEmail: TStaticText
        Left = 110
        Top = 218
        Width = 28
        Height = 17
        Caption = 'Email'
        TabOrder = 19
      end
      object dbeEmail: TDBEdit
        Left = 150
        Top = 258
        Width = 577
        Height = 21
        DataField = 'Email'
        DataSource = dscCard
        TabOrder = 20
      end
      object txtUDF_Header: TStaticText
        Left = 97
        Top = 302
        Width = 125
        Height = 20
        Caption = 'User Defined Fields'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 21
      end
      object txtUDF_Add: TStaticText
        Left = 246
        Top = 297
        Width = 20
        Height = 27
        Caption = '+'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 22
        OnClick = txtUDF_AddClick
      end
      object dblucbUDF1: TDBLookupComboBox
        Left = 16
        Top = 331
        Width = 136
        Height = 21
        DataField = 'CustomField1NameKey'
        DataSource = dscCard
        KeyField = 'id'
        ListField = 'Description'
        ListSource = dscUDF1Names
        TabOrder = 23
      end
      object dblucbUDF2: TDBLookupComboBox
        Left = 16
        Top = 358
        Width = 136
        Height = 21
        DataField = 'CustomField2NameKey'
        DataSource = dscCard
        KeyField = 'id'
        ListField = 'Description'
        ListSource = dscUDF2Names
        TabOrder = 24
      end
      object dbeUDF1Detail: TDBEdit
        Left = 164
        Top = 331
        Width = 564
        Height = 21
        DataField = 'CustomField1'
        DataSource = dscCard
        TabOrder = 25
      end
      object dbeUDF2Detail: TDBEdit
        Left = 164
        Top = 358
        Width = 564
        Height = 21
        DataField = 'CustomField2'
        DataSource = dscCard
        TabOrder = 26
      end
      object DBLookupListBoxCategories: TDBLookupListBox
        Left = 766
        Top = 159
        Width = 260
        Height = 160
        KeyField = 'CatID'
        ListField = 'Description'
        ListSource = dscCardCategory
        TabOrder = 27
        OnDblClick = DBLookupListBoxCategoriesDblClick
      end
      object txtCategories: TStaticText
        Left = 856
        Top = 92
        Width = 74
        Height = 20
        Caption = 'Categories'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 28
      end
      object dbluComboBoxCategories: TDBLookupComboBox
        Left = 766
        Top = 358
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
        TabOrder = 29
        OnCloseUp = dbluComboBoxCategoriesCloseUp
      end
      object dbeFirstName: TDBEdit
        Left = 150
        Top = 43
        Width = 121
        Height = 21
        DataField = 'FirstName'
        DataSource = dscCard
        TabOrder = 30
      end
      object dbeSurname: TDBEdit
        Left = 150
        Top = 16
        Width = 420
        Height = 21
        DataField = 'SurName'
        DataSource = dscCard
        TabOrder = 31
      end
      object dbePreferredName: TDBEdit
        Left = 150
        Top = 70
        Width = 121
        Height = 21
        DataField = 'PreferredName'
        DataSource = dscCard
        TabOrder = 32
      end
      object smdbgFamily: TSMDBGrid
        Left = 16
        Top = 407
        Width = 857
        Height = 276
        DataSource = dscFamily
        Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
        TabOrder = 33
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
        Top = 385
        Width = 146
        Height = 20
        Caption = 'Family and Associates'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 34
      end
      object txtFamily: TStaticText
        Left = 249
        Top = 379
        Width = 20
        Height = 27
        Caption = '+'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 35
        OnClick = txtFamilyClick
      end
      object dbchbGroup1: TDBCheckBox
        Left = 598
        Top = 23
        Width = 97
        Height = 17
        Caption = 'Group1'
        DataField = 'Group1'
        DataSource = dscCard
        TabOrder = 36
      end
      object dbchbGroup2: TDBCheckBox
        Left = 598
        Top = 46
        Width = 97
        Height = 17
        Caption = 'Group2'
        DataField = 'Group2'
        DataSource = dscCard
        TabOrder = 37
      end
      object dbchbGroup3: TDBCheckBox
        Left = 598
        Top = 69
        Width = 97
        Height = 17
        Caption = 'Group3'
        DataField = 'Group3'
        DataSource = dscCard
        TabOrder = 38
      end
      object dbchbGroup4: TDBCheckBox
        Left = 735
        Top = 23
        Width = 97
        Height = 17
        Caption = 'Group4'
        DataField = 'Group4'
        DataSource = dscCard
        TabOrder = 39
      end
      object dbchbGroup5: TDBCheckBox
        Left = 735
        Top = 46
        Width = 97
        Height = 17
        Caption = 'Group5'
        DataField = 'Group5'
        DataSource = dscCard
        TabOrder = 40
      end
      object dbchbGroup6: TDBCheckBox
        Left = 735
        Top = 69
        Width = 97
        Height = 17
        Caption = 'Group6'
        DataField = 'Group6'
        DataSource = dscCard
        TabOrder = 41
      end
    end
    object tshNotes: TTabSheet
      Caption = 'Notes'
      ImageIndex = 3
      object smdbgNoteAbbrev: TSMDBGrid
        Left = 3
        Top = 23
        Width = 393
        Height = 629
        DataSource = dscNoteAbbrev
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
        ReadOnly = True
        TabOrder = 0
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
      object txtNoteDetail: TStaticText
        Left = 434
        Top = -1
        Width = 48
        Height = 20
        Caption = 'Details'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
      end
      object memNote: TMemo
        Left = 402
        Top = 23
        Width = 640
        Height = 629
        Lines.Strings = (
          '')
        TabOrder = 2
      end
      object txtNoteAdded: TStaticText
        Left = 102
        Top = -6
        Width = 20
        Height = 27
        Caption = '+'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 3
        OnClick = txtNoteAddedClick
      end
      object StaticText1: TStaticText
        Left = 55
        Top = -2
        Width = 41
        Height = 20
        Caption = 'Notes'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 4
      end
    end
    object tshAttachments: TTabSheet
      Caption = 'Attachments'
      ImageIndex = 4
      OnExit = tshAttachmentsExit
      object pnlAttachments: TPanel
        Left = 0
        Top = 0
        Width = 1046
        Height = 716
        Align = alClient
        TabOrder = 0
        object BtnNext: TSpeedButton
          Left = 160
          Top = 0
          Width = 23
          Height = 22
          Caption = '>'
          Flat = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -19
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          OnClick = BtnNextClick
        end
        object btnPrev: TSpeedButton
          Left = 53
          Top = 0
          Width = 23
          Height = 22
          Caption = '<'
          Flat = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -19
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          OnClick = btnPrevClick
        end
        object btnAttachmentExit: TSpeedButton
          Left = 270
          Top = 0
          Width = 23
          Height = 22
          Caption = 'X'
          Flat = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -19
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          OnClick = btnAttachmentExitClick
        end
        object Image1: TImage
          Left = 1
          Top = -162
          Width = 1044
          Height = 877
          Align = alBottom
          AutoSize = True
          Center = True
          ExplicitTop = 28
          ExplicitWidth = 1874
        end
        object txtNoneAvailable: TStaticText
          Left = 544
          Top = -2
          Width = 251
          Height = 27
          Caption = 'No Attachments Available'
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -19
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
          Visible = False
        end
        object txtAttachShow: TStaticText
          Left = 329
          Top = 2
          Width = 89
          Height = 20
          Caption = 'Attachments'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 1
          OnClick = txtAttachShowClick
        end
        object txtAttachmentAdd: TStaticText
          Left = 424
          Top = -2
          Width = 20
          Height = 27
          Caption = '+'
          Color = clMoneyGreen
          DoubleBuffered = True
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMoneyGreen
          Font.Height = -19
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentColor = False
          ParentDoubleBuffered = False
          ParentFont = False
          TabOrder = 2
          OnClick = txtNoteAddedClick
        end
      end
    end
    object tshOrg: TTabSheet
      Caption = 'Organisation'
      ImageIndex = 5
      object lblOrganisation: TLabel
        Left = 64
        Top = 6
        Width = 61
        Height = 13
        Caption = 'Organisation'
      end
      object Shape1: TShape
        Left = 0
        Top = -98
        Width = 1046
        Height = 814
        Align = alBottom
        ExplicitLeft = -1
      end
      object btnOrgDetailsAdd: TSpeedButton
        Left = 281
        Top = 86
        Width = 89
        Height = 22
        Caption = 'Add Details'
      end
      object StaticText4: TStaticText
        Left = 79
        Top = 151
        Width = 44
        Height = 20
        Caption = 'Postal'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
      end
      object dbeOrgPostalLine1: TDBEdit
        Left = 150
        Top = 150
        Width = 220
        Height = 21
        DataField = 'Post1'
        DataSource = dscOrgDetail
        TabOrder = 1
      end
      object StaticText5: TStaticText
        Left = 405
        Top = 147
        Width = 59
        Height = 20
        Caption = 'Location'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 2
      end
      object dbeOrgLocn2: TDBEdit
        Left = 480
        Top = 177
        Width = 220
        Height = 21
        DataField = 'Locn2'
        DataSource = dscOrgDetail
        TabOrder = 3
      end
      object CheckBox1: TCheckBox
        Left = 391
        Top = 178
        Width = 73
        Height = 17
        Alignment = taLeftJustify
        Caption = 'Australian'
        Checked = True
        State = cbChecked
        TabOrder = 4
      end
      object dbeOrgPostalLine2: TDBEdit
        Left = 150
        Top = 177
        Width = 220
        Height = 21
        DataField = 'Post2'
        DataSource = dscOrgDetail
        TabOrder = 5
      end
      object CheckBox2: TCheckBox
        Left = 65
        Top = 178
        Width = 73
        Height = 17
        Alignment = taLeftJustify
        Caption = 'Australian'
        Checked = True
        State = cbChecked
        TabOrder = 6
      end
      object dblucbOrgTownPostal: TDBLookupComboBox
        Left = 150
        Top = 204
        Width = 220
        Height = 21
        DataField = 'PostauTownsID'
        DataSource = dscOrgDetail
        DropDownRows = 10
        KeyField = 'ID'
        ListField = 'pcName'
        ListSource = dscPostCode
        TabOrder = 7
      end
      object dblucbOrgTownLocation: TDBLookupComboBox
        Left = 480
        Top = 204
        Width = 220
        Height = 21
        DataField = 'LocnauTownsID'
        DataSource = dscOrgDetail
        DropDownRows = 10
        KeyField = 'ID'
        ListField = 'pcName'
        ListSource = dscPostCode
        TabOrder = 8
      end
      object dbeOrgLocnPostcode: TDBEdit
        Left = 545
        Top = 231
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
        TabOrder = 9
      end
      object dbeOrgLocnState: TDBEdit
        Left = 480
        Top = 231
        Width = 43
        Height = 21
        DataField = 'pcState_Code'
        DataSource = dscAddressLocation
        TabOrder = 10
      end
      object dbeOrgPostalPostcode: TDBEdit
        Left = 205
        Top = 231
        Width = 70
        Height = 21
        DataField = 'pcCode'
        DataSource = dscAddressPostal
        TabOrder = 11
      end
      object dbeOrgPostalState: TDBEdit
        Left = 150
        Top = 231
        Width = 43
        Height = 21
        DataField = 'pcState_Code'
        DataSource = dscAddressPostal
        TabOrder = 12
      end
      object dbeOrgMobile: TDBEdit
        Left = 480
        Top = 86
        Width = 90
        Height = 21
        DataField = 'Mobile'
        DataSource = dscOrgDetail
        TabOrder = 13
        OnEnter = dbeMobileEnter
        OnExit = dbeMobileExit
        OnKeyUp = dbeMobileKeyUp
      end
      object dbeOrgLandline: TDBEdit
        Left = 480
        Top = 113
        Width = 90
        Height = 21
        DataField = 'LandLine'
        DataSource = dscOrgDetail
        TabOrder = 14
        OnEnter = dbeLandLineEnter
        OnExit = dbeLandLineExit
      end
      object dbeOrgEmail: TDBEdit
        Left = 150
        Top = 258
        Width = 577
        Height = 21
        DataField = 'Email'
        DataSource = dscOrgDetail
        TabOrder = 15
      end
      object StaticText6: TStaticText
        Left = 97
        Top = 302
        Width = 125
        Height = 20
        Caption = 'User Defined Fields'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 16
      end
      object StaticText7: TStaticText
        Left = 246
        Top = 297
        Width = 20
        Height = 27
        Caption = '+'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 17
        OnClick = txtUDF_AddClick
      end
      object dblucbOrgUDF1: TDBLookupComboBox
        Left = 16
        Top = 331
        Width = 136
        Height = 21
        DataField = 'CustomField1NameKey'
        DataSource = dscOrgDetail
        KeyField = 'id'
        ListField = 'Description'
        ListSource = dscUDF1Names
        TabOrder = 18
      end
      object dbeOrgUDF1Detail: TDBEdit
        Left = 164
        Top = 331
        Width = 564
        Height = 21
        DataField = 'CustomField1'
        DataSource = dscOrgDetail
        TabOrder = 19
      end
      object dblucbOrgUDF2: TDBLookupComboBox
        Left = 16
        Top = 358
        Width = 136
        Height = 21
        DataField = 'CustomField2NameKey'
        DataSource = dscOrgDetail
        KeyField = 'id'
        ListField = 'Description'
        ListSource = dscUDF2Names
        TabOrder = 20
      end
      object dbeOrgUDF2Detail: TDBEdit
        Left = 164
        Top = 358
        Width = 564
        Height = 21
        DataField = 'CustomField2'
        DataSource = dscOrgDetail
        TabOrder = 21
      end
      object dbeOrgLocn1: TDBEdit
        Left = 480
        Top = 150
        Width = 220
        Height = 21
        DataField = 'Locn1'
        DataSource = dscOrgDetail
        TabOrder = 22
      end
      object StaticText8: TStaticText
        Left = 430
        Top = 88
        Width = 34
        Height = 17
        Caption = 'Mobile'
        TabOrder = 23
      end
      object StaticText9: TStaticText
        Left = 418
        Top = 115
        Width = 46
        Height = 17
        Caption = 'LandLine'
        TabOrder = 24
      end
      object dbluComboBoxOrg: TDBLookupComboBox
        Left = 150
        Top = 16
        Width = 577
        Height = 21
        Hint = 'Double Click to delete'
        DataField = 'OrgID'
        DataSource = dscCard
        KeyField = 'ID'
        ListField = 'Description'
        ListSource = dscOrganisation
        ParentShowHint = False
        ShowHint = True
        TabOrder = 25
        OnCloseUp = dbluComboBoxOrgCloseUp
      end
      object txtAddOrg: TStaticText
        Left = 748
        Top = 10
        Width = 20
        Height = 27
        Caption = '+'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 26
        OnClick = txtAddOrgClick
      end
      object StaticText10: TStaticText
        Left = 97
        Top = 381
        Width = 138
        Height = 20
        Caption = 'Associated Contacts'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 27
      end
      object smdbgOrgAssociatedContacts: TSMDBGrid
        Left = 16
        Top = 407
        Width = 857
        Height = 276
        DataSource = dscFamily
        Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
        TabOrder = 28
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
      object txtOrgEmail: TStaticText
        Left = 110
        Top = 261
        Width = 28
        Height = 17
        Caption = 'Email'
        TabOrder = 29
      end
    end
    object tshMember: TTabSheet
      Caption = 'Member'
      ImageIndex = 1
      object lblOccupation: TLabel
        Left = 42
        Top = 307
        Width = 65
        Height = 13
        Alignment = taRightJustify
        Caption = 'Trades / Skills'
      end
      object lblOccupationDetail: TLabel
        Left = 23
        Top = 360
        Width = 84
        Height = 13
        Alignment = taRightJustify
        Caption = 'Occupation Detail'
      end
      object DBLookupListBoxMemCat: TDBLookupListBox
        Left = 362
        Top = 38
        Width = 215
        Height = 56
        KeyField = 'CatID'
        ListField = 'Description'
        ListSource = dscCardCategory
        TabOrder = 0
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
        TabOrder = 1
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
        TabOrder = 2
        OnCloseUp = dbluComboBoxCategoriesCloseUp
      end
      object txtAccepted: TStaticText
        Left = 92
        Top = 10
        Width = 49
        Height = 17
        Caption = 'Accepted'
        TabOrder = 3
      end
      object txtDOB: TStaticText
        Left = 116
        Top = 40
        Width = 25
        Height = 17
        Alignment = taRightJustify
        Caption = 'DOB'
        TabOrder = 4
      end
      object txtPoliceClearance: TStaticText
        Left = 16
        Top = 284
        Width = 80
        Height = 17
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Police Clearance'
        TabOrder = 5
      end
      object dbeReceiptNumber: TDBEdit
        Left = 362
        Top = 248
        Width = 100
        Height = 21
        DataField = 'ReceiptNum'
        DataSource = dscMember
        TabOrder = 6
      end
      object StaticText2: TStaticText
        Left = 256
        Top = 188
        Width = 80
        Height = 17
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Receipt Date'
        TabOrder = 7
      end
      object StaticText3: TStaticText
        Left = 256
        Top = 218
        Width = 80
        Height = 17
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Financial To'
        TabOrder = 8
      end
      object txtReceiptNumber: TStaticText
        Left = 256
        Top = 248
        Width = 80
        Height = 17
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Receipt Number'
        TabOrder = 9
      end
      object txtMemType: TStaticText
        Left = 72
        Top = 70
        Width = 69
        Height = 17
        Alignment = taRightJustify
        Caption = 'Member Type'
        TabOrder = 10
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
        TabOrder = 11
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
        TabOrder = 12
      end
      object txtMemberStatus: TStaticText
        Left = 68
        Top = 100
        Width = 73
        Height = 17
        Caption = 'MemberStatus'
        TabOrder = 13
      end
      object txtGender: TStaticText
        Left = 102
        Top = 131
        Width = 39
        Height = 17
        Alignment = taRightJustify
        Caption = 'Gender'
        TabOrder = 14
      end
      object DBLUComboBoxMemGender: TDBLookupComboBox
        Left = 158
        Top = 128
        Width = 145
        Height = 21
        DataField = 'Gender'
        DataSource = dscMember
        KeyField = 'ID'
        ListField = 'Description'
        ListSource = dscMemGender
        TabOrder = 15
      end
      object dbeOccupation: TDBEdit
        Left = 135
        Top = 304
        Width = 880
        Height = 21
        DataField = 'Occupation'
        DataSource = dscMember
        TabOrder = 16
      end
      object dbeOccupationDetail: TDBEdit
        Left = 135
        Top = 357
        Width = 880
        Height = 21
        DataField = 'OccupationDetail'
        DataSource = dscMember
        TabOrder = 17
      end
      object dbchbFinancial: TDBCheckBox
        Left = 277
        Top = 160
        Width = 97
        Height = 17
        Alignment = taLeftJustify
        Caption = 'Financial '
        DataField = 'Financial'
        DataSource = dscMember
        TabOrder = 18
      end
      object dbeAcceptedDate: TDBEdit
        Left = 158
        Top = 8
        Width = 121
        Height = 21
        DataField = 'Accepted'
        DataSource = dscMember
        TabOrder = 19
      end
      object dbeDOB: TDBEdit
        Left = 160
        Top = 38
        Width = 121
        Height = 21
        DataField = 'DOB'
        DataSource = dscMember
        TabOrder = 20
      end
      object dbeReceiptDate: TDBEdit
        Left = 362
        Top = 188
        Width = 100
        Height = 21
        DataField = 'ReceiptDate'
        DataSource = dscMember
        TabOrder = 21
      end
      object dbeFinancialTo: TDBEdit
        Left = 362
        Top = 218
        Width = 100
        Height = 21
        DataField = 'FinancialTo'
        DataSource = dscMember
        TabOrder = 22
      end
      object dbchbIsInactive: TDBCheckBox
        Left = 89
        Top = 160
        Width = 80
        Height = 17
        Alignment = taLeftJustify
        Caption = 'Is Inactive'
        DataField = 'IsInactive'
        DataSource = dscMember
        TabOrder = 23
      end
      object dbchbBadgePrinted: TDBCheckBox
        Left = 72
        Top = 190
        Width = 97
        Height = 17
        Alignment = taLeftJustify
        Caption = 'Badge Printed'
        DataField = 'BadgePrinted'
        DataSource = dscMember
        TabOrder = 24
      end
      object dbchbChildClearance: TDBCheckBox
        Left = 68
        Top = 218
        Width = 101
        Height = 17
        Alignment = taLeftJustify
        Caption = 'Child Clearance'
        DataField = 'ChildrenClearance'
        DataSource = dscMember
        TabOrder = 25
      end
      object dbchbPoliceClearance: TDBCheckBox
        Left = 68
        Top = 248
        Width = 103
        Height = 17
        Alignment = taLeftJustify
        Caption = 'Police Clearance'
        DataField = 'PoliceClearance'
        DataSource = dscMember
        TabOrder = 26
      end
    end
  end
  object edtFirstNameSearch: TEdit
    Left = 729
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
    Left = 895
    Top = 0
    Width = 121
    Height = 21
    TabOrder = 2
    OnKeyUp = edtMobileKeyUp
  end
  object edtSurname: TEdit
    Left = 548
    Top = 0
    Width = 115
    Height = 21
    TabOrder = 3
    OnKeyUp = edtSurnameKeyUp
  end
  object txtSurnameSearch: TStaticText
    Left = 483
    Top = 3
    Width = 46
    Height = 17
    Caption = 'Surname'
    TabOrder = 4
  end
  object txtFirstNameSearch: TStaticText
    Left = 669
    Top = 3
    Width = 52
    Height = 17
    Caption = 'FirstName'
    TabOrder = 5
  end
  object txtMobileSearch: TStaticText
    Left = 855
    Top = 3
    Width = 34
    Height = 17
    Caption = 'Mobile'
    TabOrder = 6
  end
  object txtIDDesc: TStaticText
    Left = 391
    Top = 4
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
    Left = 414
    Top = 4
    Width = 60
    Height = 15
    TabStop = False
    Constraints.MaxHeight = 15
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    ReadOnly = True
    TabOrder = 8
    OnKeyUp = edtIDKeyUp
  end
  object edtOrgSearch: TEdit
    Left = 548
    Top = 27
    Width = 467
    Height = 21
    TabOrder = 9
    OnKeyUp = edtOrgSearchKeyUp
  end
  object txtOrgSearch: TStaticText
    Left = 482
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
    Left = 928
    Top = 36
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
    DataSet = dmoMaintenance.dstOrganisation
    Left = 920
    Top = 197
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
  object dscAttachment: TDataSource
    Left = 908
    Top = 605
  end
  object OpenPictureDialog1: TOpenPictureDialog
    Left = 801
    Top = 64
  end
  object dscOrgDetail: TDataSource
    DataSet = dmoMaintenance.qryOrgDetails
    Left = 820
    Top = 195
  end
  object dscOrgAssociatedContacts: TDataSource
    Left = 772
    Top = 539
  end
end
