object dmoReport: TdmoReport
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  OnDestroy = DataModuleDestroy
  Height = 309
  Width = 452
  object dstGridSelection: TADODataSet
    Connection = dmoConnect.conConnect
    CursorType = ctStatic
    CommandText = 'select rID, rName, rDescription from ReportSelect'
    Parameters = <>
    Left = 40
    Top = 29
  end
  object dstContactPrintRun: TADODataSet
    Active = True
    Connection = dmoConnect.conConnect
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandText = 'Select * FROM vMember'
    Parameters = <>
    Left = 168
    Top = 93
  end
  object dstHeader: TADODataSet
    Active = True
    Connection = dmoConnect.conConnect
    CursorType = ctStatic
    CommandText = 
      'select ID, registeredName, Addr1, AddrCity, AddrState, AddrPostC' +
      'ode, Email, Phone, ContactPerson from RegistrationOfSoftware'
    Parameters = <>
    Left = 40
    Top = 94
  end
  object dst1: TADODataSet
    Connection = dmoConnect.conConnect
    CommandText = 
      'SELECT COUNT(Card.ID, CardGroup.ID) FROM (Card LEFT JOIN CardGro' +
      'upLink ON Card.ID = CardGroupLink.CardID) LEFT JOIN CardGroup ON' +
      ' CardGroupLink.GroupID = CardGroup.ID WHERE (((CardGroup.ID)=1))'
    Parameters = <>
    Left = 272
    Top = 24
  end
  object dstGroup: TADODataSet
    Connection = dmoConnect.conConnect
    CursorType = ctStatic
    Parameters = <>
    Left = 168
    Top = 29
  end
  object dstCategory: TADODataSet
    Connection = dmoConnect.conConnect
    CommandText = 'select ID, IsSelected, Description from CardCategory'
    Parameters = <>
    Left = 288
    Top = 96
  end
end
