object dmoSearch: TdmoSearch
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  OnDestroy = DataModuleDestroy
  Height = 452
  Width = 467
  object dstSearch1: TADODataSet
    Connection = dmoConnect.conConnect
    CursorType = ctStatic
    CommandText = 'select FirstName from Card'
    Parameters = <>
    Left = 64
    Top = 64
  end
  object dstAvailColumns: TADODataSet
    Connection = dmoConnect.conConnect
    CursorType = ctStatic
    LockType = ltReadOnly
    CommandText = 'select ID, TableColumn, ColumnType, ColumnSize from qTableColumn'
    Parameters = <>
    Left = 176
    Top = 64
  end
  object dstSelectedColumns: TADODataSet
    Connection = dmoConnect.conConnect
    CursorType = ctStatic
    CommandText = 'select ID, TableColumn, ColumnType, ColumnSize from qTableColumn'
    Parameters = <>
    Left = 64
    Top = 152
  end
  object cds0: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 312
    Top = 56
  end
  object dstSelectedData: TADODataSet
    Connection = dmoConnect.conConnect
    Parameters = <>
    Left = 176
    Top = 152
  end
end
