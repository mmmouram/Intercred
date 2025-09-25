object DMDados: TDMDados
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 508
  Width = 784
  object ADOBuscaGerentes: TADOQuery
    Connection = DMConecta.ADOCapitalDeGiro
    CursorType = ctStatic
    CommandTimeout = 999999
    EnableBCD = False
    Parameters = <>
    SQL.Strings = (
      'SELECT cast(TBLCOD as integer) CODIGO, TBLDES AS GERENTE '
      'FROM factbtbl with (nolock) '
      'WHERE (TBLTIP = 001)'
      'ORDER BY TBLDES')
    Left = 48
    Top = 276
    object ADOBuscaGerentesCODIGO: TIntegerField
      FieldName = 'CODIGO'
      ReadOnly = True
    end
    object ADOBuscaGerentesGERENTE: TStringField
      FieldName = 'GERENTE'
      Size = 30
    end
  end
  object ADOBuscaColetor: TADOQuery
    Connection = DMConecta.ADOCapitalDeGiro
    CommandTimeout = 999999
    EnableBCD = False
    Parameters = <>
    SQL.Strings = (
      'SELECT COLECOD, COLECGC, COLEDES'
      'FROM FACCOLE with (nolock) '
      'ORDER BY COLEDES')
    Left = 265
    Top = 325
    object ADOBuscaColetorCOLECOD: TWideStringField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'COLECOD'
      Size = 4
    end
    object ADOBuscaColetorCOLECGC: TWideStringField
      DisplayLabel = 'C.N.P.J.'
      FieldName = 'COLECGC'
      Size = 14
    end
    object ADOBuscaColetorCOLEDES: TWideStringField
      DisplayLabel = 'Coletor'
      FieldName = 'COLEDES'
      Size = 37
    end
  end
  object ADOExecuta: TADOQuery
    AutoCalcFields = False
    Connection = DMConecta.ADOCapitalDeGiro
    CursorType = ctStatic
    CommandTimeout = 999
    EnableBCD = False
    Parameters = <>
    Left = 56
    Top = 380
  end
  object ADOBuscaUsuarios: TADOQuery
    Connection = DMConecta.ADOCapitalDeGiro
    CursorType = ctStatic
    CommandTimeout = 999999
    EnableBCD = False
    Parameters = <>
    SQL.Strings = (
      
        'select sistbsen.SENUSU, sistbsen.SENNOM, sistbsen.SENSEN, sistbs' +
        'en.SENNIV, sistbsen.SENAPELIDO,'
      
        'sistbsen.SENTPUSU, sistbsen.CodigoGrupo, sistbsen.SENREGIAO, Kg_' +
        'Assinatura.ASSINATURA,'
      
        'KG_GRUPOUSUARIO.Descricao, KG_GRUPOUSUARIO.RecebeMensagemChegada' +
        'Arquivo,KG_GRUPOUSUARIO.RecebeMensagemPagamentoPortal,KG_GRUPOUS' +
        'UARIO.RecebeMensagemChegadaRetornoDDA, NivelAcessoArea,'
      
        'CodigoMacrorregiao, SENSTATUS, Id_cargo, SenRegiaoSuplementar, C' +
        'odInterCaixa, Cod_Ad, CodigoSetor,VISAO_GERENTE'
      'from sistbsen with (nolock) '
      
        'LEFT JOIN Kg_Assinatura  ON Kg_Assinatura.CODIGOUSUARIO = sistbs' +
        'en.SENUSU'
      
        '  LEFT JOIN KG_GRUPOUSUARIO  ON KG_GRUPOUSUARIO.CODIGOGRUPO = si' +
        'stbsen.CODIGOGRUPO'
      ''
      ''
      '')
    Left = 48
    Top = 324
    object ADOBuscaUsuariosSENUSU: TIntegerField
      FieldName = 'SENUSU'
    end
    object ADOBuscaUsuariosSENNOM: TStringField
      FieldName = 'SENNOM'
      Size = 37
    end
    object ADOBuscaUsuariosSENNIV: TIntegerField
      FieldName = 'SENNIV'
    end
    object ADOBuscaUsuariosSENAPELIDO: TStringField
      FieldName = 'SENAPELIDO'
    end
    object ADOBuscaUsuariosCodigoGrupo: TIntegerField
      FieldName = 'CodigoGrupo'
    end
    object ADOBuscaUsuariosSENREGIAO: TIntegerField
      FieldName = 'SENREGIAO'
    end
    object ADOBuscaUsuariosASSINATURA: TBlobField
      FieldName = 'ASSINATURA'
    end
    object ADOBuscaUsuariosRecebeMensagemChegadaArquivo: TStringField
      FieldName = 'RecebeMensagemChegadaArquivo'
      Size = 3
    end
    object ADOBuscaUsuariosSENSEN: TStringField
      FieldName = 'SENSEN'
    end
    object ADOBuscaUsuariosSENSTATUS: TStringField
      FieldName = 'SENSTATUS'
      Size = 7
    end
    object ADOBuscaUsuariosNivelAcessoArea: TIntegerField
      FieldName = 'NivelAcessoArea'
    end
    object ADOBuscaUsuariosId_cargo: TIntegerField
      FieldName = 'Id_cargo'
    end
    object ADOBuscaUsuariosSenRegiaoSuplementar: TStringField
      FieldName = 'SenRegiaoSuplementar'
    end
    object ADOBuscaUsuariosCodigoMacrorregiao: TIntegerField
      FieldName = 'CodigoMacrorregiao'
    end
    object ADOBuscaUsuariosRecebeMensagemChegadaRetornoDDA: TStringField
      FieldName = 'RecebeMensagemChegadaRetornoDDA'
      Size = 3
    end
    object ADOBuscaUsuariosSENTPUSU: TMemoField
      FieldName = 'SENTPUSU'
      BlobType = ftMemo
    end
    object ADOBuscaUsuariosCodInterCaixa: TIntegerField
      FieldName = 'CodInterCaixa'
    end
    object ADOBuscaUsuariosCod_Ad: TStringField
      FieldName = 'Cod_Ad'
      Size = 50
    end
    object ADOBuscaUsuariosCodigoSetor: TIntegerField
      FieldName = 'CodigoSetor'
    end
    object ADOBuscaUsuariosDescricao: TStringField
      FieldName = 'Descricao'
      Size = 70
    end
    object ADOBuscaUsuariosRecebeMensagemPagamentoPortal: TStringField
      FieldName = 'RecebeMensagemPagamentoPortal'
      Size = 3
    end
    object ADOBuscaUsuariosVISAO_GERENTE: TStringField
      FieldName = 'VISAO_GERENTE'
      Size = 5
    end
  end
  object ADOBuscaPerfilSacado: TADOQuery
    Connection = DMConecta.ADOCapitalDeGiro
    CursorType = ctStatic
    CommandTimeout = 999999
    EnableBCD = False
    Parameters = <>
    SQL.Strings = (
      'SELECT cast(TBLCOD as integer) AS CODIGO, TBLDES AS PERFIL'
      'FROM factbtbl with (nolock) '
      'WHERE     (TBLTIP = 032)'
      'ORDER BY TBLDES')
    Left = 160
    Top = 222
    object ADOBuscaPerfilSacadoCODIGO: TIntegerField
      FieldName = 'CODIGO'
      ReadOnly = True
    end
    object ADOBuscaPerfilSacadoPERFIL: TStringField
      FieldName = 'PERFIL'
      Size = 30
    end
  end
  object ADOItens: TADODataSet
    Connection = DMConecta.ADOCapitalDeGiro
    CursorType = ctStatic
    BeforePost = ADOItensBeforePost
    CommandText = 
      'SELECT [ITECLAS], [ITEPROP],[TAXAABERTURACREDITO], [ITEORDE], [I' +
      'TEDOCU], [ITETXEF], [ITETXPE], [ITEVRDC], [ITECCOB], [ITEDTVE], ' +
      '[ITEPRAZ], [ITEVRTI], [ITEFOME], [ITELIQU], [ITEOBSE], [ITETXAD]' +
      ', [ITEVRAD], [ITETXPI], [ITEVRPI], [ITETXIO], [ITEVRIO], [ITETXI' +
      'S], [ITEVRIS], [ITETXFI], [ITEVRFI], [ITETXIP], [ITEVRIP], [ITEF' +
      'LOA], [ITEPMEF], [ITETXTR], [ITEVRTR], [ITETXIOFC], [ITEVRIOFC],' +
      ' [ITETXCA], [ITETXRE], [ITEDESP], [ITETXSA], [ITEVRSA], [ITETXRI' +
      'SCO], [ITEVRRISCO], [ITENUME], [ITESERI], [ITESACCNPJ], [ITETXCA' +
      'C], [ITEVRCAC], [IteTaxaAdministrativa], [SacTip], [CodigoSacado' +
      '], [ITECARTA], [ITEBOLETA], [ITEReservado], [IteTaxaTMF], [IteVa' +
      'lorTMF], [IteNban], [ITEBCOB] , ITETARIFADIGITACAO'#13#10'FROM [dbo].[' +
      'factbite] with (nolock) '#13#10'where (ITECLAS = :PROCLAS)'#13#10'and (ITEPR' +
      'OP = :PROPROP)'#13#10'order by ITEORDE'
    CommandTimeout = 9999
    DataSource = DSOperacao
    EnableBCD = False
    MasterFields = 'PROCLAS;PROPROP'
    Parameters = <
      item
        Name = 'PROCLAS'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 2
        Value = 'IF'
      end
      item
        Name = 'PROPROP'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 4
      end>
    Left = 265
    Top = 57
    object ADOItensITENUME: TStringField
      FieldName = 'ITENUME'
      Size = 10
    end
    object ADOItensITESERI: TStringField
      FieldName = 'ITESERI'
      Size = 3
    end
    object ADOItensITESACCNPJ: TStringField
      FieldName = 'ITESACCNPJ'
      Size = 14
    end
    object ADOItensITECLAS: TStringField
      FieldName = 'ITECLAS'
      Size = 2
    end
    object ADOItensITEPROP: TIntegerField
      FieldName = 'ITEPROP'
    end
    object ADOItensITEORDE: TIntegerField
      FieldName = 'ITEORDE'
    end
    object ADOItensITEDOCU: TIntegerField
      FieldName = 'ITEDOCU'
    end
    object ADOItensITETXEF: TFloatField
      FieldName = 'ITETXEF'
      DisplayFormat = '#,###.0000000'
    end
    object ADOItensITETXPE: TFloatField
      FieldName = 'ITETXPE'
      DisplayFormat = '#,###.0000000'
    end
    object ADOItensITEVRDC: TFloatField
      FieldName = 'ITEVRDC'
      DisplayFormat = '#,##0.00'
    end
    object ADOItensITECCOB: TFloatField
      FieldName = 'ITECCOB'
      DisplayFormat = '#,###.00'
    end
    object ADOItensITEDTVE: TDateTimeField
      FieldName = 'ITEDTVE'
      EditMask = '!99/99/9999;1;_'
    end
    object ADOItensITEPRAZ: TIntegerField
      FieldName = 'ITEPRAZ'
    end
    object ADOItensITEVRTI: TFloatField
      FieldName = 'ITEVRTI'
      DisplayFormat = '#,##0.00'
    end
    object ADOItensITEFOME: TFloatField
      FieldName = 'ITEFOME'
      DisplayFormat = '#,##0.00'
    end
    object ADOItensITELIQU: TFloatField
      FieldName = 'ITELIQU'
      DisplayFormat = '#,##0.00'
    end
    object ADOItensITEOBSE: TStringField
      FieldName = 'ITEOBSE'
    end
    object ADOItensITETXAD: TFloatField
      FieldName = 'ITETXAD'
      DisplayFormat = '#,##0.00'
    end
    object ADOItensITEVRAD: TFloatField
      FieldName = 'ITEVRAD'
      DisplayFormat = '#,##0.00'
    end
    object ADOItensITETXPI: TFloatField
      FieldName = 'ITETXPI'
      DisplayFormat = '#,##0.00'
    end
    object ADOItensITEVRPI: TFloatField
      FieldName = 'ITEVRPI'
      DisplayFormat = '#,##0.00'
    end
    object ADOItensITETXIO: TFloatField
      FieldName = 'ITETXIO'
      DisplayFormat = '#,##0.0000'
    end
    object ADOItensITEVRIO: TFloatField
      FieldName = 'ITEVRIO'
      DisplayFormat = '#,##0.00'
    end
    object ADOItensITETXIS: TFloatField
      FieldName = 'ITETXIS'
      DisplayFormat = '#,##0.00'
    end
    object ADOItensITEVRIS: TFloatField
      FieldName = 'ITEVRIS'
      DisplayFormat = '#,##0.00'
    end
    object ADOItensITETXFI: TFloatField
      FieldName = 'ITETXFI'
      DisplayFormat = '#,##0.00'
    end
    object ADOItensITEVRFI: TFloatField
      FieldName = 'ITEVRFI'
      DisplayFormat = '#,##0.00'
    end
    object ADOItensITETXIP: TFloatField
      FieldName = 'ITETXIP'
      DisplayFormat = '#,##0.00'
    end
    object ADOItensITEVRIP: TFloatField
      FieldName = 'ITEVRIP'
      DisplayFormat = '#,##0.00'
    end
    object ADOItensITEFLOA: TIntegerField
      FieldName = 'ITEFLOA'
    end
    object ADOItensITETXTR: TFloatField
      FieldName = 'ITETXTR'
      DisplayFormat = '#,##0.0000'
    end
    object ADOItensITEVRTR: TFloatField
      FieldName = 'ITEVRTR'
      DisplayFormat = '#,##0.00'
    end
    object ADOItensITETXIOFC: TFloatField
      FieldName = 'ITETXIOFC'
      DisplayFormat = '#,##0.0000'
    end
    object ADOItensITEVRIOFC: TFloatField
      FieldName = 'ITEVRIOFC'
      DisplayFormat = '#,##0.00'
    end
    object ADOItensITETXCA: TFloatField
      FieldName = 'ITETXCA'
      DisplayFormat = '#,##0.00'
    end
    object ADOItensITETXRE: TFloatField
      FieldName = 'ITETXRE'
      DisplayFormat = '#,##0.00'
    end
    object ADOItensITEDESP: TFloatField
      FieldName = 'ITEDESP'
      DisplayFormat = '#,##0.00'
    end
    object ADOItensITETXSA: TFloatField
      FieldName = 'ITETXSA'
      DisplayFormat = '#,##0.00'
    end
    object ADOItensITEVRSA: TFloatField
      FieldName = 'ITEVRSA'
      DisplayFormat = '#,##0.00'
    end
    object ADOItensITETXRISCO: TFloatField
      FieldName = 'ITETXRISCO'
      DisplayFormat = '##0.0000000'
    end
    object ADOItensITEVRRISCO: TFloatField
      FieldName = 'ITEVRRISCO'
      DisplayFormat = '##0.00'
    end
    object ADOItensITETXCAC: TFloatField
      FieldName = 'ITETXCAC'
      DisplayFormat = '##0.0000000'
    end
    object ADOItensITEVRCAC: TFloatField
      FieldName = 'ITEVRCAC'
      DisplayFormat = '##0.00'
    end
    object ADOItensIteTaxaAdministrativa: TFloatField
      FieldName = 'IteTaxaAdministrativa'
      DisplayFormat = '#,##.00'
    end
    object ADOItensTPDOCUMENTO: TStringField
      FieldKind = fkLookup
      FieldName = 'TPDOCUMENTO'
      LookupDataSet = ADOBuscaTPDocumento
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'TPDOCUMENTO'
      KeyFields = 'ITEDOCU'
      Size = 30
      Lookup = True
    end
    object ADOItensCodigoSacado: TIntegerField
      FieldName = 'CodigoSacado'
    end
    object ADOItensSacTip: TStringField
      FieldName = 'SacTip'
      Size = 1
    end
    object ADOItensITECARTA: TStringField
      FieldName = 'ITECARTA'
      Size = 1
    end
    object ADOItensITEBOLETA: TStringField
      FieldName = 'ITEBOLETA'
      Size = 1
    end
    object ADOItensIteTaxaTMF: TFloatField
      FieldName = 'IteTaxaTMF'
      DisplayFormat = '##0.0000000'
    end
    object ADOItensIteValorTMF: TFloatField
      FieldName = 'IteValorTMF'
      DisplayFormat = '#,##0.00'
    end
    object ADOItensIteNban: TStringField
      FieldName = 'IteNban'
      Size = 12
    end
    object ADOItensITEBCOB: TIntegerField
      FieldName = 'ITEBCOB'
    end
    object ADOItensITETARIFADIGITACAO: TFloatField
      FieldName = 'ITETARIFADIGITACAO'
    end
    object ADOItensITEReservado: TStringField
      FieldName = 'ITEReservado'
      Size = 25
    end
    object ADOItensITEPMEF: TIntegerField
      FieldName = 'ITEPMEF'
    end
    object ADOItensTAXAABERTURACREDITO: TFloatField
      FieldName = 'TAXAABERTURACREDITO'
    end
  end
  object DSOperacao: TDataSource
    AutoEdit = False
    DataSet = ADOPreliminar
    Left = 152
    Top = 80
  end
  object ADOBuscaTPDocumento: TADOQuery
    Connection = DMConecta.ADOCapitalDeGiro
    CursorType = ctStatic
    EnableBCD = False
    Parameters = <>
    SQL.Strings = (
      
        'SELECT CodigoProduto AS CODIGO, Descricao AS TPDOCUMENTO,  Emite' +
        'Boleta as Boleta, EmiteCarta as Carta, CodigoTabelaTarifa, Venci' +
        'mentoUtil '
      'FROM kg_produto with (nolock) '
      'ORDER BY TPDOCUMENTO')
    Left = 379
    Top = 276
    object ADOBuscaTPDocumentoCODIGO: TIntegerField
      FieldName = 'CODIGO'
      ReadOnly = True
    end
    object ADOBuscaTPDocumentoTPDOCUMENTO: TStringField
      FieldName = 'TPDOCUMENTO'
      Size = 30
    end
    object ADOBuscaTPDocumentoBoleta: TStringField
      FieldName = 'Boleta'
      Size = 1
    end
    object ADOBuscaTPDocumentoCarta: TStringField
      FieldName = 'Carta'
      Size = 1
    end
    object ADOBuscaTPDocumentoCodigoTabelaTarifa: TIntegerField
      FieldName = 'CodigoTabelaTarifa'
    end
    object ADOBuscaTPDocumentoVencimentoUtil: TStringField
      FieldName = 'VencimentoUtil'
      FixedChar = True
      Size = 3
    end
  end
  object ADODUP: TADODataSet
    Connection = DMConecta.ADOCapitalDeGiro
    CursorType = ctStatic
    AfterClose = ADODUPAfterClose
    AfterInsert = ADODUPAfterInsert
    BeforePost = ADODUPBeforePost
    AfterPost = ADODUPAfterPost
    AfterCancel = ADODUPAfterClose
    AfterDelete = ADODUPAfterClose
    AfterScroll = ADODUPAfterScroll
    CommandText = 
      'SELECT * FROM FACTBDUP with (nolock) '#13#10'WHERE (DUPCLAS = :BORCLAS' +
      ')'#13#10'AND (DUPBORD = :BORBORD)'#13#10'order by DUPORDE'
    CommandTimeout = 99999999
    DataSource = DSBOR
    EnableBCD = False
    MasterFields = 'BORCLAS;BORBORD'
    Parameters = <
      item
        Name = 'BORCLAS'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 2
        Value = Null
      end
      item
        Name = 'BORBORD'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    Left = 160
    Top = 176
    object ADODUPDUPCLAS: TStringField
      FieldName = 'DUPCLAS'
      FixedChar = True
      Size = 2
    end
    object ADODUPDUPORDE: TIntegerField
      FieldName = 'DUPORDE'
    end
    object ADODUPDUPBORD: TIntegerField
      FieldName = 'DUPBORD'
    end
    object ADODUPDUPDTOP: TDateTimeField
      FieldName = 'DUPDTOP'
      EditMask = '!99/99/9999;1;_'
    end
    object ADODUPDUPCLIE: TIntegerField
      FieldName = 'DUPCLIE'
    end
    object ADODUPDUPOPER: TIntegerField
      FieldName = 'DUPOPER'
    end
    object ADODUPDUPSACA: TIntegerField
      FieldName = 'DUPSACA'
    end
    object ADODUPDUPDOCU: TIntegerField
      FieldName = 'DUPDOCU'
    end
    object ADODUPDUPNUME: TStringField
      FieldName = 'DUPNUME'
      Size = 10
    end
    object ADODUPDUPSERI: TStringField
      FieldName = 'DUPSERI'
      Size = 3
    end
    object ADODUPDUPTXPE: TBCDField
      FieldName = 'DUPTXPE'
      DisplayFormat = '##0.0000000'
      Precision = 15
      Size = 7
    end
    object ADODUPDUPVRDC: TBCDField
      FieldName = 'DUPVRDC'
      DisplayFormat = '##0.00'
      Precision = 10
      Size = 2
    end
    object ADODUPDUPCCOB: TBCDField
      FieldName = 'DUPCCOB'
      DisplayFormat = '##0.00'
      Precision = 10
      Size = 2
    end
    object ADODUPDUPBCOB: TIntegerField
      FieldName = 'DUPBCOB'
    end
    object ADODUPDUPTPCO: TIntegerField
      FieldName = 'DUPTPCO'
    end
    object ADODUPDUPNBAN: TStringField
      FieldName = 'DUPNBAN'
      Size = 12
    end
    object ADODUPDUPNBAN2: TStringField
      FieldName = 'DUPNBAN2'
      Size = 10
    end
    object ADODUPDUPDTVE: TDateTimeField
      FieldName = 'DUPDTVE'
      EditMask = '!99/99/9999;1;_'
    end
    object ADODUPDUPDTVEORI: TDateTimeField
      FieldName = 'DUPDTVEORI'
      EditMask = '!99/99/9999;1;_'
    end
    object ADODUPDUPVRTI: TBCDField
      FieldName = 'DUPVRTI'
      DisplayFormat = '#,##0.00'
      Precision = 15
      Size = 2
    end
    object ADODUPDUPLIQU: TBCDField
      FieldName = 'DUPLIQU'
      DisplayFormat = '##0.00'
      Precision = 15
      Size = 2
    end
    object ADODUPDUPTXAD: TBCDField
      FieldName = 'DUPTXAD'
      DisplayFormat = '##0.00'
      Precision = 3
      Size = 2
    end
    object ADODUPDUPVRAD: TBCDField
      FieldName = 'DUPVRAD'
      DisplayFormat = '##0.00'
      Precision = 10
      Size = 2
    end
    object ADODUPDUPTXPI: TBCDField
      FieldName = 'DUPTXPI'
      DisplayFormat = '##0.00'
      Precision = 3
      Size = 2
    end
    object ADODUPDUPVRPI: TBCDField
      FieldName = 'DUPVRPI'
      DisplayFormat = '##0.00'
      Precision = 10
      Size = 2
    end
    object ADODUPDUPTXIO: TBCDField
      FieldName = 'DUPTXIO'
      DisplayFormat = '##0.0000'
      Precision = 10
      Size = 7
    end
    object ADODUPDUPVRIO: TBCDField
      FieldName = 'DUPVRIO'
      DisplayFormat = '##0.00'
      Precision = 10
      Size = 2
    end
    object ADODUPDUPTXIS: TBCDField
      FieldName = 'DUPTXIS'
      DisplayFormat = '##0.00'
      Precision = 3
      Size = 2
    end
    object ADODUPDUPVRIS: TBCDField
      FieldName = 'DUPVRIS'
      DisplayFormat = '##0.00'
      Precision = 10
      Size = 2
    end
    object ADODUPDUPTXFI: TBCDField
      FieldName = 'DUPTXFI'
      DisplayFormat = '#,##0.00'
      Precision = 3
      Size = 2
    end
    object ADODUPDUPVRFI: TBCDField
      FieldName = 'DUPVRFI'
      DisplayFormat = '##0.00'
      Precision = 10
      Size = 2
    end
    object ADODUPDUPTXIP: TBCDField
      FieldName = 'DUPTXIP'
      DisplayFormat = '##0.00'
      Precision = 3
      Size = 2
    end
    object ADODUPDUPVRIP: TBCDField
      FieldName = 'DUPVRIP'
      DisplayFormat = '##0.00'
      Precision = 10
      Size = 2
    end
    object ADODUPDUPSITU: TIntegerField
      FieldName = 'DUPSITU'
    end
    object ADODUPDUPSTAT: TStringField
      FieldName = 'DUPSTAT'
      FixedChar = True
      Size = 1
    end
    object ADODUPDUPDTPG: TDateTimeField
      FieldName = 'DUPDTPG'
      EditMask = '!99/99/9999;1;_'
    end
    object ADODUPDUPJURO: TBCDField
      FieldName = 'DUPJURO'
      DisplayFormat = '##0.00'
      Precision = 15
      Size = 2
    end
    object ADODUPDUPDESC: TBCDField
      FieldName = 'DUPDESC'
      DisplayFormat = '##0.00'
      Precision = 15
      Size = 2
    end
    object ADODUPDUPVRPG: TBCDField
      FieldName = 'DUPVRPG'
      DisplayFormat = '##0.00'
      Precision = 15
      Size = 2
    end
    object ADODUPDUPOBSE: TIntegerField
      FieldName = 'DUPOBSE'
    end
    object ADODUPDUPREMESSA: TDateTimeField
      FieldName = 'DUPREMESSA'
      EditMask = '!99/99/9999;1;_'
    end
    object ADODUPDUPBCOORI: TIntegerField
      FieldName = 'DUPBCOORI'
    end
    object ADODUPDUPRETORNO: TDateTimeField
      FieldName = 'DUPRETORNO'
      EditMask = '!99/99/9999;1;_'
    end
    object ADODUPDUPULTOCO: TIntegerField
      FieldName = 'DUPULTOCO'
    end
    object ADODUPDUPBCOCORR: TIntegerField
      FieldName = 'DUPBCOCORR'
    end
    object ADODUPDUPAGECORR: TStringField
      FieldName = 'DUPAGECORR'
      Size = 5
    end
    object ADODUPDUPDTPGSIS: TDateTimeField
      FieldName = 'DUPDTPGSIS'
      EditMask = '!99/99/9999;1;_'
    end
    object ADODUPDUPTRANSFE: TStringField
      FieldName = 'DUPTRANSFE'
      Size = 9
    end
    object ADODUPDUPRECANTE: TBCDField
      FieldName = 'DUPRECANTE'
      DisplayFormat = '##0.00'
      Precision = 15
      Size = 2
    end
    object ADODUPDUPDTPT: TDateTimeField
      FieldName = 'DUPDTPT'
      EditMask = '!99/99/9999;1;_'
    end
    object ADODUPDUPDTCREPG: TDateTimeField
      FieldName = 'DUPDTCREPG'
      EditMask = '!99/99/9999;1;_'
    end
    object ADODUPDUPCTABCO: TStringField
      FieldName = 'DUPCTABCO'
      Size = 9
    end
    object ADODUPDUPDTBX: TDateTimeField
      FieldName = 'DUPDTBX'
      EditMask = '!99/99/9999;1;_'
    end
    object ADODUPDUPFLOA: TIntegerField
      FieldName = 'DUPFLOA'
    end
    object ADODUPDUPTXTR: TBCDField
      FieldName = 'DUPTXTR'
      DisplayFormat = '##0.00'
      Precision = 10
    end
    object ADODUPDUPVRTR: TBCDField
      FieldName = 'DUPVRTR'
      DisplayFormat = '##0.00'
      Precision = 10
      Size = 2
    end
    object ADODUPDUPTXIOFC: TBCDField
      FieldName = 'DUPTXIOFC'
      DisplayFormat = '##0.0000'
      Precision = 10
    end
    object ADODUPDUPVRIOFC: TBCDField
      FieldName = 'DUPVRIOFC'
      DisplayFormat = '##0.00'
      Precision = 10
      Size = 2
    end
    object ADODUPDUPDTPR: TDateTimeField
      FieldName = 'DUPDTPR'
      EditMask = '!99/99/9999;1;_'
    end
    object ADODUPDUPTXIO2: TBCDField
      FieldName = 'DUPTXIO2'
      DisplayFormat = '##0.0000'
      Precision = 15
      Size = 7
    end
    object ADODUPDUPVRIO2: TBCDField
      FieldName = 'DUPVRIO2'
      DisplayFormat = '##0.00'
      Precision = 10
      Size = 2
    end
    object ADODUPDUPCMAE: TBCDField
      FieldName = 'DUPCMAE'
      Precision = 11
      Size = 0
    end
    object ADODUPDUPCONT: TBCDField
      FieldName = 'DUPCONT'
      Precision = 11
      Size = 0
    end
    object ADODUPDUPAGE: TIntegerField
      FieldName = 'DUPAGE'
    end
    object ADODUPDUPTXCA: TBCDField
      FieldName = 'DUPTXCA'
      DisplayFormat = '##0.00'
      Precision = 10
      Size = 2
    end
    object ADODUPDUPTXRE: TBCDField
      FieldName = 'DUPTXRE'
      DisplayFormat = '##0.00'
      Precision = 10
      Size = 2
    end
    object ADODUPDUPDESP: TBCDField
      FieldName = 'DUPDESP'
      DisplayFormat = '##0.00'
      Precision = 10
      Size = 2
    end
    object ADODUPDUPTXSA: TBCDField
      FieldName = 'DUPTXSA'
      DisplayFormat = '##0.00'
      Precision = 5
      Size = 2
    end
    object ADODUPDUPVRSA: TBCDField
      FieldName = 'DUPVRSA'
      DisplayFormat = '##0.00'
      Precision = 10
      Size = 2
    end
    object ADODUPDUPCESSAO: TIntegerField
      FieldName = 'DUPCESSAO'
    end
    object ADODUPDUPTPCESSA: TStringField
      FieldName = 'DUPTPCESSA'
      FixedChar = True
      Size = 1
    end
    object ADODUPDUPDTCESSA: TDateTimeField
      FieldName = 'DUPDTCESSA'
      EditMask = '!99/99/9999;1;_'
    end
    object ADODUPDUPVRCUSTO: TBCDField
      FieldName = 'DUPVRCUSTO'
      DisplayFormat = '##0.00'
      Precision = 15
      Size = 2
    end
    object ADODUPDUPVRRECDE: TBCDField
      FieldName = 'DUPVRRECDE'
      DisplayFormat = '##0.00'
      Precision = 15
      Size = 2
    end
    object ADODUPDUPDTNEG: TDateTimeField
      FieldName = 'DUPDTNEG'
      EditMask = '!99/99/9999;1;_'
    end
    object ADODUPDUPSITUNEG: TIntegerField
      FieldName = 'DUPSITUNEG'
    end
    object ADODUPDUPDTFECHA: TDateTimeField
      FieldName = 'DUPDTFECHA'
      EditMask = '!99/99/9999;1;_'
    end
    object ADODUPDUPPZEF: TSmallintField
      FieldName = 'DUPPZEF'
    end
    object ADODUPDUPCARTA: TStringField
      FieldName = 'DUPCARTA'
      Size = 1
    end
    object ADODUPDUPBOLETA: TStringField
      FieldName = 'DUPBOLETA'
      Size = 1
    end
    object ADODUPDUPRECCTZ: TStringField
      FieldName = 'DUPRECCTZ'
      Size = 1
    end
    object ADODUPDUPTXRISCO: TBCDField
      FieldName = 'DUPTXRISCO'
      DisplayFormat = '##0.00'
      Precision = 5
      Size = 2
    end
    object ADODUPDUPVRRISCO: TBCDField
      FieldName = 'DUPVRRISCO'
      DisplayFormat = '##0.00'
      Precision = 10
      Size = 2
    end
    object ADODUPDUPCOMCTZ: TStringField
      FieldName = 'DUPCOMCTZ'
      Size = 1
    end
    object ADODUPDUPBORCES: TIntegerField
      FieldName = 'DUPBORCES'
    end
    object ADODUPDUPDTCRCTB: TDateTimeField
      FieldName = 'DUPDTCRCTB'
      EditMask = '!99/99/9999;1;_'
    end
    object ADODUPDUPDTJURI: TDateTimeField
      FieldName = 'DUPDTJURI'
      EditMask = '!99/99/9999;1;_'
    end
    object ADODUPDUPTXCUSTO: TBCDField
      FieldName = 'DUPTXCUSTO'
      DisplayFormat = '##0.0000000'
      Precision = 15
      Size = 7
    end
    object ADODUPDUPOURECEB: TBCDField
      FieldName = 'DUPOURECEB'
      DisplayFormat = '##0.00'
      Precision = 12
      Size = 2
    end
    object ADODUPDUPTPDOCUMENTO: TStringField
      FieldKind = fkLookup
      FieldName = 'DUPTPDOCUMENTO'
      LookupDataSet = ADOBuscaTPDocumento
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'TPDOCUMENTO'
      KeyFields = 'DUPDOCU'
      Lookup = True
    end
    object ADODUPDUPTPCOBRANCA: TStringField
      FieldKind = fkLookup
      FieldName = 'DUPTPCOBRANCA'
      LookupDataSet = ADOTpCobranca
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'TPCOBRANCA'
      KeyFields = 'DUPTPCO'
      Lookup = True
    end
    object ADODUPDUPPRAZ: TIntegerField
      FieldName = 'DUPPRAZ'
    end
    object ADODUPDUPTXEF: TBCDField
      FieldName = 'DUPTXEF'
      DisplayFormat = '##0.0000000'
      Precision = 15
      Size = 7
    end
    object ADODUPDUPFOME: TFloatField
      FieldName = 'DUPFOME'
      DisplayFormat = '##0.00'
    end
    object ADODUPDUPTXCAC: TFloatField
      FieldName = 'DUPTXCAC'
      DisplayFormat = '##0.0000000'
    end
    object ADODUPDUPVRCAC: TFloatField
      FieldName = 'DUPVRCAC'
      DisplayFormat = '##0.00'
    end
    object ADODUPDupdtprevi: TDateTimeField
      FieldName = 'Dupdtprevi'
    end
    object ADODUPdupTaxaAdministrativa: TFloatField
      FieldName = 'dupTaxaAdministrativa'
    end
    object ADODUPDupTaxaTMF: TFloatField
      FieldName = 'DupTaxaTMF'
      DisplayFormat = '##0.0000000'
    end
    object ADODUPDupValorTMF: TFloatField
      FieldName = 'DupValorTMF'
      DisplayFormat = '#,##0.00'
    end
    object ADODUPDuptarifadigitacao: TFloatField
      FieldName = 'Duptarifadigitacao'
    end
    object ADODUPDUPReservado: TStringField
      FieldName = 'DUPReservado'
      Size = 25
    end
    object ADODUPRemessaOcorrenciaBancaria: TIntegerField
      FieldName = 'RemessaOcorrenciaBancaria'
    end
    object ADODUPTaxaAberturaCredito: TFloatField
      FieldName = 'TaxaAberturaCredito'
    end
  end
  object DSBOR: TDataSource
    AutoEdit = False
    DataSet = ADOBOR
    Left = 184
    Top = 23
  end
  object ADOTpCobranca: TADOQuery
    Connection = DMConecta.ADOCapitalDeGiro
    CursorType = ctStatic
    CommandTimeout = 999999
    EnableBCD = False
    Parameters = <>
    SQL.Strings = (
      'SELECT cast(TBLCOD as integer) AS CODIGO, TBLDES AS TPCOBRANCA'
      'FROM factbtbl with (nolock) '
      'WHERE (TBLTIP = 007)'
      'ORDER BY TPCOBRANCA')
    Left = 264
    Top = 276
    object ADOTpCobrancaCODIGO: TIntegerField
      FieldName = 'CODIGO'
      ReadOnly = True
    end
    object ADOTpCobrancaTPCOBRANCA: TStringField
      FieldName = 'TPCOBRANCA'
      Size = 30
    end
  end
  object PopupMenu: TPopupMenu
    Left = 21
    Top = 8
    object Pesquisarregistro1: TMenuItem
      Caption = 'Pesquisar registro'
      OnClick = Pesquisarregistro1Click
    end
    object Filtrar1: TMenuItem
      Caption = 'Filtrar'
    end
    object CancelarFiltro1: TMenuItem
      Caption = 'Cancelar Filtro'
    end
  end
  object ADOTpSituacao: TADOQuery
    Connection = DMConecta.ADOCapitalDeGiro
    CursorType = ctStatic
    EnableBCD = False
    Parameters = <>
    SQL.Strings = (
      
        'SELECT cast(TBLCOD as integer) AS CODIGO, TBLDES AS TPSITUACAO, ' +
        'TBLVL1, TBLVL7 , TBLV10'
      'FROM factbtbl with (nolock) '
      'WHERE (TBLTIP = 003)'
      'ORDER BY TPSITUACAO')
    Left = 265
    Top = 373
    object ADOTpSituacaoCODIGO: TIntegerField
      FieldName = 'CODIGO'
      ReadOnly = True
    end
    object ADOTpSituacaoTPSITUACAO: TWideStringField
      FieldName = 'TPSITUACAO'
      Size = 30
    end
    object ADOTpSituacaoTBLVL1: TWideStringField
      FieldName = 'TBLVL1'
      Size = 8
    end
    object ADOTpSituacaoTBLVL7: TWideStringField
      FieldName = 'TBLVL7'
      Size = 11
    end
    object ADOTpSituacaoTBLV10: TWideStringField
      FieldName = 'TBLV10'
      Size = 3
    end
  end
  object ADOTpPagamento: TADOQuery
    Connection = DMConecta.ADOCapitalDeGiro
    CursorType = ctStatic
    CommandTimeout = 999999
    EnableBCD = False
    Parameters = <>
    SQL.Strings = (
      'SELECT cast(TBLCOD as integer) AS CODIGO, TBLDES AS TPPAGAMENTO'
      'FROM factbtbl with (nolock) '
      'WHERE (TBLTIP = 029)'
      'ORDER BY TPPAGAMENTO')
    Left = 160
    Top = 325
    object ADOTpPagamentoCODIGO: TIntegerField
      FieldName = 'CODIGO'
      ReadOnly = True
    end
    object ADOTpPagamentoTPPAGAMENTO: TStringField
      FieldName = 'TPPAGAMENTO'
      Size = 30
    end
  end
  object ADOClasse: TADOQuery
    Connection = DMConecta.ADOCapitalDeGiro
    CursorType = ctStatic
    CommandTimeout = 999999
    EnableBCD = False
    Parameters = <>
    SQL.Strings = (
      'SELECT CLACOD,CLAADM FROM FACTBCLA with (nolock) '
      'ORDER BY CLACOD')
    Left = 160
    Top = 372
    object ADOClasseCLACOD: TWideStringField
      FieldName = 'CLACOD'
      Size = 2
    end
    object ADOClasseCLAADM: TWideStringField
      FieldName = 'CLAADM'
      Size = 2
    end
  end
  object ADOAlinea: TADODataSet
    Connection = DMConecta.ADOCapitalDeGiro
    CursorType = ctStatic
    CommandText = 
      'SELECT  SUBSTRING(TBLCOD, 4, 2) AS CODIGO, TBLDES, TBLTIP, TBLCO' +
      'D'#13#10'FROM factbtbl with (nolock) '#13#10'WHERE (TBLTIP = '#39'012'#39')'#13#10'ORDER B' +
      'Y TBLDES'#13#10
    CommandTimeout = 99999999
    EnableBCD = False
    Parameters = <>
    Left = 378
    Top = 115
    object ADOAlineaCODIGO: TWideStringField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CODIGO'
      ReadOnly = True
      Size = 2
    end
    object ADOAlineaTBLDES: TWideStringField
      DisplayLabel = 'Alinea'
      FieldName = 'TBLDES'
      Required = True
      Size = 30
    end
    object ADOAlineaTBLTIP: TWideStringField
      FieldName = 'TBLTIP'
      Required = True
      Size = 3
    end
    object ADOAlineaTBLCOD: TWideStringField
      FieldName = 'TBLCOD'
      Required = True
      Size = 5
    end
  end
  object ADOHIS: TADODataSet
    Connection = DMConecta.ADOCapitalDeGiro
    CursorType = ctStatic
    CommandText = 
      'Select HISCOD, HISDES, HISNAT, HISGRUCON, TransacaoSAP'#13#10'from fac' +
      'tbhis with (nolock) '#13#10'order by HISDES'
    CommandTimeout = 9999
    EnableBCD = False
    Parameters = <>
    Left = 264
    Top = 107
    object ADOHISNomeGrupo: TStringField
      FieldKind = fkLookup
      FieldName = 'NomeGrupo'
      LookupDataSet = ADOGrupoContabil
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'TBLDES'
      KeyFields = 'HISGRUCON'
      Size = 30
      Lookup = True
    end
    object ADOHISHISCOD: TIntegerField
      FieldName = 'HISCOD'
    end
    object ADOHISHISNAT: TStringField
      FieldName = 'HISNAT'
      Size = 1
    end
    object ADOHISHISGRUCON: TIntegerField
      FieldName = 'HISGRUCON'
    end
    object ADOHISHISDES: TStringField
      FieldName = 'HISDES'
      Size = 37
    end
    object ADOHISTransacaoSAP: TIntegerField
      FieldName = 'TransacaoSAP'
    end
  end
  object ADOGrupoContabil: TADODataSet
    Connection = DMConecta.ADOCapitalDeGiro
    CursorType = ctStatic
    CommandText = 
      'SELECT  SUBSTRING(TBLCOD, 3,3) AS CODIGO, TBLDES, TBLTIP, TBLCOD' +
      #13#10'FROM factbtbl with (nolock) '#13#10'WHERE (TBLTIP = '#39'033'#39')'#13#10'ORDER BY' +
      ' TBLDES'#13#10
    CommandTimeout = 99999999
    EnableBCD = False
    Parameters = <>
    Left = 267
    Top = 9
    object ADOGrupoContabilCODIGO: TWideStringField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CODIGO'
      ReadOnly = True
      Size = 5
    end
    object ADOGrupoContabilTBLDES: TWideStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'TBLDES'
      Size = 30
    end
    object ADOGrupoContabilTBLCOD: TWideStringField
      FieldName = 'TBLCOD'
      Size = 5
    end
    object ADOGrupoContabilTBLTIP: TIntegerField
      FieldName = 'TBLTIP'
    end
  end
  object ADOCHG: TADODataSet
    Connection = DMConecta.ADOCapitalDeGiro
    CursorType = ctStatic
    CommandText = 'select * from factbchg with (nolock) where chgbord is null'#13#10
    CommandTimeout = 99999999
    EnableBCD = False
    Parameters = <>
    Left = 378
    Top = 19
    object ADOCHGCHGCLAS: TStringField
      FieldName = 'CHGCLAS'
      Size = 2
    end
    object ADOCHGCHGBORD: TIntegerField
      FieldName = 'CHGBORD'
    end
    object ADOCHGCHGORDE: TIntegerField
      FieldName = 'CHGORDE'
    end
    object ADOCHGCHGNUME: TIntegerField
      FieldName = 'CHGNUME'
    end
    object ADOCHGCHGSERI: TStringField
      FieldName = 'CHGSERI'
      Size = 3
    end
    object ADOCHGCHGDTLA: TDateTimeField
      FieldName = 'CHGDTLA'
      EditMask = '!99/99/9999;1;_'
    end
    object ADOCHGCHGCLIE: TIntegerField
      FieldName = 'CHGCLIE'
    end
    object ADOCHGCHGSACA: TIntegerField
      FieldName = 'CHGSACA'
    end
    object ADOCHGCHGVRCH: TBCDField
      FieldName = 'CHGVRCH'
      DisplayFormat = '#,###.00'
      Precision = 15
      Size = 2
    end
    object ADOCHGCHGDTVE: TDateTimeField
      FieldName = 'CHGDTVE'
      EditMask = '!99/99/9999;1;_'
    end
    object ADOCHGCHGALIN: TStringField
      FieldName = 'CHGALIN'
      Size = 10
    end
    object ADOCHGCHGBDEP: TIntegerField
      FieldName = 'CHGBDEP'
    end
    object ADOCHGCHGOPER: TIntegerField
      FieldName = 'CHGOPER'
    end
    object ADOCHGCHGTPOP: TIntegerField
      FieldName = 'CHGTPOP'
    end
    object ADOCHGCHGSITU: TIntegerField
      FieldName = 'CHGSITU'
    end
    object ADOCHGCHGSTAT: TStringField
      FieldName = 'CHGSTAT'
      Size = 1
    end
    object ADOCHGCHGDTPG: TDateTimeField
      FieldName = 'CHGDTPG'
      EditMask = '!99/99/9999;1;_'
    end
    object ADOCHGCHGVRMO: TBCDField
      FieldName = 'CHGVRMO'
      DisplayFormat = '#,###.00'
      Precision = 15
      Size = 2
    end
    object ADOCHGCHGVRCA: TBCDField
      FieldName = 'CHGVRCA'
      DisplayFormat = '#,###.00'
      Precision = 15
      Size = 2
    end
    object ADOCHGCHGVRDE: TBCDField
      FieldName = 'CHGVRDE'
      DisplayFormat = '#,###.00'
      Precision = 15
      Size = 2
    end
    object ADOCHGCHGVRPG: TBCDField
      FieldName = 'CHGVRPG'
      DisplayFormat = '#,###.00'
      Precision = 15
      Size = 2
    end
    object ADOCHGCHGDDEB: TDateTimeField
      FieldName = 'CHGDDEB'
      EditMask = '!99/99/9999;1;_'
    end
    object ADOCHGCHGVDEB: TBCDField
      FieldName = 'CHGVDEB'
      DisplayFormat = '#,###.00'
      Precision = 15
      Size = 2
    end
    object ADOCHGCHGDDEV: TDateTimeField
      FieldName = 'CHGDDEV'
      EditMask = '!99/99/9999;1;_'
    end
    object ADOCHGCHGVDES: TBCDField
      FieldName = 'CHGVDES'
      Precision = 12
      Size = 2
    end
    object ADOCHGCHGAVIS: TIntegerField
      FieldName = 'CHGAVIS'
    end
    object ADOCHGCHGCTABCO: TStringField
      FieldName = 'CHGCTABCO'
      Size = 9
    end
    object ADOCHGCHGRECU: TBCDField
      FieldName = 'CHGRECU'
      Precision = 15
      Size = 2
    end
    object ADOCHGCHGOBSE: TStringField
      FieldName = 'CHGOBSE'
      Size = 2
    end
    object ADOCHGCHGDTDEP: TDateTimeField
      FieldName = 'CHGDTDEP'
      EditMask = '!99/99/9999;1;_'
    end
    object ADOCHGCHGDTCREPG: TDateTimeField
      FieldName = 'CHGDTCREPG'
      EditMask = '!99/99/9999;1;_'
    end
    object ADOCHGCHGDTPGSIS: TDateTimeField
      FieldName = 'CHGDTPGSIS'
      EditMask = '!99/99/9999;1;_'
    end
    object ADOCHGCHGDTFECHA: TDateTimeField
      FieldName = 'CHGDTFECHA'
      EditMask = '!99/99/9999;1;_'
    end
    object ADOCHGCHGDTJURI: TDateTimeField
      FieldName = 'CHGDTJURI'
      EditMask = '!99/99/9999;1;_'
    end
    object ADOCHGCHGVRCUSTO: TBCDField
      FieldName = 'CHGVRCUSTO'
      Precision = 15
      Size = 2
    end
    object ADOCHGCHGTXCUSTO: TBCDField
      FieldName = 'CHGTXCUSTO'
      Precision = 18
      Size = 7
    end
    object ADOCHGCHGCOMCTZ: TStringField
      FieldName = 'CHGCOMCTZ'
      Size = 1
    end
    object ADOCHGCHGCONT: TStringField
      FieldName = 'CHGCONT'
      Size = 11
    end
    object ADOCHGCHGDOCU: TIntegerField
      FieldName = 'CHGDOCU'
    end
    object ADOCHGCHGRECANTE: TBCDField
      FieldName = 'CHGRECANTE'
      Precision = 15
      Size = 2
    end
    object ADOCHGCHGOURECEB: TBCDField
      FieldName = 'CHGOURECEB'
      Precision = 15
      Size = 2
    end
    object ADOCHGCHGDTCRCTB: TDateTimeField
      FieldName = 'CHGDTCRCTB'
      EditMask = '!99/99/9999;1;_'
    end
    object ADOCHGCHGDTVEORI: TDateTimeField
      FieldName = 'CHGDTVEORI'
      EditMask = '!99/99/9999;1;_'
    end
  end
  object ADOFACTBCTL: TADODataSet
    Connection = DMConecta.ADOCapitalDeGiro
    CursorType = ctStatic
    CommandText = 
      'select TOP 1 * from factbctl with (nolock) '#13#10'where CTLDAT = :DAT' +
      'A'#13#10'and CTLLOT = :LOTE'
    CommandTimeout = 999
    EnableBCD = False
    Parameters = <
      item
        Name = 'DATA'
        DataType = ftDateTime
        NumericScale = 3
        Precision = 23
        Size = 16
        Value = Null
      end
      item
        Name = 'LOTE'
        Attributes = [paSigned]
        DataType = ftBCD
        Precision = 4
        Size = 19
        Value = Null
      end>
    Left = 488
    Top = 67
    object ADOFACTBCTLCTLDAT: TDateTimeField
      FieldName = 'CTLDAT'
      EditMask = '!99/99/9999;1;_'
    end
    object ADOFACTBCTLCTLLOT: TIntegerField
      FieldName = 'CTLLOT'
    end
    object ADOFACTBCTLCTLTLC: TBCDField
      FieldName = 'CTLTLC'
      DisplayFormat = '#,##0.00'
      Precision = 15
      Size = 2
    end
    object ADOFACTBCTLCTLSIT: TStringField
      FieldName = 'CTLSIT'
      Size = 1
    end
    object ADOFACTBCTLCTLTIP: TStringField
      FieldName = 'CTLTIP'
      Size = 3
    end
    object ADOFACTBCTLCTLVRD: TBCDField
      FieldName = 'CTLVRD'
      DisplayFormat = '#,##0.00'
      Precision = 15
      Size = 2
    end
    object ADOFACTBCTLCTLVRC: TBCDField
      FieldName = 'CTLVRC'
      DisplayFormat = '#,##0.00'
      Precision = 15
      Size = 2
    end
    object ADOFACTBCTLCTLPER: TIntegerField
      FieldName = 'CTLPER'
    end
    object ADOFACTBCTLCTLCONTROL: TIntegerField
      FieldName = 'CTLCONTROL'
    end
  end
  object DSFACTBCTL: TDataSource
    AutoEdit = False
    DataSet = ADOFACTBCTL
    Left = 597
    Top = 67
  end
  object ADOFACTBHIS: TADODataSet
    Connection = DMConecta.ADOCapitalDeGiro
    CursorType = ctStatic
    BeforePost = ADOFACTBHISBeforePost
    CommandText = 'select * from factbhis with (nolock) '#13#10'order by HISDES'
    CommandTimeout = 99999999
    EnableBCD = False
    Parameters = <>
    Left = 49
    Top = 178
    object ADOFACTBHISHISCOD: TIntegerField
      FieldName = 'HISCOD'
    end
    object ADOFACTBHISHISNAT: TWideStringField
      DisplayLabel = 'Natureza da Op.'
      FieldName = 'HISNAT'
      Required = True
      Size = 1
    end
    object ADOFACTBHISHISGRUCON: TIntegerField
      FieldName = 'HISGRUCON'
    end
    object ADOFACTBHISHISGRUCONDES: TWideStringField
      FieldKind = fkLookup
      FieldName = 'HISGRUCONDES'
      LookupDataSet = ADOGRUPOCONT
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'TBLDES'
      KeyFields = 'HISGRUCON'
      Size = 30
      Lookup = True
    end
    object ADOFACTBHISHISDES: TStringField
      FieldName = 'HISDES'
      Size = 37
    end
  end
  object ADOGRUPOCONT: TADODataSet
    Connection = DMConecta.ADOCapitalDeGiro
    CursorType = ctStatic
    CommandText = 
      'SELECT SUBSTRING(TBLCOD, 3, 3) AS CODIGO, TBLTIP, TBLCOD, TBLDES' +
      ', TBLVL1'#13#10'FROM factbtbl with (nolock) '#13#10'WHERE (TBLTIP = '#39'033'#39')'#13#10 +
      'ORDER BY TBLDES'
    CommandTimeout = 99999999
    EnableBCD = False
    Parameters = <>
    Left = 379
    Top = 373
    object ADOGRUPOCONTCODIGO: TWideStringField
      FieldName = 'CODIGO'
      ReadOnly = True
      Size = 3
    end
    object ADOGRUPOCONTTBLCOD: TWideStringField
      FieldName = 'TBLCOD'
      Size = 5
    end
    object ADOGRUPOCONTTBLDES: TWideStringField
      FieldName = 'TBLDES'
      Size = 30
    end
    object ADOGRUPOCONTTBLVL1: TWideStringField
      FieldName = 'TBLVL1'
      Size = 8
    end
    object ADOGRUPOCONTTBLTIP: TIntegerField
      FieldName = 'TBLTIP'
    end
  end
  object ADOFACTBCKL: TADODataSet
    Connection = DMConecta.ADOCapitalDeGiro
    CursorType = ctStatic
    CommandText = 'select * from factbckl with (nolock) where PROPROP is null'
    CommandTimeout = 99999999
    EnableBCD = False
    Parameters = <>
    Left = 489
    Top = 115
    object ADOFACTBCKLPROCLAS: TStringField
      FieldName = 'PROCLAS'
      Size = 2
    end
    object ADOFACTBCKLPROPROP: TIntegerField
      FieldName = 'PROPROP'
    end
    object ADOFACTBCKLPROCLIE: TIntegerField
      FieldName = 'PROCLIE'
    end
    object ADOFACTBCKLPRODTOP: TDateTimeField
      FieldName = 'PRODTOP'
      EditMask = '!99/99/9999;1;_'
    end
    object ADOFACTBCKLPROOPER: TIntegerField
      FieldName = 'PROOPER'
    end
    object ADOFACTBCKLPROVRBO: TBCDField
      FieldName = 'PROVRBO'
      DisplayFormat = '#,##0.00'
      Precision = 15
      Size = 2
    end
    object ADOFACTBCKLCKLADMI: TStringField
      FieldName = 'CKLADMI'
      Size = 2
    end
    object ADOFACTBCKLCKLSTCA: TStringField
      FieldName = 'CKLSTCA'
      Size = 1
    end
    object ADOFACTBCKLCKLSTCL: TStringField
      FieldName = 'CKLSTCL'
      Size = 1
    end
    object ADOFACTBCKLCKLNF: TStringField
      FieldName = 'CKLNF'
      Size = 1
    end
    object ADOFACTBCKLCKLNFORI: TStringField
      FieldName = 'CKLNFORI'
      Size = 1
    end
    object ADOFACTBCKLCKLNFXER: TStringField
      FieldName = 'CKLNFXER'
      Size = 1
    end
    object ADOFACTBCKLCKLCA: TStringField
      FieldName = 'CKLCA'
      Size = 1
    end
    object ADOFACTBCKLCKLCAXER: TStringField
      FieldName = 'CKLCAXER'
      Size = 1
    end
    object ADOFACTBCKLCKLCAXEC: TStringField
      FieldName = 'CKLCAXEC'
      Size = 1
    end
    object ADOFACTBCKLCKLCAORI: TStringField
      FieldName = 'CKLCAORI'
      Size = 1
    end
    object ADOFACTBCKLCKLCAORC: TStringField
      FieldName = 'CKLCAORC'
      Size = 1
    end
    object ADOFACTBCKLCKLCO: TStringField
      FieldName = 'CKLCO'
      Size = 1
    end
    object ADOFACTBCKLCKLCOPER: TStringField
      FieldName = 'CKLCOPER'
      Size = 1
    end
    object ADOFACTBCKLCKLCOCAR: TStringField
      FieldName = 'CKLCOCAR'
      Size = 1
    end
    object ADOFACTBCKLCKLBO: TStringField
      FieldName = 'CKLBO'
      Size = 1
    end
    object ADOFACTBCKLCKLBOASS: TStringField
      FieldName = 'CKLBOASS'
      Size = 1
    end
    object ADOFACTBCKLCKLBOCAR: TStringField
      FieldName = 'CKLBOCAR'
      Size = 1
    end
    object ADOFACTBCKLCKLDP: TStringField
      FieldName = 'CKLDP'
      Size = 1
    end
    object ADOFACTBCKLCKLDPASS: TStringField
      FieldName = 'CKLDPASS'
      Size = 1
    end
    object ADOFACTBCKLCKLDPEND: TStringField
      FieldName = 'CKLDPEND'
      Size = 1
    end
    object ADOFACTBCKLCKLDPREE: TStringField
      FieldName = 'CKLDPREE'
      Size = 1
    end
    object ADOFACTBCKLCKLDPPUL: TStringField
      FieldName = 'CKLDPPUL'
      Size = 1
    end
    object ADOFACTBCKLCKLDPS60: TStringField
      FieldName = 'CKLDPS60'
      Size = 1
    end
    object ADOFACTBCKLCKLDPTER: TStringField
      FieldName = 'CKLDPTER'
      Size = 1
    end
    object ADOFACTBCKLCKLDPI15: TStringField
      FieldName = 'CKLDPI15'
      Size = 1
    end
    object ADOFACTBCKLCKLDPCAU: TStringField
      FieldName = 'CKLDPCAU'
      Size = 1
    end
    object ADOFACTBCKLCKLDPFIS: TStringField
      FieldName = 'CKLDPFIS'
      Size = 1
    end
    object ADOFACTBCKLCKLDPFISQD: TIntegerField
      FieldName = 'CKLDPFISQD'
    end
    object ADOFACTBCKLCKLDPFISVR: TBCDField
      FieldName = 'CKLDPFISVR'
      Precision = 12
      Size = 3
    end
    object ADOFACTBCKLCKLDPCOL: TStringField
      FieldName = 'CKLDPCOL'
      Size = 1
    end
    object ADOFACTBCKLCKLDPCRU: TStringField
      FieldName = 'CKLDPCRU'
      Size = 1
    end
    object ADOFACTBCKLCKLDPCRUVR: TBCDField
      FieldName = 'CKLDPCRUVR'
      Precision = 12
      Size = 2
    end
    object ADOFACTBCKLCKLDPCRUZA: TMemoField
      FieldName = 'CKLDPCRUZA'
      BlobType = ftMemo
    end
    object ADOFACTBCKLCKLVRDEB: TBCDField
      FieldName = 'CKLVRDEB'
      DisplayFormat = '#,##0.00'
      Precision = 12
      Size = 2
    end
    object ADOFACTBCKLCKLCAU: TStringField
      FieldName = 'CKLCAU'
      Size = 1
    end
    object ADOFACTBCKLCKLCAU15: TStringField
      FieldName = 'CKLCAU15'
      Size = 1
    end
    object ADOFACTBCKLCKLCAU60: TStringField
      FieldName = 'CKLCAU60'
      Size = 1
    end
    object ADOFACTBCKLCKLPUOP: TStringField
      FieldName = 'CKLPUOP'
      Size = 1
    end
    object ADOFACTBCKLCKLSCI: TStringField
      FieldName = 'CKLSCI'
      Size = 1
    end
    object ADOFACTBCKLCKLDPEXP: TStringField
      FieldName = 'CKLDPEXP'
      Size = 1
    end
    object ADOFACTBCKLCKLOBSERVA: TMemoField
      FieldName = 'CKLOBSERVA'
      BlobType = ftMemo
    end
    object ADOFACTBCKLCKLDPEXPRE: TMemoField
      FieldName = 'CKLDPEXPRE'
      BlobType = ftMemo
    end
  end
  object ADOFACTBCKP: TADODataSet
    Connection = DMConecta.ADOCapitalDeGiro
    CursorType = ctStatic
    AfterInsert = ADOFACTBCKPAfterInsert
    AfterEdit = ADOFACTBCKPAfterEdit
    CommandText = 
      'select * from factbckp ckp with (nolock) where ckp.PROPROP is nu' +
      'll'
    CommandTimeout = 99999
    EnableBCD = False
    Parameters = <>
    Left = 487
    Top = 19
    object ADOFACTBCKPCKPTIPO: TIntegerField
      FieldName = 'CKPTIPO'
    end
    object ADOFACTBCKPPROCLAS: TStringField
      FieldName = 'PROCLAS'
      Size = 2
    end
    object ADOFACTBCKPPROPROP: TIntegerField
      FieldName = 'PROPROP'
    end
    object ADOFACTBCKPDUPORDE: TIntegerField
      FieldName = 'DUPORDE'
    end
    object ADOFACTBCKPCKPDTLA: TDateTimeField
      FieldName = 'CKPDTLA'
      EditMask = '!99/99/9999;1;_'
    end
    object ADOFACTBCKPCKPNUME: TStringField
      FieldName = 'CKPNUME'
      Size = 10
    end
    object ADOFACTBCKPCKPSERIE: TStringField
      FieldName = 'CKPSERIE'
      Size = 3
    end
    object ADOFACTBCKPCKPVLRD: TFloatField
      FieldName = 'CKPVLRD'
      DisplayFormat = '#,##0.00'
    end
    object ADOFACTBCKPCKPDTVE: TDateTimeField
      FieldName = 'CKPDTVE'
      EditMask = '!99/99/9999;1;_'
    end
    object ADOFACTBCKPCKPDTRE: TDateTimeField
      FieldName = 'CKPDTRE'
      EditMask = '!99/99/9999;1;_'
    end
    object ADOFACTBCKPID_CKP: TAutoIncField
      FieldName = 'ID_CKP'
      ReadOnly = True
    end
    object ADOFACTBCKPCKPRECEBI: TStringField
      FieldName = 'CKPRECEBI'
      Size = 3
    end
    object ADOFACTBCKPCKPSACA: TStringField
      FieldName = 'CKPSACA'
      Size = 37
    end
    object ADOFACTBCKPUsuarioInsert: TIntegerField
      FieldName = 'UsuarioInsert'
    end
    object ADOFACTBCKPUsuarioUpdate: TIntegerField
      FieldName = 'UsuarioUpdate'
    end
    object ADOFACTBCKPUsuarioBaixou: TIntegerField
      FieldName = 'UsuarioBaixou'
    end
    object ADOFACTBCKPDataRecebimento: TDateTimeField
      FieldName = 'DataRecebimento'
    end
    object ADOFACTBCKPDataUpdate: TDateTimeField
      FieldName = 'DataUpdate'
    end
  end
  object DSFACTBCKL: TDataSource
    AutoEdit = False
    DataSet = ADOFACTBCKL
    Left = 599
    Top = 115
  end
  object DSFACTBCKP: TDataSource
    DataSet = ADOFACTBCKP
    Left = 588
    Top = 19
  end
  object ADOVirtual: TADODataSet
    Connection = DMConecta.ADOCapitalDeGiro
    CommandTimeout = 99999999
    EnableBCD = False
    Parameters = <>
    Left = 379
    Top = 163
  end
  object ADOTmp1: TADODataSet
    Connection = DMConecta.ADOCapitalDeGiro
    CursorType = ctStatic
    CommandText = 
      'select * from factbbor with (nolock) where BORBORD = 25366 and b' +
      'orclas = '#39'IF'#39' '
    CommandTimeout = 99999999
    EnableBCD = False
    Parameters = <>
    Left = 488
    Top = 221
  end
  object ADOTmp2: TADODataSet
    Connection = DMConecta.ADOCapitalDeGiro
    CursorType = ctStatic
    CommandTimeout = 99999999
    EnableBCD = False
    Parameters = <>
    Left = 488
    Top = 277
  end
  object ADOTmp3: TADODataSet
    Connection = DMConecta.ADOCapitalDeGiro
    CommandTimeout = 99999999
    EnableBCD = False
    Parameters = <>
    Left = 488
    Top = 374
  end
  object ADOTmp4: TADODataSet
    Connection = DMConecta.ADOCapitalDeGiro
    CommandTimeout = 99999999
    EnableBCD = False
    Parameters = <>
    Left = 496
    Top = 325
  end
  object DSTmp3: TDataSource
    DataSet = ADOTmp3
    Left = 584
    Top = 381
  end
  object DSTmp2: TDataSource
    DataSet = ADOTmp2
    Left = 568
    Top = 277
  end
  object DSTmp4: TDataSource
    DataSet = ADOTmp4
    Left = 576
    Top = 333
  end
  object DSTmp1: TDataSource
    DataSet = ADOTmp1
    Left = 576
    Top = 229
  end
  object ADOFACTBBCI: TADODataSet
    Connection = DMConecta.ADOCapitalDeGiro
    CursorType = ctStatic
    CommandText = 'select * from factbbci with (nolock) '#13#10'where bcicgc is null'#13#10
    CommandTimeout = 99999999
    EnableBCD = False
    Parameters = <>
    Left = 488
    Top = 163
    object ADOFACTBBCIBCITIP: TStringField
      FieldName = 'BCITIP'
      Size = 1
    end
    object ADOFACTBBCIBCIDTL: TDateTimeField
      FieldName = 'BCIDTL'
      EditMask = '!99/99/9999;1;_'
    end
    object ADOFACTBBCIBCICGC: TStringField
      FieldName = 'BCICGC'
      Size = 11
    end
    object ADOFACTBBCIBCISIMPLES: TStringField
      FieldName = 'BCISIMPLES'
      Size = 1
    end
    object ADOFACTBBCIBCIPERIODO: TStringField
      FieldName = 'BCIPERIODO'
      Size = 6
    end
    object ADOFACTBBCIBCIAC: TBCDField
      FieldName = 'BCIAC'
      DisplayFormat = '##0.00'
      Precision = 15
      Size = 2
    end
    object ADOFACTBBCIBCIPC: TBCDField
      FieldName = 'BCIPC'
      DisplayFormat = '##0.00'
      Precision = 15
      Size = 2
    end
    object ADOFACTBBCIBCIPL: TBCDField
      FieldName = 'BCIPL'
      DisplayFormat = '##0.00'
      Precision = 15
      Size = 2
    end
    object ADOFACTBBCIBCILL: TBCDField
      FieldName = 'BCILL'
      DisplayFormat = '##0.00'
      Precision = 15
      Size = 2
    end
    object ADOFACTBBCIBCIET: TBCDField
      FieldName = 'BCIET'
      DisplayFormat = '##0.00'
      Precision = 15
      Size = 2
    end
    object ADOFACTBBCIBCIELP: TBCDField
      FieldName = 'BCIELP'
      DisplayFormat = '##0.00'
      Precision = 15
      Size = 2
    end
    object ADOFACTBBCIBCIRLP: TBCDField
      FieldName = 'BCIRLP'
      DisplayFormat = '##0.00'
      Precision = 15
      Size = 2
    end
    object ADOFACTBBCIBCIFATMED: TBCDField
      FieldName = 'BCIFATMED'
      DisplayFormat = '##0.00'
      Precision = 15
      Size = 2
    end
    object ADOFACTBBCIBCICLI: TIntegerField
      FieldName = 'BCICLI'
    end
  end
  object DSFACTBBCI: TDataSource
    DataSet = ADOFACTBBCI
    Left = 592
    Top = 163
  end
  object ADOFACTBSCI: TADODataSet
    Connection = DMConecta.ADOCapitalDeGiro
    CursorType = ctStatic
    BeforeClose = ADOFACTBSCIBeforeClose
    CommandText = 'select * from factbsci with (nolock) where scicgc is null'
    CommandTimeout = 99999999
    EnableBCD = False
    Parameters = <>
    Left = 371
    Top = 325
    object ADOFACTBSCISCITIP: TStringField
      FieldName = 'SCITIP'
      Size = 1
    end
    object ADOFACTBSCISCICLI: TIntegerField
      FieldName = 'SCICLI'
    end
    object ADOFACTBSCISCICGC: TStringField
      FieldName = 'SCICGC'
      Size = 11
    end
    object ADOFACTBSCISCIDTL: TDateTimeField
      FieldName = 'SCIDTL'
    end
    object ADOFACTBSCISCIPGAVI: TIntegerField
      FieldName = 'SCIPGAVI'
    end
    object ADOFACTBSCISCIPGPON: TIntegerField
      FieldName = 'SCIPGPON'
    end
    object ADOFACTBSCISCIPGVRP: TFloatField
      FieldName = 'SCIPGVRP'
    end
    object ADOFACTBSCISCIPGATI: TIntegerField
      FieldName = 'SCIPGATI'
    end
    object ADOFACTBSCISCIPGATF: TIntegerField
      FieldName = 'SCIPGATF'
    end
    object ADOFACTBSCISCIPGPGA: TIntegerField
      FieldName = 'SCIPGPGA'
    end
    object ADOFACTBSCISCIPGVRA: TFloatField
      FieldName = 'SCIPGVRA'
    end
    object ADOFACTBSCISCIPGQ15: TIntegerField
      FieldName = 'SCIPGQ15'
    end
    object ADOFACTBSCISCIPGV15: TFloatField
      FieldName = 'SCIPGV15'
    end
    object ADOFACTBSCISCIPGQ30: TIntegerField
      FieldName = 'SCIPGQ30'
    end
    object ADOFACTBSCISCIPGV30: TFloatField
      FieldName = 'SCIPGV30'
    end
    object ADOFACTBSCISCIPGQ60: TIntegerField
      FieldName = 'SCIPGQ60'
    end
    object ADOFACTBSCISCIPGV60: TFloatField
      FieldName = 'SCIPGV60'
    end
    object ADOFACTBSCISCIPGQ999: TIntegerField
      FieldName = 'SCIPGQ999'
    end
    object ADOFACTBSCISCIPGV999: TFloatField
      FieldName = 'SCIPGV999'
    end
    object ADOFACTBSCISCIMFQDE: TIntegerField
      FieldName = 'SCIMFQDE'
    end
    object ADOFACTBSCISCIMFVLR: TFloatField
      FieldName = 'SCIMFVLR'
    end
    object ADOFACTBSCISCIMFMED: TFloatField
      FieldName = 'SCIMFMED'
    end
    object ADOFACTBSCISCIMAQDE: TIntegerField
      FieldName = 'SCIMAQDE'
    end
    object ADOFACTBSCISCIMAVLR: TFloatField
      FieldName = 'SCIMAVLR'
    end
    object ADOFACTBSCISCIMAMED: TFloatField
      FieldName = 'SCIMAMED'
    end
    object ADOFACTBSCISCIPTQDE: TIntegerField
      FieldName = 'SCIPTQDE'
    end
    object ADOFACTBSCISCIPTVAC: TFloatField
      FieldName = 'SCIPTVAC'
    end
    object ADOFACTBSCISCIPTPER: TStringField
      FieldName = 'SCIPTPER'
      Size = 6
    end
    object ADOFACTBSCISCIPTLPR: TStringField
      FieldName = 'SCIPTLPR'
    end
    object ADOFACTBSCISCIPTDPR: TStringField
      FieldName = 'SCIPTDPR'
      Size = 6
    end
    object ADOFACTBSCISCIPTVPR: TFloatField
      FieldName = 'SCIPTVPR'
    end
    object ADOFACTBSCISCIPTLSE: TStringField
      FieldName = 'SCIPTLSE'
    end
    object ADOFACTBSCISCIPTDSE: TStringField
      FieldName = 'SCIPTDSE'
      Size = 6
    end
    object ADOFACTBSCISCIPTVSE: TFloatField
      FieldName = 'SCIPTVSE'
    end
    object ADOFACTBSCISCIPTLTE: TStringField
      FieldName = 'SCIPTLTE'
    end
    object ADOFACTBSCISCIPTDTE: TStringField
      FieldName = 'SCIPTDTE'
      Size = 6
    end
    object ADOFACTBSCISCIPTVTE: TFloatField
      FieldName = 'SCIPTVTE'
    end
    object ADOFACTBSCISCIPTLQU: TStringField
      FieldName = 'SCIPTLQU'
    end
    object ADOFACTBSCISCIPTDQU: TStringField
      FieldName = 'SCIPTDQU'
      Size = 6
    end
    object ADOFACTBSCISCIPTVQU: TFloatField
      FieldName = 'SCIPTVQU'
    end
    object ADOFACTBSCISCIPTPONTO: TIntegerField
      FieldName = 'SCIPTPONTO'
    end
    object ADOFACTBSCISCIPFQDE: TIntegerField
      FieldName = 'SCIPFQDE'
    end
    object ADOFACTBSCISCIPFPER: TStringField
      FieldName = 'SCIPFPER'
      Size = 6
    end
    object ADOFACTBSCISCIPFLOC: TStringField
      FieldName = 'SCIPFLOC'
    end
    object ADOFACTBSCISCIPFPONTO: TIntegerField
      FieldName = 'SCIPFPONTO'
    end
    object ADOFACTBSCISCIAEQDE: TIntegerField
      FieldName = 'SCIAEQDE'
    end
    object ADOFACTBSCISCIAEPER: TStringField
      FieldName = 'SCIAEPER'
      Size = 6
    end
    object ADOFACTBSCISCIAELOC: TStringField
      FieldName = 'SCIAELOC'
    end
    object ADOFACTBSCISCIAEMQDE: TIntegerField
      FieldName = 'SCIAEMQDE'
    end
    object ADOFACTBSCISCIAEMPER: TStringField
      FieldName = 'SCIAEMPER'
      Size = 6
    end
    object ADOFACTBSCISCIAEMLOC: TStringField
      FieldName = 'SCIAEMLOC'
    end
    object ADOFACTBSCISCIAEEQDE: TIntegerField
      FieldName = 'SCIAEEQDE'
    end
    object ADOFACTBSCISCIAEEPER: TStringField
      FieldName = 'SCIAEEPER'
      Size = 6
    end
    object ADOFACTBSCISCIAEELOC: TStringField
      FieldName = 'SCIAEELOC'
    end
    object ADOFACTBSCISCIAEFQDE: TIntegerField
      FieldName = 'SCIAEFQDE'
    end
    object ADOFACTBSCISCIAEFPER: TStringField
      FieldName = 'SCIAEFPER'
      Size = 6
    end
    object ADOFACTBSCISCIAEFLOC: TStringField
      FieldName = 'SCIAEFLOC'
    end
    object ADOFACTBSCISCIAEPRIQD: TIntegerField
      FieldName = 'SCIAEPRIQD'
    end
    object ADOFACTBSCISCIAEPRIPE: TStringField
      FieldName = 'SCIAEPRIPE'
      Size = 6
    end
    object ADOFACTBSCISCIAEPRILO: TStringField
      FieldName = 'SCIAEPRILO'
    end
    object ADOFACTBSCISCIAEPUBPO: TIntegerField
      FieldName = 'SCIAEPUBPO'
    end
    object ADOFACTBSCISCIAEPRIPO: TIntegerField
      FieldName = 'SCIAEPRIPO'
    end
    object ADOFACTBSCISCICHQDE: TIntegerField
      FieldName = 'SCICHQDE'
    end
    object ADOFACTBSCISCICHPER: TStringField
      FieldName = 'SCICHPER'
      Size = 6
    end
    object ADOFACTBSCISCICHBAN: TStringField
      FieldName = 'SCICHBAN'
    end
    object ADOFACTBSCISCICHPONTO: TIntegerField
      FieldName = 'SCICHPONTO'
    end
    object ADOFACTBSCISCICOQDE: TIntegerField
      FieldName = 'SCICOQDE'
    end
    object ADOFACTBSCISCICOPER: TStringField
      FieldName = 'SCICOPER'
      Size = 6
    end
    object ADOFACTBSCISCICOLOC: TStringField
      FieldName = 'SCICOLOC'
    end
    object ADOFACTBSCISCICOPONTO: TIntegerField
      FieldName = 'SCICOPONTO'
    end
    object ADOFACTBSCISCITEULTIM: TStringField
      FieldName = 'SCITEULTIM'
      Size = 15
    end
    object ADOFACTBSCISCITEPENUL: TStringField
      FieldName = 'SCITEPENUL'
      Size = 15
    end
    object ADOFACTBSCISCITEANTIP: TStringField
      FieldName = 'SCITEANTIP'
      Size = 15
    end
    object ADOFACTBSCISCIOUTROQD: TIntegerField
      FieldName = 'SCIOUTROQD'
    end
    object ADOFACTBSCISCIOUTRODE: TStringField
      FieldName = 'SCIOUTRODE'
    end
    object ADOFACTBSCISCIOUTROPO: TIntegerField
      FieldName = 'SCIOUTROPO'
    end
    object ADOFACTBSCISCIOUTROPE: TStringField
      FieldName = 'SCIOUTROPE'
      Size = 6
    end
  end
  object DSFACTBSCI: TDataSource
    AutoEdit = False
    DataSet = ADOFACTBSCI
    Left = 432
    Top = 325
  end
  object ADOFACTBCTC: TADODataSet
    Connection = DMConecta.ADOCapitalDeGiro
    CursorType = ctStatic
    AfterInsert = ADOFACTBCTCAfterInsert
    AfterScroll = ADOFACTBCTCAfterScroll
    CommandText = 
      'select * from factbctc with (nolock) '#13#10'where CTCDAT = :CTLDAT'#13#10'a' +
      'nd CTCLOT = :CTLLOT'
    CommandTimeout = 99999
    DataSource = DSFACTBCTL
    EnableBCD = False
    MasterFields = 'CTLDAT;CTLLOT'
    Parameters = <
      item
        Name = 'CTLDAT'
        DataType = ftDateTime
        NumericScale = 3
        Precision = 23
        Size = 16
        Value = Null
      end
      item
        Name = 'CTLLOT'
        Attributes = [paSigned]
        DataType = ftBCD
        Precision = 6
        Size = 19
        Value = Null
      end>
    Left = 51
    Top = 59
    object ADOFACTBCTCCTCDAT: TDateTimeField
      FieldName = 'CTCDAT'
    end
    object ADOFACTBCTCCTCLOT: TIntegerField
      FieldName = 'CTCLOT'
    end
    object ADOFACTBCTCCTCDOC: TIntegerField
      FieldName = 'CTCDOC'
    end
    object ADOFACTBCTCCTCTIP: TStringField
      FieldName = 'CTCTIP'
      Size = 1
    end
    object ADOFACTBCTCCTCVAL: TBCDField
      FieldName = 'CTCVAL'
      DisplayFormat = '#,##0.00'
      Precision = 15
      Size = 2
    end
    object ADOFACTBCTCCTCCLI: TIntegerField
      FieldName = 'CTCCLI'
    end
    object ADOFACTBCTCCTCDEB: TStringField
      FieldName = 'CTCDEB'
      Size = 11
    end
    object ADOFACTBCTCCTCCRE: TStringField
      FieldName = 'CTCCRE'
      Size = 11
    end
    object ADOFACTBCTCCTCHIP: TIntegerField
      FieldName = 'CTCHIP'
    end
    object ADOFACTBCTCCTCOPE: TIntegerField
      FieldName = 'CTCOPE'
    end
    object ADOFACTBCTCDUPCLAS: TStringField
      FieldName = 'DUPCLAS'
      Size = 2
    end
    object ADOFACTBCTCDUPBORD: TIntegerField
      FieldName = 'DUPBORD'
    end
    object ADOFACTBCTCDUPORDE: TIntegerField
      FieldName = 'DUPORDE'
    end
    object ADOFACTBCTCCTCHIS: TMemoField
      FieldName = 'CTCHIS'
      BlobType = ftMemo
    end
    object ADOFACTBCTCCTCDataInsert: TDateTimeField
      FieldName = 'CTCDataInsert'
    end
    object ADOFACTBCTCCTCDataUpdate: TDateTimeField
      FieldName = 'CTCDataUpdate'
    end
    object ADOFACTBCTCCTCUsuarioInsert: TIntegerField
      FieldName = 'CTCUsuarioInsert'
    end
    object ADOFACTBCTCCTCUsuarioUpdate: TIntegerField
      FieldName = 'CTCUsuarioUpdate'
    end
    object ADOFACTBCTCID_CTC: TAutoIncField
      FieldName = 'ID_CTC'
      ReadOnly = True
    end
    object ADOFACTBCTCNSUSAP: TStringField
      FieldName = 'NSUSAP'
    end
    object ADOFACTBCTCCTCPARCELAPARCIAL: TIntegerField
      FieldName = 'CTCPARCELAPARCIAL'
    end
    object ADOFACTBCTCNSUSapPrd: TStringField
      FieldName = 'NSUSapPrd'
    end
  end
  object ADOPreliminar: TADODataSet
    Connection = DMConecta.ADOCapitalDeGiro
    CursorType = ctStatic
    BeforePost = ADOPreliminarBeforePost
    CommandText = 
      'SELECT top 1 [PROCLAS], [PROPROP], [PROITEM], [PROCLIE], [PROOPE' +
      'R], [PRODTOP], [PROTXME], [PROTXEF], [PROTXPE], [PROTPCA], [PROV' +
      'RDC], [PROCCOB], [PROORDE], [PROPMED], [PROVRBO], [PROFOME], [PR' +
      'OLIQU], [PROVRINFOR], [PROTXAD], [PROVRAD], [PROTXPI], [PROVRPI]' +
      ', [PROTXIO], [PROVRIO], [PROTXFI], [PROVRFI], [PROTXIS], [PROVRI' +
      'S], [PROTXIP], [PROVRIP], [PROFLOA], [PROPMEF], [PROTXTR], [PROV' +
      'RTR], [PROTXIOFC], [PROVRIOFC], [PROEMITE], [PROTXCA], [PROTXRE]' +
      ', [PRODESP], [PROTXSA], [PROVRSA], [PROUSUARIO], [PROCMAE], [PRO' +
      'TXRISCO], [PROVRRISCO], [PROTXANTE], [PRODTOPAN], [PROTXEFAN], [' +
      'PROTXMEPEN], [PRODTOPPEN], [PROTXEFPEN], [PROSTATUS], [ClicodOld' +
      '], [Provisorio], [PROTXCAC], [PROVRCAC], [ProTaxaAdministrativa]' +
      ', [PRODOCUMEN], [CodigoTabelaTarifa], StatusBoletoOperacao, PROA' +
      'GE, PROCONT, PROTPCONTR, PROAVASACA, CodigoTipoCarteira, PROORIG' +
      'EM, ProTaxaTMF, ProValorTMF,PROTARIFADIGITACAO, PROCOBRATARIFADI' +
      'GITACAO, TaxaEfetivaMinima, ProTipoPagtoIOF, ProTipoPagtoTAC, Co' +
      'digoRegiao, ProIsentarTarifaDigitacao, CodigoControleArquivo, Co' +
      'digoCenario, ProTacDigitada,taxaaberturacredito, CustoEfetivoTot' +
      'al, ProCartaAgronegocio, proCodPriAval, proCodSegAval, proCodTer' +
      'Aval, proCodQuaAval,ProDomicilioBancario,PROTXTEO,PROVRTEO,'#39#39' AS' +
      ' TELA '#13#10'FROM factbpro with (nolock) '#13#10'where (PROPROP = :PROP) an' +
      'd (PROCLAS = :CLAS)'#13#10
    CommandTimeout = 9999
    EnableBCD = False
    Parameters = <
      item
        Name = 'PROP'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'CLAS'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 2
        Value = Null
      end>
    Left = 43
    Top = 128
    object ADOPreliminarPROCLAS: TStringField
      FieldName = 'PROCLAS'
      Size = 2
    end
    object ADOPreliminarPROPROP: TIntegerField
      FieldName = 'PROPROP'
    end
    object ADOPreliminarPROITEM: TIntegerField
      FieldName = 'PROITEM'
    end
    object ADOPreliminarPROCLIE: TIntegerField
      FieldName = 'PROCLIE'
    end
    object ADOPreliminarPROOPER: TIntegerField
      FieldName = 'PROOPER'
    end
    object ADOPreliminarPRODTOP: TDateTimeField
      FieldName = 'PRODTOP'
      EditMask = '!99/99/9999;1;_'
    end
    object ADOPreliminarPROTXME: TFloatField
      FieldName = 'PROTXME'
      DisplayFormat = '##0.00000'
    end
    object ADOPreliminarPROTXEF: TFloatField
      FieldName = 'PROTXEF'
      DisplayFormat = '##0.0000000'
    end
    object ADOPreliminarPROTXPE: TFloatField
      FieldName = 'PROTXPE'
      DisplayFormat = '##0.0000000'
    end
    object ADOPreliminarPROTPCA: TStringField
      FieldName = 'PROTPCA'
      Size = 1
    end
    object ADOPreliminarPROVRDC: TFloatField
      FieldName = 'PROVRDC'
      DisplayFormat = '#,##0.00'
    end
    object ADOPreliminarPROCCOB: TFloatField
      FieldName = 'PROCCOB'
      DisplayFormat = '#,##0.00'
    end
    object ADOPreliminarPROORDE: TIntegerField
      FieldName = 'PROORDE'
    end
    object ADOPreliminarPROPMED: TFloatField
      FieldName = 'PROPMED'
      DisplayFormat = '##0.0000000'
    end
    object ADOPreliminarPROVRBO: TFloatField
      FieldName = 'PROVRBO'
      DisplayFormat = '#,##0.00'
      currency = True
    end
    object ADOPreliminarPROFOME: TFloatField
      FieldName = 'PROFOME'
      DisplayFormat = '#,##0.00'
    end
    object ADOPreliminarPROLIQU: TFloatField
      FieldName = 'PROLIQU'
      DisplayFormat = '#,##0.00'
    end
    object ADOPreliminarPROVRINFOR: TFloatField
      FieldName = 'PROVRINFOR'
      DisplayFormat = '#,##0.00'
      currency = True
    end
    object ADOPreliminarPROTXAD: TFloatField
      FieldName = 'PROTXAD'
      DisplayFormat = '#,##0.00'
    end
    object ADOPreliminarPROVRAD: TFloatField
      FieldName = 'PROVRAD'
      DisplayFormat = '##0.0000000'
    end
    object ADOPreliminarPROTXPI: TFloatField
      FieldName = 'PROTXPI'
      DisplayFormat = '##0.00'
    end
    object ADOPreliminarPROVRPI: TFloatField
      FieldName = 'PROVRPI'
      DisplayFormat = '#,##0.00'
    end
    object ADOPreliminarPROTXIO: TFloatField
      FieldName = 'PROTXIO'
      DisplayFormat = '#,##0.0000'
    end
    object ADOPreliminarPROVRIO: TFloatField
      FieldName = 'PROVRIO'
      DisplayFormat = '#,##0.00'
    end
    object ADOPreliminarPROTXFI: TFloatField
      FieldName = 'PROTXFI'
      DisplayFormat = '#,##0.00'
    end
    object ADOPreliminarPROVRFI: TFloatField
      FieldName = 'PROVRFI'
      DisplayFormat = '#,##0.00'
    end
    object ADOPreliminarPROTXIS: TFloatField
      FieldName = 'PROTXIS'
      DisplayFormat = '#,##0.00'
    end
    object ADOPreliminarPROVRIS: TFloatField
      FieldName = 'PROVRIS'
      DisplayFormat = '#,##0.00'
    end
    object ADOPreliminarPROTXIP: TFloatField
      FieldName = 'PROTXIP'
      DisplayFormat = '#,##0.00'
    end
    object ADOPreliminarPROVRIP: TFloatField
      FieldName = 'PROVRIP'
      DisplayFormat = '#,##0.00'
    end
    object ADOPreliminarPROFLOA: TStringField
      FieldName = 'PROFLOA'
      Size = 2
    end
    object ADOPreliminarPROPMEF: TFloatField
      FieldName = 'PROPMEF'
      DisplayFormat = '#,##0.0000000'
    end
    object ADOPreliminarPROTXTR: TFloatField
      FieldName = 'PROTXTR'
      DisplayFormat = '#,##0.00'
    end
    object ADOPreliminarPROVRTR: TFloatField
      FieldName = 'PROVRTR'
      DisplayFormat = '#,##0.00'
    end
    object ADOPreliminarPROTXIOFC: TFloatField
      FieldName = 'PROTXIOFC'
      DisplayFormat = '#,##0.0000'
    end
    object ADOPreliminarPROVRIOFC: TFloatField
      FieldName = 'PROVRIOFC'
      DisplayFormat = '#,##0.00'
    end
    object ADOPreliminarPROEMITE: TStringField
      FieldName = 'PROEMITE'
      Size = 1
    end
    object ADOPreliminarPROTXCA: TFloatField
      FieldName = 'PROTXCA'
      DisplayFormat = '#,##0.00'
    end
    object ADOPreliminarPROTXRE: TFloatField
      FieldName = 'PROTXRE'
      DisplayFormat = '#,##0.00'
    end
    object ADOPreliminarPRODESP: TFloatField
      FieldName = 'PRODESP'
      DisplayFormat = '#,##0.00'
    end
    object ADOPreliminarPROTXSA: TFloatField
      FieldName = 'PROTXSA'
      DisplayFormat = '##0.00'
    end
    object ADOPreliminarPROVRSA: TFloatField
      FieldName = 'PROVRSA'
      DisplayFormat = '#,##0.00'
    end
    object ADOPreliminarPROUSUARIO: TIntegerField
      FieldName = 'PROUSUARIO'
    end
    object ADOPreliminarPROTXRISCO: TFloatField
      FieldName = 'PROTXRISCO'
      DisplayFormat = '##0.00'
    end
    object ADOPreliminarPROVRRISCO: TFloatField
      FieldName = 'PROVRRISCO'
      DisplayFormat = '#,##0.00'
    end
    object ADOPreliminarPROTXANTE: TFloatField
      FieldName = 'PROTXANTE'
      DisplayFormat = '#,##0.00'
    end
    object ADOPreliminarPRODTOPAN: TDateTimeField
      FieldName = 'PRODTOPAN'
    end
    object ADOPreliminarPROTXEFAN: TFloatField
      FieldName = 'PROTXEFAN'
      DisplayFormat = '#,##0.0000000'
    end
    object ADOPreliminarPROTXMEPEN: TFloatField
      FieldName = 'PROTXMEPEN'
      DisplayFormat = '#,##0.00'
    end
    object ADOPreliminarPRODTOPPEN: TDateTimeField
      FieldName = 'PRODTOPPEN'
    end
    object ADOPreliminarPROTXEFPEN: TFloatField
      FieldName = 'PROTXEFPEN'
      DisplayFormat = '#,##0.0000000'
    end
    object ADOPreliminarPROSTATUS: TStringField
      FieldName = 'PROSTATUS'
      Size = 1
    end
    object ADOPreliminarPROTXCAC: TFloatField
      FieldName = 'PROTXCAC'
      DisplayFormat = '##0.0000000'
    end
    object ADOPreliminarPROVRCAC: TFloatField
      FieldName = 'PROVRCAC'
      DisplayFormat = '#,##0.00'
    end
    object ADOPreliminarProTaxaAdministrativa: TFloatField
      FieldName = 'ProTaxaAdministrativa'
      DisplayFormat = '###.00'
    end
    object ADOPreliminarPRODOCUMEN: TIntegerField
      FieldName = 'PRODOCUMEN'
    end
    object ADOPreliminarTPDOCUMENTO: TStringField
      FieldKind = fkLookup
      FieldName = 'TPDOCUMENTO'
      LookupDataSet = ADOBuscaTPDocumento
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'TPDOCUMENTO'
      KeyFields = 'PRODOCUMEN'
      Lookup = True
    end
    object ADOPreliminarCodigoTabelaTarifa: TIntegerField
      FieldName = 'CodigoTabelaTarifa'
    end
    object ADOPreliminarPROAGE: TIntegerField
      FieldName = 'PROAGE'
    end
    object ADOPreliminarPROCONT: TFloatField
      FieldName = 'PROCONT'
    end
    object ADOPreliminarPROCMAE: TFloatField
      FieldName = 'PROCMAE'
    end
    object ADOPreliminarPROTPCONTR: TStringField
      FieldName = 'PROTPCONTR'
      Size = 1
    end
    object ADOPreliminarPROAVASACA: TStringField
      FieldName = 'PROAVASACA'
      Size = 1
    end
    object ADOPreliminarPROORIGEM: TStringField
      FieldName = 'PROORIGEM'
      FixedChar = True
      Size = 1
    end
    object ADOPreliminarProTaxaTMF: TFloatField
      FieldName = 'ProTaxaTMF'
      DisplayFormat = '##0.00'
    end
    object ADOPreliminarProValorTMF: TFloatField
      FieldName = 'ProValorTMF'
      DisplayFormat = '#,##0.0000000'
    end
    object ADOPreliminarStatusBoletoOperacao: TStringField
      FieldName = 'StatusBoletoOperacao'
      Size = 11
    end
    object ADOPreliminarPROTARIFADIGITACAO: TFloatField
      FieldName = 'PROTARIFADIGITACAO'
      DisplayFormat = '#,##0.00'
    end
    object ADOPreliminarPROCOBRATARIFADIGITACAO: TStringField
      FieldName = 'PROCOBRATARIFADIGITACAO'
      FixedChar = True
      Size = 3
    end
    object ADOPreliminarTaxaEfetivaMinima: TFloatField
      FieldName = 'TaxaEfetivaMinima'
    end
    object ADOPreliminarCodigoTipoCarteira: TIntegerField
      FieldName = 'CodigoTipoCarteira'
    end
    object ADOPreliminarProTipoPagtoIOF: TStringField
      FieldName = 'ProTipoPagtoIOF'
      FixedChar = True
      Size = 1
    end
    object ADOPreliminarProTipoPagtoTAC: TStringField
      FieldName = 'ProTipoPagtoTAC'
      Size = 1
    end
    object ADOPreliminarCodigoRegiao: TIntegerField
      FieldName = 'CodigoRegiao'
    end
    object ADOPreliminarProIsentarTarifaDigitacao: TStringField
      FieldName = 'ProIsentarTarifaDigitacao'
      Size = 3
    end
    object ADOPreliminarCodigoControleArquivo: TIntegerField
      FieldName = 'CodigoControleArquivo'
    end
    object ADOPreliminarCodigoCenario: TIntegerField
      FieldName = 'CodigoCenario'
    end
    object ADOPreliminarProTacDigitada: TFloatField
      FieldName = 'ProTacDigitada'
    end
    object ADOPreliminarCustoEfetivoTotal: TFloatField
      FieldName = 'CustoEfetivoTotal'
    end
    object ADOPreliminarProCartaAgronegocio: TStringField
      FieldName = 'ProCartaAgronegocio'
      FixedChar = True
      Size = 3
    end
    object ADOPreliminarproCodPriAval: TIntegerField
      FieldName = 'proCodPriAval'
    end
    object ADOPreliminarproCodSegAval: TIntegerField
      FieldName = 'proCodSegAval'
    end
    object ADOPreliminarproCodTerAval: TIntegerField
      FieldName = 'proCodTerAval'
    end
    object ADOPreliminarproCodQuaAval: TIntegerField
      FieldName = 'proCodQuaAval'
    end
    object ADOPreliminartaxaaberturacredito: TFloatField
      FieldName = 'taxaaberturacredito'
    end
    object ADOPreliminarProDomicilioBancario: TStringField
      FieldName = 'ProDomicilioBancario'
      Size = 3
    end
    object ADOPreliminarPROTXTEO: TFloatField
      FieldName = 'PROTXTEO'
    end
    object ADOPreliminarPROVRTEO: TFloatField
      FieldName = 'PROVRTEO'
    end
    object ADOPreliminarTELA: TStringField
      FieldName = 'TELA'
    end
  end
  object ADOBOR: TADODataSet
    Connection = DMConecta.ADOCapitalDeGiro
    CursorType = ctStatic
    AfterOpen = ADOBORAfterOpen
    BeforeClose = ADOBORBeforeClose
    AfterInsert = ADOBORAfterInsert
    AfterEdit = ADOBORAfterEdit
    BeforePost = ADOBORBeforePost
    CommandText = 
      'SELECT TOP 1 * , '#39#39' AS TELA  FROM FACTBBOR with (nolock) '#13#10'WHERE' +
      ' (BORBORD = :PROP)'#13#10'AND (BORCLAS = :CLAS)'
    CommandTimeout = 999999
    EnableBCD = False
    Parameters = <
      item
        Name = 'PROP'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'CLAS'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 2
        Value = Null
      end>
    Left = 160
    Top = 127
    object ADOBORBORCLAS: TStringField
      FieldName = 'BORCLAS'
      Size = 2
    end
    object ADOBORBORBORD: TIntegerField
      FieldName = 'BORBORD'
    end
    object ADOBORBORITEM: TIntegerField
      FieldName = 'BORITEM'
    end
    object ADOBORBORCLIE: TIntegerField
      FieldName = 'BORCLIE'
    end
    object ADOBORBOROPER: TIntegerField
      FieldName = 'BOROPER'
    end
    object ADOBORBORDTOP: TDateTimeField
      FieldName = 'BORDTOP'
      EditMask = '!99/99/9999;1;_'
    end
    object ADOBORBORTXME: TFloatField
      FieldName = 'BORTXME'
      DisplayFormat = '#,##0.00'
    end
    object ADOBORBORTXEF: TFloatField
      FieldName = 'BORTXEF'
      DisplayFormat = '#,##0.0000000'
    end
    object ADOBORBORTXPE: TFloatField
      FieldName = 'BORTXPE'
      DisplayFormat = '#,##0.0000000'
    end
    object ADOBORBORTPCA: TStringField
      FieldName = 'BORTPCA'
      Size = 1
    end
    object ADOBORBORVRDC: TFloatField
      FieldName = 'BORVRDC'
      DisplayFormat = '#,##0.00'
    end
    object ADOBORBORCCOB: TFloatField
      FieldName = 'BORCCOB'
      DisplayFormat = '#,##0.00'
      currency = True
    end
    object ADOBORBORORDE: TIntegerField
      FieldName = 'BORORDE'
    end
    object ADOBORBORPMED: TFloatField
      FieldName = 'BORPMED'
      DisplayFormat = '#,##0.0000000'
    end
    object ADOBORBORVRBO: TFloatField
      FieldName = 'BORVRBO'
      DisplayFormat = '#,##0.00'
      currency = True
    end
    object ADOBORBORFOME: TFloatField
      FieldName = 'BORFOME'
      DisplayFormat = '#,##0.00'
      currency = True
    end
    object ADOBORBORLIQU: TFloatField
      FieldName = 'BORLIQU'
      DisplayFormat = '#,##0.00'
    end
    object ADOBORBORTXAD: TFloatField
      FieldName = 'BORTXAD'
      DisplayFormat = '##0.00'
    end
    object ADOBORBORVRAD: TFloatField
      FieldName = 'BORVRAD'
      DisplayFormat = '#,##0.00'
    end
    object ADOBORBORTXPI: TFloatField
      FieldName = 'BORTXPI'
      DisplayFormat = '##0.00'
    end
    object ADOBORBORVRPI: TFloatField
      FieldName = 'BORVRPI'
      DisplayFormat = '#,##0.00'
    end
    object ADOBORBORTXIO: TFloatField
      FieldName = 'BORTXIO'
      DisplayFormat = '##0.0000'
    end
    object ADOBORBORVRIO: TFloatField
      FieldName = 'BORVRIO'
      DisplayFormat = '#,##0.00'
    end
    object ADOBORBORTXFI: TFloatField
      FieldName = 'BORTXFI'
      DisplayFormat = '##0.00'
    end
    object ADOBORBORVRFI: TFloatField
      FieldName = 'BORVRFI'
      DisplayFormat = '#,##0.00'
    end
    object ADOBORBORTXIS: TFloatField
      FieldName = 'BORTXIS'
      DisplayFormat = '##0.00'
    end
    object ADOBORBORVRIS: TFloatField
      FieldName = 'BORVRIS'
      DisplayFormat = '#,##0.00'
    end
    object ADOBORBORTXIP: TFloatField
      FieldName = 'BORTXIP'
      DisplayFormat = '##0.00'
    end
    object ADOBORBORVRIP: TFloatField
      FieldName = 'BORVRIP'
      DisplayFormat = '#,##0.00'
    end
    object ADOBORBORVRINFOR: TFloatField
      FieldName = 'BORVRINFOR'
      DisplayFormat = '#,##0.00'
      currency = True
    end
    object ADOBORBORFPA: TIntegerField
      FieldName = 'BORFPA'
    end
    object ADOBORBORCTBZ: TStringField
      FieldName = 'BORCTBZ'
      Size = 1
    end
    object ADOBORBORNF: TBooleanField
      FieldName = 'BORNF'
    end
    object ADOBORBORCBMG: TIntegerField
      FieldName = 'BORCBMG'
    end
    object ADOBORBORFLOA: TStringField
      FieldName = 'BORFLOA'
      Size = 2
    end
    object ADOBORBORPZEF: TFloatField
      FieldName = 'BORPZEF'
      DisplayFormat = '##0.0000000'
    end
    object ADOBORBORTXTR: TFloatField
      FieldName = 'BORTXTR'
      DisplayFormat = '##0.00'
    end
    object ADOBORBORVRTR: TFloatField
      FieldName = 'BORVRTR'
      DisplayFormat = '#,##0.00'
    end
    object ADOBORBORTXIOFC: TFloatField
      FieldName = 'BORTXIOFC'
      DisplayFormat = '##0.0000'
    end
    object ADOBORBORVRIOFC: TFloatField
      FieldName = 'BORVRIOFC'
      DisplayFormat = '#,##0.00'
    end
    object ADOBORBORCMAE: TFloatField
      FieldName = 'BORCMAE'
    end
    object ADOBORBORCONT: TFloatField
      FieldName = 'BORCONT'
    end
    object ADOBORBORAGE: TIntegerField
      FieldName = 'BORAGE'
    end
    object ADOBORBORTXCA: TFloatField
      FieldName = 'BORTXCA'
      DisplayFormat = '#,##0.00'
    end
    object ADOBORBORTXRE: TFloatField
      FieldName = 'BORTXRE'
      DisplayFormat = '#,##0.00'
    end
    object ADOBORBORDESP: TFloatField
      FieldName = 'BORDESP'
      DisplayFormat = '#,##0.00'
    end
    object ADOBORBORTXSA: TFloatField
      FieldName = 'BORTXSA'
      DisplayFormat = '##0.00'
    end
    object ADOBORBORVRSA: TFloatField
      FieldName = 'BORVRSA'
      DisplayFormat = '#,##0.00'
    end
    object ADOBORBORUSUARIO: TIntegerField
      FieldName = 'BORUSUARIO'
    end
    object ADOBORBORTXRISCO: TFloatField
      FieldName = 'BORTXRISCO'
      DisplayFormat = '##0.00'
    end
    object ADOBORBORVRRISCO: TFloatField
      FieldName = 'BORVRRISCO'
      DisplayFormat = '#,##0.00'
    end
    object ADOBORBORTXANTER: TFloatField
      FieldName = 'BORTXANTER'
    end
    object ADOBORBORDTANTER: TDateTimeField
      FieldName = 'BORDTANTER'
    end
    object ADOBORBORREPACTU: TStringField
      FieldName = 'BORREPACTU'
      Size = 1
    end
    object ADOBORBORTPCONTR: TStringField
      FieldName = 'BORTPCONTR'
      Size = 1
    end
    object ADOBORBORAVASACA: TStringField
      FieldName = 'BORAVASACA'
      Size = 1
    end
    object ADOBORBORGARSAC: TStringField
      FieldName = 'BORGARSAC'
      Size = 1
    end
    object ADOBORBORDOCUMEN: TIntegerField
      FieldName = 'BORDOCUMEN'
    end
    object ADOBORTPDOCUMENTO: TStringField
      FieldKind = fkLookup
      FieldName = 'TPDOCUMENTO'
      LookupDataSet = ADOBuscaTPDocumento
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'TPDOCUMENTO'
      KeyFields = 'BORDOCUMEN'
      Lookup = True
    end
    object ADOBORBORTXCAC: TFloatField
      FieldName = 'BORTXCAC'
      DisplayFormat = '##0.00'
    end
    object ADOBORBORVRCAC: TFloatField
      FieldName = 'BORVRCAC'
      DisplayFormat = '#,##0.00'
    end
    object ADOBORBorTaxaAdministrativa: TFloatField
      FieldName = 'BorTaxaAdministrativa'
      DisplayFormat = '###.00'
    end
    object ADOBORCodigoTabelaTarifa: TIntegerField
      FieldName = 'CodigoTabelaTarifa'
    end
    object ADOBORBORUSUARIOUpdate: TIntegerField
      FieldName = 'BORUSUARIOUpdate'
    end
    object ADOBORBorTaxaTMF: TFloatField
      FieldName = 'BorTaxaTMF'
      DisplayFormat = '##0.00'
    end
    object ADOBORBorValorTMF: TFloatField
      FieldName = 'BorValorTMF'
      DisplayFormat = '#,##0.00'
    end
    object ADOBORBortarifadigitacao: TFloatField
      FieldName = 'Bortarifadigitacao'
    end
    object ADOBORBORCOBRATARIFADIGITACAO: TStringField
      FieldName = 'BORCOBRATARIFADIGITACAO'
      FixedChar = True
      Size = 3
    end
    object ADOBORCodigoTipoCarteira: TIntegerField
      FieldName = 'CodigoTipoCarteira'
    end
    object ADOBORTaxaNominalPosFixada: TFloatField
      FieldName = 'TaxaNominalPosFixada'
    end
    object ADOBORBorTipoPagtoIOF: TStringField
      FieldName = 'BorTipoPagtoIOF'
      FixedChar = True
      Size = 1
    end
    object ADOBORBorTipoPagtoTac: TStringField
      FieldName = 'BorTipoPagtoTac'
      Size = 1
    end
    object ADOBORBorValorTacs: TFloatField
      FieldName = 'BorValorTacs'
    end
    object ADOBORCodigoRegiao: TIntegerField
      FieldName = 'CodigoRegiao'
    end
    object ADOBORBorTravaCemig: TStringField
      FieldName = 'BorTravaCemig'
      Size = 3
    end
    object ADOBORTaxaAberturaCredito: TFloatField
      FieldName = 'TaxaAberturaCredito'
    end
    object ADOBORTELA: TStringField
      FieldName = 'TELA'
    end
  end
  object ADOEmpresa: TADODataSet
    Connection = DMConecta.ADOCapitalDeGiro
    CommandText = 'select * from factbpar with (nolock) where parcod is null'
    CommandTimeout = 999999
    Parameters = <>
    Left = 264
    Top = 160
  end
  object ADOSen: TADODataSet
    Connection = DMConecta.ADOCapitalDeGiro
    CursorType = ctStatic
    CommandText = 'Select * from sistbsen with (nolock) where senusu is not null'
    Parameters = <>
    Left = 378
    Top = 67
    object ADOSenSENUSU: TIntegerField
      FieldName = 'SENUSU'
    end
    object ADOSenSENNOM: TStringField
      FieldName = 'SENNOM'
      Size = 37
    end
    object ADOSenSENSEN: TStringField
      FieldName = 'SENSEN'
      Size = 5
    end
    object ADOSenSENNIV: TIntegerField
      FieldName = 'SENNIV'
    end
    object ADOSenSENATI: TBooleanField
      FieldName = 'SENATI'
    end
    object ADOSenSENTER: TStringField
      FieldName = 'SENTER'
      Size = 6
    end
    object ADOSenSENAPELIDO: TStringField
      FieldName = 'SENAPELIDO'
    end
    object ADOSenSENTPUSU: TStringField
      FieldName = 'SENTPUSU'
      Size = 2
    end
    object ADOSenSenRegiao: TIntegerField
      FieldName = 'SenRegiao'
    end
    object ADOSenSENSTATUS: TStringField
      FieldName = 'SENSTATUS'
      Size = 7
    end
    object ADOSenSENENTRADA: TDateTimeField
      FieldName = 'SENENTRADA'
    end
    object ADOSenSENSAIDA: TDateTimeField
      FieldName = 'SENSAIDA'
    end
    object ADOSenCodigoGrupo: TIntegerField
      FieldName = 'CodigoGrupo'
    end
    object ADOSenSENNOVA: TStringField
      FieldName = 'SENNOVA'
      Size = 10
    end
  end
  object ADOFACCESBO: TADODataSet
    Connection = DMConecta.ADOCapitalDeGiro
    CursorType = ctStatic
    CommandText = 
      'SELECT TOP 1  [CESBORDERO], [CESBORDATA], [CESBORBCO], [CESBORVR' +
      'IN], [CESBORCART], [CESBORTAXA]'#13#10',[CESBORFLOA], [CESBORCAPT], [C' +
      'ESBORARQU], [CESBORFINA], [CESBORPRIN], [CESPRESEN]'#13#10',[CESPRIVEN' +
      'C], [CESULTVENC], [CESPMEDIO], [CESBORITEM]'#13#10', [CESTAXASOBREVALO' +
      'RFACE] , [CESCongelarValorPresente], [CESCONTRATOBANCARIO], [CES' +
      'CNPJCESSIONARIO]'#13#10' FROM FACCESBO with (nolock) '#13#10'WHERE (CESBORDE' +
      'RO = :BORDERO)'#13#10
    CommandTimeout = 9999
    EnableBCD = False
    Parameters = <
      item
        Name = 'BORDERO'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    Left = 264
    Top = 222
    object ADOFACCESBOCESBORDERO: TIntegerField
      FieldName = 'CESBORDERO'
    end
    object ADOFACCESBOCESBORDATA: TDateTimeField
      FieldName = 'CESBORDATA'
      EditMask = '!99/99/9999;1;_'
    end
    object ADOFACCESBOCESBORBCO: TIntegerField
      FieldName = 'CESBORBCO'
    end
    object ADOFACCESBOCESBORVRIN: TFloatField
      FieldName = 'CESBORVRIN'
      DisplayFormat = '#,##0.00'
    end
    object ADOFACCESBOCESBORCART: TIntegerField
      FieldName = 'CESBORCART'
    end
    object ADOFACCESBOCESBORTAXA: TFloatField
      FieldName = 'CESBORTAXA'
      DisplayFormat = '##0.0000000'
    end
    object ADOFACCESBOCESBORFLOA: TIntegerField
      FieldName = 'CESBORFLOA'
    end
    object ADOFACCESBOCESBORCAPT: TFloatField
      FieldName = 'CESBORCAPT'
      DisplayFormat = '#,##0.00'
    end
    object ADOFACCESBOCESBORARQU: TStringField
      FieldName = 'CESBORARQU'
      Size = 30
    end
    object ADOFACCESBOCESBORFINA: TFloatField
      FieldName = 'CESBORFINA'
      DisplayFormat = '#,##0.00'
    end
    object ADOFACCESBOCESBORPRIN: TFloatField
      FieldName = 'CESBORPRIN'
      DisplayFormat = '#,##0.00'
    end
    object ADOFACCESBOCESPRESEN: TFloatField
      FieldName = 'CESPRESEN'
      DisplayFormat = '#,##0.00'
    end
    object ADOFACCESBOCESPRIVENC: TDateTimeField
      FieldName = 'CESPRIVENC'
      EditMask = '!99/99/9999;1;_'
    end
    object ADOFACCESBOCESULTVENC: TDateTimeField
      FieldName = 'CESULTVENC'
      EditMask = '!99/99/9999;1;_'
    end
    object ADOFACCESBOCESPMEDIO: TFloatField
      FieldName = 'CESPMEDIO'
      DisplayFormat = '#,##0.0000000'
    end
    object ADOFACCESBOCESBORITEM: TIntegerField
      FieldName = 'CESBORITEM'
    end
    object ADOFACCESBOCESTAXASOBREVALORFACE: TFloatField
      FieldName = 'CESTAXASOBREVALORFACE'
      DisplayFormat = '##0.00'
    end
    object ADOFACCESBOCESCongelarValorPresente: TStringField
      FieldName = 'CESCongelarValorPresente'
      FixedChar = True
      Size = 3
    end
    object ADOFACCESBOCESCNPJCESSIONARIO: TStringField
      FieldName = 'CESCNPJCESSIONARIO'
      Size = 14
    end
    object ADOFACCESBOCESCONTRATOBANCARIO: TStringField
      FieldName = 'CESCONTRATOBANCARIO'
    end
  end
  object ADOFACCESIT: TADODataSet
    Connection = DMConecta.ADOCapitalDeGiro
    CursorType = ctStatic
    CommandText = 
      'SELECT [CESBORDERO], [CESITEM], [CESDUPCLAS], [CESDUPBORD], [CES' +
      'DUPORDE]'#13#10',[CESITEVRPR], [CESPRAZO], [CESPRAZOEF], [CESVRVENDA] ' +
      #13#10'FROM FACCESIT with (nolock) '#13#10'WHERE (CESBORDERO = :BORDERO)'#13#10'A' +
      'ND (CESITEM = :CESITEM)'#13#10'order by CESITEM'
    CommandTimeout = 9999
    EnableBCD = False
    Parameters = <
      item
        Name = 'BORDERO'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'CESITEM'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    Left = 378
    Top = 229
    object ADOFACCESITCESBORDERO: TIntegerField
      FieldName = 'CESBORDERO'
    end
    object ADOFACCESITCESITEM: TIntegerField
      FieldName = 'CESITEM'
    end
    object ADOFACCESITCESDUPCLAS: TStringField
      FieldName = 'CESDUPCLAS'
      Size = 2
    end
    object ADOFACCESITCESDUPBORD: TIntegerField
      FieldName = 'CESDUPBORD'
    end
    object ADOFACCESITCESDUPORDE: TIntegerField
      FieldName = 'CESDUPORDE'
    end
    object ADOFACCESITCESITEVRPR: TFloatField
      FieldName = 'CESITEVRPR'
    end
    object ADOFACCESITCESPRAZO: TIntegerField
      FieldName = 'CESPRAZO'
    end
    object ADOFACCESITCESPRAZOEF: TIntegerField
      FieldName = 'CESPRAZOEF'
    end
    object ADOFACCESITCESVRVENDA: TFloatField
      FieldName = 'CESVRVENDA'
    end
  end
  object ADOExecQuery: TADODataSet
    Connection = DMConecta.ADOCapitalDeGiro
    LockType = ltReadOnly
    CommandTimeout = 999
    EnableBCD = False
    Parameters = <>
    Left = 120
    Top = 16
  end
  object ADOexecutainterprocessamento: TADOQuery
    AutoCalcFields = False
    Connection = DMConecta.Adoprocessamento
    CursorType = ctStatic
    CommandTimeout = 999
    EnableBCD = False
    Parameters = <>
    Left = 688
    Top = 204
  end
  object AdoCl01: TADODataSet
    Connection = DMConecta.Adosfinance_cd
    CursorType = ctStatic
    CommandText = 
      'select CL01_NR_CLIENT, CL01_TP_PESSOA, CL01_NR_CPFCNPJ, CL01_NR_' +
      'CLIAGE, CL01_NM_CLIENT, CL01_TP_CATEG, CL01_DT_INCSIS, CL01_NR_I' +
      'NST'#13#10'from CL01'#13#10'where CL01_NR_INST = 1007'#13#10'order by CL01_NR_CPFC' +
      'NPJ'#13#10
    CommandTimeout = 99999
    Parameters = <>
    Left = 684
    Top = 81
    object AdoCl01CL01_NR_CLIENT: TBCDField
      FieldName = 'CL01_NR_CLIENT'
      Precision = 11
      Size = 0
    end
    object AdoCl01CL01_TP_PESSOA: TStringField
      FieldName = 'CL01_TP_PESSOA'
      Size = 2
    end
    object AdoCl01CL01_NR_CPFCNPJ: TStringField
      FieldName = 'CL01_NR_CPFCNPJ'
      Size = 14
    end
    object AdoCl01CL01_NM_CLIENT: TStringField
      FieldName = 'CL01_NM_CLIENT'
      Size = 60
    end
    object AdoCl01CL01_TP_CATEG: TStringField
      FieldName = 'CL01_TP_CATEG'
      FixedChar = True
      Size = 1
    end
    object AdoCl01CL01_DT_INCSIS: TDateTimeField
      FieldName = 'CL01_DT_INCSIS'
    end
    object AdoCl01CL01_NR_CLIAGE: TIntegerField
      FieldName = 'CL01_NR_CLIAGE'
    end
    object AdoCl01CL01_NR_INST: TIntegerField
      FieldName = 'CL01_NR_INST'
    end
  end
  object ADOBuscaAtividade: TADOQuery
    Connection = DMConecta.ADOCapitalDeGiro
    CursorType = ctStatic
    CommandTimeout = 999999
    EnableBCD = False
    Parameters = <>
    SQL.Strings = (
      
        'SELECT CodigoAtividade  CODIGO, Nome AS ATIVIDADE, codigogrupo a' +
        's GRUPO '
      'FROM kg_AtividadeEconomica with (nolock) '
      'WHERE (CodigoAtividade is not null) '
      'ORDER BY Atividade')
    Left = 160
    Top = 276
    object ADOBuscaAtividadeCODIGO: TIntegerField
      FieldName = 'CODIGO'
      ReadOnly = True
    end
    object ADOBuscaAtividadeATIVIDADE: TStringField
      FieldName = 'ATIVIDADE'
      Size = 30
    end
    object ADOBuscaAtividadeGRUPO: TIntegerField
      FieldName = 'GRUPO'
    end
  end
  object ADOExecutaUtil: TADOQuery
    AutoCalcFields = False
    Connection = DMConecta.ADOCapitalDeGiro
    CursorType = ctStatic
    CommandTimeout = 999
    EnableBCD = False
    Parameters = <>
    Left = 56
    Top = 436
  end
  object ADOUtil: TADOCommand
    Connection = DMConecta.ADOCapitalDeGiro
    Parameters = <>
    Left = 176
    Top = 440
  end
  object AdoPesquisaLancamentoCC: TADODataSet
    Connection = DMConecta.ADOCapitalDeGiro
    CommandTimeout = 99999999
    EnableBCD = False
    Parameters = <>
    Left = 296
    Top = 430
  end
  object ADOsaldolancamento: TADODataSet
    Connection = DMConecta.ADOCapitalDeGiro
    CommandTimeout = 99999999
    EnableBCD = False
    Parameters = <>
    Left = 440
    Top = 430
  end
  object PesquisaCEP: TADODataSet
    Connection = DMConecta.ADOCapitalDeGiro
    CursorType = ctStatic
    CommandText = 
      'DECLARE @CEP VARCHAR(8)'#13#10'SET @CEP = :CEP'#13#10#13#10'SELECT'#13#10#9'LOG_LOCALID' +
      'ADE.MUN_NU,'#13#10#9'LOG_LOGRADOURO.UFE_SG,'#13#10#9'LOG_LOCALIDADE.LOC_NO,'#13#10#9 +
      'LOG_BAIRRO.BAI_NO,'#13#10#9'LOG_LOGRADOURO.TLO_TX,'#13#10'  LOG_LOGRADOURO.LO' +
      'G_NO,'#13#10#9'LOG_LOGRADOURO.CEP,'#13#10#9'LOG_LOGRADOURO.LOG_COMPLEMENTO,'#13#10#9 +
      #39#39' AS NOME'#13#10'FROM'#13#10#9'[INTERCLU006SQL].[INTERCADASTRO].dbo.LOG_LOGR' +
      'ADOURO WITH(NOLOCK) JOIN'#13#10#9'[INTERCLU006SQL].[INTERCADASTRO].dbo.' +
      'LOG_LOCALIDADE WITH(NOLOCK) ON (LOG_LOGRADOURO.LOC_NU= LOG_LOCAL' +
      'IDADE.LOC_NU) JOIN'#13#10#9'[INTERCLU006SQL].[INTERCADASTRO].dbo.LOG_BA' +
      'IRRO WITH(NOLOCK) ON (LOG_LOGRADOURO.BAI_NU_INI=LOG_BAIRRO.BAI_N' +
      'U)'#13#10'WHERE'#13#10#9'LOG_LOGRADOURO.LOG_STA_TLO = '#39'S'#39' '#13#10#9'AND LOG_LOGRADOU' +
      'RO.CEP = @CEP'#13#10#13#10'UNION'#13#10#13#10'SELECT'#13#10#9'LOG_LOCALIDADE.MUN_NU,'#13#10#9'LOG_' +
      'LOGRADOURO.UFE_SG,'#13#10#9'LOG_LOCALIDADE.LOC_NO,'#13#10#9'LOG_BAIRRO.BAI_NO,' +
      #13#10'  '#39#39' AS TLO_TX,'#13#10#9'LOG_LOGRADOURO.LOG_NO,'#13#10#9'LOG_LOGRADOURO.CEP,' +
      #13#10#9'LOG_LOGRADOURO.LOG_COMPLEMENTO,'#13#10#9#39#39' AS NOME'#13#10'FROM'#13#10#9'[INTERCL' +
      'U006SQL].[INTERCADASTRO].dbo.LOG_LOGRADOURO WITH(NOLOCK) JOIN'#13#10#9 +
      '[INTERCLU006SQL].[INTERCADASTRO].dbo.LOG_LOCALIDADE WITH(NOLOCK)' +
      ' ON (LOG_LOGRADOURO.LOC_NU= LOG_LOCALIDADE.LOC_NU) JOIN'#13#10#9'[INTER' +
      'CLU006SQL].[INTERCADASTRO].dbo.LOG_BAIRRO WITH(NOLOCK) ON (LOG_L' +
      'OGRADOURO.BAI_NU_INI=LOG_BAIRRO.BAI_NU)'#13#10'WHERE'#13#10#9'LOG_LOGRADOURO.' +
      'LOG_STA_TLO ='#39'N'#39' '#13#10#9'AND LOG_LOGRADOURO.CEP = @CEP'#13#10#13#10'UNION'#13#10#13#10'SE' +
      'LECT'#13#10#9'LOG_LOCALIDADE.MUN_NU,'#13#10#9'LOG_LOCALIDADE.UFE_SG,'#13#10#9'LOG_LOC' +
      'ALIDADE.LOC_NO,'#13#10#9#39#39' AS BAI_NO,'#13#10'  '#39#39' AS TLO_TX,'#13#10#9#39#39' AS LOG_NO,' +
      #13#10#9'LOG_LOCALIDADE.CEP,'#13#10#9#39#39' AS LOG_COMPLEMENTO,'#13#10#9#39#39' AS NOME'#13#10'FR' +
      'OM'#13#10#9'[INTERCLU006SQL].[INTERCADASTRO].dbo.LOG_LOCALIDADE WITH(NO' +
      'LOCK)'#13#10'WHERE'#13#10#9'LOG_LOCALIDADE.CEP IS NOT NULL '#13#10#9'AND LOG_LOCALID' +
      'ADE.CEP = @CEP'#13#10#13#10'UNION'#13#10#13#10'SELECT'#13#10#9'LOG_LOCALIDADE.MUN_NU,'#13#10#9'LOG' +
      '_CPC.UFE_SG,'#13#10#9'LOG_LOCALIDADE.LOC_NO,'#13#10#9#39#39' AS BAI_NO,'#13#10#9'SUBSTRIN' +
      'G(LOG_CPC.CPC_ENDERECO, 1, CHARINDEX('#39' '#39', LOG_CPC.CPC_ENDERECO +' +
      ' '#39' '#39')) AS TLO_TX,'#13#10#9'SUBSTRING(LOG_CPC.CPC_ENDERECO, CHARINDEX('#39' ' +
      #39', LOG_CPC.CPC_ENDERECO) + 1, LEN(LOG_CPC.CPC_ENDERECO)) AS LOG_' +
      'NO, '#13#10#9'LOG_CPC.CEP,'#13#10#9#39#39' AS LOG_COMPLEMENTO,'#13#10#9'CPC_NO AS NOME'#13#10'F' +
      'ROM'#13#10#9'[INTERCLU006SQL].[INTERCADASTRO].dbo.LOG_CPC WITH(NOLOCK) ' +
      'JOIN'#13#10#9'[INTERCLU006SQL].[INTERCADASTRO].dbo.LOG_LOCALIDADE WITH(' +
      'NOLOCK) ON (LOG_CPC.LOC_NU=LOG_LOCALIDADE.LOC_NU)'#13#10#13#10'WHERE'#13#10#9'LOG' +
      '_CPC.CEP = @CEP'#13#10#13#10'UNION'#13#10#13#10'SELECT'#13#10#9'LOG_LOCALIDADE.MUN_NU,'#13#10#9'LO' +
      'G_GRANDE_USUARIO.UFE_SG,'#13#10#9'LOG_LOCALIDADE.LOC_NO,'#13#10#9'LOG_BAIRRO.B' +
      'AI_NO AS BAI_NO,'#13#10#9'SUBSTRING(LOG_GRANDE_USUARIO.GRU_ENDERECO, 1,' +
      ' CHARINDEX('#39' '#39', LOG_GRANDE_USUARIO.GRU_ENDERECO + '#39' '#39')) AS TLO_T' +
      'X,'#13#10#9'SUBSTRING(LOG_GRANDE_USUARIO.GRU_ENDERECO, CHARINDEX('#39' '#39', L' +
      'OG_GRANDE_USUARIO.GRU_ENDERECO) + 1, LEN(LOG_GRANDE_USUARIO.GRU_' +
      'ENDERECO)) AS LOG_NO, '#13#10#9'LOG_GRANDE_USUARIO.CEP,'#13#10#9#39#39' AS LOG_COM' +
      'PLEMENTO,'#13#10#9'GRU_NO AS NOME'#13#10'FROM'#13#10#9'[INTERCLU006SQL].[INTERCADAST' +
      'RO].dbo.LOG_GRANDE_USUARIO  WITH(NOLOCK) JOIN'#13#10#9'[INTERCLU006SQL]' +
      '.[INTERCADASTRO].dbo.LOG_LOCALIDADE  WITH(NOLOCK) ON (LOG_GRANDE' +
      '_USUARIO.LOC_NU=LOG_LOCALIDADE.LOC_NU) JOIN'#13#10#9'[INTERCLU006SQL].[' +
      'INTERCADASTRO].dbo.LOG_BAIRRO  WITH(NOLOCK) ON (LOG_GRANDE_USUAR' +
      'IO.BAI_NU = LOG_BAIRRO.BAI_NU)'#13#10'WHERE'#13#10#9'LOG_GRANDE_USUARIO.CEP =' +
      ' @CEP '#13#10#13#10'UNION'#13#10#13#10'SELECT'#13#10#9'LOG_LOCALIDADE.MUN_NU,'#13#10#9'LOG_UNID_OP' +
      'ER.UFE_SG,'#13#10#9'LOG_LOCALIDADE.LOC_NO,'#13#10#9'LOG_BAIRRO.BAI_NO AS BAI_N' +
      'O,'#13#10#9'SUBSTRING(LOG_UNID_OPER.UOP_ENDERECO, 1, CHARINDEX('#39' '#39', LOG' +
      '_UNID_OPER.UOP_ENDERECO + '#39' '#39')) AS TLO_TX,'#13#10#9'SUBSTRING(LOG_UNID_' +
      'OPER.UOP_ENDERECO, CHARINDEX('#39' '#39', LOG_UNID_OPER.UOP_ENDERECO) + ' +
      '1, LEN(LOG_UNID_OPER.UOP_ENDERECO)) AS LOG_NO,'#13#10#9'LOG_UNID_OPER.C' +
      'EP,'#13#10#9#39#39' AS LOG_COMPLEMENTO,'#13#10#9'UOP_NO AS NOME'#13#10'FROM'#13#10#9'[INTERCLU0' +
      '06SQL].[INTERCADASTRO].dbo.LOG_UNID_OPER  WITH(NOLOCK) JOIN'#13#10#9'[I' +
      'NTERCLU006SQL].[INTERCADASTRO].dbo.LOG_LOCALIDADE WITH(NOLOCK) O' +
      'N (LOG_UNID_OPER.LOC_NU = LOG_LOCALIDADE.LOC_NU) JOIN'#13#10'         ' +
      '       [INTERCLU006SQL].[INTERCADASTRO].dbo.LOG_BAIRRO WITH(NOLO' +
      'CK) ON (LOG_UNID_OPER.BAI_NU = LOG_BAIRRO.BAI_NU)'#13#10'WHERE'#13#10#9'LOG_U' +
      'NID_OPER.CEP = @CEP'#13#10#13#10
    Parameters = <
      item
        Name = 'CEP'
        DataType = ftString
        Size = -1
        Value = Null
      end>
    Left = 520
    Top = 440
    object PesquisaCEPMUN_NU: TStringField
      FieldName = 'MUN_NU'
      ReadOnly = True
      Size = 7
    end
    object PesquisaCEPUFE_SG: TStringField
      FieldName = 'UFE_SG'
      ReadOnly = True
      Size = 2
    end
    object PesquisaCEPLOC_NO: TStringField
      FieldName = 'LOC_NO'
      ReadOnly = True
      Size = 72
    end
    object PesquisaCEPBAI_NO: TStringField
      FieldName = 'BAI_NO'
      ReadOnly = True
      Size = 72
    end
    object PesquisaCEPTLO_TX: TStringField
      FieldName = 'TLO_TX'
      ReadOnly = True
      Size = 100
    end
    object PesquisaCEPLOG_NO: TStringField
      FieldName = 'LOG_NO'
      ReadOnly = True
      Size = 100
    end
    object PesquisaCEPCEP: TStringField
      FieldName = 'CEP'
      ReadOnly = True
      Size = 8
    end
    object PesquisaCEPLOG_COMPLEMENTO: TStringField
      FieldName = 'LOG_COMPLEMENTO'
      ReadOnly = True
      Size = 100
    end
    object PesquisaCEPNOME: TStringField
      FieldName = 'NOME'
      ReadOnly = True
      Size = 100
    end
  end
  object AchaCEP: TADODataSet
    Connection = DMConecta.ADOCapitalDeGiro
    CursorType = ctStatic
    CommandText = 
      'SELECT'#13#10#9'LOG_LOCALIDADE.MUN_NU COD_MUNICIPIO,'#13#10#9'LOG_LOGRADOURO.U' +
      'FE_SG ESTADO,'#13#10#9'LOG_LOCALIDADE.LOC_NO CIDADE,'#13#10#9'LOG_BAIRRO.BAI_N' +
      'O BAIRRO,'#13#10#9'LOG_LOGRADOURO.TLO_TX+'#39' '#39'+LOG_LOGRADOURO.LOG_NO LOGR' +
      'ADOURO,'#13#10#9'LOG_LOGRADOURO.CEP,'#13#10#9'LOG_LOGRADOURO.LOG_COMPLEMENTO C' +
      'OMPLEMENTO'#13#10'FROM'#13#10#9'[INTERCLU006SQL].[INTERCADASTRO].dbo.LOG_LOGR' +
      'ADOURO WITH(NOLOCK) JOIN'#13#10#9'[INTERCLU006SQL].[INTERCADASTRO].dbo.' +
      'LOG_LOCALIDADE WITH(NOLOCK) ON (LOG_LOGRADOURO.LOC_NU= LOG_LOCAL' +
      'IDADE.LOC_NU) JOIN'#13#10#9'[INTERCLU006SQL].[INTERCADASTRO].dbo.LOG_BA' +
      'IRRO WITH(NOLOCK) ON (LOG_LOGRADOURO.BAI_NU_INI=LOG_BAIRRO.BAI_N' +
      'U)'#13#10'WHERE'#13#10#9'LOG_LOGRADOURO.LOG_STA_TLO = '#39'S'#39' '#13#10
    Parameters = <>
    Left = 576
    Top = 440
    object AchaCEPCOD_MUNICIPIO: TStringField
      FieldName = 'COD_MUNICIPIO'
      Size = 7
    end
    object AchaCEPESTADO: TStringField
      FieldName = 'ESTADO'
      Size = 2
    end
    object AchaCEPCIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 72
    end
    object AchaCEPBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 72
    end
    object AchaCEPLOGRADOURO: TStringField
      FieldName = 'LOGRADOURO'
      ReadOnly = True
      Size = 137
    end
    object AchaCEPCEP: TStringField
      FieldName = 'CEP'
      Size = 8
    end
    object AchaCEPCOMPLEMENTO: TStringField
      FieldName = 'COMPLEMENTO'
      Size = 100
    end
  end
  object SP_ControleAcessoSistema: TADOStoredProc
    Connection = DMConecta.ADOCapitalDeGiro
    ProcedureName = 'SP_ControleAcessoSistema;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@DATA_CADASTRO'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = Null
      end
      item
        Name = '@CODIGO_USUARIO'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@CODIGO_AD'
        Attributes = [paNullable]
        DataType = ftString
        Size = 20
        Value = Null
      end
      item
        Name = '@COLABORADOR'
        Attributes = [paNullable]
        DataType = ftString
        Size = 50
        Value = Null
      end
      item
        Name = '@SETOR'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@GRUPO'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@APLICACAO'
        Attributes = [paNullable]
        DataType = ftString
        Size = 50
        Value = Null
      end
      item
        Name = '@OPERACAO'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 696
    Top = 280
  end
  object SP_ControleAcessoTela: TADOStoredProc
    Connection = DMConecta.ADOCapitalDeGiro
    ProcedureName = 'SP_ControleAcessoTela;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@DATA_CADASTRO'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = Null
      end
      item
        Name = '@CODIGO_USUARIO'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@CODIGO_AD'
        Attributes = [paNullable]
        DataType = ftString
        Size = 20
        Value = Null
      end
      item
        Name = '@COLABORADOR'
        Attributes = [paNullable]
        DataType = ftString
        Size = 50
        Value = Null
      end
      item
        Name = '@SETOR'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@GRUPO'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@APLICACAO'
        Attributes = [paNullable]
        DataType = ftString
        Size = 50
        Value = Null
      end
      item
        Name = '@OPERACAO'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@COD_TELA'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@DESC_TELA'
        Attributes = [paNullable]
        DataType = ftString
        Size = 100
        Value = Null
      end>
    Left = 696
    Top = 16
  end
  object ADOSacado: TADODataSet
    Connection = DMConecta.ADOCapitalDeGiro
    CursorType = ctStatic
    BeforeClose = ADOSacadoBeforeClose
    BeforePost = ADOSacadoBeforePost
    CommandText = 
      'select clitip, clicod, clipes, clicgc, clicgcfili, clicgcdv,clin' +
      'om, clicep, cliend, clibai, clicid, cliest,clitel, clifax, clicr' +
      'e, clidtc, clilim, clidtl, DiasProtesto, EmiteCartorio,clidtf, c' +
      'licarta, cliboleta, cliemptitu, cliati, clilibsal, clihisto,clic' +
      'ontato, cliemail, CLIDDA, codclisap,fatmedsacado,CLIIES,Cliporte' +
      ',OptanteSimples,cliope,Patrimonio,CliDataUpdate,CliUsuarioUpdate' +
      ',clisetoratividade, clisexo , '#39#39' AS CODTELA from factbcli with (' +
      'nolock) where clitip = '#39'S'#39' and clicod is null'
    CommandTimeout = 99999
    Parameters = <>
    Left = 48
    Top = 224
    object ADOSacadoclitip: TStringField
      FieldName = 'clitip'
      Size = 1
    end
    object ADOSacadoclicod: TIntegerField
      FieldName = 'clicod'
      Required = True
    end
    object ADOSacadoclipes: TIntegerField
      FieldName = 'clipes'
      Required = True
    end
    object ADOSacadoclicgc: TStringField
      FieldName = 'clicgc'
      Size = 14
    end
    object ADOSacadoclicgcfili: TStringField
      FieldName = 'clicgcfili'
      Size = 4
    end
    object ADOSacadoclicgcdv: TStringField
      FieldName = 'clicgcdv'
      Size = 2
    end
    object ADOSacadoclinom: TStringField
      FieldName = 'clinom'
      Size = 37
    end
    object ADOSacadoclicep: TStringField
      FieldName = 'clicep'
      Size = 8
    end
    object ADOSacadocliend: TStringField
      FieldName = 'cliend'
      Size = 37
    end
    object ADOSacadoclibai: TStringField
      FieldName = 'clibai'
      Size = 12
    end
    object ADOSacadoclicid: TStringField
      FieldName = 'clicid'
      Size = 15
    end
    object ADOSacadocliest: TStringField
      FieldName = 'cliest'
      Size = 2
    end
    object ADOSacadoclitel: TStringField
      FieldName = 'clitel'
      Size = 10
    end
    object ADOSacadoclifax: TStringField
      FieldName = 'clifax'
      Size = 10
    end
    object ADOSacadoclicre: TStringField
      FieldName = 'clicre'
      Required = True
      Size = 1
    end
    object ADOSacadoclidtc: TDateTimeField
      FieldName = 'clidtc'
    end
    object ADOSacadoclilim: TBCDField
      FieldName = 'clilim'
      DisplayFormat = '###,###,###,##0.00'
      Precision = 15
      Size = 2
    end
    object ADOSacadoclidtl: TDateTimeField
      FieldName = 'clidtl'
    end
    object ADOSacadoclidtf: TDateTimeField
      FieldName = 'clidtf'
    end
    object ADOSacadoclicarta: TStringField
      FieldName = 'clicarta'
      Required = True
      Size = 1
    end
    object ADOSacadocliboleta: TStringField
      FieldName = 'cliboleta'
      Required = True
      Size = 1
    end
    object ADOSacadocliemptitu: TIntegerField
      FieldName = 'cliemptitu'
    end
    object ADOSacadoclihisto: TMemoField
      FieldName = 'clihisto'
      BlobType = ftMemo
    end
    object ADOSacadocliati: TIntegerField
      FieldName = 'cliati'
    end
    object ADOSacadoclilibsal: TStringField
      FieldName = 'clilibsal'
      Size = 1
    end
    object ADOSacadoclicontato: TStringField
      FieldName = 'clicontato'
      Size = 30
    end
    object ADOSacadocliemail: TStringField
      FieldName = 'cliemail'
      Size = 50
    end
    object ADOSacadoCLIDDA: TStringField
      FieldName = 'CLIDDA'
      Size = 1
    end
    object ADOSacadoDiasProtesto: TIntegerField
      FieldName = 'DiasProtesto'
    end
    object ADOSacadoEmiteCartorio: TStringField
      FieldName = 'EmiteCartorio'
      Size = 3
    end
    object ADOSacadocodclisap: TIntegerField
      FieldName = 'codclisap'
    end
    object ADOSacadofatmedsacado: TBCDField
      FieldName = 'fatmedsacado'
      DisplayFormat = '###,###,###,##0.00'
      Precision = 15
      Size = 2
    end
    object ADOSacadoCLIIES: TStringField
      FieldName = 'CLIIES'
      Size = 13
    end
    object ADOSacadoCliporte: TStringField
      FieldName = 'Cliporte'
      Size = 1
    end
    object ADOSacadoOptanteSimples: TStringField
      FieldName = 'OptanteSimples'
      Size = 1
    end
    object ADOSacadoCliDataUpdate: TDateTimeField
      FieldName = 'CliDataUpdate'
    end
    object ADOSacadoCliUsuarioUpdate: TIntegerField
      FieldName = 'CliUsuarioUpdate'
    end
    object ADOSacadocliope: TIntegerField
      FieldName = 'cliope'
    end
    object ADOSacadoPatrimonio: TBCDField
      FieldName = 'Patrimonio'
      Precision = 15
      Size = 2
    end
    object ADOSacadoclisetoratividade: TStringField
      FieldName = 'clisetoratividade'
      Size = 2
    end
    object ADOSacadoCLISEXO: TStringField
      FieldName = 'CLISEXO'
      Size = 1
    end
    object ADOSacadoCODTELA: TStringField
      AutoGenerateValue = arDefault
      DefaultExpression = #39#39
      FieldName = 'CODTELA'
      ProviderFlags = []
      Size = 4
    end
  end
  object HTTPRIOrecebimento: THTTPRIO
    HTTPWebNode.UseUTF8InHeader = True
    HTTPWebNode.InvokeOptions = [soIgnoreInvalidCerts, soAutoCheckAccessPointViaUDDI]
    HTTPWebNode.OnBeforePost = HTTPRIOrecebimentoHTTPWebNode1BeforePost
    Converter.Options = [soSendMultiRefObj, soTryAllSchema, soRootRefNodesToBody, soCacheMimeResponse, soUTF8EncodeXML]
    Left = 672
    Top = 360
  end
  object SP_CL01: TADOStoredProc
    Connection = DMConecta.Adosfinance_cd
    CommandTimeout = 99999
    ProcedureName = 'SP_CD0100006;1'
    Parameters = <
      item
        Name = '@ENT_NR_VRS'
        Attributes = [paNullable]
        DataType = ftString
        Size = 4
        Value = Null
      end
      item
        Name = '@ENT_NR_INST'
        Attributes = [paNullable]
        DataType = ftBCD
        Precision = 5
        Value = Null
      end
      item
        Name = '@ENT_NR_AGEN'
        Attributes = [paNullable]
        DataType = ftBCD
        Precision = 5
        Value = Null
      end
      item
        Name = '@ENT_ID_RESULT'
        Attributes = [paNullable]
        DataType = ftString
        Size = 1
        Value = Null
      end
      item
        Name = '@RET_NR_CLIENT'
        Attributes = [paNullable]
        DataType = ftBCD
        Direction = pdInputOutput
        Precision = 11
        Value = Null
      end
      item
        Name = '@RET_ID_STATUS'
        Attributes = [paNullable]
        DataType = ftBCD
        Direction = pdInputOutput
        Precision = 5
        Value = Null
      end
      item
        Name = '@RET_CD_ERRO'
        Attributes = [paNullable]
        DataType = ftBCD
        Direction = pdInputOutput
        Precision = 9
        Value = Null
      end
      item
        Name = '@RET_DS_ERRO'
        Attributes = [paNullable]
        DataType = ftString
        Direction = pdInputOutput
        Size = 255
        Value = Null
      end>
    Left = 684
    Top = 145
  end
  object qryADOPostgree: TADOQuery
    Connection = DMConecta.ADOCcweb
    Parameters = <>
    Left = 624
    Top = 264
  end
  object AdoCondicoes: TADOQuery
    AutoCalcFields = False
    Connection = DMConecta.ADOCapitalDeGiro
    CursorType = ctStatic
    CommandTimeout = 999999
    EnableBCD = False
    Parameters = <>
    Left = 112
    Top = 428
  end
  object ADOIDCLIENTE: TADOCommand
    CommandText = 'SP_ID_CLIENTE;1'
    CommandTimeout = 99
    CommandType = cmdStoredProc
    Connection = DMConecta.ADOCapitalDeGiro
    ExecuteOptions = [eoExecuteNoRecords]
    Parameters = <
      item
        Name = '@CNPJ'
        DataType = ftString
        Size = 14
        Value = Null
      end
      item
        Name = '@ORIGEM'
        DataType = ftString
        Size = 255
        Value = Null
      end
      item
        Name = '@ID'
        DataType = ftInteger
        Direction = pdOutput
        Value = Null
      end
      item
        Name = '@DES_RETORNO'
        DataType = ftString
        Direction = pdOutput
        Size = 255
        Value = Null
      end>
    Left = 640
    Top = 448
  end
  object ADOIDPROPOSTA: TADOCommand
    CommandText = 'SP_ID_PROPOSTA;1'
    CommandTimeout = 99
    CommandType = cmdStoredProc
    Connection = DMConecta.ADOCapitalDeGiro
    ExecuteOptions = [eoExecuteNoRecords]
    Parameters = <
      item
        Name = '@CARTEIRA'
        DataType = ftString
        Size = 2
        Value = Null
      end
      item
        Name = '@CNPJ'
        DataType = ftString
        Size = 14
        Value = Null
      end
      item
        Name = '@ORIGEM'
        DataType = ftString
        Size = 255
        Value = Null
      end
      item
        Name = '@ID'
        DataType = ftInteger
        Direction = pdOutput
        Value = Null
      end
      item
        Name = '@DES_RETORNO'
        DataType = ftInteger
        Direction = pdOutput
        Value = Null
      end>
    Left = 712
    Top = 424
  end
end
