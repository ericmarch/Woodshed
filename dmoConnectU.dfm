object dmoConnect: TdmoConnect
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  OnDestroy = DataModuleDestroy
  Height = 150
  Width = 215
  object conConnect: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;User ID=Admin;Data Source=Z:\Er' +
      'ic\Woodshed\Membership\MembersDB\Woodshed.mdb;Mode=Share Deny No' +
      'ne;Persist Security Info=False;Jet OLEDB:System database="";Jet ' +
      'OLEDB:Registry Path="";Jet OLEDB:Database Password="";Jet OLEDB:' +
      'Engine Type=5;Jet OLEDB:Database Locking Mode=1;Jet OLEDB:Global' +
      ' Partial Bulk Ops=2;Jet OLEDB:Global Bulk Transactions=1;Jet OLE' +
      'DB:New Database Password="";Jet OLEDB:Create System Database=Fal' +
      'se;Jet OLEDB:Encrypt Database=False;Jet OLEDB:Don'#39't Copy Locale ' +
      'on Compact=False;Jet OLEDB:Compact Without Replica Repair=False;' +
      'Jet OLEDB:SFP=False;'
    LoginPrompt = False
    Mode = cmShareDenyNone
    Provider = 'Microsoft.Jet.OLEDB.4.0'
    BeforeConnect = conConnectBeforeConnect
    Left = 104
    Top = 72
  end
end
