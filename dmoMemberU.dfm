object dmoMember: TdmoMember
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  OnDestroy = DataModuleDestroy
  Height = 503
  Width = 804
  object dstCard: TADODataSet
    Connection = dmoConnect.conConnect
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandText = 
      'SELECT Card.ID, FirstName, SurName, PreferredName, Mobile, Card.' +
      'LandLine, Card.Locn1, Card.Locn2, au_Towns.pcName, au_Towns.pcSt' +
      'ate_Code, au_Towns.pcCode, CardGroupLink.GroupID'#13#10'FROM ((Card LE' +
      'FT JOIN CardGroupLink ON Card.ID = CardGroupLink.CardID) LEFT JO' +
      'IN CardGroup ON CardGroupLink.GroupID = CardGroup.ID) LEFT JOIN ' +
      'au_Towns ON Card.LocnauTownsID = au_Towns.ID'#13#10'WHERE (((CardGroup' +
      'Link.GroupID)=1));'
    Parameters = <>
    Left = 80
    Top = 136
  end
  object dstCardCategory: TADODataSet
    Connection = dmoConnect.conConnect
    Parameters = <>
    Left = 192
    Top = 136
  end
  object dstcardGroup: TADODataSet
    Parameters = <>
    Left = 296
    Top = 136
  end
  object dstMemSearchGrid: TADODataSet
    Connection = dmoConnect.conConnect
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandText = 
      'select IDAlpha, Card.SurName, Card.FirstName, PreferredName, Car' +
      'd.Mobile, LocnPcName, Card.Email, ID from qCard Order by Card.Su' +
      'rName, Card.FirstName'
    Parameters = <>
    Left = 80
    Top = 224
  end
  object qryMember: TADOQuery
    Active = True
    Connection = dmoConnect.conConnect
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * FROM Member')
    Left = 200
    Top = 224
  end
end
