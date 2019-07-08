object dmoMaintenance: TdmoMaintenance
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  OnDestroy = DataModuleDestroy
  Height = 493
  Width = 747
  object dstCardSearch: TADODataSet
    Connection = dmoConnect.conConnect
    CursorType = ctStatic
    CommandText = 
      'SELECT Card.ID, Card.IDAlpha, Card.SurName, Card.FirstName, Card' +
      '.Mobile, au_Towns.pcName, au_Towns.ID, au_Towns.pcState_Code, au' +
      '_Towns.pcCode '#13#10'FROM Card LEFT JOIN au_Towns ON Card.PostauTowns' +
      'ID = au_Towns.ID '#13#10'ORDER BY Card.SurName, Card.FirstName, Card.I' +
      'DAlpha;'#13#10
    Parameters = <>
    Left = 48
    Top = 24
  end
  object qryCard: TADOQuery
    Connection = dmoConnect.conConnect
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'Select * From Card')
    Left = 152
    Top = 24
  end
  object dstPostCode: TADODataSet
    Connection = dmoConnect.conConnect
    CursorType = ctStatic
    CommandText = 'select pcName, pcCode, pcState_Code, ID from au_Towns'
    Parameters = <>
    Left = 48
    Top = 96
  end
  object dstUDF1Name: TADODataSet
    Connection = dmoConnect.conConnect
    CursorType = ctStatic
    CommandText = 'Select id, Description FROM CardCustomFieldName'
    Parameters = <>
    Left = 272
    Top = 240
  end
  object dstUDF2Name: TADODataSet
    Connection = dmoConnect.conConnect
    CursorType = ctStatic
    CommandText = 'Select id, Description FROM CardCustomFieldName'
    Parameters = <>
    Left = 464
    Top = 96
  end
  object dstCardCategory: TADODataSet
    Connection = dmoConnect.conConnect
    CursorType = ctStatic
    CommandText = 
      'SELECT CardID, CatID, Description FROM CardCatLink LEFT JOIN Car' +
      'dCategory ON CardCatLink.CatID = CardCategory.ID Where CardID = ' +
      '2'
    Parameters = <>
    Left = 160
    Top = 168
  end
  object qryCardCatLookup: TADOQuery
    Connection = dmoConnect.conConnect
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'Select * From CardCatLink')
    Left = 64
    Top = 168
  end
  object cmd1: TADOCommand
    Connection = dmoConnect.conConnect
    Parameters = <
      item
        Size = -1
        Value = Null
      end>
    Left = 376
    Top = 240
  end
  object dstCardCatLink: TADODataSet
    Connection = dmoConnect.conConnect
    Parameters = <>
    Left = 248
    Top = 168
  end
  object cds: TClientDataSet
    Aggregates = <>
    CommandText = 'Select * from Card'
    Params = <>
    Left = 464
    Top = 240
  end
  object dst1: TADODataSet
    Connection = dmoConnect.conConnect
    CursorType = ctStatic
    CommandText = 'select ID, Description from CardOrganisation where ID > 2;'
    Parameters = <>
    Left = 168
    Top = 240
  end
  object qryAddressPostal: TADOQuery
    Connection = dmoConnect.conConnect
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'SELECT au_Towns.ID, au_Towns.pcName, au_Towns.pcState_Code, au_T' +
        'owns.pcCode'
      'FROM au_Towns;')
    Left = 240
    Top = 24
  end
  object qryAddressLocation: TADOQuery
    Connection = dmoConnect.conConnect
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'SELECT au_Towns.ID, au_Towns.pcName, au_Towns.pcState_Code, au_T' +
        'owns.pcCode'
      'FROM au_Towns;')
    Left = 352
    Top = 24
  end
  object qryOrganisation: TADOQuery
    Connection = dmoConnect.conConnect
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'SELECT ID, Description FROM CardOrganisation Order by Descriptio' +
        'n;')
    Left = 472
    Top = 24
  end
  object qryCustomFieldName: TADOQuery
    Connection = dmoConnect.conConnect
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'Select * FROM CardCustomFieldName')
    Left = 360
    Top = 96
  end
  object qryNote: TADOQuery
    Connection = dmoConnect.conConnect
    Parameters = <>
    Left = 160
    Top = 96
  end
  object dstNoteAbbrev: TADODataSet
    Connection = dmoConnect.conConnect
    CursorType = ctStatic
    AfterScroll = dstNoteAbbrevAfterScroll
    CommandText = 'Select CardID, NoteID, TheTime, Abbreviation from CardNote'
    Parameters = <>
    Left = 248
    Top = 96
  end
  object dstFamily: TADODataSet
    Connection = dmoConnect.conConnect
    CursorType = ctStatic
    CommandText = 
      'select cardID, Description, Email, FirstName, LandLine, Mobile, ' +
      'MoreInfo, RelationshipType, SurName from qCardPartner'
    Parameters = <>
    Left = 360
    Top = 168
  end
  object qryMember: TADOQuery
    Connection = dmoConnect.conConnect
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'Select * FROM member')
    Left = 56
    Top = 336
  end
  object dstMemCat: TADODataSet
    Connection = dmoConnect.conConnect
    CursorType = ctStatic
    CommandText = 'Select * FROM MemCategory'
    Parameters = <>
    Left = 152
    Top = 336
  end
  object dstMemCatLink: TADODataSet
    Connection = dmoConnect.conConnect
    CursorType = ctStatic
    CommandText = 'Select * FROM MemCatLink'
    Parameters = <>
    Left = 248
    Top = 336
  end
  object dstMemType: TADODataSet
    Connection = dmoConnect.conConnect
    CursorType = ctStatic
    CommandText = 'Select * FROM MemType'
    Parameters = <>
    Left = 360
    Top = 336
  end
  object dstMemStatus: TADODataSet
    Connection = dmoConnect.conConnect
    CursorType = ctStatic
    CommandText = 'Select * From MemStatus'
    Parameters = <>
    Left = 448
    Top = 336
  end
  object dstMemGender: TADODataSet
    Connection = dmoConnect.conConnect
    CursorType = ctStatic
    CommandText = 'Select * FROM MemGender'
    Parameters = <>
    Left = 56
    Top = 400
  end
  object dstMemOccLink: TADODataSet
    Parameters = <>
    Left = 152
    Top = 408
  end
  object dstMemOccupation: TADODataSet
    Connection = dmoConnect.conConnect
    Parameters = <>
    Left = 248
    Top = 408
  end
  object dstPartnerType: TADODataSet
    Connection = dmoConnect.conConnect
    CursorType = ctStatic
    CommandText = 'Select * From CardPartnerType order by Description'
    Parameters = <>
    Left = 472
    Top = 168
  end
  object qryCardTemp: TADOQuery
    Connection = dmoConnect.conConnect
    Filtered = True
    Parameters = <>
    Left = 640
    Top = 32
  end
  object dstOmnibus: TADODataSet
    Connection = dmoConnect.conConnect
    CommandText = 'select ID, Description from tbGroup where ID = 1'
    Parameters = <>
    Left = 64
    Top = 240
  end
end
