object dmoAddCard: TdmoAddCard
  OldCreateOrder = False
  Height = 344
  Width = 329
  object cmd1: TADOCommand
    Connection = dmoConnect.conConnect
    Parameters = <>
    Left = 200
    Top = 80
  end
  object dstOmnibus: TADODataSet
    Connection = dmoConnect.conConnect
    Parameters = <>
    Left = 72
    Top = 192
  end
  object dst1: TADODataSet
    Connection = dmoConnect.conConnect
    Parameters = <>
    Left = 64
    Top = 96
  end
end
