object fFamily: TfFamily
  Left = 0
  Top = 0
  Caption = 'Family & Associates'
  ClientHeight = 405
  ClientWidth = 624
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object btnSave: TSpeedButton
    Left = 120
    Top = 350
    Width = 60
    Height = 22
    Caption = '&Save'
    OnClick = btnSaveClick
  end
  object btnCancel: TSpeedButton
    Left = 270
    Top = 350
    Width = 60
    Height = 22
    Caption = '&Cancel'
    OnClick = btnCancelClick
  end
  object txtRelationship: TStaticText
    Left = 26
    Top = 24
    Width = 62
    Height = 17
    Caption = 'Relationship'
    TabOrder = 7
  end
  object txtSurname: TStaticText
    Left = 42
    Top = 64
    Width = 46
    Height = 17
    Caption = 'Surname'
    TabOrder = 8
  end
  object txtMobile: TStaticText
    Left = 54
    Top = 144
    Width = 34
    Height = 17
    Caption = 'Mobile'
    TabOrder = 9
  end
  object txtFirstName: TStaticText
    Left = 24
    Top = 104
    Width = 64
    Height = 17
    Caption = 'First Name/s'
    TabOrder = 10
  end
  object StaticText1: TStaticText
    Left = 42
    Top = 184
    Width = 46
    Height = 17
    Caption = 'LandLine'
    TabOrder = 11
  end
  object StaticText2: TStaticText
    Left = 60
    Top = 224
    Width = 28
    Height = 17
    Caption = 'Email'
    TabOrder = 12
  end
  object StaticText3: TStaticText
    Left = 56
    Top = 264
    Width = 32
    Height = 17
    Caption = 'Notes'
    TabOrder = 13
  end
  object edtSurname: TEdit
    Left = 120
    Top = 62
    Width = 201
    Height = 21
    TabOrder = 1
  end
  object DBLookupComboBox1: TDBLookupComboBox
    Left = 120
    Top = 24
    Width = 145
    Height = 21
    KeyField = 'ID'
    ListField = 'Description'
    ListSource = dscPartnerType
    TabOrder = 0
  end
  object edtFirstNames: TEdit
    Left = 120
    Top = 102
    Width = 201
    Height = 21
    TabOrder = 2
  end
  object edtMobile: TMaskEdit
    Left = 120
    Top = 142
    Width = 81
    Height = 21
    EditMask = '#### ### ###'
    MaxLength = 12
    TabOrder = 3
    Text = '            '
  end
  object edtLandLine: TMaskEdit
    Left = 120
    Top = 180
    Width = 81
    Height = 21
    EditMask = '## #### ####'
    MaxLength = 12
    TabOrder = 4
    Text = '            '
  end
  object edtEMail: TEdit
    Left = 120
    Top = 222
    Width = 201
    Height = 21
    TabOrder = 5
  end
  object memNotes: TMemo
    Left = 120
    Top = 264
    Width = 450
    Height = 66
    TabOrder = 6
    OnKeyUp = memNotesKeyUp
  end
  object dscPartnerType: TDataSource
    DataSet = dmoMaintenance.dstPartnerType
    Left = 416
    Top = 56
  end
end
