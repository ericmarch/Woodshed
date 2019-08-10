object fImageForm: TfImageForm
  Left = 0
  Top = 0
  Caption = 'Available Attachments'
  ClientHeight = 576
  ClientWidth = 969
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object MainMenu1: TMainMenu
    Left = 376
    Top = 272
    object OK1: TMenuItem
      Caption = 'OK'
      OnClick = OK1Click
    end
    object Cancel1: TMenuItem
      Caption = 'Cancel'
      OnClick = Cancel1Click
    end
  end
  object ImageCollection1: TImageCollection
    Images = <>
    Left = 216
    Top = 248
  end
  object ImageList1: TImageList
    Left = 112
    Top = 288
  end
end
