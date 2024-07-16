object dataModuleCD: TdataModuleCD
  OnCreate = DataModuleCreate
  Height = 600
  Width = 800
  PixelsPerInch = 120
  object ADOConnection1: TADOConnection
    ConnectionString =
      'Provider=Microsoft.Jet.OLEDB.4.0;User ID=Admin;Data Source=C:\Us' +
      'ers\wali\Downloads\Dolphins Estate\dolphinsEstate.mdb;Mode=ReadW' +
      'rite;Persist Security Info=False;Jet OLEDB:System database="";Je' +
      't OLEDB:Registry Path="";Jet OLEDB:Database Password="";Jet OLED' +
      'B:Engine Type=5;Jet OLEDB:Database Locking Mode=1;Jet OLEDB:Glob' +
      'al Partial Bulk Ops=2;Jet OLEDB:Global Bulk Transactions=1;Jet O' +
      'LEDB:New Database Password="";Jet OLEDB:Create System Database=F' +
      'alse;Jet OLEDB:Encrypt Database=False;Jet OLEDB:Don'#39't Copy Local' +
      'e on Compact=False;Jet OLEDB:Compact Without Replica Repair=Fals' +
      'e;Jet OLEDB:SFP=False'
    LoginPrompt = False
    Provider = 'Microsoft.Jet.OLEDB.4.0'
    Left = 80
    Top = 184
  end
  object ADOTable1: TADOTable
    Connection = ADOConnection1
    TableName = 'tblUsers'
    Left = 336
    Top = 192
  end
  object DataSource1: TDataSource
    DataSet = ADOTable1
    Left = 296
    Top = 368
  end
end

