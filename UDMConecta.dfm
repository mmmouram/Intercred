object DMConecta: TDMConecta
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 208
  Width = 400
  object ADOCapitalDeGiro: TADOConnection
    CommandTimeout = 999
    ConnectionTimeout = 999
    LoginPrompt = False
    Mode = cmReadWrite
    Provider = 'SQLOLEDB.1'
    AfterConnect = ADOCapitalDeGiroAfterConnect
    BeforeConnect = ADOCapitalDeGiroBeforeConnect
    Left = 41
    Top = 64
  end
  object ADOComite: TADOConnection
    CommandTimeout = 99999
    ConnectionTimeout = 99
    LoginPrompt = False
    Mode = cmRead
    Provider = 'SQLOLEDB.1'
    AfterConnect = ADOComiteAfterConnect
    BeforeConnect = ADOComiteBeforeConnect
    Left = 304
    Top = 136
  end
  object Adoprocessamento: TADOConnection
    CommandTimeout = 99999
    ConnectionTimeout = 99
    KeepConnection = False
    LoginPrompt = False
    Mode = cmReadWrite
    Provider = 'SQLOLEDB.1'
    Left = 191
    Top = 61
  end
  object Adosfinance_cd: TADOConnection
    CommandTimeout = 99999
    ConnectionTimeout = 99
    KeepConnection = False
    LoginPrompt = False
    Mode = cmReadWrite
    Provider = 'SQLOLEDB.1'
    Left = 303
    Top = 56
  end
  object Adosfinanceem: TADOConnection
    CommandTimeout = 99999
    ConnectionTimeout = 99
    KeepConnection = False
    LoginPrompt = False
    Mode = cmReadWrite
    Provider = 'SQLOLEDB.1'
    Left = 47
    Top = 136
  end
  object ADOAutBank: TADOConnection
    CommandTimeout = 999
    KeepConnection = False
    LoginPrompt = False
    Provider = 'SQLOLEDB.1'
    AfterConnect = ADOAutBankAfterConnect
    BeforeConnect = ADOAutBankBeforeConnect
    Left = 224
    Top = 136
  end
  object ADOCcweb: TADOConnection
    CommandTimeout = 9999
    KeepConnection = False
    LoginPrompt = False
    Provider = 'MSDASQL.1'
    Left = 144
    Top = 136
  end
  object ADOIntercred_2_core: TADOConnection
    CommandTimeout = 9999
    KeepConnection = False
    LoginPrompt = False
    Provider = 'MSDASQL.1'
    Left = 93
    Top = 12
  end
  object ADOIntercred_2_operacao: TADOConnection
    CommandTimeout = 9999
    KeepConnection = False
    LoginPrompt = False
    Provider = 'MSDASQL.1'
    Left = 222
    Top = 13
  end
end
