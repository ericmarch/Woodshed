object dmoReport: TdmoReport
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  OnDestroy = DataModuleDestroy
  Height = 309
  Width = 452
  object dstGridSelection: TADODataSet
    Active = True
    Connection = dmoConnect.conConnect
    CursorType = ctStatic
    CommandText = 'select * from ReportSelect'
    Parameters = <>
    Left = 40
    Top = 29
  end
  object dstContactPrintRun: TADODataSet
    Connection = dmoConnect.conConnect
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandText = 
      'select SurName, FirstName, Email, Mobile, LandLine, Post1, Post2' +
      ', PostPostCode, PostState, CustomFieldName1, CustomField1, Custo' +
      'mFieldName2, CustomField2 from vContactCard'
    Parameters = <
      item
        Name = 'CustomFieldName1'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
      end
      item
        Name = 'CustomFieldName2'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
      end>
    Left = 168
    Top = 93
  end
  object dstHeader: TADODataSet
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
  object dstGroup: TADODataSet
    Connection = dmoConnect.conConnect
    CursorType = ctStatic
    Parameters = <>
    Left = 168
    Top = 29
  end
end
