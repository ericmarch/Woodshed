object fAddCard: TfAddCard
  Left = 0
  Top = 0
  BorderIcons = []
  Caption = 'New Contact'
  ClientHeight = 242
  ClientWidth = 442
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poOwnerFormCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object btnAddCancel: TSpeedButton
    Left = 199
    Top = 176
    Width = 50
    Height = 22
    Caption = 'Cancel'
    OnClick = btnAddCancelClick
  end
  object btnAddOK: TSpeedButton
    Left = 199
    Top = 204
    Width = 50
    Height = 22
    Caption = '&OK'
    OnClick = btnAddOKClick
  end
  object cbxGroup1: TCheckBox
    Left = 73
    Top = 84
    Width = 97
    Height = 17
    Alignment = taLeftJustify
    Caption = 'Business'
    TabOrder = 2
  end
  object cbxGroup2: TCheckBox
    Left = 72
    Top = 114
    Width = 97
    Height = 17
    Alignment = taLeftJustify
    Caption = 'Customer'
    TabOrder = 3
  end
  object cbxGroup3: TCheckBox
    Left = 80
    Top = 144
    Width = 90
    Height = 17
    Alignment = taLeftJustify
    Caption = 'Membership'
    TabOrder = 4
  end
  object edtFirstName: TEdit
    Left = 156
    Top = 50
    Width = 265
    Height = 21
    TabOrder = 1
  end
  object edtSurname: TEdit
    Left = 156
    Top = 20
    Width = 265
    Height = 21
    TabOrder = 0
    OnKeyUp = edtSurnameKeyUp
  end
  object StaticText1: TStaticText
    Left = 80
    Top = 24
    Width = 46
    Height = 17
    Caption = 'Surname'
    TabOrder = 5
  end
  object txtFirstName: TStaticText
    Left = 71
    Top = 54
    Width = 55
    Height = 17
    Caption = 'First Name'
    TabOrder = 6
  end
  object cbxGroup4: TCheckBox
    Left = 264
    Top = 84
    Width = 97
    Height = 17
    Alignment = taLeftJustify
    Caption = 'Organisation'
    TabOrder = 7
  end
  object cbxGroup5: TCheckBox
    Left = 264
    Top = 114
    Width = 97
    Height = 17
    Alignment = taLeftJustify
    Caption = 'Personal'
    TabOrder = 8
  end
  object cbxGroup6: TCheckBox
    Left = 271
    Top = 144
    Width = 90
    Height = 17
    Alignment = taLeftJustify
    Caption = 'Supplier'
    TabOrder = 9
  end
end
