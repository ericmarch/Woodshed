object dmoContactReport: TdmoContactReport
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  OnDestroy = DataModuleDestroy
  Height = 309
  Width = 452
  object dstGridSelection: TADODataSet
    Connection = dmoConnect.conConnect
    CursorType = ctStatic
    CommandText = 'select * from CardReportName'
    Parameters = <>
    Left = 40
    Top = 29
  end
  object dstCardGroup: TADODataSet
    Connection = dmoConnect.conConnect
    CursorType = ctStatic
    CommandText = 'select IsSelected, ID, Description from CardGroup'
    Parameters = <>
    Left = 168
    Top = 29
  end
  object dstContactPrintRun: TADODataSet
    Active = True
    Connection = dmoConnect.conConnect
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandText = 
      'SELECT Card.SurName, Card.FirstName, Card.Locn1, Card.Locn2, au_' +
      'Towns.pcName, au_Towns.pcState_Code, au_Towns.pcCode, Card.IDAlp' +
      'ha, CardGroupLink.GroupID FROM ((Card LEFT JOIN CardGroupLink ON' +
      ' Card.ID = CardGroupLink.CardID) LEFT JOIN CardGroup ON CardGrou' +
      'pLink.GroupID = CardGroup.ID) LEFT JOIN au_Towns ON Card.LocnauT' +
      'ownsID = au_Towns.ID'
    Parameters = <>
    Left = 168
    Top = 93
  end
  object dstCardCategory: TADODataSet
    Connection = dmoConnect.conConnect
    CursorType = ctStatic
    CommandText = 'select ID, IsSelected, Description from CardCategory'
    Parameters = <>
    Left = 280
    Top = 30
  end
  object dst1: TADODataSet
    Connection = dmoConnect.conConnect
    CommandText = 
      'SELECT COUNT(Card.ID, CardGroup.ID) FROM (Card LEFT JOIN CardGro' +
      'upLink ON Card.ID = CardGroupLink.CardID) LEFT JOIN CardGroup ON' +
      ' CardGroupLink.GroupID = CardGroup.ID WHERE (((CardGroup.ID)=1))'
    Parameters = <>
    Left = 296
    Top = 88
  end
end
