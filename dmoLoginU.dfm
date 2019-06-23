object dmoLogin: TdmoLogin
  OldCreateOrder = False
  Height = 468
  Width = 649
  object dstUser: TADODataSet
    Connection = dmoConnect.conConnect
    CursorType = ctStatic
    CommandText = 'select * From tbUser'
    Parameters = <>
    Left = 152
    Top = 120
  end
  object cmdUser: TADOCommand
    Connection = dmoConnect.conConnect
    Parameters = <>
    Left = 256
    Top = 120
  end
end
