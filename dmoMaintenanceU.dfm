object dmoMaintenance: TdmoMaintenance
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  OnDestroy = DataModuleDestroy
  Height = 580
  Width = 747
  object dstCardSearch: TADODataSet
    Connection = dmoConnect.conConnect
    CursorType = ctStatic
    CommandText = 'SELECT * FROM vContactCard Order by FullName'
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
    Left = 257
    Top = 96
  end
  object dstUDF1Name: TADODataSet
    Connection = dmoConnect.conConnect
    CursorType = ctStatic
    CommandText = 'Select id, Description FROM CardCustomFieldName'
    Parameters = <>
    Left = 568
    Top = 168
  end
  object dstUDF2Name: TADODataSet
    Connection = dmoConnect.conConnect
    CursorType = ctStatic
    CommandText = 'Select id, Description FROM CardCustomFieldName'
    Parameters = <>
    Left = 657
    Top = 168
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
    Left = 48
    Top = 168
  end
  object cmd1: TADOCommand
    Connection = dmoConnect.conConnect
    Parameters = <
      item
        Size = -1
        Value = Null
      end>
    Left = 664
    Top = 336
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
    Left = 664
    Top = 424
  end
  object dst1: TADODataSet
    Connection = dmoConnect.conConnect
    CursorType = ctStatic
    CommandText = 'select ID, Description from CardOrganisation where ID > 2;'
    Parameters = <>
    Left = 664
    Top = 256
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
      'SELECT *  FROM CardOrganisation Order by Description;')
    Left = 568
    Top = 24
  end
  object qryCustomFieldName: TADOQuery
    Connection = dmoConnect.conConnect
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'Select * FROM CardCustomFieldName')
    Left = 569
    Top = 96
  end
  object qryNote: TADOQuery
    Connection = dmoConnect.conConnect
    Parameters = <>
    Left = 345
    Top = 96
  end
  object dstNoteAbbrev: TADODataSet
    Connection = dmoConnect.conConnect
    CursorType = ctStatic
    AfterScroll = dstNoteAbbrevAfterScroll
    CommandText = 'Select CardID, NoteID, TheTime, Abbreviation from CardNote'
    Parameters = <>
    Left = 457
    Top = 96
  end
  object dstFamily: TADODataSet
    Connection = dmoConnect.conConnect
    CursorType = ctStatic
    CommandText = 
      'select cardID, Description, Email, FirstName, LandLine, Mobile, ' +
      'MoreInfo, RelationshipType, SurName from qCardPartner'
    Parameters = <>
    Left = 352
    Top = 168
  end
  object qryMember: TADOQuery
    Connection = dmoConnect.conConnect
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'Select * FROM member')
    Left = 56
    Top = 440
  end
  object dstMemCat: TADODataSet
    Connection = dmoConnect.conConnect
    CursorType = ctStatic
    CommandText = 'Select * FROM MemCategory'
    Parameters = <>
    Left = 152
    Top = 440
  end
  object dstMemCatLink: TADODataSet
    Connection = dmoConnect.conConnect
    CursorType = ctStatic
    CommandText = 'Select * FROM MemCatLink'
    Parameters = <>
    Left = 248
    Top = 440
  end
  object dstMemType: TADODataSet
    Connection = dmoConnect.conConnect
    CursorType = ctStatic
    CommandText = 'Select * FROM MemType'
    Parameters = <>
    Left = 360
    Top = 440
  end
  object dstMemStatus: TADODataSet
    Connection = dmoConnect.conConnect
    CursorType = ctStatic
    CommandText = 'Select * From MemStatus'
    Parameters = <>
    Left = 448
    Top = 440
  end
  object dstMemGender: TADODataSet
    Connection = dmoConnect.conConnect
    CursorType = ctStatic
    CommandText = 'Select * FROM MemGender'
    Parameters = <>
    Left = 56
    Top = 504
  end
  object dstMemOccLink: TADODataSet
    Parameters = <>
    Left = 152
    Top = 504
  end
  object dstMemOccupation: TADODataSet
    Connection = dmoConnect.conConnect
    Parameters = <>
    Left = 248
    Top = 504
  end
  object dstPartnerType: TADODataSet
    Connection = dmoConnect.conConnect
    CursorType = ctStatic
    CommandText = 'Select * From CardPartnerType order by Description'
    Parameters = <>
    Left = 464
    Top = 168
  end
  object qryCardTemp: TADOQuery
    Connection = dmoConnect.conConnect
    Filtered = True
    Parameters = <>
    Left = 456
    Top = 24
  end
  object dstOmnibus: TADODataSet
    Connection = dmoConnect.conConnect
    CommandText = 'select ID, Description from tbGroup where ID = 1'
    Parameters = <>
    Left = 664
    Top = 216
  end
  object dstAttachment: TADODataSet
    Connection = dmoConnect.conConnect
    CommandText = 'Select * From Attachment'
    Parameters = <>
    Left = 152
    Top = 96
  end
  object qryOrgDetails: TADOQuery
    Connection = dmoConnect.conConnect
    Parameters = <>
    Left = 664
    Top = 24
  end
  object dstOrganisation: TADODataSet
    Connection = dmoConnect.conConnect
    CommandText = 'Select * From CardOrganisation'
    Parameters = <>
    Left = 48
    Top = 96
  end
end
