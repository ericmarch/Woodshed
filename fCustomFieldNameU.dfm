object fCustomFieldName: TfCustomFieldName
  Left = 0
  Top = 0
  BorderIcons = []
  Caption = 'fCustomFieldName'
  ClientHeight = 299
  ClientWidth = 390
  Color = clHighlightText
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object btnCancel: TSpeedButton
    Left = 100
    Top = 8
    Width = 60
    Height = 22
    Caption = 'Cancel'
    OnClick = btnCancelClick
  end
  object btnSave: TSpeedButton
    Left = 8
    Top = 8
    Width = 60
    Height = 22
    Caption = 'Save'
    OnClick = btnSaveClick
  end
  object dbgCustomFieldname: TDBGrid
    Left = 8
    Top = 74
    Width = 361
    Height = 217
    DataSource = dscCustomFieldName
    ReadOnly = True
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'Description'
        Visible = True
      end>
  end
  object edtDescription: TEdit
    Left = 8
    Top = 41
    Width = 361
    Height = 21
    TabOrder = 1
  end
  object dscCustomFieldName: TDataSource
    Left = 520
    Top = 128
  end
end
