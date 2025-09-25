unit UFrmCadEmprestimoBoletoOperacao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UFrmmaster, StdCtrls, Buttons, Mask, DBCtrls, DB, ADODB,
  ExtCtrls, Grids, DBGrids, StrUtils, ComCtrls, DateUtils, Math,
  UCalculoEmprestimo2, UTemail365, UTDVBancos;

type
  TDBNewNavigator = class(TDBNavigator);

  TFrmCadEmprestimoBoletoOperacao = class(TFrmMaster)
    ADOBoletoOperacao: TADODataSet;
    DSBoletoOperacao: TDataSource;
    ADOCarteira: TADODataSet;
    ADOCarteiraCLACOD: TStringField;
    ADOCarteiraCLANOM: TStringField;
    ADOCarteiraCLAPRO: TIntegerField;
    ADOCarteiraCLAOPE: TIntegerField;
    ADOCarteiraCLAPIS: TFloatField;
    ADOCarteiraCLAADV: TFloatField;
    ADOCarteiraCLAFIN: TFloatField;
    ADOCarteiraCLAISS: TFloatField;
    ADOCarteiraCLAIOF: TFloatField;
    ADOCarteiraCLAIPM: TFloatField;
    ADOCarteiraCLATRI: TFloatField;
    ADOCarteiraCLAFLO: TIntegerField;
    ADOCarteiraCLATPC: TIntegerField;
    ADOCarteiraCLABLO: TStringField;
    ADOCarteiraCLALIB: TStringField;
    ADOCarteiraCLAIOFBAN: TFloatField;
    ADOCarteiraCLAIOFCOMP: TFloatField;
    ADOCarteiraCLAIOFDES: TFloatField;
    ADOCarteiraCLAADM: TStringField;
    ADOCarteiraCLAMOD: TIntegerField;
    ADOCarteiraCLARISCO: TStringField;
    ADOCarteiraCLATXMIN: TFloatField;
    ADOCarteiraCLATXMAX: TFloatField;
    ADOCarteiraCLATXCAC: TFloatField;
    ADOCarteiraCLAVRMINCO: TFloatField;
    ADOCarteiraCLATXMINCO: TFloatField;
    ADOCarteiraClaTaxaAdministrativa: TFloatField;
    DSCarteira: TDataSource;
    DSCliente: TDataSource;
    ADOCliente: TADOQuery;
    ADOClienteCLINOM: TStringField;
    ADOClienteCLIOPE: TIntegerField;
    ADOClienteCLIFLO: TIntegerField;
    ADOClienteCLIISENTOIOF: TStringField;
    DSOperador: TDataSource;
    ADOOperador: TADOQuery;
    ADOOperadorCODIGO: TIntegerField;
    ADOOperadorPromotor: TStringField;
    ADOTarifaCobranca: TADODataSet;
    ADOTarifaCobrancaCodigoTabelaTarifa: TIntegerField;
    ADOTarifaCobrancaDescricao: TStringField;
    DSTarifaCobranca: TDataSource;
    ADOProduto: TADODataSet;
    DSProduto: TDataSource;
    PanelBotoes: TPanel;
    BitBtnAlterar: TBitBtn;
    BitBtnSalvar: TBitBtn;
    BitBtnCancelar: TBitBtn;
    BitBtnExcluir: TBitBtn;
    BitBtnFechar: TBitBtn;
    ADOBoletoPagamento: TADODataSet;
    DSBoletoPagamento: TDataSource;
    ADOFacbanco: TADODataSet;
    DSFacbanco: TDataSource;
    ADOBoletoPagamentoProposta: TIntegerField;
    ADOBoletoPagamentoItem: TIntegerField;
    ADOBoletoPagamentoBanco: TIntegerField;
    ADOBoletoPagamentoAgencia: TStringField;
    ADOBoletoPagamentoAgenciaDV: TStringField;
    ADOBoletoPagamentoConta: TStringField;
    ADOBoletoPagamentoContaDV: TStringField;
    ADOBoletoPagamentoValor: TFloatField;
    ADOFacbancoBancod: TIntegerField;
    ADOFacbancobandes: TStringField;
    ADOOcorrenciaPagamento: TADODataSet;
    DSOcorrenciaPagamento: TDataSource;
    ADOBoletoPagamentoNomeOcoPagto: TStringField;
    ADOBoletoOperacaoCodigoCedente: TIntegerField;
    ADOBoletoOperacaoClitip: TStringField;
    ADOBoletoOperacaoCodigoPromotor: TIntegerField;
    ADOBoletoOperacaoCodigoProduto: TIntegerField;
    ADOBoletoOperacaoTaxaMes: TFloatField;
    ADOBoletoOperacaoFloating: TStringField;
    ADOBoletoOperacaoValorOperacao: TFloatField;
    ADOBoletoOperacaoAlterarCondicaoBasica: TStringField;
    ADOBoletoOperacaoDevolverPreliminarParaAnalise: TStringField;
    ADOBoletoOperacaoValorCustoCobranca: TFloatField;
    ADOBoletoOperacaoValorDoc: TFloatField;
    ADOBoletoOperacaoValorTaxaTac: TFloatField;
    ADOBoletoOperacaoValorTac: TFloatField;
    ADOBoletoOperacaoValorTaxaSobreSaque: TFloatField;
    ADOBoletoOperacaoValorSobreSaque: TFloatField;
    ADOBoletoOperacaoValorCustoRegistro: TFloatField;
    ADOBoletoOperacaoValorCustoCadastro: TFloatField;
    ADOBoletoOperacaoValorTaxaCpmf: TFloatField;
    ADOBoletoOperacaoValorCpmf: TFloatField;
    ADOBoletoOperacaoValorTaxaIOF: TFloatField;
    ADOBoletoOperacaoValorIOF: TFloatField;
    ADOBoletoOperacaoValorCustoAdministrativo: TFloatField;
    ADOBoletoOperacaoPercentualCaucao: TFloatField;
    ADOBoletoOperacaoDebitarTituloOuContaCorrente: TStringField;
    ADOBoletoOperacaoInstrucoesDebitosExistente: TMemoField;
    ADOBoletoOperacaoOutrasInformacoes: TMemoField;
    ADOBoletoOperacaoValorTaxaRisco: TFloatField;
    ADOBoletoOperacaoValorCustoRisco: TFloatField;
    ADOBoletoOperacaoTotalTitulo: TIntegerField;
    ADOBoletoOperacaoCodigoTabelaTarifa: TIntegerField;
    ADOBoletoPagamentoCodigoPagamento: TIntegerField;
    ADOFactbcdc: TADODataSet;
    DSFactbcdc: TDataSource;
    ADOFactbcdcID_CDC: TIntegerField;                                                                   
    ADOFactbcdcCDCCLI: TIntegerField;
    ADOFactbcdcCDCCTA: TFloatField;
    ADOFactbcdcCDCCTADIG: TStringField;
    ADOFactbcdcCDCAGE: TIntegerField;
    ADOFactbcdcCDCAGEDIG: TStringField;
    ADOBoletoPagamentoNomeBanco: TStringField;
    ADOFactbcdcCDCBCO: TIntegerField;
    ADOCarteiraClaCustoEnvioDoc: TFloatField;
    ADOBoletoOperacaoDataOperacao: TDateTimeField;
    ADOBoletoOperacaoDataPromotor: TDateTimeField;
    ADOBoletoOperacaoDataLiberacaoEntrada: TDateTimeField;
    ADOBoletoOperacaoDataFinanceiroSaida: TDateTimeField;
    ADOBoletoOperacaoUsuarioLiberacao: TIntegerField;
    ADOBoletoOperacaoUsuarioFinanceiro: TIntegerField;
    ADOBoletoOperacaoUsuarioComercial: TIntegerField;
    ADOBoletoOperacaoDataFinanceiroEntrada: TDateTimeField;
    ADOBoletoOperacaoDataLiberacaoSaida: TDateTimeField;
    ADOClienteCLICOD: TIntegerField;
    ADOBoletoOperacaoTaxaEfetiva: TFloatField;
    ADOBoletoOperacaoId_Boleto: TAutoIncField;
    ADOBoletoOperacaoCarteira: TStringField;
    ADOBoletoOperacaoProposta: TIntegerField;
    ADOClienteCLICRE: TStringField;
    ADOBoletoOperacaoStatusBoletoOperacao: TStringField;
    ADOTipoCarteira: TADODataSet;
    ADOBoletoOperacaoValorTMF: TFloatField;
    ADOBoletoOperacaoValorTaxaTMF: TFloatField;
    ADOCarteiraClaTaxaTMF: TFloatField;
    ADOBoletoOperacaoTarifaDigitacao: TFloatField;
    ADOClienteCLIEMPTITU: TIntegerField;
    ADOClienteVencimentoLimiteGrupo: TDateTimeField;
    ADOConferencia: TADODataSet;
    ADOClienteCadastroSuspenso: TStringField;
    ADOBoletoPagamentoCompensacao: TStringField;
    ADOBoletoPagamentoPercentual: TFloatField;
    ADOBoletoOperacaoCodigoControleArquivo: TIntegerField;
    ADOPendenciaCadastral: TADODataSet;
    ADOClienteclicgc: TStringField;
    ADOClienteclicgcfili: TStringField;
    ADOClienteclicgcdv: TStringField;
    ADOPendenciaCadastralITP_OBS_CONSULTA: TMemoField;
    ADOBoletoOperacaoCodigoTipoCarteira: TIntegerField;
    ADOBoletoOperacaoNomeTipoCarteira: TStringField;
    ADOBoletoOperacaoTipoContrato: TStringField;
    ADOCarteiraCodigoTipoCarteira: TIntegerField;
    ADOBoletoOperacaoTaxaNominalPosFixada: TFloatField;
    ADOClientePrazoMedioContratados: TFloatField;
    ADOClienteOrigemRecursos_1: TFloatField;
    ADOClienteOrigemRecursos_3: TFloatField;
    ADOClienteOrigemRecursos_6: TFloatField;
    ADOClienteCodigoMotivoBloqueioAcumulados: TStringField;
    ADOBoletoOperacaoAmortizacao: TFloatField;
    ADOCarteiraCLAIOFANO: TFloatField;
    ADOBoletoOperacaoDataPrimeiraParcela: TDateTimeField;
    ADOBoletoOperacaoTipoPagtoTac: TStringField;
    ADOBoletoOperacaoTipoPagtoIOF: TStringField;
    ADOBoletoOperacaoDiasCarencia: TIntegerField;
    ADOBoletoOperacaoParcelasCarencia: TIntegerField;
    ADOBoletoOperacaoTipoVencimentoParcela: TStringField;
    ADOParcela: TADODataSet;
    DSParcela: TDataSource;
    ADOBoletoOperacaoValorFinanciado: TFloatField;
    ADOBoletoOperacaoValorLiquido: TFloatField;
    ADOBoletoOperacaoValorSomatorioTacs: TFloatField;
    ADOBoletoOperacaoValorCarencia: TFloatField;
    ADOProdutoCodigoProduto: TIntegerField;
    ADOProdutoDescricao: TStringField;
    ADOProdutoSiglaProduto: TStringField;
    ADOProdutoStatus: TStringField;
    ADOProdutoTipoFinanciamento: TStringField;
    ADOBoletoOperacaoJuros: TFloatField;
    ADOBoletoOperacaoValorReferencia: TFloatField;
    ADOParcelaID_BoletoParcela: TAutoIncField;
    ADOParcelaProposta: TIntegerField;
    ADOParcelaParcela: TIntegerField;
    ADOParcelaVencimento: TDateTimeField;
    ADOParcelaPrazo: TIntegerField;
    ADOParcelaPrazoEfetivo: TIntegerField;
    ADOParcelaIntervalo: TIntegerField;
    ADOParcelaFatorPrazo: TFloatField;
    ADOParcelaFatorIntervalo: TFloatField;
    ADOParcelaPrazoIOF: TIntegerField;
    ADOParcelaTipoParcela: TStringField;
    ADOBoletoOperacaoValorPMT: TFloatField;
    ADOParcelaJuros: TFloatField;
    ADOParcelaAmortizacao: TFloatField;
    BttnRelatorio: TButton;
    ADOBoletoOperacaoValorLiberado: TFloatField;
    ADOParcelaValorPMT: TFloatField;
    ADOParcelaPrazoIntermediario: TIntegerField;
    ADOParcelaValorLiquido: TFloatField;
    ADOParcelaValorTMF: TFloatField;
    ADOParcelaValorCustoCobranca: TFloatField;
    ADOParcelaValorCustoAdministrativo: TFloatField;
    ADOParcelaValorDoc: TFloatField;
    ADOBoletoOperacaoValorOutrasDespesas: TFloatField;
    ADOParcelaValorOutrasDespesas: TFloatField;
    ADOConferenciaProposta: TIntegerField;
    ADOConferenciaValorPMT: TFloatField;
    ADOConferenciaJuros: TFloatField;
    ADOConferenciaValorTMF: TFloatField;
    ADOConferenciaValorCustoCobranca: TFloatField;
    ADOConferenciaValorCustoAdministrativo: TFloatField;
    ADOConferenciaValorDoc: TFloatField;
    ADOConferenciaValorOutrasDespesas: TFloatField;
    ADOConferenciaTotalItens: TIntegerField;
    ADOBoletoOperacaoPrazo: TFloatField;
    ADOBoletoOperacaoPrazoEfetivo: TFloatField;
    ADOParcelaCodigoSacado: TIntegerField;
    ADOParcelaInscricaoSacado: TStringField;
    ADOBoletoOperacaoCodigoAgencia: TIntegerField;
    ADOClienteCLIAGE: TIntegerField;
    ADOBoletoOperacaoId_ContratoOperacao: TIntegerField;
    ADOContratoExtra: TADODataSet;
    ADOContratoExtraId_ContratoOperacao: TAutoIncField;
    ADOContratoExtraClitip: TStringField;
    ADOContratoExtraDataAprovacaoContrato: TDateTimeField;
    ADOContratoExtraDataVencimentoContrato: TDateTimeField;
    ADOContratoExtraNumeroContrato: TIntegerField;
    ADOContratoExtraValorLimite: TBCDField;
    ADOContratoExtraCodigoCenario: TIntegerField;
    ADOContratoExtraGarantia: TMemoField;
    ADOContratoExtraPrazo: TIntegerField;
    ADOContratoExtraModalidade: TStringField;
    ADOContratoExtraPrimeiroAvalista: TStringField;
    ADOContratoExtraSegundoAvalista: TStringField;
    ADOContratoExtraValorFuturo: TBCDField;
    ADOContratoExtraTaxa: TBCDField;
    ADOContratoExtraPrazoCaracteristica: TStringField;
    ADOContratoExtraSaldoDevedor: TBCDField;
    ADOBoletoOperacaoValorAjusteIOF: TFloatField;
    ADOBoletoOperacaoCongelarPMT: TStringField;
    ADOContratoExtraItem: TADODataSet;
    ADOContratoExtraItemId_ContratoOperacaoItem: TIntegerField;
    ADOContratoExtraItemId_ContratoOperacao: TIntegerField;
    ADOContratoExtraItemContrato: TStringField;
    ADOContratoExtraItemRazaoSocial: TStringField;
    ADOContratoExtraItemhistorico: TMemoField;
    DSContratoExtra: TDataSource;
    DSContratoExtraItem: TDataSource;
    ADOContratoExtraItemSelecionado: TStringField;
    ADOOperadorE_mail: TStringField;
    ADOOperadorRegiao: TIntegerField;
    ADOOperadorAdministradorRegional: TIntegerField;
    ADOOperadorTitularRegiao: TIntegerField;
    ADOOperadorEmailAdministrador: TStringField;
    ADOOperadorEmailTitularRegiao: TStringField;
    ADOClienteCenario: TIntegerField;
    ADOParcelaPercentualValorPMT: TFloatField;
    ADOParcelaVencimentoReal: TDateTimeField;
    ADOContratoExtraTitularGrupo: TIntegerField;
    Panel8: TPanel;
    PgContrlEmprestimo: TPageControl;
    TbShtBoleto: TTabSheet;
    TbShtPacelas: TTabSheet;
    TbShtVisaoGeralParcelas: TTabSheet;
    TbShtInstrucaoGeral: TTabSheet;
    TbShtInformacaesParaPagamento: TTabSheet;
    TbShtGarantia: TTabSheet;
    TbShtContratosExternos: TTabSheet;
    GroupBox74: TGroupBox;
    GroupBox2: TGroupBox;
    Carteira: TEdit;
    BitBtnCarteira: TBitBtn;
    GroupBox1: TGroupBox;
    Bordero: TEdit;
    BitBtnBoleto: TBitBtn;
    GroupBox5: TGroupBox;
    DBEditCedente: TDBEdit;
    DBEdit29: TDBEdit;
    BitBtnCedente: TBitBtn;
    ScrollBox6: TScrollBox;
    GroupBox6: TGroupBox;
    DBEditPromotor: TDBEdit;
    DBEdit30: TDBEdit;
    DBRadioGroup3: TDBRadioGroup;
    GroupBox7: TGroupBox;
    DBEditDataPrimeiraParcela: TDBEdit;
    GroupBox14: TGroupBox;
    Label1: TLabel;
    DBEditDiasCarencia: TDBEdit;
    DBEdit6: TDBEdit;
    GroupBox11: TGroupBox;
    DBEditValorReferencia: TDBEdit;
    GroupBox4: TGroupBox;
    DBEditFatorMes: TDBEdit;
    GroupBox9: TGroupBox;
    DBEditFloatProposta: TDBEdit;
    GroupBox23: TGroupBox;
    CodigoTipoCarteira: TDBEdit;
    DBLookupComboBox3: TDBLookupComboBox;
    DBRGTipoContrato: TDBRadioGroup;
    DBRdGrpCongelarParcelas: TDBRadioGroup;
    GroupBox39: TGroupBox;
    DBEdit25: TDBEdit;
    DBRdGrpProTipoPagtoTac: TDBRadioGroup;
    GroupBox20: TGroupBox;
    DBEdit3: TDBEdit;
    GroupBox24: TGroupBox;
    DBEditTaxaTac: TDBEdit;
    GroupBox26: TGroupBox;
    DBEdit9: TDBEdit;
    GroupBox40: TGroupBox;
    DBEdit21: TDBEdit;
    GroupBox3: TGroupBox;
    DBEdit11: TDBEdit;
    DBRdGrpTipoPagtoIOF: TDBRadioGroup;
    GroupBox19: TGroupBox;
    DBEditFatorCorrecao: TDBEdit;
    GroupBox13: TGroupBox;
    DBEditTaxaIof: TDBEdit;
    ScrollBox2: TScrollBox;
    GroupBox45: TGroupBox;
    ScrollBox7: TScrollBox;
    GroupBox46: TGroupBox;
    Panel1: TPanel;
    Panel7: TPanel;
    Panel3: TPanel;
    BitBtnGerarParcela: TBitBtn;
    Panel4: TPanel;
    BitBtnRecalcularParcela: TBitBtn;
    GroupBox31: TGroupBox;
    DBEdit13: TDBEdit;
    GroupBox37: TGroupBox;
    DBEdit23: TDBEdit;
    GroupBox30: TGroupBox;
    DBEdit19: TDBEdit;
    GroupBox34: TGroupBox;
    DBEdit22: TDBEdit;
    GroupBox28: TGroupBox;
    DBEdit12: TDBEdit;
    GroupBox29: TGroupBox;
    DBEdit14: TDBEdit;
    GroupBox17: TGroupBox;
    DBEdit10: TDBEdit;
    GroupBox38: TGroupBox;
    DBEdit24: TDBEdit;
    GroupBox16: TGroupBox;
    DBEdit8: TDBEdit;
    ScrollBox1: TScrollBox;
    GroupBox48: TGroupBox;
    Panel2: TPanel;
    DBNavigatorParcelas: TDBNavigator;
    GroupBox10: TGroupBox;
    DBEdit17: TDBEdit;
    GroupBox12: TGroupBox;
    DBEditVencimento: TDBEdit;
    GroupBox42: TGroupBox;
    DBdtPercentualValorPMT: TDBEdit;
    GroupBox25: TGroupBox;
    DBEditValorTitulo: TDBEdit;
    GroupBox32: TGroupBox;
    DBEdit18: TDBEdit;
    GroupBox18: TGroupBox;
    DBEdit16: TDBEdit;
    GroupBox22: TGroupBox;
    DBEdit7: TDBEdit;
    GroupBox15: TGroupBox;
    DBEdit20: TDBEdit;
    GroupBox33: TGroupBox;
    DBEdit1: TDBEdit;
    GroupBox41: TGroupBox;
    DBdtId_ContratoOperacao: TDBEdit;
    BtBtnConsultaId_Operacao: TBitBtn;
    GroupBox49: TGroupBox;
    DBNavigatorPagamentos: TDBNavigator;
    DBGridPagamentos: TDBGrid;
    ScrollBox3: TScrollBox;
    GroupBox36: TGroupBox;
    DBGrid2: TDBGrid;
    ScrollBox4: TScrollBox;
    GroupBox47: TGroupBox;
    DBMmInstrucoesDebitosExistente: TDBMemo;
    ScrollBox5: TScrollBox;
    GroupBox44: TGroupBox;
    DBGrid3: TDBGrid;
    GroupBox50: TGroupBox;
    BbtMarcar: TBitBtn;
    BbtDesmarcar: TBitBtn;
    BitBtn5: TBitBtn;
    GroupBox52: TGroupBox;
    DBEdit26: TDBEdit;
    ADOTitularGrupo: TADODataSet;
    ADOTitularGrupoCLINOM: TStringField;
    ADOTitularGrupoCLIOPE: TIntegerField;
    ADOTitularGrupoCLIFLO: TIntegerField;
    ADOTitularGrupoCLIISENTOIOF: TStringField;
    ADOTitularGrupoCLICOD: TIntegerField;
    ADOTitularGrupoCLICRE: TStringField;
    ADOTitularGrupoCLIEMPTITU: TIntegerField;
    DSTitularGrupo: TDataSource;
    GroupBox53: TGroupBox;
    DBEdit27: TDBEdit;
    ADOContratoExtraItemVincular: TStringField;
    GroupBox54: TGroupBox;
    DBGrid4: TDBGrid;
    ADOGarantias: TADODataSet;
    DSGarantias: TDataSource;
    ADOGarantiasId_ContratoOperacaoItem: TIntegerField;
    ADOGarantiasId_BoletoOperacao: TIntegerField;
    ADOGarantiasBoleto: TIntegerField;
    ADOGarantiasContrato: TStringField;
    ADOGarantiasRazaoSocial: TStringField;
    DBEdit28: TDBEdit;
    BitBtn4: TBitBtn;
    ADOGarantiasSelecionado: TStringField;
    DBGrid1: TDBGrid;
    ADOBoletoOperacaoTaxaInternaRetorno: TFloatField;
    ADOBoletoOperacaoValorTaxaIOFComplementar: TFloatField;
    ADOBoletoOperacaoValorIOFComplementar: TFloatField;
    ADOClienteClipes: TIntegerField;
    ADOClienteCliStatus: TStringField;
    ADOCarteiraStatus: TStringField;
    ADOCarteiraCLAIOFPessoaFisica: TFloatField;
    ADOCarteiraCLAIOFAnoPessoaFisica: TFloatField;
    ADOParcelaValorIOFComplementar: TFloatField;
    GroupBox43: TGroupBox;
    DBEdit31: TDBEdit;
    BitBtnSair: TBitBtn;
    GroupBox27: TGroupBox;
    DBEditDocumento: TDBEdit;
    BitBtn2: TBitBtn;
    DBEdit4: TDBEdit;
    GroupBox21: TGroupBox;
    DBEditTotalTitulo: TDBEdit;
    GroupBox8: TGroupBox;
    DBEditDataOperacao: TDBEdit;
    GroupBox51: TGroupBox;
    DBEdit32: TDBEdit;
    KG_SimulacaoOperacao: TADODataSet;
    KG_SimulacaoOperacaoPROCLAS: TStringField;
    KG_SimulacaoOperacaoPROPROP: TAutoIncField;
    KG_SimulacaoOperacaoPROITEM: TIntegerField;
    KG_SimulacaoOperacaoproclie: TIntegerField;
    KG_SimulacaoOperacaoprooper: TIntegerField;
    KG_SimulacaoOperacaoprodtop: TDateTimeField;
    KG_SimulacaoOperacaoprovrbo: TFloatField;
    KG_SimulacaoOperacaoprofloa: TStringField;
    KG_SimulacaoOperacaoprotxme: TFloatField;
    KG_SimulacaoOperacaoprotxef: TFloatField;
    KG_SimulacaoOperacaoprodocumen: TIntegerField;
    KG_SimulacaoOperacaoCodigoTabelaTarifa: TIntegerField;
    KG_SimulacaoOperacaoPROCCOB: TFloatField;
    KG_SimulacaoOperacaoPROVRDC: TFloatField;
    KG_SimulacaoOperacaoPROTXIO: TFloatField;
    KG_SimulacaoOperacaoPROTXCAC: TFloatField;
    KG_SimulacaoOperacaoPROTAXATMF: TFloatField;
    KG_SimulacaoOperacaoPROTARIFADIGITACAO: TFloatField;
    KG_SimulacaoOperacaoPROTXSA: TFloatField;
    KG_SimulacaoOperacaoPROTXRISCO: TFloatField;
    KG_SimulacaoOperacaoPROTXRE: TFloatField;
    KG_SimulacaoOperacaoPROTXCA: TFloatField;
    KG_SimulacaoOperacaoPRODESP: TFloatField;
    KG_SimulacaoOperacaoPROTXIP: TFloatField;
    KG_SimulacaoOperacaoPROTAXAADMINISTRATIVA: TFloatField;
    KG_SimulacaoOperacaoCodigoTipoCarteira: TIntegerField;
    KG_SimulacaoOperacaoPROTPCONTR: TStringField;
    KG_SimulacaoOperacaoPROCOBRATARIFADIGITACAO: TStringField;
    KG_SimulacaoOperacaoCodigoControleArquivo: TIntegerField;
    KG_SimulacaoOperacaoTaxaNominalPosFixada: TFloatField;
    KG_SimulacaoOperacaoProtxiofc: TFloatField;
    KG_SimulacaoOperacaoProDataPrimeiraParcela: TDateTimeField;
    KG_SimulacaoOperacaoProDiasCarencia: TIntegerField;
    KG_SimulacaoOperacaoProParcelasCarencia: TIntegerField;
    KG_SimulacaoOperacaoProValorReferencia: TFloatField;
    KG_SimulacaoOperacaoProvrio: TFloatField;
    KG_SimulacaoOperacaoProvriofc: TFloatField;
    KG_SimulacaoOperacaoPROVRCAC: TFloatField;
    KG_SimulacaoOperacaoId_ContratoOperacao: TIntegerField;
    KG_SimulacaoOperacaoProValorPMT: TFloatField;
    KG_SimulacaoOperacaoProCongelarPMT: TStringField;
    KG_SimulacaoOperacaoProValorTacs: TFloatField;
    KG_SimulacaoOperacaoproliqu: TFloatField;
    KG_SimulacaoOperacaoProTaxaInternaRetorno: TFloatField;
    ADOParcelaValorIOF: TFloatField;
    ADOConferenciaValorIOF: TFloatField;
    ADOBoletoOperacaoCodigoRegiao: TIntegerField;
    ADOClienteRegiao: TIntegerField;
    KG_SimulacaoOperacaoCodigoRegiao: TIntegerField;
    ADOParcelaValorLiberado: TFloatField;
    KG_SimulacaoOperacaoPROVRIP: TFloatField;
    KG_SimulacaoOperacaoProValorCarencia: TFloatField;
    KG_SimulacaoOperacaoProValorTMF: TFloatField;
    KG_SimulacaoOperacaoProValorFinanciado: TFloatField;
    ADOCarteiraClaAplicaiofLiberacao: TStringField;
    GroupBox55: TGroupBox;
    DBEdit33: TDBEdit;
    ADOBoletoOperacaoCodigoCenario: TIntegerField;
    KG_SimulacaoOperacaoCodigoCenario: TIntegerField;
    ADOBoletoPagamentoTipoConta: TStringField;
    ADOContratoExtraIndiceCorrecao: TStringField;
    ADOClienteCliBloqueioLimite90Dias: TStringField;
    ADOClienteCodigoBloqueioLimite90Dias: TIntegerField;
    ADOClienteCliDataBloqueioLimite90Dias: TDateTimeField;
    ADOProdutoTaxaEfetivaMinima: TFloatField;
    ADODocumentos: TADOQuery;
    ADOBoletoOperacaoDataPrimeiraParcelaOriginal: TDateTimeField;
    KG_SimulacaoOperacaoProDataPrimeiraParcelaOriginal: TDateTimeField;
    GroupBox56: TGroupBox;
    DBEdit34: TDBEdit;
    KG_SimulacaoOperacaoProTipoPagtoTac: TStringField;
    KG_SimulacaoOperacaoProTipoPagtoIOF: TStringField;
    ADOProdutocarteiraads: TIntegerField;
    GroupBox57: TGroupBox;
    DBEdit2: TDBEdit;
    GroupBox58: TGroupBox;
    DBEdit35: TDBEdit;
    ADOParcelaValorFuturo: TFloatField;
    ADOBoletoOperacaoTaxaSelic: TFloatField;
    ADOBoletoOperacaoValorFuturo: TFloatField;
    KG_SimulacaoOperacaoProTaxaSelic: TFloatField;
    KG_SimulacaoOperacaoProValorFuturo: TFloatField;
    KG_SimulacaoOperacaoProValorLiberado: TFloatField;
    ADOParcelaValorTac: TFloatField;
    ADOBoletoOperacaoVrTacDigitada: TFloatField;
    ADOConferenciaValorTac: TFloatField;
    KG_SimulacaoOperacaoVrTacDigitada: TFloatField;
    ADOProdutoCOMPRE: TIntegerField;
    ADOProdutoCOMPOS: TIntegerField;
    ADOProdutoINDPRE: TIntegerField;
    ADOProdutoINDPOS: TIntegerField;
    ADOProdutoOUTPRE: TIntegerField;
    ADOProdutoOUTPOS: TIntegerField;
    GroupBox35: TGroupBox;
    DBEdit15: TDBEdit;
    ADOBoletoOperacaoCustoEfetivoTotal: TFloatField;
    KG_SimulacaoOperacaoCustoEfetivoTotal: TFloatField;
    ADOClientecliporte: TStringField;
    ADOCustoEfetivo: TADOCommand;
    ADORecDocumentos: TADOCommand;
    ADOContratoExtraIDStatus: TStringField;
    GroupBox59: TGroupBox;
    DBdtId_CodPrimerioAval: TDBEdit;
    GroupBox60: TGroupBox;
    DBdtId_CodSegundoAval: TDBEdit;
    GroupBox61: TGroupBox;
    DBdtId_CodTerceiroAval: TDBEdit;
    GroupBox62: TGroupBox;
    DBdtId_CodQuartoAval: TDBEdit;
    ADOBoletoOperacaoCODPRIAVAL: TIntegerField;
    ADOBoletoOperacaoCODSEGAVAL: TIntegerField;
    ADOBoletoOperacaoCODTERAVAL: TIntegerField;
    ADOBoletoOperacaoCODQUAAVAL: TIntegerField;
    KG_SimulacaoOperacaoId_CodPrimeiroAvalista: TIntegerField;
    KG_SimulacaoOperacaoId_CodSegundoAvalista: TIntegerField;
    KG_SimulacaoOperacaoId_CodTerceiroAvalista: TIntegerField;
    KG_SimulacaoOperacaoId_CodQuartoAvalista: TIntegerField;
    BitBtnPromotor: TBitBtn;
    ADOClienteDataEntregaFichaContaCorrente: TDateTimeField;
    ADOParcelaTacs: TADODataSet;
    DSParcelaTacs: TDataSource;
    ADOParcelaTacsPROPOSTA: TIntegerField;
    ADOParcelaTacsVALORPMT: TFloatField;
    ADOParcelaTacsVALORIOF: TFloatField;
    ADOParcelaTacsVALORTMF: TFloatField;
    ADOParcelaTacsVALORCUSTOCOBRANCA: TFloatField;
    ADOParcelaTacsVALORCUSTOADMINISTRATIVO: TFloatField;
    ADOParcelaTacsVALORDOC: TFloatField;
    ADOParcelaTacsVALOROUTRASDESPESAS: TFloatField;
    ADOParcelaTacsVALORTAC: TFloatField;
    GroupBox63: TGroupBox;
    DBEdit5: TDBEdit;
    ADOProdutoMOEDA: TStringField;
    GroupBox64: TGroupBox;
    DBEdit36: TDBEdit;
    GroupBox65: TGroupBox;
    DBEdit37: TDBEdit;
    GroupBox66: TGroupBox;
    DBEdit38: TDBEdit;
    GroupBox67: TGroupBox;
    MaskEdit1: TMaskEdit;
    GroupBox68: TGroupBox;
    DBEditAberConta: TDBEdit;
    ADOBoletoOperacaoTaxaAberturaCredito: TFloatField;
    ADOCarteirataxaaberturacredito: TFloatField;
    ADOParcelaTaxaAberturaCredito: TFloatField;
    ADOParcelaTacsTaxaAberturaCredito: TFloatField;
    ADOConferenciaTaxaAberturaCredito: TFloatField;
    KG_SimulacaoOperacaoTaxaAberturaCredito: TFloatField;
    GroupBox69: TGroupBox;
    DBEdit39: TDBEdit;
    GroupBox70: TGroupBox;
    DBEdit40: TDBEdit;
    GroupBox71: TGroupBox;
    DBEdit41: TDBEdit;
    ADOBoletoOperacaoIOFValorTeto: TFloatField;
    ADOBoletoOperacaoIOFBeneficio: TFloatField;
    ADOBoletoOperacaoIOFAtraso: TFloatField;
    ADOBoletoOperacaoId_Proposta: TIntegerField;
    KG_SimulacaoOperacaoIOFValorTeto: TFloatField;
    KG_SimulacaoOperacaoIOFBeneficio: TFloatField;
    KG_SimulacaoOperacaoIOFAtraso: TFloatField;
    KG_SimulacaoOperacaoId_Proposta: TIntegerField;
    GroupBox72: TGroupBox;
    DBEditRenegociacao: TDBEdit;
    ADOBoletoOperacaocontratoreservado: TIntegerField;
    KG_SimulacaoOperacaocontratoreservado: TIntegerField;
    GroupBox73: TGroupBox;
    DBEdit42: TDBEdit;
    ADOaux: TADOQuery;
    DBRadioGroup1: TDBRadioGroup;
    ADOBoletoOperacaoDomicilioBancario: TStringField;
    KG_SimulacaoOperacaoProDomicilioBancario: TStringField;
    ADOProdutoIOF: TStringField;
    ADOaux2: TADOQuery;
    bbtnPendencias: TBitBtn;
    ADOCustoEfetivocapitaldegiro: TADOQuery;
    GroupBox75: TGroupBox;
    DBEdit43: TDBEdit;
    ADOBoletoOperacaovalor_ecg: TFloatField;
    KG_SimulacaoOperacaovalor_ecg: TFloatField;
    ADOParcelavalor_ecg: TFloatField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BorderoExit(Sender: TObject);
    procedure CarteiraExit(Sender: TObject);
    procedure DBEditCedenteExit(Sender: TObject);
    procedure BitBtnCedenteClick(Sender: TObject);
    procedure DBEditDocumentoExit(Sender: TObject);
    procedure DBEditValorReferenciaExit(Sender: TObject);
    procedure DBEditFloatPropostaKeyPress(Sender: TObject; var Key: Char);
    procedure DBEditFatorMesExit(Sender: TObject);
    procedure DBMmInstrucoesDebitosExistenteKeyPress(Sender: TObject;
      var Key: Char);
    procedure BitBtnAlterarClick(Sender: TObject);
    procedure BitBtnSalvarClick(Sender: TObject);
    procedure BitBtnCancelarClick(Sender: TObject);
    procedure BitBtnExcluirClick(Sender: TObject);
    procedure ADOBoletoOperacaoBeforePost(DataSet: TDataSet);
    procedure BitBtnCarteiraClick(Sender: TObject);
    procedure ADOClienteBeforeOpen(DataSet: TDataSet);
    procedure ADOOperadorBeforeOpen(DataSet: TDataSet);
    procedure ADOTarifaCobrancaBeforeOpen(DataSet: TDataSet);
    procedure DBGridPagamentosDblClick(Sender: TObject);
    procedure ADOBoletoOperacaoAfterPost(DataSet: TDataSet);
    procedure BitBtnFecharClick(Sender: TObject);
    procedure DBNavigatorPagamentosClick(Sender: TObject; Button: TNavigateBtn);
    procedure DBGridPagamentosEnter(Sender: TObject);
    procedure DBNavigatorPagamentosBeforeAction(Sender: TObject;
      Button: TNavigateBtn);
    procedure DBGridPagamentosKeyPress(Sender: TObject; var Key: Char);
    procedure BitBtnBoletoClick(Sender: TObject);
    procedure BitBtnSairClick(Sender: TObject);
    Procedure Inicio;
    procedure CodigoTipoCarteiraExit(Sender: TObject);
    procedure DBEditCedenteKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BitBtnPromotorKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure CarteiraKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure BorderoKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormCreate(Sender: TObject);
    procedure ADOClienteAfterOpen(DataSet: TDataSet);
    procedure ADOClienteAfterClose(DataSet: TDataSet);
    procedure DBEditCedenteChange(Sender: TObject);
    procedure DBLookupComboBox3Click(Sender: TObject);
    procedure DBLookupComboBox3DropDown(Sender: TObject);
    procedure DBLookupComboBox3Exit(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure DBEditDataPrimeiraParcelaExit(Sender: TObject);
    procedure DBEditDataOperacaoExit(Sender: TObject);
    procedure DBEditDiasCarenciaExit(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure ADOProdutoBeforeOpen(DataSet: TDataSet);
    procedure ADOBoletoOperacaoAfterOpen(DataSet: TDataSet);
    procedure BttnRelatorioClick(Sender: TObject);
    procedure DBdtId_ContratoOperacaoExit(Sender: TObject);
    procedure DBRdGrpCongelarParcelasExit(Sender: TObject);
    procedure DBdtPercentualValorPMTExit(Sender: TObject);
    procedure BtBtnConsultaId_OperacaoClick(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure BbtMarcarClick(Sender: TObject);
    procedure BbtDesmarcarClick(Sender: TObject);
    procedure EnviaEmail;
    function PalavraEspecial(Texto: String): Boolean;
    procedure DBGrid4KeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid4KeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure BitBtn4Click(Sender: TObject);
    procedure DBEditFloatPropostaExit(Sender: TObject);
    procedure ADOBoletoPagamentoBeforePost(DataSet: TDataSet);
    function AutorizacaoBoletoDocumentosPendentes(CodigoCedente
      : Integer): Boolean;
    function TravaDocumentos(Inscricao: String): Boolean;
    function VerificaPendenciaDocumentos(Inscricao: String): Boolean;
    procedure DBEditFatorCorrecaoExit(Sender: TObject);
    procedure DBRGTipoContratoClick(Sender: TObject);
    procedure DBEditTaxaTacExit(Sender: TObject);
    procedure BitBtnPromotorClick(Sender: TObject);
    procedure DBRGTipoContratoChange(Sender: TObject);
    procedure DBGridPagamentosDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure ADOBoletoPagamentoCodigoPagamentoChange(Sender: TField);
    procedure DSBoletoPagamentoStateChange(Sender: TObject);
    procedure ADOParcelaBeforePost(DataSet: TDataSet);
    procedure bbtnPendenciasClick(Sender: TObject);
  private
    Auxs: String;
    ErroConsistencia, CodigoSacado: String;
    TotalItens, Total, Prazo, PrazoIOF, PrazoEfetivo, Intervalo,
      NivelPermissao: Integer;
    BasePMT, BaseIOF, VCalculoPrazoMedio, VCalculoPrazoMedioEfetivo,
      VCalculoValorLiquido, VcalculoIOF, VcalculoIOFComplementar, VBordero,
      VcalculoPMT, VcalculoCarencia, VcalculoJuros, VcalculoAmortizacao,
      VValorPrincipal: Double;

    RestoValorDoc, RestoValorTMF, RestoValortac, RestoCustoCobranca,
      RestoOutraDespesa, RestoTaxaAdministrativa,
      restoTaxaaberturaCredito: Double;

    Ite_ValorTacs, Taxa, iof: Double;

    DataVencimento, DataFinal: TDateTime;

    Calculos: TTipoArray;
    ReGerar: Boolean;
    VencimentoReal: TDateTime;
    Valida_Ord: Boolean;

    Procedure Botoes(Alterar, Salvar, Fechar, Cancelar, Excluir, GerarPar,
      RecalcularPar, AcaoDBGridPagamentos: Boolean);

    procedure AtualizaAuxQ;
    procedure FechaDados;
    procedure AbreDados(XCarteira, XProposta: String);
    procedure ImportaSimulacao;
    function AutorizacaoID_Operacao: Boolean;
    procedure ImportaContaPagamento(Controle: String);
    Function StringPendenciaCadastral: String;
    function MotivosPorExtenso: String;
    procedure CalculaContrato;
    procedure CalculaTacs;
    function VerificarSacado: String;
    procedure MontaParcela;
    procedure HabilitaCampo;
    procedure GeraParcelaMista;
    procedure CriaArray(Itens: Integer);
    procedure MontaArray(TipoAcao: String);
    procedure Atualizar;
    procedure AbreParcelas;
    procedure CriaParcelas;
    procedure AjustaTacs;
    procedure AjustaValorFinanciado;
    procedure AtribuiTacs;
    procedure TotalizaIOF;
    procedure ZeraResto;
    procedure ConsisteFechamento;
    procedure CadastroSacado;
    procedure verificadata;
    function PesquisaParcela(Parcela: Integer): TDate;
    procedure GravaBoleto;
    function GravaGarantias(Id_Contrato: Integer): Integer;

    Procedure CalculaTacs_Item;
    procedure RefazNavegador(Navegador: TDBNavigator);
    procedure AbreTitularGrupo(Codigo: Integer);
    Procedure AbreContrato(Acao: Integer);
    Function PesquisaLimiteUsado: Double;
    function AtribuiTipoCarteira: Integer;
    procedure TaxaInternaRetorno;
    procedure Atribui_IOF;
    procedure CalculoParcelaCongelada;
    procedure Zera_v;
    procedure ImportarParcelas;
    procedure BloqueiaTodos;
    procedure AjustaTacs_Congelada;
    procedure AbreConferencia;
    procedure AjustaValorLiberadoItem;
    procedure Atribui_ValorLiquido;
    procedure Atribui_Float;
    procedure Atribui_TaxaReferencia;
    function AutorizacaoBloqueioLimite90Dias(CodigoCedente: Integer): Boolean;
    function VerificaTacDigitadaLiberada(Proposta: String;
      Cedente: String): Boolean;
    function VerificaTxAberturaCreditoDigitadaLiberada(Proposta: String;
      Cedente: String): Boolean;
    function VerificaLiberaçãoTaxaEfetivaMenor(Proposta: String;
      Cedente: String): Boolean;
    function VerificaLiberaçãoTaxaPosInferior(Proposta: String;
      Cedente: String): Boolean;
   procedure CustoEfetivoTotalcapitaldegiro;
    procedure CustoEfetivoTotal;
    function CadastraDocumentoPendentes(Inscricao: String): Boolean;
    function VerificaLiberaçãoOpSemAval(Proposta, Cedente: String): Boolean;
    function Consulta_CTADVBanco(Banco, Agencia: Integer;
      Conta, ContaSemDV, DV, Tipo: String): Boolean;
    function ReReadOnlympoGrid(Campo: Integer): Boolean;
    function DigitoVerificador_001(Conta: Integer): Boolean;
    function AjusteCalculoTacs(V_Campo: String; V_Valor: Double): Boolean;
    procedure CriaParcelasIGPM;
    procedure MontaArrayIGPM(TipoAcao: String);
    procedure CalculaContratoIGPM;
    function VerificarContaDoCedente(): Boolean;
  public
    SimulacaoBoleto, V_DV001: String;
    Importando: Boolean;
    CTABancos: TDvBancoDados;
    CTABancosResult: TDvBancoOcorrencia;
    ajustedata: String;
    Ano1, Mes1, Dia1: Word;
    Ano, Mes, Dia, dia2: Word;


  end;

var
  FrmCadEmprestimoBoletoOperacao: TFrmCadEmprestimoBoletoOperacao;

implementation

Uses UDMConecta, UDMDados, UUtil, UFrmPrincipal, UFrmPesquisaCedenteSacado,
  UFrmPesquisaCedenteSacadoCpfCnpj, UFrmAuxProcura, UFrmPesquisa,
  UFrmSimulacaoProposta, UFrmConsultaTaxaCedente, UFormMSG,
  UFrmVisualizaMensagem, UFrmBoletoEmprestimo, UTemailIntermedium,
  ULiberacaoFinanceiroLegado;
{$R *.dfm}

procedure TFrmCadEmprestimoBoletoOperacao.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  if Assigned(Tformmsg(formmsg)) then
    formmsg.Close;
  ADOCarteira.Close;
  ADOCliente.Close;
  ADOBoletoOperacao.Close;
  ADOOperador.Close;
  ADOProduto.Close;
  ADOTarifaCobranca.Close;
  ADOBoletoOperacao.Close;
  ADOBoletoPagamento.Close;
  ADOOcorrenciaPagamento.Close;
  ADOFacbanco.Close;
  Action := caFree;
  FrmCadEmprestimoBoletoOperacao := nil;

end;

procedure TFrmCadEmprestimoBoletoOperacao.BorderoExit(Sender: TObject);
begin
  inherited;
  OnExit(Sender);
  if ((ADOCarteira.Active) and (ADOCarteira.RecordCount > 0) and
    (Carteira.Text <> '') and (Bordero.Text <> '')) then
  begin
    AbreDados(Carteira.Text, Bordero.Text);

    if (ADOBoletoOperacao.RecordCount > 0) then
    begin
    if (ADOBoletoOperacaoCodigoProduto.AsInteger<>42)  AND (ADOBoletoOperacaoCodigoProduto.AsInteger<>77) and (ADOBoletoOperacaoCodigoProduto.AsInteger<>152) AND (ADOBoletoOperacaoCodigoProduto.AsInteger<>78) AND (ADOBoletoOperacaoCodigoProduto.AsInteger<>79) AND (ADOBoletoOperacaoCodigoProduto.AsInteger<>155) then
    BEGIN

      if ((ADOProdutoTipoFinanciamento.AsString <> 'POS') and
        (ADOProdutoTipoFinanciamento.AsString <> 'PRE') and
        (ADOProdutoTipoFinanciamento.AsString <> 'ROT')) then
      Begin
        Application.MessageBox
          ('Tela de cadastro não permite a manutenção de produto DESCONTO.',
          'Atenção', MB_OK + MB_ICONEXCLAMATION + MB_DEFBUTTON1 + MB_APPLMODAL);
        Inicio;
        Abort;
      end;
    END;

      if ((Trim(ADOBoletoOperacaoStatusBoletoOperacao.AsString) <> 'ABERTO') and
        (Trim(ADOBoletoOperacaoStatusBoletoOperacao.AsString) <> 'ALTERACAO')
        and (Trim(ADOBoletoOperacaoStatusBoletoOperacao.AsString) <> 'SUSPENSO'))
      then
      begin
        MessageDlg('O boleto de Operação está ' +
          ADOBoletoOperacaoStatusBoletoOperacao.AsString +
          ', não pode ser modificado. ', mtInformation, [mbOK], 0);
        Bordero.Enabled := False;
        DBNavigatorPagamentos.Enabled := False;
        DBGridPagamentos.ReadOnly := True;
        Botoes(False, False, True, False, True, False, False, False);
        BitBtnSair.SetFocus;
        Abort;
      end;

      Botoes(True, False, True, True, True, False, False, False);
      if ((PanelBotoes.Visible) and (BitBtnAlterar.Enabled)) then
        BitBtnAlterar.SetFocus;

    end
    else
    begin
      if (StrToInt64(Bordero.Text) > 0) then
      begin
        MessageDlg('O Boleto/Proposta não foi encontrado.', mtInformation,
          [mbOK], 0);
        Bordero.Enabled := True;
        Bordero.SetFocus;
        Abort;
      end;
      try
        NivelPermissao := BuscaNivelPermissao(Self);
        if not(NivelPermissao > 1) then
        begin
          Application.MessageBox('Sem acesso para criação de boleto.',
            'Atenção', MB_OK + MB_ICONASTERISK + MB_DEFBUTTON1 + MB_APPLMODAL);
          BitBtnCancelarClick(Sender);
          Exit;
        end;
        DSBoletoOperacao.AutoEdit := True;
        ADOBoletoOperacao.Append;
        ADOBoletoOperacaoStatusBoletoOperacao.AsString := 'ABERTO';

        ADOBoletoOperacaoTipoVencimentoParcela.AsString := 'MISTO';
        ADOBoletoOperacaoTipoContrato.AsString := 'N';
        ADOBoletoOperacaoDomicilioBancario.AsString := 'NAO';

        ADOBoletoOperacaoCodigoRegiao.AsInteger := ADOClienteRegiao.AsInteger;

        DBNavigatorPagamentos.Enabled := True;
        if (StrToInt64(Bordero.Text) <> 0) then
          ADOBoletoOperacaoProposta.AsInteger := StrToInt64(Bordero.Text);

        if (StrToInt64Def(SimulacaoBoleto, 0) = 0) then
        begin
          ADOBoletoOperacaoFloating.AsString := '0';

          ADOBoletoOperacaoCodigoTipoCarteira.AsInteger := AtribuiTipoCarteira;
          ADOBoletoOperacaoValorTaxaCpmf.AsFloat := 0;

          Atribui_IOF;

          ADOBoletoOperacaoValorTaxaTac.AsFloat := ADOCarteiraCLATXCAC.AsFloat;

          ADOBoletoOperacaoValorTaxaTMF.AsFloat := 0;
          ADOBoletoOperacaoTaxaAberturaCredito.AsFloat :=
            ADOCarteirataxaaberturacredito.AsFloat;

          if ADOBoletoOperacaoCodigoCedente.AsInteger = 3437 then
            ADOBoletoOperacaoValorDoc.AsFloat := 0
          else
            ADOBoletoOperacaoValorDoc.AsFloat :=
              ADOCarteiraClaCustoEnvioDoc.AsFloat;

          if ADOBoletoOperacaoCodigoCedente.AsInteger = 3437 then
            ADOBoletoOperacaoValorCustoAdministrativo.AsFloat := 0
          else
            ADOBoletoOperacaoValorCustoAdministrativo.AsFloat :=
              ADOCarteiraClaTaxaAdministrativa.AsFloat;

          ADOBoletoOperacaoTaxaMes.AsFloat := 0;
          ADOBoletoOperacaoValorCustoRisco.AsFloat := 0;
          ADOBoletoOperacaoValorTaxaSobreSaque.AsFloat := 0;
          ADOBoletoOperacaoValorCustoCobranca.AsFloat := 0;
          ADOBoletoOperacaoValorOutrasDespesas.AsFloat := 0;
          ADOBoletoOperacaoValorCustoRegistro.AsFloat := 0;
          ADOBoletoOperacaoValorCustoCadastro.AsFloat := 0;
          ADOBoletoOperacaoDataOperacao.AsDateTime := PesquisaDataBanco(False);
          ADOBoletoOperacaoDebitarTituloOuContaCorrente.AsString := 'NAO';
          ADOBoletoOperacaoDevolverPreliminarParaAnalise.AsString := 'NAO';
          ADOBoletoOperacaoCodigoTabelaTarifa.AsInteger := 1;
          ADOBoletoOperacaoCongelarPMT.AsString := 'NAO';
          ADOBoletoOperacaoUsuarioComercial.AsInteger := Ususario.Codigo;

          Botoes(False, True, True, True, False, True, True, True);
        end
        else
        begin
          ImportaSimulacao;

          if (not BitBtnAlterar.Enabled) then
            BitBtnAlterar.Enabled := True;
          BitBtnAlterar.SetFocus
        end;

      except
        on E: Exception do
          MessageDlg(' Mensagem: ' + E.Message, mtError, [mbOK], 0);
        else
          MessageDlg('Foi encontrado um parametro inesperado.', mtInformation,
            [mbOK], 0);
      end;

    end;
    Carteira.Enabled := False;
    Bordero.Enabled := False;
  end;

end;

procedure TFrmCadEmprestimoBoletoOperacao.CarteiraExit(Sender: TObject);
begin
  inherited;
  OnExit(Sender);
  If (Carteira.Text <> '') then
  begin
    with (ADOCarteira) do
    begin
      Close;
      Parameters[0].Value := Carteira.Text;
      Open;
      if (ADOCarteira.RecordCount < 1) then
      Begin
        MessageDlg('Código da Carteira não encontrado.', mtInformation,
          [mbOK], 0);
        Carteira.SetFocus;
        Abort;
      end;

      if (ADOCarteiraStatus.AsString <> 'ATIVO') Then
      begin
        Application.MessageBox('Carteira bloqueada para movimentação.',
          'Atenção', MB_OK + MB_ICONEXCLAMATION + MB_DEFBUTTON1 + MB_APPLMODAL);
        Carteira.SetFocus;
        Abort;
      end;

    end;

    if ((SimulacaoBoleto = '') and (Bordero.Enabled)) then
      Bordero.SetFocus;
  end
  else
    ADOCarteira.Close;

end;

procedure TFrmCadEmprestimoBoletoOperacao.Botoes(Alterar, Salvar, Fechar,
  Cancelar, Excluir, GerarPar, RecalcularPar, AcaoDBGridPagamentos: Boolean);
begin
  NivelPermissao := BuscaNivelPermissao(Self);

  BitBtnAlterar.Enabled := False;
  BitBtnSalvar.Enabled := False;
  BitBtnFechar.Enabled := False;
  BitBtnCancelar.Enabled := Cancelar;
  BitBtnExcluir.Enabled := False;
  BitBtnGerarParcela.Enabled := False;
  BitBtnRecalcularParcela.Enabled := False;



  if (NivelPermissao = 2) then
  begin
    BitBtnAlterar.Enabled := Alterar;
    BitBtnSalvar.Enabled := Salvar;
    BitBtnFechar.Enabled := Fechar;


  end
  else if (NivelPermissao = 3) then
  begin
    BitBtnAlterar.Enabled := Alterar;
    BitBtnSalvar.Enabled := Salvar;
    BitBtnFechar.Enabled := Fechar;

    BitBtnExcluir.Enabled := Excluir;


  end;

  bbtnPendencias.Enabled := BitBtnFechar.Enabled;
end;

procedure TFrmCadEmprestimoBoletoOperacao.AtualizaAuxQ;
begin
  ADOCliente.Close;
  ADOOperador.Close;
  ADOTarifaCobranca.Close;
  ADOProduto.Close;
  if (ADOBoletoOperacao.Active) then
  begin
    ADOCliente.Open;
    if (ADOBoletoOperacao.State in [dsInsert, dsEdit]) then
    begin
      ADOBoletoOperacaoCodigoPromotor.AsInteger := ADOClienteCLIOPE.AsInteger;
      ADOBoletoOperacaoCodigoRegiao.AsInteger := ADOClienteRegiao.AsInteger;
    end;

    if (ADOBoletoOperacao.State = dsInsert) then
    begin
      ADOBoletoOperacaoValorCustoAdministrativo.AsFloat :=
        ADOCarteiraClaTaxaAdministrativa.AsFloat;
      if (ADOBoletoOperacaoFloating.AsString = '') then
        ADOBoletoOperacaoFloating.AsString := '0';


    end;
    ADOProduto.Open;
    ADOOperador.Open;
    ADOTarifaCobranca.Open;
    HabilitaCampo;
  end;

end;

procedure TFrmCadEmprestimoBoletoOperacao.DBEditCedenteExit(Sender: TObject);
begin
  inherited;
  OnExit(Sender);
  AtualizaAuxQ;

  if ((ADOBoletoOperacao.Active) and (ADOBoletoOperacao.State in [dsInsert,
    dsEdit]) and (ADOBoletoOperacaoCodigoCedente.AsInteger > 0)) then
  begin
    if ((Ususario.Tipo[1] in ['0' .. '9']) and
      (ADOClienteCLIOPE.AsInteger <> StrToInt(Ususario.Tipo))) then
      if (not MessageDlg('Este Cedente pertence a outro promotor.',
        mtConfirmation, [mbYes, mbNo], 0) = mrYes) then
        Abort;

    if (Copy(Carteira.Text, 1, 1) <> 'A') then
    begin
      if ((ADOClienteCLICOD.AsInteger > 0) and
        (ADOClienteCadastroSuspenso.AsString = 'SIM')) then
      begin
        MessageDlg('Este Cedente está com o credito suspenso.', mtInformation,
          [mbOK], 0);
        if (ADOBoletoOperacao.State in [dsEdit, dsInsert]) then
        begin
          DBEditCedente.SetFocus;
          Abort;
        end;
      end;

      if (ADOClienteCliBloqueioLimite90Dias.AsString = 'SIM') and
        (not AutorizacaoBloqueioLimite90Dias(StrToInt(DBEditCedente.Text))) then

        Application.MessageBox
          (pChar('Cedente bloqueado por não operar dentro de 90 dias. Possíveis motivos do bloqueio: [ '
          + ADOClienteCodigoMotivoBloqueioAcumulados.AsString + ' ]'),
          'Atenção', MB_OK + MB_ICONEXCLAMATION + MB_DEFBUTTON1 + MB_APPLMODAL);

    end;

    Atribui_Float;

    AbreTitularGrupo(ADOClienteCLIEMPTITU.AsInteger);


    ADOBoletoOperacaoCodigoAgencia.AsString := ADOClienteCLIAGE.AsString;

    Atribui_IOF;

  end;

end;

procedure TFrmCadEmprestimoBoletoOperacao.BitBtnCedenteClick(Sender: TObject);
begin
  inherited;
  if (ADOBoletoOperacao.State in [dsInsert, dsEdit]) then
  begin
    FrmPrincipal.Mensagem('Procurando Cedente...');
    Auxs := PesquisaCedanteSacadoCpfCnpj('C', 'CLICOD');
    if (Auxs <> '') then
    begin
      FrmPrincipal.Mensagem('Recuperando Informação do Cedente...');
      ADOBoletoOperacaoCodigoCedente.AsString := Auxs;

      AtualizaAuxQ;
    end;
    DBEditCedente.SetFocus;

    FrmPrincipal.Mensagem;
  end;

end;

procedure TFrmCadEmprestimoBoletoOperacao.DBEditDocumentoExit(Sender: TObject);
begin
  inherited;
  OnExit(Sender);
  if ((ADOBoletoOperacao.Active) and (ADOBoletoOperacao.State in [dsInsert,
    dsEdit])) then
    if (DBEditDocumento.Text <> '') then
    begin
      ADOProduto.Close;
      ADOProduto.Open;
      if (ADOProduto.RecordCount < 1) then
      begin
        Application.MessageBox('Código do produto não encontrado.', 'Atenção',
          MB_OK + MB_ICONEXCLAMATION + MB_DEFBUTTON1 + MB_APPLMODAL);
        DBEditDocumento.SetFocus;
        Abort;
      end;
      DBEdit4.Text := ADOProdutoDescricao.AsString;
      if (ADOProdutoStatus.AsString <> 'ATIVO') then
      begin
        Application.MessageBox(' Produto Bloqueado para uso.', 'Atenção',
          MB_OK + MB_ICONEXCLAMATION + MB_DEFBUTTON1 + MB_APPLMODAL);
        DBEditDocumento.SetFocus;
        Abort;
      end;

      if (Pos(ADOProdutoTipoFinanciamento.AsString, 'PRE, POS, ROT') = 0) then
      begin
        Application.MessageBox
          (' Produto não permitido para contrato de empréstimo.', 'Atenção',
          MB_OK + MB_ICONEXCLAMATION + MB_DEFBUTTON1 + MB_APPLMODAL);
        DBEditDocumento.SetFocus;
        Abort;
      end
      else
        Atribui_TaxaReferencia;

      HabilitaCampo;

    end;
end;

procedure TFrmCadEmprestimoBoletoOperacao.DBEditValorReferenciaExit
  (Sender: TObject);
begin
  inherited;
  OnExit(Sender);
  if ((ADOBoletoOperacao.Active) and (ADOBoletoOperacao.State = dsInsert)) then
  begin
    if (DBEditValorReferencia.Text = '') then
      DBEditValorReferencia.Text := '0';
    if (StrToFloat(StringReplace(DBEditValorReferencia.Text, '.', '',
      [rfReplaceAll])) > 0) and
      (StrToFloat(StringReplace(DBEditValorReferencia.Text, '.', '',
      [rfReplaceAll])) <= ADOCarteiraCLAVRMINCO.AsFloat) then
      ADOBoletoOperacaoValorCustoCadastro.AsFloat :=
        ADOCarteiraCLATXMINCO.AsFloat
    else
      ADOBoletoOperacaoValorCustoCadastro.AsFloat := 0;
  end;

end;

procedure TFrmCadEmprestimoBoletoOperacao.DBEditFloatPropostaKeyPress
  (Sender: TObject; var Key: Char);
begin
  inherited;
  if not(Key in ['N', 'n', '0' .. '9', #8, #13]) then
    Key := #0;
end;

procedure TFrmCadEmprestimoBoletoOperacao.DBEditTaxaTacExit(Sender: TObject);
begin
  inherited;
  if ((DBEditTaxaTac.Text <> '') and (ADOBoletoOperacao.State in [dsInsert,
    dsEdit])) then
    if (StrToFloat(DBEditTaxaTac.Text) <> 0) then
    begin
      if (ADOBoletoOperacaoValorTaxaTac.AsFloat <= ADOCarteiraCLATXCAC.AsFloat)
      then
        ADOBoletoOperacaoValorTaxaTac.AsFloat := ADOCarteiraCLATXCAC.AsFloat;
    end
    else
      ShowMessage
        ('Deverá ter liberação do Departamento de operações para operar com diferencial de Tac [0,38]');
end;

procedure TFrmCadEmprestimoBoletoOperacao.DBEditFatorMesExit(Sender: TObject);
begin
  inherited;
  OnExit(Sender);

end;

procedure TFrmCadEmprestimoBoletoOperacao.DBMmInstrucoesDebitosExistenteKeyPress
  (Sender: TObject; var Key: Char);
var
  temp: String;
begin

  if ((ADOBoletoOperacao.Active) and (ADOBoletoOperacao.State in [dsEdit,
    dsInsert])) then
  begin
    if (Key = #13) then
    begin
      DBMmInstrucoesDebitosExistente.Text :=
        Trim(DBMmInstrucoesDebitosExistente.Text);
      PgContrlEmprestimo.ActivePageIndex := 1;

    end
    else
    begin
      temp := AnsiUpperCase(Key);
      Key := temp[1];
    end;
  end;
end;

procedure TFrmCadEmprestimoBoletoOperacao.BitBtnAlterarClick(Sender: TObject);
begin
  inherited;
  Botoes(False, True, True, True, True, True, True, True);

  if ((ADOBoletoOperacao.Active) and (ADOBoletoOperacao.State in [dsEdit,
    dsInsert, dsBrowse])) then
  begin
    DSBoletoOperacao.AutoEdit := True;
    DSBoletoPagamento.AutoEdit := True;
    DSParcela.AutoEdit := True;
    ADOBoletoOperacao.Edit;
    DBNavigatorPagamentos.Enabled := True;
    if (ADOParcela.Active) then
      ADOParcela.Edit;

  end;
  if ((DBEditAberConta.Text = '') and (Carteira.Text = 'IF')) then
    ADOBoletoOperacaoTaxaAberturaCredito.AsFloat :=
      ADOCarteirataxaaberturacredito.AsFloat;

end;

procedure TFrmCadEmprestimoBoletoOperacao.BitBtnSalvarClick(Sender: TObject);
begin
  inherited;
  VerificarContaDoCedente();

  if (KG_SimulacaoOperacao.Active) and (not KG_SimulacaoOperacao.IsEmpty) and
     (not ValidaPreenchimentoTaxaEfetiva(KG_SimulacaoOperacaoprotxef.AsFloat)) then
  begin
    Abort;
  end;

  verificadata;

  if ((ADOBoletoOperacao.Active) and (ADOBoletoOperacao.State in dsEditModes)) then
  begin

    if (ADOBoletoOperacaoId_ContratoOperacao.AsInteger < 1) and (ADOBoletoOperacaoCodigoProduto.asinteger<>42) and (ADOBoletoOperacaoCodigoProduto.asinteger<>77) and (ADOBoletoOperacaoCodigoProduto.asinteger<>152) and (ADOBoletoOperacaoCodigoProduto.asinteger<>78) and (ADOBoletoOperacaoCodigoProduto.asinteger<>79) and (ADOBoletoOperacaoCodigoProduto.asinteger<>155) then
    begin
      Application.MessageBox('Identificador dos parametros da operação (ID Operação) não foi informado.'
                              +chr(13) + chr(10) + '', 'Atenção', MB_OK + MB_ICONEXCLAMATION + MB_DEFBUTTON1 + MB_APPLMODAL);
      PgContrlEmprestimo.ActivePageIndex := 0;
      DBdtId_ContratoOperacao.SetFocus;
      Abort;
    end;
    GravaBoleto;
    if ((ADOBoletoPagamento.Active) and (ADOBoletoPagamento.State <> dsBrowse))
    then
      ADOBoletoPagamento.Post;

    Botoes(True, False, True, True, True, False, False, False);

    BloqueiaTodos;
  end;
end;

procedure TFrmCadEmprestimoBoletoOperacao.verificadata;
var
  data: TDateTime;
begin
  data := strtodatetime(DBEditDataOperacao.Text);
  ADOaux.Close;
  ADOaux.sql.Text := 'select top 1 isnull(case when DATEDIFF(day,' + '''' +
    FormatDateTime('yyyy-mm-dd hh:mm:ss', data) + '''' +
    ',DataLancamento)<0 then DATEDIFF(day,' + '''' +
    FormatDateTime('yyyy-mm-dd hh:mm:ss', data) + '''' +
    ',DataLancamento)*-1 else DATEDIFF(day,' + '''' +
    FormatDateTime('yyyy-mm-dd hh:mm:ss', data) + '''' +
    ',DataLancamento) end,0) diferenca ,cli.suplychain   from factbcli  cli inner join Kg_AvaliacaoCadastral kg on (kg.InscricaoPrefixo=cli.CLICGC) where cli.clicod='
    + '''' + DBEditCedente.Text + '''' +
    'and clitip=''C'' order by kg.DataLancamento desc ';
  ADOaux.Open;

    ADOaux.sql.Text := 'select top 1 isnull(case when DATEDIFF(day,' + '''' +
    FormatDateTime('yyyy-mm-dd hh:mm:ss', data) + '''' +
    ',DataLancamento)<0 then DATEDIFF(day,' + '''' +
    FormatDateTime('yyyy-mm-dd hh:mm:ss', data) + '''' +
    ',DataLancamento)*-1 else DATEDIFF(day,' + '''' +
    FormatDateTime('yyyy-mm-dd hh:mm:ss', data) + '''' +
    ',DataLancamento) end,0) diferenca ,cli.suplychain   from factbcli  cli inner join Kg_AvaliacaoCadastral kg on (kg.InscricaoPrefixo=cli.CLICGC) where cli.clicod='
    + '''' + DBEditCedente.Text + '''' +
    'and clitip=''C'' order by kg.DataLancamento desc ';
  ADOaux.Open;


end;

procedure TFrmCadEmprestimoBoletoOperacao.BitBtnCancelarClick(Sender: TObject);
begin
  inherited;
  if (ADOBoletoOperacao.Active) then
  begin
    if ((ADOBoletoPagamento.State in [dsInsert, dsEdit])) then
      ADOBoletoPagamento.Cancel;

    if ((ADOBoletoOperacao.State in [dsInsert, dsEdit])) then
    begin
      if ((ADOBoletoOperacao.Active) and
        (ADOBoletoOperacaoStatusBoletoOperacao.AsString = 'SUSPENSO') and
        (MessageDlg('Deseja liberar a operacao para o Setor de Liberação ?',
        mtConfirmation, [mbYes, mbNo], 0) = mrYes)) then
        ADOBoletoOperacaoStatusBoletoOperacao.AsString := 'ALTERACAO';
      ADOBoletoOperacao.Cancel;
    end;
    AbreContrato(0);

    if (ADOBoletoOperacao.RecordCount < 1) then
      Inicio
    else
      Botoes(True, False, True, True, True, False, False, False);

  end
  else
    Inicio;

  BloqueiaTodos;

end;

procedure TFrmCadEmprestimoBoletoOperacao.BitBtnExcluirClick(Sender: TObject);
begin
  inherited;
  if ((ADOBoletoOperacao.Active) and (ADOBoletoOperacao.RecordCount > 0) and
    (MessageDlg(' O Boleto ' + ADOBoletoOperacaoCarteira.AsString + '-' +
    ADOBoletoOperacaoProposta.AsString +
    ' será cancelado e não poderá mais ser editado. Confirma o cancelamento ? ',
    mtConfirmation, [mbYes, mbNo], 0) = mrYes)) then
  begin
    with (DMDados) do
    begin
      ADOExecuta.Close;
      ADOExecuta.sql.Clear;
      ADOExecuta.sql.Add
        ('select proprop from factbpro with (nolock) where proprop = ' +
        Bordero.Text + ' and proclas = ' + #39 + Carteira.Text + #39);
      ADOExecuta.Open;
      if (ADOExecuta.RecordCount > 0) then
      begin
        MessageDlg('Já foi feito a proposta para o boleto. ' + #13 + #10 +
          '  Deve-se cancelar somente a proposta. ', mtInformation, [mbOK], 0);
        BitBtnExcluir.SetFocus;
        Abort;
      end;
    end;
    if not(ADOBoletoOperacao.State in [dsInsert, dsEdit]) then
      ADOBoletoOperacao.Edit;
    ADOBoletoOperacaoStatusBoletoOperacao.AsString := 'CANCELADO';
    ADOBoletoOperacaoUsuarioComercial.AsInteger := Ususario.Codigo;

    GravaBoleto;

    FechaDados;
    BitBtnCancelarClick(Sender);
  end;
  Botoes(False, False, False, False, False, False, False, False);
  Inicio;

end;

procedure TFrmCadEmprestimoBoletoOperacao.FechaDados;
begin
  ADOCliente.Close;
  ADOTitularGrupo.Close;
  ADOOperador.Close;
  ADOProduto.Close;
  ADOTarifaCobranca.Close;
  ADOBoletoPagamento.Close;
  ADOBoletoOperacao.Close;
  ADOParcela.Close;

end;

procedure TFrmCadEmprestimoBoletoOperacao.AbreDados(XCarteira,
  XProposta: String);
begin

  FrmPrincipal.Mensagem('Verificando permissão.');
  if (StrToInt64(XProposta) <> 0) then
  begin
    Auxs := ' Select top 1 Bop.CodigoPromotor, Regiao from Kg_BoletoOperacao Bop with (nolock) , Kg_Promotor prt with (nolock) ';
    Auxs := Auxs + ' where Bop.CodigoPromotor = Prt.CodigoPromotor ';
    Auxs := Auxs + ' and Proposta = ' + XProposta + ' and Carteira = ' + #39 +
      XCarteira + #39;
    Auxs := Auxs + AcessoArea('and Bop.CodigoPromotor ', 'and prt.Regiao',
      ' and prt.CodigoMacrorregiao', '');

    DMDados.ADOExecuta.Close;
    DMDados.ADOExecuta.sql.Clear;
    DMDados.ADOExecuta.sql.Add(Auxs);
    DMDados.ADOExecuta.Open;

    if (DMDados.ADOExecuta.RecordCount < 1) then
    begin
      Application.MessageBox
        ('Boleto não encontrado ou sem permissão para visualização.', 'Atenção',
        MB_OK + MB_ICONASTERISK + MB_DEFBUTTON1 + MB_APPLMODAL);
      Bordero.SetFocus;
      Abort;
    end;

  end;

  FrmPrincipal.Mensagem('Exibindo a proposta...');
  if (ADOCarteira.RecordCount = 1) then
  begin
    FechaDados;
    with (ADOBoletoOperacao) do
    begin
      Close;
      Parameters[0].Value := XProposta;
      Parameters[1].Value := XCarteira;
      Open;
    end;

    ADOBoletoPagamento.Open;
    ADOCliente.Open;
    ADOOperador.Open;
    ADOProduto.Open;

    AbreContrato(1);

    ADOTarifaCobranca.Open;
  end
  else
    Raise Exception.Create('Carteira inexistente !');
  FrmPrincipal.Mensagem;
end;

procedure TFrmCadEmprestimoBoletoOperacao.ADOBoletoOperacaoBeforePost(DataSet: TDataSet);
begin
  inherited;
  IF (ADOBoletoOperacaoProposta.AsVariant = NULL) THEN
  BEGIN
    ADOBoletoOperacaoProposta.AsInteger := DMDados.GERAIDPROPOSTA( Carteira.Text , ADOBoletoOperacaoCodigoCedente.AsString , 'ICPJ - TELA : 226 - USUÁRIO : ' + IntToStr(Ususario.Codigo));
    IF ADOBoletoOperacaoProposta.AsInteger = -1 THEN
    BEGIN
      ShowMessage('Erro ao gerar idendificador para a proposta !');
      EXIT;
    END;
  END;
end;

procedure TFrmCadEmprestimoBoletoOperacao.BitBtnCarteiraClick(Sender: TObject);
begin
  inherited;
  if (Carteira.Enabled) then
  begin
    DMDados.ADOExecuta.Close;
    DMDados.ADOExecuta.sql.Clear;
    DMDados.ADOExecuta.sql.Add
      (' select clacod Codigo, clanom Nome from factbcla with (nolock) where CLACOD in (''IF'',''IR'') ');
    DMDados.ADOExecuta.Open;
    with (DMDados) do
    Begin
      Auxs := AuxProcura(ADOExecuta, 'CODIGO');
      if (Auxs <> '') then
        Carteira.Text := Auxs;
      Carteira.SetFocus;
    end;
    DMDados.ADOExecuta.Close;
  end;
end;

procedure TFrmCadEmprestimoBoletoOperacao.ADOClienteBeforeOpen
  (DataSet: TDataSet);
begin
  inherited;
  ADOCliente.Parameters[0].Value := ADOBoletoOperacaoCodigoCedente.AsInteger;
end;

procedure TFrmCadEmprestimoBoletoOperacao.ADOOperadorBeforeOpen
  (DataSet: TDataSet);
begin
  inherited;
  ADOOperador.Parameters[0].Value := ADOBoletoOperacaoCodigoPromotor.AsInteger;
end;

procedure TFrmCadEmprestimoBoletoOperacao.ADOTarifaCobrancaBeforeOpen
  (DataSet: TDataSet);
begin
  inherited;
  ADOTarifaCobranca.Parameters[0].Value :=
    ADOBoletoOperacaoCodigoTabelaTarifa.AsInteger;
end;

procedure TFrmCadEmprestimoBoletoOperacao.DBRGTipoContratoChange
  (Sender: TObject);
begin
  inherited;
  if ((ADOBoletoOperacao.Active) and (ADOBoletoOperacao.State in [dsInsert,
    dsEdit])) then
  begin
    if DBRGTipoContrato.ItemIndex = 1 then
    begin
      ADOBoletoOperacaoValorOutrasDespesas.AsFloat := 1000;
      ADOBoletoOperacaoValorIOFComplementar.AsFloat := 0.0000;
    end
    else
    begin
      ADOBoletoOperacaoValorIOFComplementar.AsFloat := 0.38;

    end;
  end;
end;

procedure TFrmCadEmprestimoBoletoOperacao.DBRGTipoContratoClick
  (Sender: TObject);
begin
  inherited;
  if DBRGTipoContrato.ItemIndex = 1 then
  begin
    ADOBoletoOperacaoValorTaxaIOFComplementar.AsFloat := 0.0000;
  end
  else
    ADOBoletoOperacaoValorTaxaIOFComplementar.AsFloat := 0.38;
end;

procedure TFrmCadEmprestimoBoletoOperacao.DSBoletoPagamentoStateChange
  (Sender: TObject);
begin
  inherited;
  ReReadOnlympoGrid(ADOBoletoPagamentoCodigoPagamento.AsInteger);
end;

procedure TFrmCadEmprestimoBoletoOperacao.DBGridPagamentosDblClick
  (Sender: TObject);
Var
  AuxsIdentificacao: String;
  DisplayLabel: TStringList;
begin
  inherited;
  if ((UpperCase(DBGridPagamentos.SelectedField.DisplayLabel) = 'CONTA') and
    (ADOBoletoOperacao.Active)) then
  begin
    Auxs := 'Select ID_CDC as Identificacao, CDCBCO as Bco, bandes as Descrição, CDCCTA as Conta, CDCCTADIG as ContaDV, CDCAGE as Agencia, CDCAGEDIG as AgenciaDV ';
    Auxs := Auxs +
      ' from factbcdc cdc with (nolock) , facbanco ban with (nolock) ';
    Auxs := Auxs + ' where cdcbco = bancod and cdccli = ' +
      ADOBoletoOperacaoCodigoCedente.AsString;
    Auxs := Auxs + ' order by Descrição ';
    with (DMDados.ADOExecuta) do
    begin
      Close;
      sql.Clear;
      sql.Add(Auxs);
      Open;
      AuxsIdentificacao := AuxProcura(DMDados.ADOExecuta, 'Identificacao');

      if ((AuxsIdentificacao <> '') and (ADOBoletoPagamento.State <> dsBrowse))
      then
      begin
        Auxs := 'SELECT ID_CDC, CDCCLI, CDCCTA, CDCCTADIG, CDCBCO, CDCAGE, CDCAGEDIG ';
        Auxs := Auxs +
          ' FROM FACTBCDC CDC WITH (NOLOCK) WHERE ISNULL(CDC.CDCSTATUS,''ATIVO'') <> ''INATIVO'' ';
        Auxs := Auxs + ' AND ID_CDC = ' + AuxsIdentificacao;
        Close;
        sql.Clear;
        sql.Add(Auxs);
        Open;
        ADOBoletoPagamentoConta.AsString :=
          Trim(DMDados.ADOExecuta.FieldByName('CDCCTA').AsString);
        ADOBoletoPagamentoContaDV.AsString :=
          Trim(DMDados.ADOExecuta.FieldByName('CDCCTADIG').AsString);
        ADOBoletoPagamentoBanco.AsString :=
          Trim(DMDados.ADOExecuta.FieldByName('CDCBCO').AsString);
        ADOBoletoPagamentoAgencia.AsString :=
          Trim(DMDados.ADOExecuta.FieldByName('CDCAGE').AsString);
        ADOBoletoPagamentoAgenciaDV.AsString :=
          Trim(DMDados.ADOExecuta.FieldByName('CDCAGEDIG').AsString);
      end;
    end;
    DMDados.ADOExecuta.Close;

  end
  else if ((UpperCase(DBGridPagamentos.SelectedField.DisplayLabel)
    = 'CODIGOPAGAMENTO') and (ADOBoletoOperacao.Active)) then
  begin
    Auxs := 'select CodigoPagamento as Codigo, Nome as Descrição, LocalPagamento, Status from Kg_OcorrenciaPagamento with (nolock) where Status <> ''INATIVO''  ';
    Auxs := Auxs + ' order by Nome ';
    with (DMDados.ADOExecuta) do
    begin
      Close;
      sql.Clear;
      sql.Add(Auxs);
      Open;
      if (Fields[3].AsString <> 'INATIVO') then
      begin
        Auxs := AuxProcura(DMDados.ADOExecuta, 'Codigo');
        if (Trim(Auxs) <> '') then
          if (ADOBoletoPagamento.State <> dsBrowse) then
            ADOBoletoPagamentoCodigoPagamento.AsString := Auxs;
      end
      else
      begin
        ShowMessage('Codigo de pagamento invalido / inativo');
        ADOBoletoPagamentoCodigoPagamento.AsString := '';
      end;

    end;
  end
  else if ((UpperCase(DBGridPagamentos.SelectedField.DisplayLabel)
    = 'TIPOCONTA') and (ADOBoletoOperacao.Active)) then
  begin
    if ((ADOBoletoPagamento.Active) and (ADOBoletoPagamento.State in [dsInsert,
      dsEdit])) then
    begin
      DisplayLabel := TStringList.Create;
      DisplayLabel.Clear;
      DisplayLabel.Add('Sigla');
      DisplayLabel.Add('Descrição');
      if ADOPesquisa('Sigla, Descricao', 'kg_tipoContaBancoCentral', 'Sigla',
        DMConecta.ADOCapitalDeGiro, DMDados.ADOExecuta.Fields, 'Sigla', '', '',
        DisplayLabel) then
      begin
        If (StringsPesquisa.Strings[0] <> '') then
          ADOBoletoPagamentoTipoConta.Text := StringsPesquisa[0];
        If StringsPesquisa[0] = 'SC' then
        begin
          ADOBoletoPagamentoBanco.AsString := '0';
          ADOBoletoPagamentoConta.Clear;
          ADOBoletoPagamentoContaDV.Clear;
          ADOBoletoPagamentoPercentual.Clear;
          ADOBoletoPagamentoAgencia.Clear;
          ADOBoletoPagamentoAgenciaDV.Clear;
          ADOBoletoPagamentoPercentual.Clear;
        end;
      end;
    end;
  end;

end;

procedure TFrmCadEmprestimoBoletoOperacao.DBGridPagamentosDrawColumnCell
  (Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  inherited;
  If (gdSelected in State) then
  begin
    (Sender as TDBGrid).Canvas.Brush.Color := clInfoBk;
    (Sender as TDBGrid).Canvas.Font.Color := clBlack;
    (Sender as TDBGrid).Canvas.Font.Style := (Sender as TDBGrid)
      .Canvas.Font.Style + [FSBOLD];
  end
  else
  begin
    If (ADOBoletoPagamentoCodigoPagamento.AsInteger = 2) then
      (Sender as TDBGrid).Canvas.Brush.Color := clInfoBk;

    (Sender as TDBGrid).DefaultDrawDataCell(Rect,
      (Sender as TDBGrid).Columns[DataCol].Field, State);

  end;
end;

procedure TFrmCadEmprestimoBoletoOperacao.ADOBoletoOperacaoAfterPost
  (DataSet: TDataSet);
begin
  inherited;
  Carteira.Text := ADOBoletoOperacaoCarteira.AsString;
  Bordero.Text := ADOBoletoOperacaoProposta.AsString;
end;

procedure TFrmCadEmprestimoBoletoOperacao.BitBtnFecharClick(Sender: TObject);
var
  DtOperacaoPraticada, data: TDateTime;
  TaxaEfetivaPraticada: Double;
begin
  inherited;
  if (KG_SimulacaoOperacao.Active) and (not KG_SimulacaoOperacao.IsEmpty) and
     (not ValidaPreenchimentoTaxaEfetiva(KG_SimulacaoOperacaoprotxef.AsFloat)) then
  begin
    Abort;
  end;

  data := strtodatetime(DBEditDataOperacao.Text);
  ADOaux.Close;
  ADOaux.sql.Text := 'select top 1 isnull(case when DATEDIFF(day,' + '''' +
    FormatDateTime('yyyy-mm-dd hh:mm:ss', data) + '''' +
    ',DataLancamento)<0 then DATEDIFF(day,' + '''' +
    FormatDateTime('yyyy-mm-dd hh:mm:ss', data) + '''' +
    ',DataLancamento)*-1 else DATEDIFF(day,' + '''' +
    FormatDateTime('yyyy-mm-dd hh:mm:ss', data) + '''' +
    ',DataLancamento) end,0) diferenca,cli.suplychain from factbcli  cli inner join Kg_AvaliacaoCadastral kg on (kg.InscricaoPrefixo=cli.CLICGC) where cli.clicod='
    + '''' + DBEditCedente.Text + '''' +
    'and clitip=''C'' order by kg.DataLancamento desc ';
  ADOaux.Open;

    ADOaux.Close;
  ADOaux.sql.Text := 'select top 1 isnull(case when DATEDIFF(day,' + '''' +
    FormatDateTime('yyyy-mm-dd hh:mm:ss', data) + '''' +
    ',DataLancamento)<0 then DATEDIFF(day,' + '''' +
    FormatDateTime('yyyy-mm-dd hh:mm:ss', data) + '''' +
    ',DataLancamento)*-1 else DATEDIFF(day,' + '''' +
    FormatDateTime('yyyy-mm-dd hh:mm:ss', data) + '''' +
    ',DataLancamento) end,0) diferenca,cli.suplychain from factbcli  cli inner join Kg_AvaliacaoCadastral kg on (kg.InscricaoPrefixo=cli.CLICGC) where cli.clicod='
    + '''' + DBEditCedente.Text + '''' +
    'and clitip=''C'' order by kg.DataLancamento desc ';
  ADOaux.Open;


  if ((ADOBoletoOperacao.Active) and
    (Pos(ADOBoletoOperacaoStatusBoletoOperacao.AsString,
    'CANCELADO, FECHADO, CONCLUIDO ') = 0)) then
  begin

    if (ADOBoletoOperacaoValorTaxaTac.AsFloat = 0) and
      (not VerificaTacDigitadaLiberada(Bordero.Text, DBEditCedente.Text)) then
    begin
     ADOaux2.close;
     ADOaux2.sql.Text:='select isnull(cast(TaxaTac as int),''-1'') from kg_produto where CodigoProduto='+''''+ADOBoletoOperacaoCodigoProduto.AsString+''''+'';
     ADOaux2.open;
     if ADOaux2.fields[0].AsString<>'0' then
      begin
      Application.MessageBox
        ('Operação tem Tac digitada não autorizada. Procure o depto de análise de cadastro pj.',
        'Atenção', MB_OK + MB_ICONASTERISK + MB_DEFBUTTON1 + MB_APPLMODAL);
      BitBtnCancelar.Click;
      Abort;
      end;
    end;
    if (ADOBoletoOperacaoTaxaAberturaCredito.AsFloat <> 120) and
      (not VerificaTxAberturaCreditoDigitadaLiberada(Bordero.Text,
      DBEditCedente.Text)) then
    begin
     ADOaux2.close;
     ADOaux2.sql.Text:='select isnull(cast(TaxaAberturaCredito  as int),''-1'') from kg_produto where CodigoProduto='+''''+ADOBoletoOperacaoCodigoProduto.AsString+''''+'';
     ADOaux2.open;
     if ADOaux2.fields[0].AsString<>'0' then
      begin
      Application.MessageBox
        ('Operação tem Tx. Abertura Crédito digitada não autorizada. Procure o depto de análise de cadastro pj.',
        'Atenção', MB_OK + MB_ICONASTERISK + MB_DEFBUTTON1 + MB_APPLMODAL);
      BitBtnCancelar.Click;
      Abort;
      end;
    end;
    if (ADOBoletoPagamentoProposta.AsInteger = 0) then
    begin
      Application.MessageBox
        ('As informações para o pagamento não foram informados.', 'Atenção',
        MB_OK + MB_ICONASTERISK + MB_DEFBUTTON1 + MB_APPLMODAL);
      Abort;
    end;
    if (TravaDocumentos(ADOClienteclicgc.AsString +
      ADOClienteclicgcfili.AsString + ADOClienteclicgcdv.AsString)) and
      (not AutorizacaoBoletoDocumentosPendentes(StrToInt(DBEditCedente.Text)))
    then
    begin
      Application.MessageBox('Existem documentos pendentes para o Cedente.' +
        chr(10) + '' + chr(10) +
        'Procure o depto de Cadastro PJ, para regularizar as documentações.' +
        chr(10) + 'Para autorização procure o depto de Operacação.', 'Atenção',
        MB_OK + MB_ICONEXCLAMATION + MB_DEFBUTTON1 + MB_APPLMODAL);
      Abort;
    end;
    If ProcuraNome
      (' SELECT ISNULL(AGRONEGOCIO,''NAO'') FROM FACTBCLI CLI WITH(NOLOCK) ' +
      ' WHERE CLI.CLICOD = ' +
      IntToStr(ADOBoletoOperacaoCodigoCedente.AsInteger) +
      ' AND CLITIP = ''C'' ') = 'SIM' then
    begin
      If ProcuraNome
        (' SELECT ISNULL(CARTAAGRONEGOCIO,''NAO'') FROM KG_BOLETOOPERACAO WITH(NOLOCK) '
        + ' WHERE PROPOSTA = ' + IntToStr(ADOBoletoPagamentoProposta.AsInteger))
        = 'NAO' then
      begin
        Application.MessageBox('Carta Agronegocio não registrada.' + chr(10) +
          '' + chr(10) +
          'Solicitar o cedente o envio da carta de "Notificação Agronegócio", para regularizar as documentações.'
          + chr(10) +
          'Para autorização e recebimento da carta, procure o depto de operações.',
          'Atenção!', MB_OK + MB_ICONSTOP + MB_DEFBUTTON1 + MB_APPLMODAL);
        Exit;
      end;
    end;

    If ADOClienteDataEntregaFichaContaCorrente.IsNull then
    begin
      Application.MessageBox('Contrato de Conta Corrente não registrada.' +
        chr(10) + '' + chr(10) +
        'Procure o depto de Conta Corrente, para regularizar o mesmo.' + chr(10)
        + 'Processo será cancelado.', 'Aviso !', MB_OK + MB_ICONASTERISK +
        MB_DEFBUTTON1 + MB_APPLMODAL);
      Exit;
    end;


    if (Copy(ADOBoletoOperacaoCarteira.AsString, 1, 1) <> 'A') then
    begin
      if ((ADOBoletoPagamento.RecordCount < 1) and
        (Application.MessageBox
        ('As informaçoes para pagamento do boleto não foram informadas.' +
        chr(10) + '             Saindo do boleto sem a conclusão do processo,' +
        chr(10) + '                ele não será emitido para o Depto de Operações.'
        + chr(10) + '' + chr(10) +
        '                            Deseja sair assim mesmo ?', '',
        MB_YESNO + MB_ICONQUESTION + MB_DEFBUTTON1 + MB_APPLMODAL)
        = ID_NO)) Then
        Abort;

      if (((PesquisaLimiteUsado + ADOBoletoOperacaoValorLiberado.AsFloat) >
        ADOContratoExtraValorLimite.AsFloat) and not(AutorizacaoID_Operacao))
      then
      begin
        Application.MessageBox('Valor utilizado  maior que valor do limite.',
          'Atenção', MB_OK + MB_ICONASTERISK + MB_DEFBUTTON1 + MB_APPLMODAL);
        Abort;
      end;


    end;


    if ((ADOBoletoOperacao.RecordCount < 1) and
      not(Application.MessageBox('O boleto não foi gravado.' + chr(10) + '' +
      chr(10) + ' Deseja gravá-lo ?', 'Atenção', MB_YESNO + MB_ICONQUESTION +
      MB_DEFBUTTON1 + MB_APPLMODAL) = ID_YES)) Then
      ADOBoletoOperacao.Cancel
    else
    begin
      if ((ADOBoletoPagamento.Active) and (ADOBoletoPagamento.State
        in [dsInsert, dsEdit])) then
        ADOBoletoPagamento.Post;

      if ((ADOParcela.Active) and (ADOParcela.State in [dsInsert, dsEdit])) then
        ADOParcela.Post;

      ConsisteFechamento;

      if (ErroConsistencia <> '') then
      begin
        Application.MessageBox(pChar(ErroConsistencia), 'Atenção',
          MB_OK + MB_ICONEXCLAMATION + MB_DEFBUTTON1 + MB_APPLMODAL);
        Abort;
      end;

      if ((Copy(ADOBoletoOperacaoCarteira.AsString, 1, 1) <> 'A') and
        (ADOBoletoPagamento.RecordCount < 1) and
        (Application.MessageBox
        ('As informaçoes para pagamento do boleto não foram informadas.' +
        chr(10) + '             Saindo do boleto sem a conclusão do processo,' +
        chr(10) + '                ele não será emitido para o Depto de Operações.'
        + chr(10) + '' + chr(10) +
        '                            Deseja sair assim mesmo ?', '',
        MB_YESNO + MB_ICONQUESTION + MB_DEFBUTTON1 + MB_APPLMODAL)
        = ID_NO)) Then
        Exit;

      Try
        if not(DMConecta.ADOCapitalDeGiro.InTransaction) then
          DMConecta.ADOCapitalDeGiro.BeginTrans;

        if not(ADOBoletoOperacao.State in [dsEdit, dsInsert]) then
          ADOBoletoOperacao.Edit;

        if (ADOBoletoOperacaoStatusBoletoOperacao.AsString = 'SUSPENSO') then
          ADOBoletoOperacaoStatusBoletoOperacao.AsString := 'ALTERACAO';

        if (ADOBoletoOperacaoStatusBoletoOperacao.AsString = 'ABERTO') then
          ADOBoletoOperacaoStatusBoletoOperacao.AsString := 'CONCLUIDO';

        ADOBoletoOperacaoDataLiberacaoEntrada.AsDateTime := PesquisaDataBanco();

        GravaBoleto;

        DMConecta.ADOCapitalDeGiro.CommitTrans;

        if PalavraEspecial(ADOBoletoOperacaoInstrucoesDebitosExistente.AsString)
        then
          EnviaEmail;

      Except
        on E: Exception do
        begin
          if (DMConecta.ADOCapitalDeGiro.InTransaction) then
          begin
            FrmPrincipal.Mensagem('Cancelando alterações...');
            DMConecta.ADOCapitalDeGiro.RollbackTrans;
          end;
          MessageDlg(' Mensagem: ' + E.Message, mtError, [mbOK], 0);

          Raise E;
        end;
      end;
    end;

  end;

  Inicio;

  BitBtnFechar.Tag := 0;



end;

procedure TFrmCadEmprestimoBoletoOperacao.DBNavigatorPagamentosClick
  (Sender: TObject; Button: TNavigateBtn);
begin
  inherited;


  if (DSBoletoPagamento.AutoEdit) then
  begin
    case (Button) of
      nbInsert:
        begin

          if ((ADOBoletoOperacao.Active) and
            (ADOBoletoOperacao.State <> dsBrowse)) then
            BitBtnSalvarClick(Sender);

          if (TDBNavigator(Sender).DataSource.State = dsInsert) then
            TDBNavigator(Sender).DataSource.DataSet.Cancel;
          TDBNavigator(Sender).DataSource.DataSet.Append;
          Abort;
        end;

      nbPost:
        begin
          if ((ADOBoletoPagamento.Active) and
            (ADOBoletoPagamentoItem.AsInteger = 0)) then
          begin
            Application.MessageBox
              ('O número do item de pagamento não foi informado.', 'Atenção',
              MB_OK + MB_ICONASTERISK + MB_DEFBUTTON1 + MB_APPLMODAL);
            ADOBoletoPagamento.Cancel;

          end;
          if (ADOBoletoPagamentoTipoConta.AsString = '') then
          begin
            Application.MessageBox
              ('O Tipo de conta não informada. Pagamento não sera realizado. ',
              'Atenção', MB_OK + MB_ICONEXCLAMATION + MB_DEFBUTTON1 +
              MB_APPLMODAL);
            DBGridPagamentos.SelectedIndex := 6;
          end;

        end;

    end;
  end
  else
    MessageDlg('Clique no botão Alterar para autorizar o processo. ',
      mtInformation, [mbOK], 0);

end;

procedure TFrmCadEmprestimoBoletoOperacao.DBGridPagamentosEnter
  (Sender: TObject);
begin
  inherited;

  if ((ADOBoletoOperacao.State = dsInsert) and
    (MessageDlg('Deseja gerar o número do boleto ? ', mtInformation,
    [mbYes, mbNo], 0) = mrYes)) then
  begin
    BitBtnSalvar.Click;
    DBNavigatorPagamentosBeforeAction(Sender, nbInsert);
  end
  else
    ADOBoletoPagamento.Cancel;


end;

procedure TFrmCadEmprestimoBoletoOperacao.DBNavigatorPagamentosBeforeAction
  (Sender: TObject; Button: TNavigateBtn);
begin
  inherited;
  case (Button) of
    nbInsert:
      begin
        if ((ADOBoletoPagamento.Active) and (ADOBoletoPagamentoItem.IsNull))
        then
          ADOBoletoPagamento.Cancel;

        if ((ADOBoletoOperacao.Active) and (ADOBoletoOperacao.State <> dsBrowse))
        then
          BitBtnSalvarClick(Sender);

        ADOBoletoPagamento.Append;


      end;
    nbCancel:
      ADOBoletoPagamento.Cancel;

    nbPost:
      begin
        if ((ADOBoletoPagamento.Active) and (ADOBoletoPagamentoValor.IsNull))
        then
          ADOBoletoPagamentoValor.AsFloat := 0.00;

      end;

  end;
end;

procedure TFrmCadEmprestimoBoletoOperacao.DBGridPagamentosKeyPress
  (Sender: TObject; var Key: Char);
begin
  inherited;
  if (Key = #13) then
    DBGridPagamentosDblClick(Sender);

end;

procedure TFrmCadEmprestimoBoletoOperacao.BitBtnBoletoClick(Sender: TObject);
Var
  Select, Tabela, Criterio, Join, Ordem: String;

begin
  inherited;
  StringsDisplayLabel.Clear;
  StringsDisplayLabel.Add('Status          ');
  StringsDisplayLabel.Add('Carteira');
  StringsDisplayLabel.Add('Boleto');
  StringsDisplayLabel.Add('Cód Cedente');
  StringsDisplayLabel.Add('Nome Cedente');
  StringsDisplayLabel.Add('Data Operação');
  StringsDisplayLabel.Add('Valor Operação');
  StringsDisplayLabel.Add('Nome Produto');
  StringsDisplayLabel.Add('Data Criação');
  StringsDisplayLabel.Add('Liberação Entrada');
  StringsDisplayLabel.Add('Liberação Saida');
  StringsDisplayLabel.Add('Financeiro Entrada');
  StringsDisplayLabel.Add('Financeiro Saida');
  Select := ' Bolo.StatusBoletoOperacao, Bolo.Carteira, Bolo.Proposta, Bolo.CodigoCedente as Cedente ';
  Select := Select +
    ' ,Clinom as NomeCedente, Bolo.DataOperacao, Bolo.ValorOperacao ';
  Select := Select +
    ' ,NomeProduto = (Select Descricao from Kg_Produto X with (nolock) where X.CodigoProduto = Bolo.CodigoProduto) ';
  Select := Select +
    ' ,[DataPromotor], [DataLiberacaoEntrada], [DataLiberacaoSaida] ';
  Select := Select + ' ,[DataFinanceiroEntrada], [DataFinanceiroSaida] ';
  Tabela := ' dbo.Kg_BoletoOperacao Bolo with (nolock) ';
  Join := ' Join dbo.factbcli cli with (nolock) ON Cli.clicod = Bolo.CodigoCedente and Cli.clitip = ''C'' '
    + ' Join Kg_promotor PRT  with (nolock) ON BolO.CodigoPromotor = prt.CodigoPromotor ';
  Criterio := ' WHERE Proposta is not null ' +
    AcessoArea('and cli.cliope       ', 'and prt.Regiao',
    ' and prt.CodigoMacrorregiao', 'cli');

  Ordem := ' DataOperacao desc, NomeCedente ';

  if ADOPesquisa(Select, Tabela, 'Carteira,Proposta',
    DMConecta.ADOCapitalDeGiro, NIl, Ordem, Criterio, Join, StringsDisplayLabel,
    0, 100, 'OP') then
  begin
    if (StringsPesquisa.Text <> '') then
    begin
      Carteira.Text := Copy(StringsPesquisa.Strings[0], 1, 2);
      Bordero.Text := Copy(StringsPesquisa.Strings[0], 4, 10);
      CarteiraExit(Sender);
      BorderoExit(Sender);

    end;
  end
  else
    Bordero.SetFocus;

end;

procedure TFrmCadEmprestimoBoletoOperacao.BitBtnSairClick(Sender: TObject);
begin
  inherited;
  if ((NivelPermissao > 1) and (ADOBoletoOperacao.Active) and
    (Copy(ADOBoletoOperacaoCarteira.AsString, 1, 1) <> 'A') and
    (Pos(ADOBoletoOperacaoStatusBoletoOperacao.AsString, 'ABERTO, SUSPENSO')
    <> 0)) then
  begin
    If Application.MessageBox
      ('Seu boleto não foi liberado para o depto de operações.' + chr(10) + '' +
      chr(10) + '                       Deseja sair assim mesmo ?' + chr(10) +
      '' + chr(10) + '', 'Atenção', MB_YESNO + MB_ICONEXCLAMATION +
      MB_DEFBUTTON1 + MB_APPLMODAL) = ID_NO Then
      Exit;
    Close;
  end
  else
    Close;
end;

Procedure TFrmCadEmprestimoBoletoOperacao.Inicio;
begin
  PgContrlEmprestimo.ActivePageIndex := 0;
  if ((ADOBoletoPagamento.State in [dsInsert, dsEdit])) then
    ADOBoletoPagamento.Cancel;

  if ((ADOBoletoOperacao.State in [dsInsert, dsEdit])) then
    ADOBoletoOperacao.Cancel;

  if ((ADOParcela.State in [dsInsert, dsEdit])) then
    ADOParcela.Cancel;

  FechaDados;

  AtualizaAuxQ;

  ADOCarteira.Close;
  Botoes(False, False, False, False, False, False, False, False);
  Carteira.Enabled := True;
  Bordero.Enabled := True;
  Carteira.Clear;
  Bordero.Clear;
  Carteira.SetFocus;
  if Assigned(Tformmsg(formmsg)) then
    formmsg.Close;

end;

procedure TFrmCadEmprestimoBoletoOperacao.CodigoTipoCarteiraExit
  (Sender: TObject);
begin
  inherited;
  OnExit(Sender);
  if (CodigoTipoCarteira.Text <> '') then
  begin
    Auxs := ' select CodigoTipoCarteira, Descricao  ' +
      ' from Kg_TipoCarteira TPC with (nolock) ' +
      ' where CodigoTipoCarteira = ' + CodigoTipoCarteira.Text;
    with (DMDados.ADOExecuta) do
    begin
      Close;
      sql.Clear;
      sql.Add(Auxs);
      Open;
      if (Recordset.RecordCount < 1) then
      Begin
        MessageDlg('Codigo do tipo de carteira não encontrado.', mtInformation,
          [mbOK], 0);
        CodigoTipoCarteira.SetFocus;
        Abort;
      end;

    end;

  end;

end;

procedure TFrmCadEmprestimoBoletoOperacao.DBEditCedenteKeyUp(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if (Key = VK_F2) then
    BitBtnCedente.Click;
end;

procedure TFrmCadEmprestimoBoletoOperacao.BitBtnPromotorClick(Sender: TObject);
begin
  inherited;
  if ((ADOBoletoOperacao.Active) and (ADOBoletoOperacao.State in [dsEdit,
    dsInsert])) then
    if (ADOPesquisa(' CodigoPromotor, Nome', 'dbo.Kg_Promotor',
      'CodigoPromotor', DMConecta.ADOCapitalDeGiro, Nil, 'CodigoPromotor',
      '', '')) then
    begin
      if (StringsPesquisa.Text <> '') then
      begin
        ADOBoletoOperacaoCodigoPromotor.AsString := StringsPesquisa.Strings[0];
        DBEditPromotor.SetFocus;
        ADOOperador.Close;
        ADOOperador.Open;
      end
      else
        DBEditPromotor.SetFocus;
    end;
end;

procedure TFrmCadEmprestimoBoletoOperacao.BitBtnPromotorKeyUp(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if (Key = VK_F2) then
    BitBtnPromotor.Click;
end;

procedure TFrmCadEmprestimoBoletoOperacao.CarteiraKeyUp(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if (Key = VK_F2) then
    BitBtnCarteira.Click;
end;

procedure TFrmCadEmprestimoBoletoOperacao.BorderoKeyUp(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if (Key = VK_F2) then
    BitBtnBoleto.Click;
end;

procedure TFrmCadEmprestimoBoletoOperacao.ImportaSimulacao;
begin
  with (KG_SimulacaoOperacao) do
  begin
    Close;
    Parameters[0].Value := SimulacaoBoleto;
    Parameters[1].Value := Carteira.Text;
    Open;
    if (Recordset.RecordCount > 0) then
    begin
      if (ADOBoletoOperacao.RecordCount < 1) then
      begin

        ADOBoletoOperacaoIOFValorTeto.AsFloat :=
          KG_SimulacaoOperacaoIOFValorTeto.AsFloat;
        ADOBoletoOperacaoIOFBeneficio.AsFloat :=
          KG_SimulacaoOperacaoIOFBeneficio.AsFloat;
        ADOBoletoOperacaoIOFAtraso.AsFloat :=
          KG_SimulacaoOperacaoIOFAtraso.AsFloat;

        ADOBoletoOperacaoId_Proposta.AsInteger :=
          KG_SimulacaoOperacaoId_Proposta.AsInteger;
        ADOBoletoOperacaoCarteira.AsString :=
          KG_SimulacaoOperacaoPROCLAS.AsString;
        ADOBoletoOperacaoTotalTitulo.AsInteger :=
          KG_SimulacaoOperacaoPROITEM.AsInteger;

        ADOBoletoOperacaoCodigoCedente.AsInteger :=
          KG_SimulacaoOperacaoproclie.AsInteger;
        ADOBoletoOperacaoCodigoRegiao.AsInteger :=
          KG_SimulacaoOperacaoCodigoRegiao.AsInteger;

        ADOBoletoOperacaoFloating.AsInteger := 0;

        ADOBoletoOperacaoCodigoPromotor.AsInteger :=
          KG_SimulacaoOperacaoprooper.AsInteger;
        ADOBoletoOperacaoDataOperacao.AsDateTime :=
          KG_SimulacaoOperacaoprodtop.AsDateTime;
        ADOBoletoOperacaoValorOperacao.AsFloat :=
          KG_SimulacaoOperacaoprovrbo.AsFloat;
        ADOBoletoOperacaoValorLiquido.AsFloat :=
          KG_SimulacaoOperacaoproliqu.AsFloat;
        ADOBoletoOperacaoValorLiberado.AsFloat :=
          KG_SimulacaoOperacaoProValorLiberado.AsFloat;

        ADOBoletoOperacaoTaxaInternaRetorno.AsFloat :=
          KG_SimulacaoOperacaoProTaxaInternaRetorno.AsFloat;

        ADOBoletoOperacaoValorPMT.AsFloat :=
          KG_SimulacaoOperacaoProValorPMT.AsFloat;
        ADOBoletoOperacaoValorFuturo.AsFloat :=
          KG_SimulacaoOperacaoProValorFuturo.AsFloat;
        ADOBoletoOperacaoTaxaSelic.AsFloat :=
          KG_SimulacaoOperacaoProTaxaSelic.AsFloat;

        ADOBoletoOperacaoTaxaMes.AsFloat := KG_SimulacaoOperacaoprotxme.AsFloat;
        ADOBoletoOperacaoTaxaEfetiva.AsFloat :=
          KG_SimulacaoOperacaoprotxef.AsFloat;
        ADOBoletoOperacaoCodigoProduto.AsInteger :=
          KG_SimulacaoOperacaoprodocumen.AsInteger;
        ADOBoletoOperacaoCodigoTabelaTarifa.AsInteger := 1;

        ADOBoletoOperacaoCodigoTipoCarteira.AsInteger :=
          KG_SimulacaoOperacaoCodigoTipoCarteira.AsInteger;

        ADOBoletoOperacaoTipoContrato.AsString :=
          KG_SimulacaoOperacaoPROTPCONTR.AsString;
        ADOBoletoOperacaoValorCustoCobranca.AsFloat :=
          KG_SimulacaoOperacaoPROCCOB.AsFloat;

        ADOBoletoOperacaoTipoPagtoIOF.AsString :=
          KG_SimulacaoOperacaoProTipoPagtoIOF.AsString;
        ADOBoletoOperacaoTipoPagtoTac.AsString :=
          KG_SimulacaoOperacaoProTipoPagtoTac.AsString;

        ADOBoletoOperacaoDomicilioBancario.AsString :=
          KG_SimulacaoOperacaoProDomicilioBancario.AsString;

        ADOBoletoOperacaoValorDoc.AsFloat :=
          KG_SimulacaoOperacaoPROVRDC.AsFloat;
        ADOBoletoOperacaoValorTaxaIOF.AsFloat :=
          KG_SimulacaoOperacaoPROTXIO.AsFloat;
        ADOBoletoOperacaoValorIOF.AsFloat :=
          KG_SimulacaoOperacaoProvrio.AsFloat;
        ADOBoletoOperacaoValorTaxaIOFComplementar.AsFloat :=
          KG_SimulacaoOperacaoProtxiofc.AsFloat;
        ADOBoletoOperacaoValorIOFComplementar.AsFloat :=
          KG_SimulacaoOperacaoProvriofc.AsFloat;

        ADOBoletoOperacaoValorTaxaTac.AsFloat :=
          KG_SimulacaoOperacaoPROTXCAC.AsFloat;

        ADOBoletoOperacaovalor_ecg.asfloat :=
          KG_SimulacaoOperacaovalor_ecg.asfloat;

        ADOBoletoOperacaoTaxaAberturaCredito.AsFloat :=
          KG_SimulacaoOperacaoTaxaAberturaCredito.AsFloat;

        ADOBoletoOperacaoValorTac.AsFloat :=
          KG_SimulacaoOperacaoPROVRCAC.AsFloat;

        ADOBoletoOperacaoValorSomatorioTacs.AsFloat :=
          KG_SimulacaoOperacaoProValorTacs.AsFloat;


        ADOBoletoOperacaoValorTaxaTMF.AsFloat := 0;

        ADOBoletoOperacaoValorTMF.AsFloat := 0;

        ADOBoletoOperacaoTarifaDigitacao.AsFloat :=
          KG_SimulacaoOperacaoPROTARIFADIGITACAO.AsFloat;
        ADOBoletoOperacaoValorTaxaSobreSaque.AsFloat :=
          KG_SimulacaoOperacaoPROTXSA.AsFloat;
        ADOBoletoOperacaoValorTaxaRisco.AsFloat :=
          KG_SimulacaoOperacaoPROTXRISCO.AsFloat;
        ADOBoletoOperacaoValorCustoRegistro.AsFloat :=
          KG_SimulacaoOperacaoPROTXRE.AsFloat;
        ADOBoletoOperacaoValorCustoCadastro.AsFloat :=
          KG_SimulacaoOperacaoPROTXCA.AsFloat;

         ADOBoletoOperacaoValor_ecg.AsFloat :=
          KG_SimulacaoOperacaovalor_ecg.AsFloat;

        ADOBoletoOperacaoValorOutrasDespesas.AsFloat :=
          KG_SimulacaoOperacaoPRODESP.AsFloat;
        ADOBoletoOperacaoValorTaxaCpmf.AsFloat :=
          KG_SimulacaoOperacaoPROTXIP.AsFloat;
        ADOBoletoOperacaoValorCpmf.AsFloat :=
          KG_SimulacaoOperacaoPROVRIP.AsFloat;

        ADOBoletoOperacaoValorCustoAdministrativo.AsFloat :=
          KG_SimulacaoOperacaoPROTAXAADMINISTRATIVA.AsFloat;

        ADOBoletoOperacaoCodigoControleArquivo.AsInteger :=
          KG_SimulacaoOperacaoCodigoControleArquivo.AsInteger;
        ADOBoletoOperacaoTaxaNominalPosFixada.AsFloat :=
          KG_SimulacaoOperacaoTaxaNominalPosFixada.AsFloat;
        ADOBoletoOperacaoDataPrimeiraParcela.AsDateTime :=
          KG_SimulacaoOperacaoProDataPrimeiraParcela.AsDateTime;
        ADOBoletoOperacaoDataPrimeiraParcelaOriginal.AsDateTime :=
          KG_SimulacaoOperacaoProDataPrimeiraParcelaOriginal.AsDateTime;
        ADOBoletoOperacaoDiasCarencia.AsInteger :=
          KG_SimulacaoOperacaoProDiasCarencia.AsInteger;

        ADOBoletoOperacaoParcelasCarencia.AsInteger :=
          KG_SimulacaoOperacaoProParcelasCarencia.AsInteger;

        ADOBoletoOperacaoValorFinanciado.AsFloat :=
          KG_SimulacaoOperacaoProValorFinanciado.AsFloat;

        ADOBoletoOperacaoValorReferencia.AsFloat :=
          KG_SimulacaoOperacaoProValorReferencia.AsFloat;

        ADOBoletoOperacaoValorCarencia.AsFloat :=
          KG_SimulacaoOperacaoProValorCarencia.AsFloat;

        ADOBoletoOperacaoDiasCarencia.AsInteger :=
          KG_SimulacaoOperacaoProDiasCarencia.AsInteger;
        ADOBoletoOperacaoId_ContratoOperacao.AsInteger :=
          KG_SimulacaoOperacaoId_ContratoOperacao.AsInteger;
        ADOBoletoOperacaoCongelarPMT.AsString :=
          KG_SimulacaoOperacaoProCongelarPMT.AsString;

        ADOBoletoOperacaoDebitarTituloOuContaCorrente.AsString := 'SIM';

        ADOBoletoOperacaoCodigoCenario.AsInteger :=2;


        ADOBoletoOperacaoUsuarioComercial.AsInteger := Ususario.Codigo;

        ADOBoletoOperacaoCustoEfetivoTotal.AsFloat :=
          KG_SimulacaoOperacaoCustoEfetivoTotal.AsFloat;

        ADOBoletoOperacaoCODPRIAVAL.AsInteger :=
          KG_SimulacaoOperacaoId_CodPrimeiroAvalista.AsInteger;
        ADOBoletoOperacaoCODSEGAVAL.AsInteger :=
          KG_SimulacaoOperacaoId_CodSegundoAvalista.AsInteger;
        ADOBoletoOperacaoCODTERAVAL.AsInteger :=
          KG_SimulacaoOperacaoId_CodTerceiroAvalista.AsInteger;
        ADOBoletoOperacaoCODQUAAVAL.AsInteger :=
          KG_SimulacaoOperacaoId_CodQuartoAvalista.AsInteger;
        ADOBoletoOperacaocontratoreservado.AsInteger :=
          KG_SimulacaoOperacaocontratoreservado.AsInteger;

        AtualizaAuxQ;

        AbreContrato(1)

      end;
      If Application.MessageBox
        ('Confirma a importação da(s) parcela(s) da simulação ?', 'Atenção',
        MB_YESNO + MB_ICONEXCLAMATION + MB_DEFBUTTON1 + MB_APPLMODAL)
        = ID_YES Then
      begin
        BitBtnSalvar.Click;
        ImportarParcelas;
        BitBtnSalvar.Click;

      end;
    end;
  end;

end;

function TFrmCadEmprestimoBoletoOperacao.AutorizacaoID_Operacao: Boolean;
begin
  Result := True;
  Auxs := ' select * from Kg_AutorizacaoRecebimento with (nolock) where ' +
    ' ID_ContratoOPeracao  = ' + ADOBoletoOperacaoId_ContratoOperacao.AsString +
    ' and Autorizacao_Vale_Ate >= ' + #39 +
    FormatDateTime(sqldate + ' hh:mm:ss.z', PesquisaDataBanco(True)) + #39;

  if (DMConecta.ADOCapitalDeGiro.Execute(Auxs).RecordCount < 1) then
    Result := False;

end;

procedure TFrmCadEmprestimoBoletoOperacao.FormCreate(Sender: TObject);
begin
  inherited;
  self.Valida_Ord := true;
  PgContrlEmprestimo.ActivePageIndex := 0;
  RefazNavegador(DBNavigatorParcelas);
  RefazNavegador(DBNavigatorPagamentos);
end;

procedure TFrmCadEmprestimoBoletoOperacao.ImportaContaPagamento
  (Controle: String);
var
  ItensAfetados: Integer;
begin
  if ((ADOBoletoOperacaoProposta.AsInteger = 0) and
    (ADOBoletoOperacaoCodigoProduto.AsInteger < 1)) then
  begin
    MessageDlg('Informe o código do produto e clique em importar pagamentos.',
      mtInformation, [mbOK], 0);
    DBEditDocumento.SetFocus;
    Abort;
  end;
  if not(DSBoletoPagamento.AutoEdit) then
  begin
    MessageDlg('Favor clicar no botão Alterar para autorizar a importação. ',
      mtInformation, [mbOK], 0);
    DBEditDocumento.SetFocus;
    Abort;
  end;

  with DMDados do
  begin

    ItensAfetados :=
      StrToInt64
      (ProcuraNome
      ('select convert(varchar,isnull(max(item),0)) from kg_boletoPagamento with (nolock) where proposta = '
      + Bordero.Text));
    ADOExecuta.Close;
    ADOExecuta.sql.Clear;
    ADOExecuta.sql.Add('SELECT T07_T00_CONTROLE, ' +
      ' T07_CONTROLE, T07_CARTEIRA, T07_INSCRICAO_TIPO_CED, ' +
      ' T07_INSCRICAO_NUMERO_CED, T07_BANCO, ' +
      ' T07_AGENCIA, T07_AGENCIADV, T07_CONTA, T07_CONTADV, ' +
      ' T07_COMPENSACAO, T07_PERCENTUAL, T07_DT_RECEBIMENTO, ISNULL(BAN.STATUS,''INATIVO'') AS STATUS '
      + ' FROM KG_ARQCED_TIPO07  WITH(NOLOCK) ' +
      ' LEFT JOIN FACBANCO BAN WITH(NOLOCK) ON BAN.BANCOD = T07_BANCO AND BAN.STATUS <> ''INATIVO'' '
      + ' WHERE T07_T00_CONTROLE = ' + Controle);
    ADOExecuta.Open;
    if (ADOExecuta.RecordCount > 0) then
    begin
      If (ADOExecuta.Fields[13].AsString = 'INATIVO') then
      begin
        Application.MessageBox
          ('Código do Banco e Agência inativos ou inválidos.', 'Atenção',
          MB_OK + MB_ICONASTERISK + MB_DEFBUTTON1 + MB_APPLMODAL);
        Abort;
      end;
      BitBtnSalvar.Click;
      while not ADOExecuta.Eof do
      begin
        Inc(ItensAfetados);
        if not ADOBoletoPagamento.Locate('PROPOSTA; BANCO; AGENCIA; CONTA',
          varArrayOf([ADOBoletoPagamentoProposta.AsInteger,
          ADOExecuta.Fields[5].AsString, ADOExecuta.Fields[6].AsString,
          ADOExecuta.Fields[8].AsString]), []) then
        begin
          ADOBoletoPagamento.Append;
          ADOBoletoPagamentoProposta.AsInteger :=
            ADOBoletoOperacaoProposta.AsInteger;
          ADOBoletoPagamentoItem.AsInteger := ItensAfetados;
          ADOBoletoPagamentoCodigoPagamento.AsInteger := 5;
          ADOBoletoPagamentoBanco.AsString :=
            Trim(ADOExecuta.Fields[5].AsString);
          ADOBoletoPagamentoAgencia.AsString :=
            Trim(ADOExecuta.Fields[6].AsString);
          ADOBoletoPagamentoAgenciaDV.AsString :=
            Trim(ADOExecuta.Fields[7].AsString);
          ADOBoletoPagamentoConta.AsString :=
            Trim(ADOExecuta.Fields[8].AsString);
          ADOBoletoPagamentoContaDV.AsString :=
            Trim(ADOExecuta.Fields[9].AsString);
          ADOBoletoPagamentoValor.AsFloat := 0;
          ADOBoletoPagamentoCompensacao.AsString :=
            Trim(ADOExecuta.Fields[10].AsString);
          ADOBoletoPagamentoPercentual.AsFloat := ADOExecuta.Fields[11].AsFloat;
          ADOBoletoPagamento.Post;

        end
        else if (MessageDlg
          ('Já existe a conta para o Banco e Agência, sobrepôe o outros campos ? ',
          mtConfirmation, [mbYes, mbNo], 0) = mrYes) then
        begin
          ADOBoletoPagamento.Edit;
          ADOBoletoPagamentoPercentual.AsFloat := ADOExecuta.Fields[11].AsFloat;
          ADOBoletoPagamento.Post;
        end;
        ADOExecuta.Next;
      end;
    end
    else
      Application.MessageBox('Não foi encontrado conta para importar.',
        'Atenção', MB_OK + MB_ICONASTERISK + MB_DEFBUTTON1 + MB_APPLMODAL);
  end;
end;

Function TFrmCadEmprestimoBoletoOperacao.StringPendenciaCadastral: String;
begin
  Result := 'SELECT ITP_OBS_CONSULTA ' +
    ' FROM proposta_comite pro with (nolock) ' +
    ' join Itens_Proposta ITE with (nolock) ' +
    '  on ITP_PRO_CODIGO = pro.PRO_CODIGO and ITP_ITE_CODIGO = 44 ' +
    ' where  pro.PRO_CODIGO ' +
    ' in ( select max(PRO_CODIGO) from proposta_comite X with (nolock) where ' +
    ' convert(float,isnull(x.PRO_CLICGC,''0'') ' +
    ' + isnull(x.PRO_CLICGCDV,'''') ' + '    ) = ' + ADOClienteclicgc.AsString +
    ADOClienteclicgcdv.AsString + ' ) ' + ' and ITP_OBS_CONSULTA is not null ' +
    ' and convert(varchar,ITP_OBS_CONSULTA) <> '''' ' +
    ' and convert(varchar,ITP_OBS_CONSULTA) <> ''NIHIL'' '

end;

procedure TFrmCadEmprestimoBoletoOperacao.ADOClienteAfterOpen
  (DataSet: TDataSet);
begin
  inherited;
  AbreTitularGrupo(ADOClienteCLIEMPTITU.AsInteger);

  try
    if (ADOCliente.RecordCount > 0) then
    begin
      ADOPendenciaCadastral.Close;
      ADOPendenciaCadastral.CommandText := StringPendenciaCadastral;
      ADOPendenciaCadastral.Open;
    end;
  except
    on E: Exception do
      MessageDlg(' Mensagem do comitê: ' + E.Message, mtError, [mbOK], 0);
    else
      MessageDlg('Foi encontrado um parametro inesperado.', mtInformation,
        [mbOK], 0);
  end;
end;

procedure TFrmCadEmprestimoBoletoOperacao.ADOClienteAfterClose
  (DataSet: TDataSet);
begin
  inherited;
  ADOPendenciaCadastral.Close;
end;

procedure TFrmCadEmprestimoBoletoOperacao.DBEditCedenteChange(Sender: TObject);
begin
  inherited;
  ADOCliente.Close;
end;

procedure TFrmCadEmprestimoBoletoOperacao.DBLookupComboBox3Click
  (Sender: TObject);
begin
  inherited;
  CodigoTipoCarteiraExit(Sender);
end;

procedure TFrmCadEmprestimoBoletoOperacao.DBLookupComboBox3DropDown
  (Sender: TObject);
begin
  inherited;
  CodigoTipoCarteiraExit(Sender);
end;

procedure TFrmCadEmprestimoBoletoOperacao.DBLookupComboBox3Exit
  (Sender: TObject);
begin
  inherited;
  If (ADOBoletoOperacao.Active) then
    CodigoTipoCarteiraExit(Sender);

end;

procedure TFrmCadEmprestimoBoletoOperacao.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  inherited;
  if ((NivelPermissao > 1) and (ADOBoletoPagamento.Active) and
    (ADOBoletoPagamento.RecordCount > 1) and (ADOBoletoOperacao.Active) and
    (Copy(ADOBoletoOperacaoCarteira.AsString, 1, 1) <> 'A') and
    (Pos(ADOBoletoOperacaoStatusBoletoOperacao.AsString, 'ABERTO, SUSPENSO')
    <> 0)) then
    Application.MessageBox
      ('As informaçoes para pagamento do boleto não foram informadas.' + chr(10)
      + '' + chr(10) +
      'Seu boleto NÃO SERÁ liberado para o Depto de Operações.', 'Atenção',
      MB_OK + MB_ICONASTERISK + MB_DEFBUTTON1 + MB_APPLMODAL);
end;

Function TFrmCadEmprestimoBoletoOperacao.MotivosPorExtenso: String;
Var
  Motivos: String;
begin
  Motivos := ADOClienteCodigoMotivoBloqueioAcumulados.AsString;

end;

procedure TFrmCadEmprestimoBoletoOperacao.DBEditDataPrimeiraParcelaExit
  (Sender: TObject);
begin
  inherited;
  OnExit(Sender);

  if ((ADOBoletoOperacao.Active) and (ADOBoletoOperacao.State in [dsEdit,
    dsInsert]) and (not ADOBoletoOperacaoDataOperacao.IsNull)) then
  begin
    TMaskEdit(Sender).Text := CorrigeData(TMaskEdit(Sender).Text);

    if ((ADOBoletoOperacaoDataPrimeiraParcelaOriginal.IsNull) or
      (ADOBoletoOperacaoDataPrimeiraParcelaOriginal.AsDateTime <>
      ADOBoletoOperacaoDataPrimeiraParcela.AsDateTime)) then
      ADOBoletoOperacaoDataPrimeiraParcelaOriginal.AsDateTime :=
        ADOBoletoOperacaoDataPrimeiraParcela.AsDateTime;

    If ADOProdutoMOEDA.AsString = 'IGPM' then
      ADOBoletoOperacaoDataPrimeiraParcela.AsDateTime :=
        ADOBoletoOperacaoDataPrimeiraParcela.AsDateTime
    else
      ADOBoletoOperacaoDataPrimeiraParcela.AsDateTime :=
        D_maisBancario(ADOBoletoOperacaoDataPrimeiraParcela.AsDateTime, 0,
        'FERIADO BANCÁRIO');

    if (ADOBoletoOperacaoDataPrimeiraParcela.AsDateTime <=
      ADOBoletoOperacaoDataOperacao.AsDateTime) then
    begin
      Application.MessageBox('Data inconsistente com data do empréstimo.',
        'Atenção', MB_OK + MB_ICONEXCLAMATION + MB_DEFBUTTON1 + MB_APPLMODAL);
      DBEditDataPrimeiraParcela.SetFocus;
      Abort;
    end;

    if (ADOBoletoOperacaoDataPrimeiraParcela.NewValue <>
      ADOBoletoOperacaoDataPrimeiraParcela.OldValue) then
    begin
      If Application.MessageBox
        ('A alteração da data da primeira PMT/Parcela implica' + chr(10) + '' +
        chr(10) + '           em excluir e recriar as PMT''s/Parcelas.' +
        chr(10) + '' + chr(10) +
        '                        Confirma a alteração ?' + chr(10) + '' +
        chr(10) + '', 'Atenção', MB_YESNO + MB_ICONEXCLAMATION + MB_DEFBUTTON2 +
        MB_APPLMODAL) = ID_NO Then
      begin
        DBEditDataPrimeiraParcela.SetFocus;
        Abort;
      end;
      ReGerar := True;
    end;

    if ((not ADOBoletoOperacaoDataPrimeiraParcela.IsNull) and
      (ADOBoletoOperacaoDataPrimeiraParcela.AsDateTime >
      ADOBoletoOperacaoDataOperacao.AsDateTime)) then
      ADOBoletoOperacaoDiasCarencia.AsInteger :=
        Trunc(ADOBoletoOperacaoDataPrimeiraParcela.AsDateTime -
        ADOBoletoOperacaoDataOperacao.AsDateTime) - 30;

    if (ADOBoletoOperacaoDiasCarencia.AsInteger < 1) then
      ADOBoletoOperacaoDiasCarencia.AsInteger := 0;

  end;

end;

procedure TFrmCadEmprestimoBoletoOperacao.DBEditDataOperacaoExit
  (Sender: TObject);
begin
  inherited;
  OnExit(Sender);
  if ((ADOBoletoOperacao.Active) and (ADOBoletoOperacao.State in [dsInsert,
    dsEdit]) and (not ADOBoletoOperacaoDataOperacao.IsNull)) then
    ADOBoletoOperacaoDataPrimeiraParcela.AsDateTime :=
      IncMonth(ADOBoletoOperacaoDataOperacao.AsDateTime, 1);

end;

procedure TFrmCadEmprestimoBoletoOperacao.DBEditDiasCarenciaExit
  (Sender: TObject);
begin
  inherited;
  OnExit(Sender);
  if ((ADOBoletoOperacao.Active) and (ADOBoletoOperacao.State in [dsInsert,
    dsEdit])) then
    ADOBoletoOperacaoParcelasCarencia.AsInteger :=
      Trunc(ADOBoletoOperacaoDiasCarencia.AsInteger / 30);

end;

procedure TFrmCadEmprestimoBoletoOperacao.BitBtn2Click(Sender: TObject);
begin
  inherited;
  if ((ADOBoletoOperacao.Active) and (ADOBoletoOperacao.State in [dsEdit,
    dsInsert])) then
    if (ADOPesquisa
      (' CodigoProduto, Descricao, SiglaPapelFisico, VencimentoUtil, Status, TipoFinanciamento,CarteiraAds',
      'dbo.Kg_Produto', 'CodigoProduto', DMConecta.ADOCapitalDeGiro, Nil,
      'CodigoProduto', ' where TipoFinanciamento in (''POS'',''PRE'') ', ''))
    then
    begin
      if (StringsPesquisa.Text <> '') then
      begin
        ADOBoletoOperacaoCodigoProduto.AsString := StringsPesquisa.Strings[0];
        DBEditDocumentoExit(Sender);
        DBEditDocumento.SetFocus;
      end
      else
        DBEditDocumento.SetFocus;
    end;
  DBEditDocumento.SetFocus;
end;

procedure TFrmCadEmprestimoBoletoOperacao.CalculaContratoIGPM;
begin
  if (ADOBoletoOperacao.State in [dsInsert, dsEdit]) then
  begin
    CalculaTacs;

    VcalculoCarencia := 0;
    VCalculoValorLiquido := 0;

    BaseIOF := ADOBoletoOperacaoValorFinanciado.AsFloat;

    if (ADOBoletoOperacaoTipoPagtoTac.AsString = 'F') then
      BaseIOF := BaseIOF + ADOBoletoOperacaoValorSomatorioTacs.AsFloat;

    DataFinal := IncMonth(ADOBoletoOperacaoDataPrimeiraParcela.AsDateTime,
      (ADOBoletoOperacaoTotalTitulo.AsInteger - 1));

    DataFinal := D_maisRegional(DataFinal, ADOBoletoOperacaoFloating.AsInteger,
      ADOBoletoOperacaoCodigoRegiao.AsInteger);

    VencimentoReal := (DataFinal + ADOBoletoOperacaoFloating.AsInteger);

    Prazo := DaysBetween(ADOBoletoOperacaoDataOperacao.AsDateTime,
      VencimentoReal);

    PrazoIOF := Min(DaysBetween(ADOBoletoOperacaoDataOperacao.AsDateTime,
      DataFinal), 365);

    Intervalo := DaysBetween(ADOBoletoOperacaoDataOperacao.AsDateTime,
      VencimentoReal);

    if (ADOBoletoOperacaoTaxaMes.AsFloat <> 0) then
      VcalculoCarencia := ArredondaValor
        (calculaCarencia(ADOBoletoOperacaoValorReferencia.AsFloat,
        ADOBoletoOperacaoTaxaMes.AsFloat,
        ADOBoletoOperacaoTotalTitulo.AsInteger,
        ADOBoletoOperacaoDiasCarencia.AsInteger,
        ADOBoletoOperacaoDiasCarencia.AsInteger), 2);

    VcalculoIOF := ArredondaValor(calculaIof(BaseIOF,
      ADOBoletoOperacaoTotalTitulo.AsInteger, ADOBoletoOperacaoTaxaMes.AsFloat,
      PrazoIOF, ADOBoletoOperacaoValorTaxaIOF.AsFloat,
      ADOBoletoOperacaoTipoPagtoIOF.AsString,
      ADOBoletoOperacaoDataOperacao.AsDateTime), 2);

    AjustaValorFinanciado;

    if (ADOBoletoOperacaoTaxaMes.AsFloat = 0) then
    begin
      VcalculoPMT := ADOBoletoOperacaoValorFinanciado.AsFloat;
      VcalculoJuros := 0;
      VcalculoAmortizacao := ADOBoletoOperacaoValorFinanciado.AsFloat;
    end
    else
    begin
      VcalculoPMT := ArredondaValor(calculaPmt(ADOBoletoOperacaoTaxaMes.AsFloat,
        ADOBoletoOperacaoTotalTitulo.AsInteger,
        ADOBoletoOperacaoValorFinanciado.AsFloat, 0, True), 2);
      VcalculoJuros := ArredondaValor
        (calculaJuros(ADOBoletoOperacaoTaxaMes.AsFloat,
        ADOBoletoOperacaoTotalTitulo.AsInteger,
        ADOBoletoOperacaoValorFinanciado.AsFloat, 1), 2);
      VcalculoAmortizacao :=
        ArredondaValor(calculaAmortizacao(ADOBoletoOperacaoTaxaMes.AsFloat,
        ADOBoletoOperacaoTotalTitulo.AsInteger,
        ADOBoletoOperacaoValorFinanciado.AsFloat, 1), 2);
    end;
  end;
end;

procedure TFrmCadEmprestimoBoletoOperacao.CalculaContrato;
begin
  if (ADOBoletoOperacao.State in [dsInsert, dsEdit]) then
  begin
    CalculaTacs;

    VcalculoCarencia := 0;
    VCalculoValorLiquido := 0;

    BaseIOF := ADOBoletoOperacaoValorFinanciado.AsFloat;

    if (ADOBoletoOperacaoTipoPagtoTac.AsString = 'F') then
      BaseIOF := BaseIOF + ADOBoletoOperacaoValorSomatorioTacs.AsFloat;

    DataFinal := IncMonth(ADOBoletoOperacaoDataPrimeiraParcela.AsDateTime,
      (ADOBoletoOperacaoTotalTitulo.AsInteger - 1));

    DataFinal := D_maisRegional(DataFinal, ADOBoletoOperacaoFloating.AsInteger,
      ADOBoletoOperacaoCodigoRegiao.AsInteger);

    VencimentoReal := D_maisRegional(DataFinal,
      ADOBoletoOperacaoFloating.AsInteger,
      ADOBoletoOperacaoCodigoRegiao.AsInteger);

    Prazo := DaysBetween(ADOBoletoOperacaoDataOperacao.AsDateTime,
      VencimentoReal);

    PrazoIOF := Min(DaysBetween(ADOBoletoOperacaoDataOperacao.AsDateTime,
      DataFinal), 365);

    Intervalo := DaysBetween(ADOBoletoOperacaoDataOperacao.AsDateTime,
      VencimentoReal);

    if (ADOBoletoOperacaoTaxaMes.AsFloat <> 0) then
      VcalculoCarencia := ArredondaValor
        (calculaCarencia(ADOBoletoOperacaoValorReferencia.AsFloat,
        ADOBoletoOperacaoTaxaMes.AsFloat,
        ADOBoletoOperacaoTotalTitulo.AsInteger,
        ADOBoletoOperacaoDiasCarencia.AsInteger,
        ADOBoletoOperacaoDiasCarencia.AsInteger), 2);

    VcalculoIOF := ArredondaValor(calculaIof(BaseIOF,
      ADOBoletoOperacaoTotalTitulo.AsInteger, ADOBoletoOperacaoTaxaMes.AsFloat,
      PrazoIOF, ADOBoletoOperacaoValorTaxaIOF.AsFloat,
      ADOBoletoOperacaoTipoPagtoIOF.AsString,
      ADOBoletoOperacaoDataOperacao.AsDateTime), 2);

    AjustaValorFinanciado;

    if (ADOBoletoOperacaoTaxaMes.AsFloat = 0) then
    begin
      VcalculoPMT := ADOBoletoOperacaoValorFinanciado.AsFloat;
      VcalculoJuros := 0;
      VcalculoAmortizacao := ADOBoletoOperacaoValorFinanciado.AsFloat;
    end
    else
    begin
      VcalculoPMT := ArredondaValor(calculaPmt(ADOBoletoOperacaoTaxaMes.AsFloat,
        ADOBoletoOperacaoTotalTitulo.AsInteger,
        ADOBoletoOperacaoValorFinanciado.AsFloat, 0, True), 2);
      VcalculoJuros := ArredondaValor
        (calculaJuros(ADOBoletoOperacaoTaxaMes.AsFloat,
        ADOBoletoOperacaoTotalTitulo.AsInteger,
        ADOBoletoOperacaoValorFinanciado.AsFloat, 1), 2);
      VcalculoAmortizacao :=
        ArredondaValor(calculaAmortizacao(ADOBoletoOperacaoTaxaMes.AsFloat,
        ADOBoletoOperacaoTotalTitulo.AsInteger,
        ADOBoletoOperacaoValorFinanciado.AsFloat, 1), 2);
    end;
  end;
end;

procedure TFrmCadEmprestimoBoletoOperacao.CalculaTacs;
begin

  if ((ADOBoletoOperacao.Active) and (ADOBoletoOperacao.State in [dsEdit,
    dsInsert])) then
  begin

    ADOBoletoOperacaoValorTMF.AsFloat := 0;
    ADOBoletoOperacaoValorTac.AsFloat :=
      StrToFloat(FloatToStrF((ADOBoletoOperacaoValorReferencia.AsFloat *
      ADOBoletoOperacaoValorTaxaTac.AsFloat / 100), ffFixed, 15, 2));

    ADOBoletoOperacaoValorSomatorioTacs.AsFloat :=
      (ADOBoletoOperacaoValorDoc.AsFloat

      + ADOBoletoOperacaoValorTac.AsFloat + ADOBoletoOperacaoValorCustoCobranca.
      AsFloat + ADOBoletoOperacaoValorOutrasDespesas.AsFloat +
      ADOBoletoOperacaoValorCustoAdministrativo.AsFloat +
      ADOBoletoOperacaoTaxaAberturaCredito.AsFloat);
  end;

end;

procedure TFrmCadEmprestimoBoletoOperacao.CalculaTacs_Item;
begin
  Ite_ValorTacs := (ADOParcelaValorDoc.AsFloat +
    ADOParcelaValorTac.AsFloat + ADOParcelaValorCustoCobranca.AsFloat +
    ADOParcelaValorOutrasDespesas.AsFloat + ADOParcelaValorCustoAdministrativo.
    AsFloat + ADOParcelaTaxaAberturaCredito.AsFloat);


end;

Function TFrmCadEmprestimoBoletoOperacao.VerificarSacado: String;

begin
  Result := '';
  if (Trim(ADOClienteclicgc.AsString) + Trim(ADOClienteclicgcfili.AsString) +
    Trim(ADOClienteclicgcdv.AsString) <> '') then
  begin
    CodigoSacado := ProcuraNome
      ('select top 1 convert(varchar,clicod) from factbcli with (nolock) where convert( Numeric(15,0), clicgc+isnull(clicgcfili,'''')+isnull(clicgcdv,'''') ) = '
      + Trim(ADOClienteclicgc.AsString) + Trim(ADOClienteclicgcfili.AsString) +
      Trim(ADOClienteclicgcdv.AsString) + ' and clitip = ''S'' ');

    if (CodigoSacado = '') then
    begin
      CadastroSacado;

      CodigoSacado :=
        ProcuraNome
        ('select top 1 convert(varchar,clicod) from factbcli with (nolock) where convert( Numeric(15,0), clicgc+isnull(clicgcfili,'''')+isnull(clicgcdv,'''') ) = '
        + Trim(ADOClienteclicgc.AsString) + Trim(ADOClienteclicgcfili.AsString)
        + Trim(ADOClienteclicgcdv.AsString) + ' and clitip = ''S'' ');
    end;
    Result := CodigoSacado;

  end;

end;

function TFrmCadEmprestimoBoletoOperacao.VerificaTacDigitadaLiberada(Proposta,
  Cedente: String): Boolean;
begin
  Result := False;
  Auxs := 'select * from Kg_AutorizacaotacEspecial with (nolock) where  ' +
    ' Boleto = ' + ADOBoletoOperacaoProposta.AsString + ' and DUPCLIE = ' +
    ADOBoletoOperacaoCodigoCedente.AsString + ' and TAXA_TAC=''S''';
  if (DMConecta.ADOCapitalDeGiro.Execute(Auxs).RecordCount > 0) then
    Result := True;
  if Result = False then
  begin
    Auxs := 'select * from factbcli with (nolock) where  ' + ' clicod = ' +
      ADOBoletoOperacaoCodigoCedente.AsString + ' ' +
      ' and DT_INITXESPECIAL<=cast(getdate() as date) and DT_FIMTXESPECIAL>=cast(getdate() as date) and clitip=''C'' and TAC_ESPECIAL>0';
    if (DMConecta.ADOCapitalDeGiro.Execute(Auxs).RecordCount > 0) then
      Result := True;
  end;

end;

function TFrmCadEmprestimoBoletoOperacao.
  VerificaTxAberturaCreditoDigitadaLiberada(Proposta, Cedente: String): Boolean;
begin
  Result := False;
  Auxs := 'select * from kg_AutorizacaoTaxaAberturaCredito with (nolock) where  '
    + ' Boleto = ' + ADOBoletoOperacaoProposta.AsString + ' and DUPCLIE = ' +
    ADOBoletoOperacaoCodigoCedente.AsString;
  if (DMConecta.ADOCapitalDeGiro.Execute(Auxs).RecordCount > 0) then
    Result := True;
end;

procedure TFrmCadEmprestimoBoletoOperacao.MontaParcela;
begin
  CodigoSacado := VerificarSacado;
  ADOParcelaProposta.AsString := Bordero.Text;
  ADOParcelaInscricaoSacado.AsString := Trim(ADOClienteclicgc.AsString) +
    Trim(ADOClienteclicgcfili.AsString) + Trim(ADOClienteclicgcdv.AsString);
  ADOParcelaCodigoSacado.AsString := CodigoSacado;
end;

procedure TFrmCadEmprestimoBoletoOperacao.ADOParcelaBeforePost(
  DataSet: TDataSet);
var sql: string;
begin
  inherited;

  if (ADOParcela.RecordCount > 1) and (self.Valida_Ord) then
  begin
    sql := '';
    sql := sql + 'declare @proposta int = ' + self.Bordero.text;
    sql := sql + ' ,@dt_vcto datetime = :dt_vcto';
    sql := sql + ' ,@parcela int = ' + ADOParcelaParcela.AsString;
    sql := sql + ' declare @vcto_invalido char(1) = ''N'', @min_dt_vcto datetime, @max_dt_vcto datetime';
    sql := sql + '  if @parcela < 1'+
                 ' begin'+
                 '	select @parcela = max(k.Parcela)+1'+
                 '    FROM dbo.Kg_BoletoParcela k'+
                 '	Where k.proposta = @proposta'+
                 '	group by k.Parcela'+
                 ' end';
    sql := sql + ' select @min_dt_vcto = isnull(k.Vencimento,0)';
    sql := sql + ' FROM dbo.Kg_BoletoParcela k';
    sql := sql + ' Where k.proposta = @proposta';
    sql := sql + ' 	and k.Parcela = @parcela - 1';
    sql := sql + ' select @max_dt_vcto = isnull(k.Vencimento,dateadd(year,100,@dt_vcto))';
    sql := sql + ' FROM dbo.Kg_BoletoParcela k';
    sql := sql + ' Where k.proposta = @proposta';
    sql := sql + '   and k.Parcela = @parcela + 1';

    if DMDados.VerificaQuebraOrdParcela(ADOParcela.Connection, sql, dataset.fieldbyname('Vencimento').asdatetime) then
    begin
      raise Exception.Create('');
    end;
  end;
end;

procedure TFrmCadEmprestimoBoletoOperacao.ADOProdutoBeforeOpen
  (DataSet: TDataSet);
begin
  inherited;
  ADOProduto.Parameters[0].Value := ADOBoletoOperacaoCodigoProduto.AsInteger;
end;

procedure TFrmCadEmprestimoBoletoOperacao.HabilitaCampo;
begin
  DBEditFatorMes.Color := clWindow;
  DBEditFatorCorrecao.Color := clWindow;
  If (ADOProdutoMOEDA.AsString = 'CDI') then
  begin
    If (ADOProdutoTipoFinanciamento.AsString = 'POS') then
      DBEditFatorMes.Color := clSilver
    else
      DBEditFatorCorrecao.Color := clSilver;
  end
  else If (ADOProdutoMOEDA.AsString = 'IGPM') then
  begin
    DBEditFatorMes.Color := clWindow;
    DBEditFatorCorrecao.Color := clSilver;
  end;

  DBEditFatorCorrecao.Enabled := ((ADOProdutoTipoFinanciamento.AsString = 'POS')
    and (ADOProdutoMOEDA.AsString <> 'IGPM'));
  DBEditFatorMes.Enabled := ((ADOProdutoTipoFinanciamento.AsString = 'PRE') or
    (ADOProdutoMOEDA.AsString = 'IGPM'));
end;

procedure TFrmCadEmprestimoBoletoOperacao.GeraParcelaMista;
Var
  UltimaDataCarencia: TDateTime;
begin

  if not(ADOParcela.Active) then
    AbreParcelas;

  Prazo := 0;
  TotalItens := 0;
  VcalculoIOF := 0;
  VcalculoIOFComplementar := 0;

  if not(ADOBoletoOperacao.State in [dsInsert, dsEdit]) then
    BitBtnAlterarClick(Self);

  ADOBoletoOperacaoValorFinanciado.AsFloat :=
    ADOBoletoOperacaoValorReferencia.AsFloat;

  CalculaTacs;

  ADOBoletoOperacaoValorFinanciado.AsFloat :=
    ADOBoletoOperacaoValorReferencia.AsFloat;
  if (ADOBoletoOperacaoTipoPagtoTac.AsString = 'F') then
    ADOBoletoOperacaoValorFinanciado.AsFloat :=
      ADOBoletoOperacaoValorFinanciado.AsFloat +
      ADOBoletoOperacaoValorTac.AsFloat;

  AjustaValorFinanciado;

  CriaArray(ADOBoletoOperacaoTotalTitulo.AsInteger +
    ADOBoletoOperacaoParcelasCarencia.AsInteger);

  If ADOProdutoMOEDA.AsString = 'IGPM' then
    MontaArrayIGPM('GeraParcelaIGPM')
  else
    MontaArray('GeraParcelaMista');

  if (ADOBoletoOperacaoTotalTitulo.AsInteger > 0) then
  begin
    VcalculoIOF := 0;
    VcalculoJuros := 0;
    VcalculoAmortizacao := 0;
    VcalculoIOFComplementar := 0;
    If ADOProdutoMOEDA.AsString = 'IGPM' then
    begin
      Calculos := CalculaContratoMistoIGPM
        (ADOBoletoOperacaoTipoPagtoIOF.AsString,
        ADOBoletoOperacaoTotalTitulo.AsInteger +
        ADOBoletoOperacaoParcelasCarencia.AsInteger,
        ADOBoletoOperacaoTaxaMes.AsFloat, ADOBoletoOperacaoValorIOF.AsFloat,
        ADOBoletoOperacaoValorFinanciado.AsFloat, Calculos,
        ADOBoletoOperacaoDataOperacao.AsDateTime,
        ADOBoletoOperacaoValorIOFComplementar.AsFloat);

      CriaParcelasIGPM;
    end
    else
    begin
      Calculos := CalculaContratoMisto2(ADOBoletoOperacaoTipoPagtoIOF.AsString,
        ADOBoletoOperacaoTotalTitulo.AsInteger +
        ADOBoletoOperacaoParcelasCarencia.AsInteger,
        ADOBoletoOperacaoTaxaMes.AsFloat, ADOBoletoOperacaoValorIOF.AsFloat,
        ADOBoletoOperacaoValorFinanciado.AsFloat, Calculos,
        ADOBoletoOperacaoDataOperacao.AsDateTime,
        ADOBoletoOperacaoValorIOFComplementar.AsFloat,ADOBoletoOperacaoCodigoProduto.AsString);
      CriaParcelas;

    end;

  end;

  Atualizar;

  TaxaInternaRetorno;



   if ((ADOBoletoOperacaoCodigoProduto.AsInteger = 18) or (ADOBoletoOperacaoCodigoProduto.AsInteger = 42) or (ADOBoletoOperacaoCodigoProduto.AsInteger = 152) or (ADOBoletoOperacaoCodigoProduto.AsInteger = 78) or (ADOBoletoOperacaoCodigoProduto.AsInteger = 155) or (ADOBoletoOperacaoCodigoProduto.AsInteger = 79) or (ADOBoletoOperacaoCodigoProduto.AsInteger = 17)or  (ADOBoletoOperacaoCodigoProduto.AsInteger = 71)or (ADOBoletoOperacaoCodigoProduto.AsInteger = 72)or(ADOBoletoOperacaoCodigoProduto.AsInteger = 32) or (ADOBoletoOperacaoCodigoProduto.AsInteger = 77) ) then
   begin
      CustoEfetivoTotalcapitaldegiro;
   end;

  GravaBoleto;



end;

procedure TFrmCadEmprestimoBoletoOperacao.CriaArray(Itens: Integer);
begin
  Itens := Itens + 1;
  SetLength(Calculos, 14);
  SetLength(Calculos[0], 0);
  SetLength(Calculos[0], Itens); 
  SetLength(Calculos[1], Itens); 
  SetLength(Calculos[2], Itens); 
  SetLength(Calculos[3], Itens); 
  SetLength(Calculos[4], Itens); 
  SetLength(Calculos[5], Itens); 
  SetLength(Calculos[6], Itens); 
  SetLength(Calculos[7], Itens); 
  SetLength(Calculos[8], Itens); 
  SetLength(Calculos[9], 1);
  SetLength(Calculos[10], Itens);
  SetLength(Calculos[11], Itens);
  SetLength(Calculos[12], Itens);
  SetLength(Calculos[13], Itens);
end;

Procedure TFrmCadEmprestimoBoletoOperacao.MontaArrayIGPM(TipoAcao: String);
var
  i, TotalItens: Integer;
  DataAnterior, UltimaDataCarencia: TDateTime;
begin
  TotalItens := 0;
  UltimaDataCarencia := ADOBoletoOperacaoDataOperacao.AsDateTime;

  If (ADOBoletoOperacaoParcelasCarencia.AsInteger > 0) then
  begin
    i := 1;

    DataVencimento := IncMonth(ADOBoletoOperacaoDataOperacao.AsDateTime, 1);
    DataAnterior := ADOBoletoOperacaoDataOperacao.AsDateTime;

    while not(i > ADOBoletoOperacaoParcelasCarencia.AsInteger) do
    begin

      If ADOParcela.RecordCount > 0 then
      begin
        PesquisaParcela(i);
        DataVencimento := ADOParcelaVencimento.AsDateTime;
      end;

      VencimentoReal := (DataVencimento + ADOBoletoOperacaoFloating.AsInteger);

      Prazo := DaysBetween(ADOBoletoOperacaoDataOperacao.AsDateTime,
        VencimentoReal);

      Intervalo := DaysBetween(DataAnterior, VencimentoReal);

      Calculos[0, i] := DataVencimento;
      Calculos[1, i] := Prazo;
      Calculos[2, i] := Intervalo;
      Calculos[3, i] := 0.00;
      Calculos[4, i] := 0.00;
      Calculos[5, i] := 0.00;
      Calculos[6, i] := 0.00;
      Calculos[7, i] := 0.00;
      Calculos[8, i] := 0;
      Calculos[10, i] := 0;
      Calculos[12, i] := 0.00;
      Calculos[13, i] := VencimentoReal;
      DataAnterior := VencimentoReal;
      UltimaDataCarencia := DataVencimento;

      DataVencimento :=
        IncMonth(ADOBoletoOperacaoDataPrimeiraParcelaOriginal.AsDateTime, i);

      Inc(i);

      Inc(TotalItens);
    end;
  end;

  i := 1;
  if ADOBoletoOperacaoParcelasCarencia.AsInteger > 0 then
    DataVencimento := IncMonth(ADOBoletoOperacaoDataPrimeiraParcela.AsDateTime,
      ADOBoletoOperacaoParcelasCarencia.AsInteger)
  else
    DataVencimento := ADOBoletoOperacaoDataPrimeiraParcela.AsDateTime;

  DataAnterior := UltimaDataCarencia;
  while (i <= ADOBoletoOperacaoTotalTitulo.AsInteger) do
  begin

    Inc(TotalItens);

    If ADOParcela.RecordCount > 0 then
    begin
      PesquisaParcela(TotalItens);
      DataVencimento := ADOParcelaVencimento.AsDateTime;
    end;

    VencimentoReal := (DataVencimento + ADOBoletoOperacaoFloating.AsInteger);

    Prazo := DaysBetween(ADOBoletoOperacaoDataOperacao.AsDateTime,
      VencimentoReal);

    PrazoIOF := Min(DaysBetween(ADOBoletoOperacaoDataOperacao.AsDateTime,
      D_maisBancario(DataVencimento, 0, 'FERIADO BANCÁRIO')), 365);

    Intervalo := DaysBetween(DataAnterior, VencimentoReal);

    Calculos[0, TotalItens] := DataVencimento;
    Calculos[1, TotalItens] := Prazo;
    Calculos[2, TotalItens] := Intervalo;
    Calculos[3, TotalItens] := 0.00;
    Calculos[4, TotalItens] := 0.00;
    Calculos[5, TotalItens] := 0.00;
    Calculos[6, TotalItens] := 0.00;
    Calculos[7, TotalItens] := 0.00;
    Calculos[8, TotalItens] := 1;
    Calculos[10, TotalItens] := PrazoIOF;
    Calculos[12, TotalItens] := 0.00;
    Calculos[13, TotalItens] := VencimentoReal;
    DataAnterior := VencimentoReal;

    DataVencimento :=
      IncMonth(ADOBoletoOperacaoDataPrimeiraParcelaOriginal.AsDateTime, i);
    Inc(i);
  end;

end;

procedure TFrmCadEmprestimoBoletoOperacao.MontaArray(TipoAcao: String);
var
  i, TotalItens: Integer;
  DataAnterior, UltimaDataCarencia: TDateTime;
begin
  TotalItens := 0;
  UltimaDataCarencia := ADOBoletoOperacaoDataOperacao.AsDateTime;

  if (ADOBoletoOperacaoParcelasCarencia.AsInteger > 0) then
  begin
    i := 1;
    DataVencimento := IncMonth(ADOBoletoOperacaoDataOperacao.AsDateTime, 1);
    DataAnterior := ADOBoletoOperacaoDataOperacao.AsDateTime;
    while not(i > ADOBoletoOperacaoParcelasCarencia.AsInteger) do
    begin


      if (TipoAcao = 'Recalculo') then
      begin
        PesquisaParcela(i);
        DataVencimento := ADOParcelaVencimento.AsDateTime;
      end;

      VencimentoReal := D_maisRegional(DataVencimento,
        ADOBoletoOperacaoFloating.AsInteger,
        ADOBoletoOperacaoCodigoRegiao.AsInteger);

      Prazo := DaysBetween(ADOBoletoOperacaoDataOperacao.AsDateTime,
        VencimentoReal);

      Intervalo := DaysBetween(DataAnterior, VencimentoReal);

      Calculos[0, i] := DataVencimento;
      Calculos[1, i] := Prazo;
      Calculos[2, i] := Intervalo;
      Calculos[3, i] := 0.00;
      Calculos[4, i] := 0.00;
      Calculos[5, i] := 0.00;
      Calculos[6, i] := 0.00;
      Calculos[7, i] := 0.00;
      Calculos[8, i] := 0;
      Calculos[13, i] := VencimentoReal;
      DataAnterior := VencimentoReal;
      UltimaDataCarencia := DataVencimento;

      DataVencimento :=
        IncMonth(ADOBoletoOperacaoDataPrimeiraParcelaOriginal.AsDateTime, i);
      Inc(i);
      Inc(TotalItens);
    end;
  end;
  i := 1;
  if ADOBoletoOperacaoParcelasCarencia.AsInteger > 0 then
    DataVencimento := IncMonth(ADOBoletoOperacaoDataPrimeiraParcela.AsDateTime,
      ADOBoletoOperacaoParcelasCarencia.AsInteger)
  else
    DataVencimento := ADOBoletoOperacaoDataPrimeiraParcela.AsDateTime;
  DataAnterior := UltimaDataCarencia;

  while (i <= ADOBoletoOperacaoTotalTitulo.AsInteger) do
  begin
    Inc(TotalItens);


    if (TipoAcao = 'Recalculo') then
    begin
      PesquisaParcela(TotalItens);
      DataVencimento := ADOParcelaVencimento.AsDateTime;
    end;

    VencimentoReal := D_maisRegional(DataVencimento,
      ADOBoletoOperacaoFloating.AsInteger,
      ADOBoletoOperacaoCodigoRegiao.AsInteger);

    Prazo := DaysBetween(UltimaDataCarencia, VencimentoReal);

    PrazoIOF := Min(DaysBetween(ADOBoletoOperacaoDataOperacao.AsDateTime,
      D_maisBancario(DataVencimento, 0, 'FERIADO BANCÁRIO')), 365);

    Intervalo := DaysBetween(DataAnterior, VencimentoReal);
    Calculos[0, TotalItens] := DataVencimento;
    Calculos[1, TotalItens] := Prazo;
    Calculos[2, TotalItens] := Intervalo;
    Calculos[3, TotalItens] := 0.00;
    Calculos[4, TotalItens] := 0.00;
    Calculos[5, TotalItens] := 0.00;
    Calculos[6, TotalItens] := 0.00;
    Calculos[7, TotalItens] := 0.00;
    Calculos[8, TotalItens] := 1;
    Calculos[10, TotalItens] := PrazoIOF;
    Calculos[13, TotalItens] := VencimentoReal;

    DataAnterior := VencimentoReal;
    DataVencimento :=
      IncMonth(ADOBoletoOperacaoDataPrimeiraParcelaOriginal.AsDateTime, i);
    Inc(i);
  end;
end;

procedure TFrmCadEmprestimoBoletoOperacao.Atualizar;
var
  CustoEfetivo: Double;
begin
  if not(ADOBoletoOperacao.State in [dsEdit, dsInsert]) then
    BitBtnAlterar.Click;

  ADOBoletoOperacaoValorOperacao.AsFloat := VValorPrincipal;

  if (VValorPrincipal = 0) then
    ADOBoletoOperacaoValorOperacao.AsFloat :=
      (VcalculoPMT * ADOBoletoOperacaoTotalTitulo.AsInteger) + VcalculoCarencia;

  Taxa := ADOBoletoOperacaoTaxaMes.AsFloat;
  iof := ADOBoletoOperacaoValorIOF.AsFloat;

  if (ADOBoletoOperacaoTipoVencimentoParcela.AsString = 'UNIFORME') and
    (ADOProdutoMOEDA.AsString = 'CDI') then
    CalculaContrato;


  AjustaTacs;
  TotalizaIOF;

  ADOBoletoOperacaoValorPMT.AsFloat := VcalculoPMT;
  ADOBoletoOperacaoValorCarencia.AsFloat := VcalculoCarencia;
  ADOBoletoOperacaoAmortizacao.AsFloat := VcalculoAmortizacao;
  ADOBoletoOperacaoJuros.AsFloat := VcalculoJuros;
  ADOBoletoOperacaoValorIOF.AsFloat := VcalculoIOF;
  ADOBoletoOperacaoValorIOFComplementar.AsFloat := VcalculoIOFComplementar;

  AjustaValorFinanciado;


  ADOBoletoOperacaoPrazo.AsFloat :=
    ArredondaValor(VCalculoPrazoMedio / ADOBoletoOperacaoValorOperacao.
    AsFloat, 7);
  ADOBoletoOperacaoPrazoEfetivo.AsFloat :=
    ArredondaValor(VCalculoPrazoMedioEfetivo /
    ADOBoletoOperacaoValorOperacao.AsFloat, 7);


  CustoEfetivo := ADOBoletoOperacaoValorLiquido.AsFloat +
    ADOBoletoOperacaoValorCustoCobranca.AsFloat +
    ADOBoletoOperacaoValorDoc.AsFloat +
    ADOBoletoOperacaoTarifaDigitacao.AsFloat +
    ADOBoletoOperacaoValorIOF.AsFloat +
    ADOBoletoOperacaoValorIOFComplementar.AsFloat +
    ADOBoletoOperacaoValorCustoRegistro.AsFloat +
    ADOBoletoOperacaoValorCustoAdministrativo.AsFloat +
    ADOBoletoOperacaoTaxaAberturaCredito.AsFloat +
    ADOBoletoOperacaoValorTac.AsFloat;

  ADOBoletoOperacaoPrazoEfetivo.AsFloat :=
    StrToFloat
    (FloatToStrF(((Power((Power((ADOBoletoOperacaoValorOperacao.AsFloat /
    CustoEfetivo), (1 / ADOBoletoOperacaoPrazoEfetivo.AsFloat))), 30) - 1) *
    100), ffFixed, 20, 7));

  if (ADOBoletoOperacaoTaxaSelic.AsFloat > 0) then
  begin
    ADOBoletoOperacaoValorFuturo.AsFloat :=
      ADOBoletoOperacaoValorOperacao.AsFloat *
      Power(((ADOBoletoOperacaoTaxaSelic.AsFloat) / 100.000000000 +
      1.000000000), (ADOBoletoOperacaoPrazoEfetivo.AsFloat * 1.000000000) /
      360.000000000) * (Power(ADOBoletoOperacaoTaxaNominalPosFixada.AsFloat /
      100.000000000 + 1.000000000, (ADOBoletoOperacaoPrazoEfetivo.AsInteger /
      30.000000000)))

  end
  else
    ADOBoletoOperacaoValorFuturo.AsFloat :=
      ADOBoletoOperacaoValorOperacao.AsFloat;
end;

procedure TFrmCadEmprestimoBoletoOperacao.ADOBoletoOperacaoAfterOpen
  (DataSet: TDataSet);
begin
  inherited;
  AbreParcelas;
end;

procedure TFrmCadEmprestimoBoletoOperacao.AbreParcelas;
begin
  ADOParcela.Close;
  ADOParcela.Parameters[0].Value := ADOBoletoOperacaoProposta.AsInteger;
  ADOParcela.Open;
end;

procedure TFrmCadEmprestimoBoletoOperacao.BttnRelatorioClick(Sender: TObject);
begin
  inherited;
  if ((ADOBoletoOperacao.State <> dsBrowse) or (ADOParcela.State <> dsBrowse))
  then
  begin
    Application.MessageBox
      ('Não é permitido imprimir quando está no processo de inclusão/alteração.',
      'Atenção', MB_OK + MB_ICONEXCLAMATION + MB_DEFBUTTON1 + MB_APPLMODAL);
    Abort;
  end;
  if (ErroConsistencia <> '') then
  begin
    MessageDlg
      ('Existe inconsistencia no borderô, click em salvar para atualizá-lo.',
      mtInformation, [mbOK], 0);
    Abort;
  end;
  if not(Assigned(TFrmBoletoEmprestimo(FrmBoletoEmprestimo))) then
    TFrmBoletoEmprestimo(FrmBoletoEmprestimo) :=
      TFrmBoletoEmprestimo.Create(nil);

  FrmBoletoEmprestimo.EditCarteira.Text := Carteira.Text;
  FrmBoletoEmprestimo.Proposta.Text := Bordero.Text;
  FrmBoletoEmprestimo.Proposta.SetFocus;

end;

procedure TFrmCadEmprestimoBoletoOperacao.CriaParcelasIGPM;
Var
  DataAnterior: TDateTime;
  TotalJuros: Double;
begin
  VcalculoCarencia := 0;
  VCalculoValorLiquido := 0;
  VCalculoPrazoMedioEfetivo := 0;
  VCalculoPrazoMedio := 0;
  VValorPrincipal := 0;
  TotalJuros := 0;

  if ((ADOParcela.Active) and (ADOParcela.State = DsInactive)) then
    AbreParcelas;

  AjustaTacs;

  TotalizaIOF;

  AjustaValorFinanciado;

  TotalItens := 1;

  while (TotalItens <= ADOBoletoOperacaoTotalTitulo.AsInteger) do
  begin
    TotalJuros := TotalJuros + Calculos[5, TotalItens];
    Inc(TotalItens);
  end;

  VcalculoPMT := (ADOBoletoOperacaoValorFinanciado.AsFloat + TotalJuros) /
    ADOBoletoOperacaoTotalTitulo.AsInteger;

  with (ADOParcela) do
  begin
    ADOParcela.Cancel;
    ADOParcela.First;

    while not ADOParcela.Eof do
      ADOParcela.Delete;

    DataAnterior := ADOBoletoOperacaoDataOperacao.AsDateTime;
    TotalItens := 1;

    DecodeDate(ADOBoletoOperacaoDataPrimeiraParcelaOriginal.AsDateTime, Ano1,
      Mes1, Dia1);
    dia2 := Dia1;
    while (TotalItens <= (ADOBoletoOperacaoTotalTitulo.AsInteger +
      ADOBoletoOperacaoParcelasCarencia.AsInteger)) do
    begin
      DataVencimento := Calculos[0, TotalItens];

      DecodeDate(DataVencimento, Ano, Mes, Dia);

      if ((Dia1 = 31) and ((Mes = 4) or (Mes = 6) or (Mes = 9) or (Mes = 11)))
      then
      begin
        dia2 := Dia1;
        Dia1 := 30;
      end
      else if (Mes = 2) and (Dia1 > 28) then
      begin
        dia2 := Dia1;
        Dia1 := 28;
      end;

      if (Dia <> Dia1) and (TotalItens <> 1) and
        (ADOBoletoOperacaoParcelasCarencia.AsInteger = 0) then
        DataVencimento := EncodeDate(Ano, Mes, Dia1);

      if (Dia <> Dia1) and (TotalItens <> 1) and
        (ADOBoletoOperacaoParcelasCarencia.AsInteger > 0) then
        DataVencimento := EncodeDate(Ano, Mes, Dia);

      DataVencimento := DataVencimento;
      Dia1 := dia2;

      if ((DataVencimento < DataAnterior) and
        (not Application.MessageBox(pChar('O vencimento atual  << ' +
        DateTimeToStr(DataVencimento) +
        ' >> é menor que o vencimento anterior << ' +
        DateTimeToStr(DataAnterior) + ' >> .' + chr(10) + '' + chr(10) +
        '                                    Deseja continuar ?'), 'Atenção',
        MB_YESNO + MB_ICONEXCLAMATION + MB_DEFBUTTON1 + MB_APPLMODAL)
        = ID_YES)) Then
        Abort;

      ADOParcela.Append;
      ADOParcelaParcela.AsInteger := TotalItens;
      ADOParcelaVencimento.AsDateTime := DataVencimento;

      ADOParcelaPrazoIntermediario.AsFloat := Calculos[1, TotalItens];
      ADOParcelaIntervalo.AsFloat := Calculos[2, TotalItens];
      ADOParcelaFatorPrazo.AsFloat := Calculos[3, TotalItens];
      ADOParcelaFatorIntervalo.AsFloat := Calculos[4, TotalItens];
      ADOParcelaJuros.AsFloat := Calculos[5, TotalItens];
      ADOParcelaAmortizacao.AsFloat := VcalculoPMT - Calculos[5, TotalItens];

      if ((Calculos[6, TotalItens] >
        TruncaValor(ADOBoletoOperacaoValorFinanciado.AsFloat, 2)) and
        (Calculos[8, TotalItens] = 1) and
        (Application.MessageBox
        ('O valor da amortização é maior que o valor financiado. Deseja fazer ajuste ?',
        '', MB_YESNO + MB_ICONQUESTION + MB_DEFBUTTON1 + MB_APPLMODAL)
        = ID_YES)) Then
      begin
        ADOParcelaAmortizacao.AsFloat :=
          TruncaValor(ADOBoletoOperacaoValorFinanciado.AsFloat, 2);
        ADOParcelaJuros.AsFloat := VcalculoPMT - ADOParcelaAmortizacao.AsFloat;
      end;

      ADOParcelaValorIOF.AsFloat := Calculos[7, TotalItens];
      ADOParcelaPrazoIOF.AsFloat := Calculos[10, TotalItens];
      ADOParcelaValorIOFComplementar.AsFloat := Calculos[12, TotalItens];
      ADOParcelaVencimentoReal.AsDateTime := Calculos[13, TotalItens];
      ADOParcelaValorPMT.AsFloat := VcalculoPMT;

      if (Calculos[8, TotalItens] = 1) then
      begin
        ADOParcelaValorPMT.AsFloat := VcalculoPMT;
        ADOParcelaTipoParcela.AsString := 'PMT'
      end
      else
      begin
        ADOParcelaTipoParcela.AsString := 'JUROS';
        ADOParcelaValorPMT.AsFloat := Calculos[5, TotalItens];
        ADOParcelaJuros.AsFloat := 0.00;
        ADOParcelaAmortizacao.AsFloat := 0.00;
        ADOParcelaValorLiquido.AsFloat := 0.00;
        VcalculoCarencia := VcalculoCarencia + ADOParcelaValorPMT.AsFloat;
      end;

      VcalculoJuros := VcalculoJuros + ADOParcelaJuros.AsFloat;
      VcalculoAmortizacao := VcalculoAmortizacao +
        ADOParcelaAmortizacao.AsFloat;
      DataAnterior := DataVencimento;

      MontaParcela;

      ADOParcelaPrazo.AsInteger :=
        DaysBetween(ADOBoletoOperacaoDataOperacao.AsDateTime,
        ADOParcelaVencimentoReal.AsDateTime);

      ADOParcelaPrazoEfetivo.AsInteger :=
        DaysBetween(ADOBoletoOperacaoDataOperacao.AsDateTime,
        D_maisRegional(ADOParcelaVencimento.AsDateTime, 1,
        ADOBoletoOperacaoCodigoRegiao.AsInteger));

      if (ADOBoletoOperacaoTaxaSelic.AsFloat > 0) and
        (ADOProdutoMOEDA.AsString <> 'IGPM') then
        ADOParcelaValorFuturo.AsFloat := ADOParcelaValorPMT.AsFloat *
          Power(((ADOBoletoOperacaoTaxaSelic.AsFloat) / 100.000000000 +
          1.000000000), (ADOParcelaPrazoEfetivo.AsInteger) / 360.000000000) *
          (Power(ADOBoletoOperacaoTaxaNominalPosFixada.AsFloat / 100.000000000 +
          1.000000000, (ADOParcelaPrazoEfetivo.AsInteger / 30.000000000)))
      else
        ADOParcelaValorFuturo.AsFloat := ADOParcelaValorPMT.AsFloat;

      AtribuiTacs;

      Atribui_ValorLiquido;

      AjustaValorLiberadoItem;

      VCalculoValorLiquido := VCalculoValorLiquido +
        ADOParcelaValorLiquido.AsFloat;


      if (VCalculoValorLiquido < ADOBoletoOperacaoValorLiberado.AsFloat) and
        (TotalItens = (ADOBoletoOperacaoTotalTitulo.AsInteger +
        ADOBoletoOperacaoParcelasCarencia.AsInteger)) then
        ADOBoletoOperacaoValorLiquido.AsFloat :=
          ADOBoletoOperacaoValorLiquido.AsFloat +
          (ADOBoletoOperacaoValorLiberado.AsFloat - VCalculoValorLiquido);

      VCalculoPrazoMedio := VCalculoPrazoMedio +
        (ADOParcelaPrazo.AsInteger * ADOParcelaValorPMT.AsFloat);
      VCalculoPrazoMedioEfetivo := VCalculoPrazoMedioEfetivo +
        (ADOParcelaPrazoEfetivo.AsInteger * ADOParcelaValorPMT.AsFloat);

      VValorPrincipal := VValorPrincipal + ADOParcelaValorPMT.AsFloat;

      ZeraResto;

      self.Valida_Ord := false;
      ADOParcela.Post;
      self.Valida_Ord := true;

      Inc(TotalItens);
    end;
  end;
end;

procedure TFrmCadEmprestimoBoletoOperacao.CriaParcelas;
Var
  DataAnterior: TDateTime;
  TotalJuros: Double;
begin
  VcalculoCarencia := 0;
  VCalculoValorLiquido := 0;
  VCalculoPrazoMedioEfetivo := 0;
  VCalculoPrazoMedio := 0;
  VValorPrincipal := 0;
  TotalJuros := 0;

  if ((ADOParcela.Active) and (ADOParcela.State = DsInactive)) then
    AbreParcelas;

  AjustaTacs;

  TotalizaIOF;

  AjustaValorFinanciado;

  TotalItens := 1;

  while (TotalItens <= ADOBoletoOperacaoTotalTitulo.AsInteger) do
  begin
    TotalJuros := TotalJuros + Calculos[5, TotalItens];
    Inc(TotalItens);
  end;

  VcalculoPMT := (ADOBoletoOperacaoValorFinanciado.AsFloat + TotalJuros) /
    ADOBoletoOperacaoTotalTitulo.AsInteger;

  with (ADOParcela) do
  begin
    ADOParcela.Cancel;
    ADOParcela.First;

    while not ADOParcela.Eof do
      ADOParcela.Delete;

    DataAnterior := ADOBoletoOperacaoDataOperacao.AsDateTime;
    TotalItens := 1;

    DecodeDate(ADOBoletoOperacaoDataPrimeiraParcelaOriginal.AsDateTime, Ano1,
      Mes1, Dia1);
    dia2 := Dia1;
    while (TotalItens <= (ADOBoletoOperacaoTotalTitulo.AsInteger +
      ADOBoletoOperacaoParcelasCarencia.AsInteger)) do
    begin
      DataVencimento := Calculos[0, TotalItens];

      DecodeDate(DataVencimento, Ano, Mes, Dia);

      if ((Dia1 = 31) and ((Mes = 4) or (Mes = 6) or (Mes = 9) or (Mes = 11)))
      then
      begin
        dia2 := Dia1;
        Dia1 := 30;
      end
      else if (Mes = 2) and (Dia1 > 28) then
      begin
        dia2 := Dia1;
        Dia1 := 28;
      end;

      if (Dia <> Dia1) and (TotalItens <> 1) and
        (ADOBoletoOperacaoParcelasCarencia.AsInteger = 0) then
        DataVencimento := EncodeDate(Ano, Mes, Dia1);

      if (Dia <> Dia1) and (TotalItens <> 1) and
        (ADOBoletoOperacaoParcelasCarencia.AsInteger > 0) then
        DataVencimento := EncodeDate(Ano, Mes, Dia);

      DataVencimento := D_maisBancario(DataVencimento, 0, 'FERIADO BANCÁRIO');
      Dia1 := dia2;

      if ((DataVencimento < DataAnterior) and
        (not Application.MessageBox(pChar('O vencimento atual  << ' +
        DateTimeToStr(DataVencimento) +
        ' >> é menor que o vencimento anterior << ' +
        DateTimeToStr(DataAnterior) + ' >> .' + chr(10) + '' + chr(10) +
        '                                    Deseja continuar ?'), 'Atenção',
        MB_YESNO + MB_ICONEXCLAMATION + MB_DEFBUTTON1 + MB_APPLMODAL)
        = ID_YES)) Then
        Abort;

      ADOParcela.Append;
      ADOParcelaParcela.AsInteger := TotalItens;
      ADOParcelaVencimento.AsDateTime := DataVencimento;
      ADOParcelaPrazoIntermediario.AsFloat := Calculos[1, TotalItens];
      ADOParcelaIntervalo.AsFloat := Calculos[2, TotalItens];
      ADOParcelaFatorPrazo.AsFloat := Calculos[3, TotalItens];
      ADOParcelaFatorIntervalo.AsFloat := Calculos[4, TotalItens];
      ADOParcelaJuros.AsFloat := Calculos[5, TotalItens];
      ADOParcelaAmortizacao.AsFloat := VcalculoPMT - Calculos[5, TotalItens];

      if ((Calculos[6, TotalItens] >
        TruncaValor(ADOBoletoOperacaoValorFinanciado.AsFloat, 2)) and
        (Calculos[8, TotalItens] = 1) and
        (Application.MessageBox
        ('O valor da amortização é maior que o valor financiado. Deseja fazer ajuste ?',
        '', MB_YESNO + MB_ICONQUESTION + MB_DEFBUTTON1 + MB_APPLMODAL)
        = ID_YES)) Then
      begin
        ADOParcelaAmortizacao.AsFloat :=
          TruncaValor(ADOBoletoOperacaoValorFinanciado.AsFloat, 2);
        ADOParcelaJuros.AsFloat := VcalculoPMT - ADOParcelaAmortizacao.AsFloat;
      end;

      ADOParcelaValorIOF.AsFloat := Calculos[7, TotalItens];
      ADOParcelaPrazoIOF.AsFloat := Calculos[10, TotalItens];
      ADOParcelaValorIOFComplementar.AsFloat := Calculos[12, TotalItens];
      ADOParcelaVencimentoReal.AsDateTime := Calculos[13, TotalItens];
      ADOParcelaValorPMT.AsFloat := VcalculoPMT;

      if (Calculos[8, TotalItens] = 1) then
      begin
        ADOParcelaValorPMT.AsFloat := VcalculoPMT;
        ADOParcelaTipoParcela.AsString := 'PMT'
      end
      else
      begin
        ADOParcelaTipoParcela.AsString := 'JUROS';
        ADOParcelaValorPMT.AsFloat := Calculos[5, TotalItens];
        ADOParcelaJuros.AsFloat := 0.00;
        ADOParcelaAmortizacao.AsFloat := 0.00;
        ADOParcelaValorLiquido.AsFloat := 0.00;
        VcalculoCarencia := VcalculoCarencia + ADOParcelaValorPMT.AsFloat;
      end;

      VcalculoJuros := VcalculoJuros + ADOParcelaJuros.AsFloat;
      VcalculoAmortizacao := VcalculoAmortizacao +
        ADOParcelaAmortizacao.AsFloat;
      DataAnterior := DataVencimento;

      MontaParcela;

      ADOParcelaPrazo.AsInteger :=
        DaysBetween(ADOBoletoOperacaoDataOperacao.AsDateTime,
        ADOParcelaVencimentoReal.AsDateTime);

      ADOParcelaPrazoEfetivo.AsInteger :=
        DaysBetween(ADOBoletoOperacaoDataOperacao.AsDateTime,
        D_maisRegional(ADOParcelaVencimento.AsDateTime, 1,
        ADOBoletoOperacaoCodigoRegiao.AsInteger));

      if (ADOBoletoOperacaoTaxaSelic.AsFloat > 0) then
        ADOParcelaValorFuturo.AsFloat := ADOParcelaValorPMT.AsFloat *
          Power(((ADOBoletoOperacaoTaxaSelic.AsFloat) / 100.000000000 +
          1.000000000), (ADOParcelaPrazoEfetivo.AsInteger) / 360.000000000) *
          (Power(ADOBoletoOperacaoTaxaNominalPosFixada.AsFloat / 100.000000000 +
          1.000000000, (ADOParcelaPrazoEfetivo.AsInteger / 30.000000000)))
      else
        ADOParcelaValorFuturo.AsFloat := ADOParcelaValorPMT.AsFloat;

      AtribuiTacs;

      Atribui_ValorLiquido;

      AjustaValorLiberadoItem;

      VCalculoValorLiquido := VCalculoValorLiquido +
        ADOParcelaValorLiquido.AsFloat;


      if (VCalculoValorLiquido < ADOBoletoOperacaoValorLiberado.AsFloat) and
        (TotalItens = (ADOBoletoOperacaoTotalTitulo.AsInteger +
        ADOBoletoOperacaoParcelasCarencia.AsInteger)) then
        ADOBoletoOperacaoValorLiquido.AsFloat :=
          ADOBoletoOperacaoValorLiquido.AsFloat +
          (ADOBoletoOperacaoValorLiberado.AsFloat - VCalculoValorLiquido);

      VCalculoPrazoMedio := VCalculoPrazoMedio +
        (ADOParcelaPrazo.AsInteger * ADOParcelaValorPMT.AsFloat);
      VCalculoPrazoMedioEfetivo := VCalculoPrazoMedioEfetivo +
        (ADOParcelaPrazoEfetivo.AsInteger * ADOParcelaValorPMT.AsFloat);

      VValorPrincipal := VValorPrincipal + ADOParcelaValorPMT.AsFloat;

      ZeraResto;

      self.Valida_Ord := false;
      ADOParcela.Post;
      self.Valida_Ord := true;

      Inc(TotalItens);
    end;
  end;
end;


procedure TFrmCadEmprestimoBoletoOperacao.CustoEfetivoTotalcapitaldegiro;
var
    V_MensagemErro : String;
begin

  If ( copy(ADOBoletoOperacaoCarteira.AsString,1,1) <> 'A')  then
  begin

    FrmPrincipal.Mensagem('Aguarde. Gerando o custo efetivo total (CET).');
    ADOCustoEfetivocapitaldegiro.Close;

    ADOCustoEfetivocapitaldegiro.Parameters[0].Value := ADOBoletoOperacaoProposta.AsInteger;
    ADOCustoEfetivocapitaldegiro.Parameters[1].Value := 'KG_BOLETOOPERACAO';

    Try
      ADOCustoEfetivocapitaldegiro.ExecSQL;
      ADOaux2.close;
      ADOaux2.sql.Text:= ' select CustoEfetivoTotal from KG_BOLETOOPERACAO where proposta='+''''+ADOBoletoOperacaoProposta.Asstring+''''+'';
      ADOaux2.Open;
      DBEdit26.Text:=floattostr(ADOaux2.Fields[0].AsFloat);

    Except
      on E: Exception do
      MessageDlg('Foi encontrado um parametro inesperado. '+E.Message, mtError, [mbOK], 0);
    end;
  end;

  FrmPrincipal.Mensagem;

end;

procedure TFrmCadEmprestimoBoletoOperacao.CustoEfetivoTotal;
var
  V_MensagemErro: String;
begin

  If (Copy(ADOBoletoOperacaoCarteira.AsString, 1, 1) <> 'A') then
  begin
    ADOBoletoOperacao.Edit;
    Botoes(False, False, False, False, False, False, False, False);
    ADOBoletoOperacaoCustoEfetivoTotal.AsFloat := 0.00;
    FrmPrincipal.Mensagem('Aguarde. Gerando o custo efetivo total (CET).');
    ADOCustoEfetivo.Parameters[0].Value := '0';
    ADOCustoEfetivo.Parameters[1].Value := ADOBoletoOperacaoProposta.AsInteger;
    ADOCustoEfetivo.Parameters[2].Value := 'KG_BOLETOOPERACAO';

    Try
      ADOCustoEfetivo.Execute;
      if (ADOCustoEfetivo.Parameters[4].Value <> NULL) then
      begin
        V_MensagemErro := ADOCustoEfetivo.Parameters[5].Value;
        Application.MessageBox
          (pChar('Houve erro no calculo do custo efetivo. Descrição Erro.: ' +
          V_MensagemErro + ' '), 'Atenção', MB_OK + MB_ICONEXCLAMATION +
          MB_DEFBUTTON1 + MB_APPLMODAL);
      end
      else
        ADOBoletoOperacaoCustoEfetivoTotal.AsFloat :=
          ADOCustoEfetivo.Parameters[3].Value;
      ADOBoletoOperacao.Post;
    Except
      on E: Exception do
        MessageDlg('Foi encontrado um parametro inesperado. ' + E.Message,
          mtError, [mbOK], 0);
    end;
  end;
  Botoes(True, True, True, True, True, True, True, True);
  FrmPrincipal.Mensagem;

end;

procedure TFrmCadEmprestimoBoletoOperacao.ZeraResto;
begin
  RestoValorDoc := 0;
  RestoValorTMF := 0;
  RestoValortac := 0;
  RestoCustoCobranca := 0;
  RestoOutraDespesa := 0;
  RestoTaxaAdministrativa := 0;
  restoTaxaaberturaCredito := 0;
end;

procedure TFrmCadEmprestimoBoletoOperacao.AtribuiTacs;
begin
  if (DBRdGrpCongelarParcelas.ItemIndex = 0) then
  begin
    Total := ADOBoletoOperacaoTotalTitulo.AsInteger +
      ADOBoletoOperacaoParcelasCarencia.AsInteger;
    ADOParcelaValorDoc.AsFloat :=
      StrToFloat(FloatToStrF(ADOBoletoOperacaoValorDoc.AsFloat / Total, ffFixed,
      15, 2)) + RestoValorDoc;

    ADOParcelaValorTac.AsFloat :=
      StrToFloat(FloatToStrF(ADOBoletoOperacaoValorTac.AsFloat / Total, ffFixed,
      15, 2)) + RestoValortac;
    ADOParcelaValorCustoCobranca.AsFloat :=
      StrToFloat(FloatToStrF(ADOBoletoOperacaoValorCustoCobranca.AsFloat /
      Total, ffFixed, 15, 2)) + RestoCustoCobranca;
    ADOParcelaValorOutrasDespesas.AsFloat :=
      StrToFloat(FloatToStrF(ADOBoletoOperacaoValorOutrasDespesas.AsFloat /
      Total, ffFixed, 15, 2)) + RestoOutraDespesa;
    ADOParcelaValorCustoAdministrativo.AsFloat :=
      StrToFloat(FloatToStrF(ADOBoletoOperacaoValorCustoAdministrativo.AsFloat /
      Total, ffFixed, 15, 2)) + RestoTaxaAdministrativa;
    ADOParcelaTaxaAberturaCredito.AsFloat :=
      StrToFloat(FloatToStrF(ADOBoletoOperacaoTaxaAberturaCredito.AsFloat /
      Total, ffFixed, 15, 2)) + restoTaxaaberturaCredito;

  end
  else
  begin
    ADOParcelaValorDoc.AsFloat :=
      StrToFloat(FloatToStrF(ADOBoletoOperacaoValorDoc.AsFloat *
      ADOParcelaPercentualValorPMT.AsFloat / 100, ffFixed, 15, 2));

    ADOParcelaValorTac.AsFloat :=
      StrToFloat(FloatToStrF(ADOBoletoOperacaoValorTac.AsFloat *
      ADOParcelaPercentualValorPMT.AsFloat / 100, ffFixed, 15, 2));
    ADOParcelaValorCustoCobranca.AsFloat :=
      StrToFloat(FloatToStrF(ADOBoletoOperacaoValorCustoCobranca.AsFloat *
      ADOParcelaPercentualValorPMT.AsFloat / 100, ffFixed, 15, 2));
    ADOParcelaValorOutrasDespesas.AsFloat :=
      StrToFloat(FloatToStrF(ADOBoletoOperacaoValorOutrasDespesas.AsFloat *
      ADOParcelaPercentualValorPMT.AsFloat / 100, ffFixed, 15, 2));
    ADOParcelaValorCustoAdministrativo.AsFloat :=
      StrToFloat(FloatToStrF(ADOBoletoOperacaoValorCustoAdministrativo.AsFloat *
      ADOParcelaPercentualValorPMT.AsFloat / 100, ffFixed, 15, 2));
    ADOParcelaTaxaAberturaCredito.AsFloat :=
      StrToFloat(FloatToStrF(ADOBoletoOperacaoTaxaAberturaCredito.AsFloat *
      ADOParcelaTaxaAberturaCredito.AsFloat / 100, ffFixed, 15, 2));
  end;

  RestoValorDoc := 0;
  RestoValorTMF := 0;
  RestoValortac := 0;
  RestoCustoCobranca := 0;
  RestoOutraDespesa := 0;
  RestoTaxaAdministrativa := 0;
  restoTaxaaberturaCredito := 0;

end;

procedure TFrmCadEmprestimoBoletoOperacao.AjustaTacs;
begin
  Total := ADOBoletoOperacaoTotalTitulo.AsInteger +
    ADOBoletoOperacaoParcelasCarencia.AsInteger;
  RestoValorDoc := ADOBoletoOperacaoValorDoc.AsFloat -
    (StrToFloat(FloatToStrF(ADOBoletoOperacaoValorDoc.AsFloat / Total, ffFixed,
    15, 2)) * Total);
  RestoValortac := ADOBoletoOperacaoValorTac.AsFloat -
    (StrToFloat(FloatToStrF(ADOBoletoOperacaoValorTac.AsFloat / Total, ffFixed,
    15, 2)) * Total);
  RestoCustoCobranca := ADOBoletoOperacaoValorCustoCobranca.AsFloat -
    (StrToFloat(FloatToStrF(ADOBoletoOperacaoValorCustoCobranca.AsFloat / Total,
    ffFixed, 15, 2)) * Total);
  RestoOutraDespesa := ADOBoletoOperacaoValorOutrasDespesas.AsFloat -
    (StrToFloat(FloatToStrF(ADOBoletoOperacaoValorOutrasDespesas.AsFloat /
    Total, ffFixed, 15, 2)) * Total);
  RestoTaxaAdministrativa := ADOBoletoOperacaoValorCustoAdministrativo.AsFloat -
    (StrToFloat(FloatToStrF(ADOBoletoOperacaoValorCustoAdministrativo.AsFloat /
    Total, ffFixed, 15, 2)) * Total);
  restoTaxaaberturaCredito := ADOBoletoOperacaoTaxaAberturaCredito.AsFloat -
    (StrToFloat(FloatToStrF(ADOBoletoOperacaoTaxaAberturaCredito.AsFloat /
    Total, ffFixed, 15, 2)) * Total);

end;

procedure TFrmCadEmprestimoBoletoOperacao.AjustaTacs_Congelada;
begin
  AbreConferencia;

  RestoValorDoc := ADOBoletoOperacaoValorDoc.AsFloat -
    ADOConferenciaValorDoc.AsFloat;

  RestoValortac := ADOBoletoOperacaoValorTac.AsFloat -
    ADOConferenciaValorTac.AsFloat;
  RestoCustoCobranca := ADOBoletoOperacaoValorCustoCobranca.AsFloat -
    ADOConferenciaValorCustoCobranca.AsFloat;
  RestoOutraDespesa := ADOBoletoOperacaoValorOutrasDespesas.AsFloat -
    ADOConferenciaValorOutrasDespesas.AsFloat;
  RestoTaxaAdministrativa := ADOBoletoOperacaoValorCustoAdministrativo.AsFloat -
    ADOConferenciaValorCustoAdministrativo.AsFloat;
  restoTaxaaberturaCredito := ADOBoletoOperacaoTaxaAberturaCredito.AsFloat -
    ADOConferenciaTaxaAberturaCredito.AsFloat;


  with (ADOParcela) do
  begin
    First;
    Edit;

    ADOParcelaValorDoc.AsFloat := ADOParcelaValorDoc.AsFloat + RestoValorDoc;

    ADOParcelaValorTac.AsFloat := ADOParcelaValorTac.AsFloat + RestoValortac;
    ADOParcelaValorCustoCobranca.AsFloat := ADOParcelaValorCustoCobranca.AsFloat
      + RestoCustoCobranca;
    ADOParcelaValorOutrasDespesas.AsFloat :=
      ADOParcelaValorOutrasDespesas.AsFloat + RestoOutraDespesa;
    ADOParcelaValorCustoAdministrativo.AsFloat :=
      ADOParcelaValorCustoAdministrativo.AsFloat + RestoTaxaAdministrativa;
    ADOParcelaTaxaAberturaCredito.AsFloat :=
      ADOParcelaTaxaAberturaCredito.AsFloat + restoTaxaaberturaCredito;

    ADOParcela.Post;
  end;

end;

procedure TFrmCadEmprestimoBoletoOperacao.AjustaValorFinanciado;
begin
  ADOBoletoOperacaoValorFinanciado.AsFloat :=
    ADOBoletoOperacaoValorReferencia.AsFloat;
  ADOBoletoOperacaoValorLiberado.AsFloat :=
    ADOBoletoOperacaoValorReferencia.AsFloat;

  if (ADOBoletoOperacaoTipoPagtoIOF.AsString = 'F') then
    ADOBoletoOperacaoValorFinanciado.AsFloat :=
      ADOBoletoOperacaoValorFinanciado.AsFloat + VcalculoIOF +
      VcalculoIOFComplementar
  else if (ADOBoletoOperacaoTipoPagtoIOF.AsString = 'V') then
    ADOBoletoOperacaoValorLiberado.AsFloat :=
      ADOBoletoOperacaoValorLiberado.AsFloat - VcalculoIOF -
      VcalculoIOFComplementar;

  if (ADOBoletoOperacaoTipoPagtoTac.AsString = 'F') then
    ADOBoletoOperacaoValorFinanciado.AsFloat :=
      ADOBoletoOperacaoValorFinanciado.AsFloat +
      ADOBoletoOperacaoValorSomatorioTacs.AsFloat
  else if (ADOBoletoOperacaoTipoPagtoTac.AsString = 'V') then
    ADOBoletoOperacaoValorLiberado.AsFloat :=
      ADOBoletoOperacaoValorLiberado.AsFloat -
      ADOBoletoOperacaoValorSomatorioTacs.AsFloat;

end;

procedure TFrmCadEmprestimoBoletoOperacao.TotalizaIOF;
begin
  TotalItens := 0;
  VcalculoIOF := 0;
  VcalculoIOFComplementar := 0;
  TotalItens := 1;
  ADOParcela.First;
  while (TotalItens <= (ADOBoletoOperacaoTotalTitulo.AsInteger +
    ADOBoletoOperacaoParcelasCarencia.AsInteger)) do
  begin
    VcalculoIOF := VcalculoIOF + Calculos[7, TotalItens];
    VcalculoIOFComplementar := VcalculoIOFComplementar +
      Calculos[12, TotalItens];
    Inc(TotalItens)
  end;
end;

Procedure TFrmCadEmprestimoBoletoOperacao.ConsisteFechamento;
var
  V_RCAC, V_RDESP, V_RVRDC, V_RCCOB, V_RTXADM, v_RTXACR: Double;
begin
  ErroConsistencia := '';

  AbreConferencia;

  ADOParcelaTacs.Close;
  ADOParcelaTacs.Parameters[0].Value := ADOBoletoOperacaoProposta.AsInteger;
  ADOParcelaTacs.Open;

  if ((ADOBoletoOperacao.Active) and (ADOBoletoOperacao.RecordCount > 0) and
    (Copy(ADOBoletoOperacaoCarteira.AsString, 1, 1) <> 'A') and
    (ADOBoletoOperacaoTaxaMes.AsFloat = 0.00) and
    (ADOBoletoOperacaoTaxaNominalPosFixada.AsFloat = 0.00) and
    (not ADOBoletoOperacaoProposta.AsInteger = 59570)) then

  begin

    if ((ADOProdutoTipoFinanciamento.AsString = 'DES') or
      (ADOProdutoTipoFinanciamento.AsString = 'PRE')) then
      ErroConsistencia :=
        'Taxa nominal não informada. Procure os setores de Crédito e de Operações.'
    else if ((ADOProdutoTipoFinanciamento.AsString = 'POS') or
      (ADOProdutoTipoFinanciamento.AsString = 'ROT')) then
      ErroConsistencia :=
        'Taxa prefixada para o fator POS não informada. Procure os setores de Crédito e de Operações.'
    else
      ErroConsistencia :=
        'Taxa de referencia não informada. Procure os setores de Crédito e de Operações.';

  end;

  if (((FloatToStrF((ADOBoletoOperacaoValorOperacao.AsFloat - ADOConferenciaValorPMT.AsFloat), ffFixed, 15, 2)) > '0,99') OR
      ((FloatToStrF((ADOBoletoOperacaoValorOperacao.AsFloat - ADOConferenciaValorPMT.AsFloat), ffFixed, 15, 2)) < '-0,99')) and
     (ADOBoletoOperacaoCodigoProduto.asinteger <> 155) and
     (not DMDados.ValidaAutorizacaoCedente(ADOBoletoOperacaoCodigoCedente.AsInteger, ADOBoletoOperacaoCarteira.AsString, ADOBoletoOperacaoProposta.AsInteger))
  then
  begin
    ErroConsistencia := 'Somatório dos valores das parcelas não fecha com o valor do contrato.' + slinebreak +
                        '  Valor contrato  = ' + FormatCurr('#,##0.00', ADOBoletoOperacaoValorOperacao.AsFloat) + slinebreak +
                        '  Valor parcelas  = ' + FormatCurr('#,##0.00', ADOConferenciaValorPMT.AsFloat) + slinebreak +
                        '  Valor diferença = ' + FormatCurr('#,##0.00', (ADOBoletoOperacaoValorOperacao.AsFloat - ADOConferenciaValorPMT.AsFloat));
    Application.MessageBox(pChar(ErroConsistencia), 'Aviso', MB_OK + MB_ICONINFORMATION + MB_DEFBUTTON1 + MB_APPLMODAL);
    ErroConsistencia := '';
  end;
  V_RCAC := ADOBoletoOperacaoValorTac.AsFloat - ADOConferenciaValorTac.AsFloat;
  V_RDESP := ADOBoletoOperacaoValorOutrasDespesas.AsFloat -
    ADOConferenciaValorOutrasDespesas.AsFloat;
  V_RVRDC := ADOBoletoOperacaoValorDoc.AsFloat - ADOConferenciaValorDoc.AsFloat;
  V_RCCOB := ADOBoletoOperacaoValorCustoCobranca.AsFloat -
    ADOConferenciaValorCustoCobranca.AsFloat;
  V_RTXADM := ADOBoletoOperacaoValorCustoAdministrativo.AsFloat -
    ADOConferenciaValorCustoAdministrativo.AsFloat;
  v_RTXACR := ADOBoletoOperacaoTaxaAberturaCredito.AsFloat -
    ADOConferenciaTaxaAberturaCredito.AsFloat;


  If V_RCAC > 0.00 then
    AjusteCalculoTacs('VALORTAC', ADOParcelaTacsVALORTAC.AsFloat + V_RCAC);

  If V_RDESP > 0.00 then
    AjusteCalculoTacs('VALOROUTRASDESPESAS',
      ADOParcelaTacsVALOROUTRASDESPESAS.AsFloat + V_RDESP);

  If V_RVRDC > 0.00 then
    AjusteCalculoTacs('VALORDOC', ADOParcelaTacsVALORDOC.AsFloat + V_RVRDC);

  If V_RCCOB > 0.00 then
    AjusteCalculoTacs('VALORCUSTOCOBRANCA',
      ADOParcelaTacsVALORCUSTOCOBRANCA.AsFloat + V_RCCOB);

  If V_RTXADM > 0.00 then
    AjusteCalculoTacs('VALORCUSTOADMINISTRATIVO',
      ADOParcelaTacsVALORCUSTOADMINISTRATIVO.AsFloat + V_RTXADM);

  If v_RTXACR > 0.00 then
    AjusteCalculoTacs('TaxaAberturaCredito',
      ADOParcelaTacsTaxaAberturaCredito.AsFloat + v_RTXACR);

  AbreConferencia;

  If (FloatToStrF(ADOBoletoOperacaoValorTac.AsFloat +
    ADOBoletoOperacaoValorOutrasDespesas.AsFloat +
    ADOBoletoOperacaoValorDoc.AsFloat + ADOBoletoOperacaoValorCustoCobranca.
    AsFloat + ADOBoletoOperacaoTaxaAberturaCredito.AsFloat

    + ADOBoletoOperacaoValorCustoAdministrativo.AsFloat, ffFixed, 15, 2) <>
    FloatToStrF(ADOConferenciaValorTac.AsFloat +
    ADOConferenciaValorOutrasDespesas.AsFloat + ADOConferenciaValorDoc.AsFloat +
    ADOConferenciaValorCustoCobranca.AsFloat +
    ADOConferenciaTaxaAberturaCredito.AsFloat

    + ADOConferenciaValorCustoAdministrativo.AsFloat, ffFixed, 15, 2)) then
    ErroConsistencia := 'O Rateio das tac´s não fecha.';

  if ((FloatToStrF(((ADOBoletoOperacaoTotalTitulo.AsInteger + ADOBoletoOperacaoParcelasCarencia.AsInteger) - ADOConferenciaTotalItens.AsInteger), ffFixed, 15, 2)) < '-0,99') OR
     ((FloatToStrF(((ADOBoletoOperacaoTotalTitulo.AsInteger + ADOBoletoOperacaoParcelasCarencia.AsInteger) - ADOConferenciaTotalItens.AsInteger), ffFixed, 15, 2)) > '0,99') and
      (ADOBoletoOperacaoCodigoProduto.asinteger <> 155)
  then
    ErroConsistencia := 'Somatório dos quantidade das parcelas não fecha com o quantidade do contrato.';

  if (FloatToStrF(ADOBoletoOperacaoValorIOF.AsFloat, ffFixed, 15, 2) <>
    FloatToStrF(ADOConferenciaValorIOF.AsFloat, ffFixed, 15, 2))   then
    ErroConsistencia := 'Somatória dos valores do IOF das parcelas não fecha.';

end;

Function TFrmCadEmprestimoBoletoOperacao.AjusteCalculoTacs(V_Campo: String;
  V_Valor: Double): Boolean;
var
  ItensAfetados: Integer;
begin

  Auxs := ' UPDATE KG_BOLETOPARCELA SET ' + V_Campo + ' = ' +
    StringReplace(FloatToStr(V_Valor), ',', '.', []) + ' WHERE PROPOSTA = ' +
    Bordero.Text + ' AND PARCELA = 1 ';
  DMConecta.ADOCapitalDeGiro.Execute(Auxs, ItensAfetados);

end;

procedure TFrmCadEmprestimoBoletoOperacao.CadastroSacado;
Var
  ItensAfetados   : Integer;
  CodSacado       : Integer;
  CadastraSacado  : Boolean;
  CNPJ            : String;
begin
  Try

    CNPJ := ADOClienteclicgc.AsString + ADOClienteclicgcfili.AsString + ADOClienteclicgcdv.AsString;
    CadastraSacado := False;

    with (DMDados) do
    begin
      ADOExecuta.Close;
      ADOExecuta.sql.Clear;
      ADOExecuta.sql.Add(' SELECT TOP 1 COUNT(*) FROM FACTBCLI WITH (NOLOCK)  ' +
                         ' WHERE CLICGC + ISNULL(CLICGCFILI , '''' ) + CLICGCDV = ''' + CNPJ +''''+
                         ' AND CLITIP = ''S'' ');
      ADOExecuta.Open;
      if (ADOExecuta.Fields[0].AsFloat < 1 ) then
      begin
        CadastraSacado := True;
      end;
    end;

    if CadastraSacado then
    begin
      CodSacado :=  DMDados.GERAIDCLIENTE(CNPJ , 'ICPJ - TELA : 226 - USUÁRIO : ' + IntToStr(Ususario.Codigo));

      if CodSacado = -1 then
      begin
        MessageDlg('Foi encontrado um parametro inesperado ao gerar o identificador do sacado.', mtInformation, [mbOK], 0);
      end
      else
      begin
        Auxs := '   DECLARE  @TEMPO           DATETIME  ' +
                '   SET @TEMPO = GETDATE() ' +
                '   insert into factbcli (CLITIP, Clicod, Cliemptitu, clipes, CLICGC, CLICGCFILI, CLICGCDV, CLINOM, CLIEND, CLICEP ' +
                '                         ,CLIBAI, CLICID, CLIEST, clitelddd, CLITEL, CLIDTC, clicre, clicarta, cliboleta,CliSetorAtividade) ' +
                '   SELECT TOP 1 ''S'' as CLITIP, '+ InttoStr(CodSacado) +' as Clicod, '+ InttoStr(CodSacado) +' as Cliemptitu, clipes, CLICGC, CLICGCFILI, CLICGCDV,  ' +
                '                   CLINOM, CLIEND, CLICEP,CLIBAI, CLICID, CLIEST, clitelddd, CLITEL, CLIDTC, clicre, clicarta, cliboleta,''04'' ' +
                '   from factbcli with (nolock) where clicgc+isnull(clicgcFili,'''')+clicgcdv = ''' + CNPJ + '''' +
                ' and clitip = ''C'' ';

        DMConecta.ADOCapitalDeGiro.Execute(Auxs, ItensAfetados);
      end;
    end;
  except
    on E: Exception do
      MessageDlg(' Mensagem de erro ao cadastrar o sacado: ' + E.Message, mtError, [mbOK], 0);
  else
      MessageDlg('Foi encontrado um parametro inesperado ao cadastrar o sacado.', mtInformation, [mbOK], 0);
  end;

end;

Function TFrmCadEmprestimoBoletoOperacao.PesquisaParcela
  (Parcela: Integer): TDate;
begin
  ADOParcela.Locate('Parcela', Parcela, []);
  Result := ADOParcelaVencimento.AsDateTime;

end;

procedure TFrmCadEmprestimoBoletoOperacao.DBdtId_ContratoOperacaoExit
  (Sender: TObject);
begin
  inherited;
  OnExit(Sender);
  if ((ADOBoletoOperacao.Active) and (ADOBoletoOperacao.State in [dsInsert,
    dsEdit])) then
  begin
    if (StrToInt64Def(DBdtId_ContratoOperacao.Text, 0) > 0) then
    begin

      AbreContrato(1);

      if (ADOContratoExtra.RecordCount < 1) then
      begin
        Application.MessageBox
          ('Identificador do contrato de operação não encontrado.' + chr(10) +
          '', 'Atenção', MB_OK + MB_ICONEXCLAMATION + MB_DEFBUTTON1 +
          MB_APPLMODAL);
        DBdtId_ContratoOperacao.SetFocus;
        Abort;
      end;

      if (ADOTitularGrupoCLICOD.AsInteger <>
        ADOContratoExtraTitularGrupo.AsInteger) then
      begin
        Application.MessageBox
          ('O contrato informado não pertence ao titular do grupo.' + chr(10) +
          '', 'Atenção', MB_OK + MB_ICONEXCLAMATION + MB_DEFBUTTON1 +
          MB_APPLMODAL);
        DBdtId_ContratoOperacao.SetFocus;
        Abort;
      end;

      if (ADOContratoExtraDataVencimentoContrato.AsDateTime <
        PesquisaDataBanco(False)) then
      begin
        Application.MessageBox
          ('Não é permitido operação com contrato vencido. Consulte o setor de Crédito. '
          + chr(10) + '', 'Atenção', MB_OK + MB_ICONEXCLAMATION + MB_DEFBUTTON1
          + MB_APPLMODAL);
        DBdtId_ContratoOperacao.SetFocus;
        Abort;
      end;

      ADOBoletoOperacaoCodigoCenario.AsInteger := 2;


      if ((ADOContratoExtraTaxa.AsFloat = 0) or
        (UpperCase(ADOContratoExtraIndiceCorrecao.AsString) = 'A ESCOLHER'))
      then
      begin
        Application.MessageBox
          ('Taxa de juros não definida ou Índice de correção não informado. Consulte o setor de Operações de Capital de Giro.'
          + chr(10) + '', 'Atenção', MB_OK + MB_ICONEXCLAMATION + MB_DEFBUTTON1
          + MB_APPLMODAL);
        DBdtId_ContratoOperacao.SetFocus;
        Abort;
      end;

      if (ADOContratoExtraIDStatus.AsString = 'SIM') then
      begin
        Application.MessageBox
          (pChar('ID Bloqueado!' + chr(10) + 'Procure o depto de Cadastro PJ.' +
          chr(10) + ''), 'Atenção', MB_OK + MB_ICONEXCLAMATION + MB_DEFBUTTON1 +
          MB_APPLMODAL);
        DBdtId_ContratoOperacao.SetFocus;
        Abort;
      end;

    end
    else
      AbreContrato(0);
  end;

end;

procedure TFrmCadEmprestimoBoletoOperacao.GravaBoleto;
begin
  if ((KG_SimulacaoOperacaocontratoreservado.AsInteger > 0) and
    (ADOBoletoOperacaoProposta.AsInteger > 0)) then

  begin
    try
      DMDados.ADOUtil.CommandText := 'update Kg_SequenciaContrato set boleto = '
        + ADOBoletoOperacaoProposta.AsString +
        ' where convert(varchar,id_contrato)+convert(varchar,dv_contrato) = ' +
        ADOBoletoOperacaocontratoreservado.AsString;
      DMDados.ADOUtil.Execute;
    except
      on E: Exception do
        MessageDlg
          (' Mensagem de erro ao atribuir o boleto ao contrato reservado: ' +
          E.Message, mtError, [mbOK], 0);
      else
        MessageDlg
          ('Foi encontrado um parametro inesperado ao atribuir o boleto ao contrato reservado.',
          mtInformation, [mbOK], 0);
    end;
  end;

  ADOBoletoOperacao.Post;

end;

procedure TFrmCadEmprestimoBoletoOperacao.DBRdGrpCongelarParcelasExit
  (Sender: TObject);
begin
  inherited;
  if ((ADOBoletoOperacao.Active) AND (ADOBoletoOperacao.State in [dsInsert,
    dsEdit])) then
  begin
    if (DBRdGrpCongelarParcelas.ItemIndex = 0) then
    begin
      DBdtPercentualValorPMT.Enabled := False;
      DBdtPercentualValorPMT.Color := clSilver;

    end
    else if (DBRdGrpCongelarParcelas.ItemIndex = 1) then
    begin
      DBdtPercentualValorPMT.Enabled := True;
      DBdtPercentualValorPMT.Color := clWindow;

      DBdtPercentualValorPMT.Enabled := True;
      DBdtPercentualValorPMT.Color := clWindow;
    end;
  end;
end;

procedure TFrmCadEmprestimoBoletoOperacao.DBdtPercentualValorPMTExit
  (Sender: TObject);
begin
  inherited;
  if ((ADOParcela.Active) and (ADOParcela.State in [dsInsert, dsEdit])) then
  begin

    AtribuiTacs;

    if (StrToFloat(DBdtPercentualValorPMT.Text) > 0) then
      ADOParcelaValorPMT.AsFloat := StrToFloat(DBdtPercentualValorPMT.Text) *
        (ADOBoletoOperacaoValorTac.AsFloat + ADOBoletoOperacaoValorReferencia.
        AsFloat) / 100;

  end;
end;

procedure TFrmCadEmprestimoBoletoOperacao.BtBtnConsultaId_OperacaoClick
  (Sender: TObject);
Var
  Ordem, Tabela, Select, Join, Criterio: String;
begin
  inherited;
  if ((ADOBoletoOperacao.Active) and (ADOBoletoOperacaoCodigoCedente.AsInteger
    <> 0) and (ADOBoletoOperacao.State in [dsInsert, dsEdit])) then
  begin
    StringsDisplayLabel.Clear;
    StringsDisplayLabel.Add('Id Operação');
    StringsDisplayLabel.Add('Data Aprovação');
    StringsDisplayLabel.Add('Vencimento');
    StringsDisplayLabel.Add('Valor Limite');
    StringsDisplayLabel.Add('Cenário');
    StringsDisplayLabel.Add('Garantia');
    StringsDisplayLabel.Add('Prazo');
    StringsDisplayLabel.Add('Modalidade');
    StringsDisplayLabel.Add('1º Avalista');
    StringsDisplayLabel.Add('2º Avalista');
    StringsDisplayLabel.Add('Val Futuro');
    StringsDisplayLabel.Add('Taxa');
    StringsDisplayLabel.Add('Caracterista Prazo');
    StringsDisplayLabel.Add('Prop Comitê');
    StringsDisplayLabel.Add('Tit Grupo');
    Select := ' Id_ContratoOperacao, DataAprovacaoContrato, DataVencimentoContrato, ValorLimite, CodigoCenario '
      + ' , Garantia, Prazo, Modalidade, PrimeiroAvalista, SegundoAvalista , ValorFuturo, Taxa , PrazoCaracteristica '
      + ' , PropostaComite, TitularGrupo ';
    Tabela := ' dbo.Kg_CedenteContratoExtra  CCE with (nolock) ';
    Join := ' join factbcli cli    with (nolock) on Cli.Cliemptitu = CCE.TitularGrupo and Cli.clitip = ''C'' and cli.clicod = cli.cliemptitu '
      + ' join kg_promotor PRT with (nolock) on CodigoPromotor = Cli.Cliope ';

    Criterio := ' WHERE TitularGrupo = ' + ADOClienteCLIEMPTITU.AsString +
      AcessoArea(' and cli.cliope       ', ' and prt.Regiao',
      ' and prt.CodigoMacrorregiao', 'cli');

    Ordem := ' DataAprovacaoContrato desc ';

    if ADOPesquisa(Select, Tabela, 'Id_ContratoOperacao',
      DMConecta.ADOCapitalDeGiro, NIl, Ordem, Criterio, Join,
      StringsDisplayLabel) then
      if (StringsPesquisa.Text <> '') then
      begin
        ADOBoletoOperacaoId_ContratoOperacao.AsString :=
          StringsPesquisa.Strings[0];
        DBdtId_ContratoOperacao.SetFocus;
        DBdtId_ContratoOperacaoExit(Sender);
      end
      else
        DBdtId_ContratoOperacao.SetFocus;
  end;

end;

Function TFrmCadEmprestimoBoletoOperacao.GravaGarantias
  (Id_Contrato: Integer): Integer;
begin
  Result := ProcuraNome
    ('select isnull(max(Id_ContratoOperacaoItem),0) + 1 from Kg_BoletoGarantia with (nolock) '
    + 'where Boleto = ' + Bordero.Text);
end;

procedure TFrmCadEmprestimoBoletoOperacao.BitBtn5Click(Sender: TObject);
begin
  inherited;
  if (StrToInt64(Bordero.Text) > 0) then
  begin
    ADOGarantias.Close;
    ADOGarantias.Parameters[0].Value := ADOBoletoOperacaoProposta.AsInteger;
    ADOGarantias.Open;
    with (ADOContratoExtraItem) do
    begin
      First;
      while not Eof do
      begin
        if not ADOGarantias.Locate('BOLETO; Id_ContratoOperacaoItem',
          varArrayOf([ADOBoletoOperacaoProposta.AsInteger,
          ADOContratoExtraItemId_ContratoOperacaoItem.AsInteger]), []) then
        begin
          ADOGarantias.Append;
          ADOGarantiasId_ContratoOperacaoItem.AsInteger :=
            ADOContratoExtraItemId_ContratoOperacaoItem.AsInteger;
          ADOGarantiasId_BoletoOperacao.AsInteger :=
            ADOBoletoOperacaoId_ContratoOperacao.AsInteger;
          ADOGarantiasContrato.AsString :=
            ADOContratoExtraItemContrato.AsString;
          ADOGarantiasRazaoSocial.AsString :=
            ADOContratoExtraItemRazaoSocial.AsString;
          ADOGarantiasBoleto.AsInteger := ADOBoletoOperacaoProposta.AsInteger;
          ADOGarantias.Post;
        end;
        Next;
      end;
      BbtDesmarcarClick(Sender);
    end;

  end
  else
    Application.MessageBox('Número do boleto não foi gerado.', 'Atenção',
      MB_OK + MB_ICONEXCLAMATION + MB_DEFBUTTON1 + MB_APPLMODAL);
end;

procedure TFrmCadEmprestimoBoletoOperacao.BbtMarcarClick(Sender: TObject);
begin
  inherited;
  with (ADOGarantias) do
  begin
    First;
    while not Eof do
    begin
      Edit;
      ADOGarantiasSelecionado.AsString := 'X';
      Next;
    end;
  end;
end;

procedure TFrmCadEmprestimoBoletoOperacao.BbtDesmarcarClick(Sender: TObject);
begin
  inherited;
  with (ADOGarantias) do
  begin
    First;
    while not Eof do
    begin
      Edit;
      ADOGarantiasSelecionado.AsString := '';
      Next;
    end;
  end;
end;

Procedure TFrmCadEmprestimoBoletoOperacao.EnviaEmail;
Var
  StringMemo: String;
  LinhasMemo: Integer;
  TotalLinhas: Integer;
  PosInicio: Integer;
begin
  with TEnviaEmail.Create(nil) do
  begin
    try
      TextoPREFormatado := True;
      Fonte.Name := Screen.IconFont.Name;
      Rementente.Nome := ADOOperadorPromotor.AsString;
      Rementente.email := 'no-reply@inter.co';

      DestinatarioBCC.Add('sls@bancointer.com.br');

      if ((ADOOperadorTitularRegiao.AsInteger > 2) and
        (ADOOperadorCODIGO.AsInteger <> ADOOperadorTitularRegiao.AsInteger))
      then
        DestinatarioBCC.Add(ADOOperadorEmailTitularRegiao.AsString);

      if ((ADOOperadorAdministradorRegional.AsInteger > 2) and
        (ADOOperadorCODIGO.AsInteger <> ADOOperadorAdministradorRegional.
        AsInteger)) then
        DestinatarioBCC.Add(ADOOperadorEmailAdministrador.AsString);

      Assunto := ' OPERAÇÃO Nº ' + ADOBoletoOperacaoProposta.AsString + ' de ' +
        ADOBoletoOperacaoDataOperacao.AsString + ' COM AUTORIZAÇÃO ESPECIAL. ';
      Mensagem.Add(AnsiToAscii('AUTORIZAÇÃO ESPECIAL PARA A OPERAÇÃO ABAIXO:'));
      Mensagem.Add('Operacao Nº.: ' + ADOBoletoOperacaoProposta.AsString +
        '            Data da Operacao: ' +
        ADOBoletoOperacaoDataOperacao.AsString);

      Mensagem.Add('Taxa Nominal: ' + CompletaString(FormatFloat('#,##0.00',
        ADOBoletoOperacaoTaxaMes.AsFloat), ' ', 6, True) + '            Valor: '
        + FormatFloat('#,##0.00', ADOBoletoOperacaoValorOperacao.AsFloat));

      Mensagem.Add(AnsiToAscii('Taxa Efetiva Sugerida: ' +
        CompletaString(FormatFloat('#,##0.0000000',
        ADOBoletoOperacaoTaxaEfetiva.AsFloat), ' ', 13, True) +
        '        Cenário: ' + ADOClienteCenario.AsString));
      Mensagem.Add('Produto: ' + ADOProdutoDescricao.AsString);
      Mensagem.Add('Cedente: ' + ADOBoletoOperacaoCodigoCedente.AsString + ' - '
        + ADOClienteCLINOM.AsString);
      Mensagem.Add(' ');
      Mensagem.Add(AnsiToAscii('HISTÓRICO'));


      StringMemo := '';
      LinhasMemo := 0;
      TotalLinhas := DBMmInstrucoesDebitosExistente.Lines.Count;

      for LinhasMemo := 1 to TotalLinhas do
        StringMemo := StringMemo +
          Trim(DBMmInstrucoesDebitosExistente.Lines.Strings
          [LinhasMemo - 1]) + ' ';

      LinhasMemo := 1;
      TotalLinhas := Trunc(Length(StringMemo) / 58);
      PosInicio := 1;

      if (TotalLinhas < Length(StringMemo) / 58) then
        Inc(TotalLinhas);

      while LinhasMemo <= TotalLinhas do
      begin
        Mensagem.Add(AnsiToAscii(Copy(StringMemo, PosInicio, 58)));
        Inc(LinhasMemo);
        PosInicio := PosInicio + 58;
      end;

      Servidor := 'email-smtp.us-east-1.amazonaws.com';
      Senha := 'BDKKAbgLjvcW9k0aQ8pHvmgHpEDidVQINMqp5DOo24ZC';
      Usuario := 'AKIAYCUHE5IVYN456RYC';
      try
        if not EnviarEmal then
          MessageDlg('Erro ao enviar confirmação. ', mtError, [mbOK], 0);
      except
        on E: Exception do
        begin
          MessageDlg(' Mensagem: Erro: ' + E.Message, mtConfirmation,
            [mbOK], 0);
        end
        else
          ShowMessage('Foi encontrado um parametro inesperado.');
      end;

    finally
      Free;
    end;
  end;

end;

function TFrmCadEmprestimoBoletoOperacao.PalavraEspecial(Texto: String)
  : Boolean;
begin
  Result := False;
  if (Pos('SLS', ADOBoletoOperacaoInstrucoesDebitosExistente.AsString) > 0)

    or (Pos('SEBAST', ADOBoletoOperacaoInstrucoesDebitosExistente.AsString) > 0)

    or (Pos('AUTORIZ', ADOBoletoOperacaoInstrucoesDebitosExistente.AsString) >
    0) or (Pos('ESPECIAL', ADOBoletoOperacaoInstrucoesDebitosExistente.AsString)
    > 0) or (Pos('COMIT', ADOBoletoOperacaoInstrucoesDebitosExistente.
    AsString) > 0) then
    Result := True;
end;

Procedure TFrmCadEmprestimoBoletoOperacao.RefazNavegador
  (Navegador: TDBNavigator);
Var
  B: TNavigateBtn;
begin
  for B := Low(TNavigateBtn) to High(TNavigateBtn) do
    with TDBNewNavigator(Navegador).Buttons[B] do
    begin
      Case Index of
        nbFirst:
          Caption := 'Primeiro';
        nbLast:
          Caption := 'Último';
        nbPrior:
          Caption := 'Próximo';
        nbNext:
          Caption := 'Anterior';
        nbRefresh:
          Caption := 'Atualizar';
        nbInsert:
          Caption := 'Novo';
        nbDelete:
          Caption := 'Excluir';
        nbEdit:
          Caption := 'Editar';
        nbPost:
          Caption := 'Salvar';
        nbCancel:
          Caption := 'Cancelar';
      End;
      Layout := blGlyphTop;
      Hint := Caption;
      ShowHint := True;
    end;
end;

Procedure TFrmCadEmprestimoBoletoOperacao.AbreTitularGrupo(Codigo: Integer);
begin
  ADOTitularGrupo.Close;
  ADOTitularGrupo.Parameters[0].Value := Codigo;
  ADOTitularGrupo.Open;
end;

Procedure TFrmCadEmprestimoBoletoOperacao.AbreContrato(Acao: Integer);
begin
  ADOContratoExtra.Close;
  ADOContratoExtraItem.Close;
  ADOGarantias.Close;

  if ((ADOBoletoOperacao.Active) and
    (ADOBoletoOperacaoId_ContratoOperacao.AsInteger > 0)) then
  begin

    ADOGarantias.Parameters[0].Value := ADOBoletoOperacaoProposta.AsInteger;
    ADOGarantias.Open;

    ADOContratoExtra.Parameters[0].Value :=
      ADOBoletoOperacaoId_ContratoOperacao.AsInteger;
    ADOContratoExtra.Open;

    ADOContratoExtraItem.Parameters[0].Value :=
      ADOBoletoOperacaoId_ContratoOperacao.AsInteger;
    ADOContratoExtraItem.Open;

  end;

end;

procedure TFrmCadEmprestimoBoletoOperacao.DBGrid4KeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  if not(Key in ['a' .. 'z', 'A' .. 'Z', ',', #8, #13]) then
    Key := #0
  else
  begin
    if (Key in ['a' .. 'z', 'A' .. 'Z']) then
    begin
      if (ADOGarantias.State = dsBrowse) then
        ADOGarantias.Edit;
      ADOGarantiasSelecionado.AsString := 'X';
    end;
  end;
end;

procedure TFrmCadEmprestimoBoletoOperacao.DBGrid4KeyUp(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  If (ADOGarantias.State = dsBrowse) then
    ADOGarantias.Edit;

  case Key of
    VK_UP, VK_DOWN:
      ADOGarantias.Cancel;
    VK_ESCAPE:
      Close;
    VK_SPACE:
      begin
        if (Trim(ADOGarantiasSelecionado.AsString) = '') then
          ADOGarantiasSelecionado.AsString := 'X'
        else
          ADOGarantiasSelecionado.Clear;
      end;
  end;
end;

procedure TFrmCadEmprestimoBoletoOperacao.BitBtn4Click(Sender: TObject);
Var
  ItensAfetados: Integer;
begin
  inherited;
  with (ADOGarantias) do
  begin
    First;
    while not Eof do
    begin
      if (Trim(ADOGarantiasSelecionado.AsString) <> '') then
      begin
        DMConecta.ADOCapitalDeGiro.Execute
          ('delete from kg_BoletoGarantia with (nolock) where boleto = ' +
          Bordero.Text + ' and Id_BoletoOperacao = ' +
          ADOGarantiasId_BoletoOperacao.AsString +
          ' and Id_ContratoOperacaoItem = ' +
          ADOGarantiasId_ContratoOperacaoItem.AsString, ItensAfetados);
        if ItensAfetados < 0 then
          ShowMessage('Não encontrado.');

      end;
      Next;
    end;
  end;
  AbreContrato(1);
end;

function TFrmCadEmprestimoBoletoOperacao.PesquisaLimiteUsado: Double;
begin
  Result := StrToFloatDef
    (ProcuraNome
    (' SELECT SUM(BORVALORLIBERADO) FROM KG_CEDENTECONTRATOEXTRA CCE WITH (NOLOCK) '
    + ' JOIN FACTBBOR BOR WITH (NOLOCK) ON BOR.ID_CONTRATOOPERACAO = CCE.ID_CONTRATOOPERACAO '
    + ' JOIN KG_PRODUTO PRD WITH (NOLOCK) ON PRD.CODIGOPRODUTO = BOR.BORDOCUMEN AND TIPOFINANCIAMENTO <> ''DES'' '
    + ' WHERE CCE.ID_CONTRATOOPERACAO = ' +
    ADOBoletoOperacaoId_ContratoOperacao.AsString + ' AND BORBORD <> ' +
    Bordero.Text + ' AND BORCLAS = ' + #39 + Carteira.Text + #39 +
    ' AND BORBORD NOT IN ( ' + ' SELECT PROPROP ' + ' FROM FACTBPRO PRO ' +
    ' WHERE PRO.PROCLIE = BOR.BORCLIE AND PRO.PRODOCUMEN = BOR.BORDOCUMEN ' +
    ' AND PRO.STATUSBOLETOOPERACAO IN (''CANCELADO'') ) '), 0);
end;

Function TFrmCadEmprestimoBoletoOperacao.AtribuiTipoCarteira: Integer;
begin
  Result := 0;
  try
    if (Carteira.Text = 'IF') then
      Result := 3
    else if (Carteira.Text = 'IR') then
      Result := 6
    else
      Abort;
  except
    Application.MessageBox
      ('Não foi possível atribuir automaticamento o código do tipo de carteira.'
      + chr(10) + '' + chr(10) +
      '                             Faça a seleção manualmente.', 'Atenção',
      MB_OK + MB_ICONASTERISK + MB_DEFBUTTON1 + MB_APPLMODAL);
  end;
end;

Procedure TFrmCadEmprestimoBoletoOperacao.TaxaInternaRetorno;
var
  vfinparacalculo, vtaxa2, vlrcalcfin: Double;
  VPLANO: Integer;
  ValorBaseTIR: Double;
begin
  FrmPrincipal.Mensagem('Aguarde. Gerando a Taxa de Retorno Interno.');
  DBNavigatorParcelas.DataSource := Nil;

  ADOBoletoOperacaoTaxaInternaRetorno.AsFloat := 0.00;

  vfinparacalculo := ADOBoletoOperacaoValorLiberado.AsFloat +
    ADOBoletoOperacaoValorIOF.AsFloat +
    ADOBoletoOperacaoValorIOFComplementar.AsFloat;

  vlrcalcfin := ADOBoletoOperacaoValorOperacao.AsFloat;

  if (ADOBoletoOperacaoTaxaMes.AsFloat > 0) then
    vtaxa2 := ADOBoletoOperacaoTaxaMes.AsFloat
  else
    vtaxa2 := ADOBoletoOperacaoTaxaNominalPosFixada.AsFloat;

  IF (vtaxa2 > 0) then
  begin

    while FormatFloat('#,##0.00', int(vlrcalcfin * 100) / 100) <>
      FormatFloat('#,##0.00', int(vfinparacalculo * 100) / 100) do
    begin
      if vlrcalcfin <> 10000000000 then
        vtaxa2 := vtaxa2 * ((vlrcalcfin - vfinparacalculo) /
          vfinparacalculo + 1);

      VPLANO := 1;
      vlrcalcfin := 0;
      ADOParcela.First;
      while not ADOParcela.Eof do
      begin
        if ((DBRGTipoContrato.ItemIndex = 1) and
          (ADOParcelaValorPMT.AsFloat > 0.00)) or
          (ADOParcelaValorPMT.AsFloat > 0.00) then
        begin
          if (ADOParcelaValorPMT.AsFloat < 1.00) then
          begin
            Application.MessageBox
              ('Existe parcela com valor (PMT) zero. O cálculo não será realizado,',
              'Atenção', MB_OK + MB_ICONEXCLAMATION + MB_DEFBUTTON1 +
              MB_APPLMODAL);

            vtaxa2 := 0;
            Exit;
          end;

          if (ADOBoletoOperacaoTaxaMes.AsFloat > 0) then
            ValorBaseTIR := ADOParcelaValorPMT.AsFloat
          else
            ValorBaseTIR := ADOParcelaValorPMT.AsFloat *
              Power(((ADOBoletoOperacaoTaxaSelic.AsFloat) / 100.000000000 +
              1.000000000), (ADOParcelaPrazoEfetivo.AsInteger * 1.000000000) /
              365.000000000) *
              (Power(ADOBoletoOperacaoTaxaNominalPosFixada.AsFloat /
              100.000000000 + 1.000000000,
              (ADOParcelaPrazoEfetivo.AsInteger / 30.000000000)));

          vlrcalcfin := vlrcalcfin + (ValorBaseTIR / Power((vtaxa2 / 100 + 1),
            (ADOParcelaPrazoEfetivo.AsFloat / 365.0000000)));

        end;
        VPLANO := VPLANO + 1;
        ADOParcela.Next;
      end;
    end;
    ADOBoletoOperacaoTaxaInternaRetorno.AsFloat := vtaxa2;
  end;


  DBNavigatorParcelas.DataSource := DSParcela;
  FrmPrincipal.Mensagem;
end;

procedure TFrmCadEmprestimoBoletoOperacao.Atribui_IOF;
begin
 adoaux.close;
 adoaux.sql.text:='select isnull(taxaiof,''-1'') from Kg_Produto where CodigoProduto='+''''+ADOBoletoOperacaoCodigoProduto.AsString+'''';
 ADOaux.open;
 if adoaux.Fields[0].AsInteger>=0 then
 begin
 adoaux.close;
 adoaux.sql.text:='select isnull(taxaiof,''0''), isnull(taxaiofc,''0'') from Kg_Produto where CodigoProduto='+''''+ADOBoletoOperacaoCodigoProduto.AsString+'''';
 ADOaux.open;
 ADOBoletoOperacaoValorTaxaIOF.AsFloat      := ADOaux.fields[0].asfloat;
    ADOBoletoOperacaoValorTaxaIOFComplementar.AsFloat    := ADOaux.fields[1].asfloat;
  end
 else
 begin
  if ((ADOClienteCLIISENTOIOF.AsString = 'S') or
    (ADOProdutoIOF.AsString = 'NAO')) then
  begin
    ADOBoletoOperacaoValorTaxaIOF.AsFloat := 0.0000;
    ADOBoletoOperacaoValorTaxaIOFComplementar.AsFloat := 0.0000;
  end
  else
  begin
    if (ADOClienteClipes.AsInteger = 2) then
    begin
      ADOBoletoOperacaoValorTaxaIOF.AsFloat :=
        ADOCarteiraCLAIOFAnoPessoaFisica.AsFloat;
      ADOBoletoOperacaoValorTaxaIOFComplementar.AsFloat :=
        ADOCarteiraCLAIOFCOMP.AsFloat;
    end
    else
    begin
      ADOBoletoOperacaoValorTaxaIOF.AsFloat := ADOCarteiraCLAIOFANO.AsFloat;
      ADOBoletoOperacaoValorTaxaIOFComplementar.AsFloat :=
        ADOCarteiraCLAIOFCOMP.AsFloat;
    end;

    if DBRGTipoContrato.ItemIndex = 1 then
    begin

      ADOBoletoOperacaoValorIOFComplementar.AsFloat := 0.0000;
    end
    else
    begin
      ADOBoletoOperacaoValorIOFComplementar.AsFloat := 0.38;

    end;

    if (ADOCarteiraClaAplicaiofLiberacao.AsString = 'NAO') then
    begin
      ADOBoletoOperacaoValorTaxaIOF.AsFloat := 0.0000;
      ADOBoletoOperacaoValorTaxaIOFComplementar.AsFloat := 0.0000;
    end;
  end;
 end;
end;

Procedure TFrmCadEmprestimoBoletoOperacao.CalculoParcelaCongelada;
Var
  TaxaDiaria: Double;
  DataAnterior: TDateTime;
  FatorPrazo, FatorIntervalo, BaseIOFComplemento: Double;
  Ano, Mes, Dia, Ano1, Mes1, Dia1, dia2: Word;
begin


  VValorPrincipal := 0;

  with ADOParcela do
  begin
    TaxaDiaria := 0.00;
    DataAnterior := ADOBoletoOperacaoDataOperacao.AsDateTime;
    if (ADOBoletoOperacaoTaxaMes.AsFloat <> 0) then
      TaxaDiaria := ADOBoletoOperacaoTaxaMes.AsFloat / 3000;

    ADOParcela.First;
    ADOBoletoOperacaoValorOperacao.AsFloat := 0.00;
    DecodeDate(ADOBoletoOperacaoDataOperacao.AsDateTime, Ano1, Mes1, Dia1);
    while not Eof do
    begin
      ADOParcela.Edit;

      AtribuiTacs;

      DataVencimento := ADOParcelaVencimento.AsDateTime;

      if DBRdGrpCongelarParcelas.ItemIndex = 0 then

      begin
        DecodeDate(DataVencimento, Ano, Mes, Dia);

        if ((Dia1 = 31) and ((Mes = 4) or (Mes = 6) or (Mes = 9) or (Mes = 11)))
        then
        begin
          dia2 := Dia1;
          Dia1 := 30;
        end
        else if (Mes = 2) and (Dia1 > 28) then
        begin
          dia2 := Dia1;
          Dia1 := 28;
        end;

        if (Dia <> Dia1) and (TotalItens <> 1) then
          DataVencimento := EncodeDate(Ano, Mes, Dia1);
      end;
      DataVencimento := D_maisBancario(DataVencimento, 0, 'FERIADO BANCÁRIO');


      VencimentoReal := D_maisRegional(DataVencimento,
        ADOBoletoOperacaoFloating.AsInteger,
        ADOBoletoOperacaoCodigoRegiao.AsInteger);

      Prazo := DaysBetween(ADOBoletoOperacaoDataOperacao.AsDateTime,
        VencimentoReal);

      Intervalo := DaysBetween(DataAnterior, VencimentoReal);

      FatorPrazo := ArredondaValor(Power(1 / (1 + TaxaDiaria / 100),
        Prazo), 11);
      FatorIntervalo := ArredondaValor(Power((1 + TaxaDiaria / 100),
        (Intervalo / 1)) - 1, 11);

      ADOParcelaVencimentoReal.AsDateTime := VencimentoReal;
      ADOParcelaPrazo.AsInteger := Prazo;
      ADOParcelaPrazoEfetivo.AsInteger :=
        DaysBetween(ADOBoletoOperacaoDataOperacao.AsDateTime,
        D_maisRegional(DataVencimento, 1,
        ADOBoletoOperacaoCodigoRegiao.AsInteger));

      PrazoIOF := Min(DaysBetween(ADOBoletoOperacaoDataOperacao.AsDateTime,
        D_maisBancario(DataVencimento, 0, 'FERIADO BANCÁRIO')), 365);

      CalculaTacs_Item;

      ADOParcelaPrazoIOF.AsInteger := PrazoIOF;
      ADOParcelaAmortizacao.AsFloat :=
        (ADOBoletoOperacaoValorReferencia.AsFloat *
        ADOParcelaPercentualValorPMT.AsFloat / 100);
      BaseIOF := ADOParcelaAmortizacao.AsFloat;

      if (ADOBoletoOperacaoTipoPagtoTac.AsString = 'F') then
        BaseIOF := BaseIOF + Ite_ValorTacs;


      BaseIOFComplemento := (ADOBoletoOperacaoValorReferencia.AsFloat *
        ADOParcelaPercentualValorPMT.AsFloat / 100);

      Calculos[7, ADOParcelaParcela.AsInteger] :=
        calculaIof(BaseIOF, 1, ADOBoletoOperacaoTaxaMes.AsFloat, PrazoIOF,
        ADOBoletoOperacaoValorTaxaIOF.AsFloat,
        ADOBoletoOperacaoTipoPagtoIOF.AsString,
        ADOBoletoOperacaoDataOperacao.AsFloat);

      Calculos[12, ADOParcelaParcela.AsInteger] :=
        calculaIofComplementar(BaseIOFComplemento, BaseIOFComplemento,
        ADOBoletoOperacaoValorTaxaIOFComplementar.AsFloat,
        ADOBoletoOperacaoTipoPagtoIOF.AsString,
        ADOBoletoOperacaoDataOperacao.AsDateTime);



      ADOBoletoOperacaoValorFinanciado.AsFloat :=
        ADOBoletoOperacaoValorReferencia.AsFloat;
      ADOParcelaAmortizacao.AsFloat :=
        (ADOBoletoOperacaoValorReferencia.AsFloat *
        ADOParcelaPercentualValorPMT.AsFloat / 100);

      if (ADOBoletoOperacaoTipoPagtoIOF.AsString = 'F') then
      begin
        ADOBoletoOperacaoValorFinanciado.AsFloat :=
          ADOBoletoOperacaoValorFinanciado.AsFloat + Calculos
          [7, ADOParcelaParcela.AsInteger] + Calculos
          [12, ADOParcelaParcela.AsInteger];
        ADOParcelaAmortizacao.AsFloat := ADOParcelaAmortizacao.AsFloat +
          Calculos[7, ADOParcelaParcela.AsInteger] + Calculos
          [12, ADOParcelaParcela.AsInteger];
      end;

      if (ADOBoletoOperacaoTipoPagtoTac.AsString = 'F') then
      begin
        ADOBoletoOperacaoValorFinanciado.AsFloat :=
          ADOBoletoOperacaoValorFinanciado.AsFloat + Ite_ValorTacs;
        ADOParcelaAmortizacao.AsFloat := ADOParcelaAmortizacao.AsFloat +
          Ite_ValorTacs;
      end;


      ADOParcelaJuros.AsFloat :=
        (Power(TaxaDiaria + 1, (ADOParcelaPrazo.AsFloat / 1)) - 1) *
        ADOParcelaAmortizacao.AsFloat;
      ADOParcelaValorPMT.AsFloat := ADOParcelaAmortizacao.AsFloat +
        ADOParcelaJuros.AsFloat;
      ADOParcelaValorIOF.AsFloat := Calculos[7, ADOParcelaParcela.AsInteger];
      ADOParcelaValorIOFComplementar.AsFloat :=
        Calculos[12, ADOParcelaParcela.AsInteger];


      AtribuiTacs;

      Atribui_ValorLiquido;

      AjustaValorLiberadoItem;

      VCalculoValorLiquido := VCalculoValorLiquido +
        ADOParcelaValorLiquido.AsFloat;
      VCalculoPrazoMedio := VCalculoPrazoMedio +
        (ADOParcelaPrazo.AsInteger * ADOParcelaValorPMT.AsFloat);
      VCalculoPrazoMedioEfetivo := VCalculoPrazoMedioEfetivo +
        (ADOParcelaPrazoEfetivo.AsInteger * ADOParcelaValorPMT.AsFloat);

      VcalculoIOF := VcalculoIOF + ADOParcelaValorIOF.AsFloat;
      VcalculoIOFComplementar := VcalculoIOFComplementar +
        ADOParcelaValorIOFComplementar.AsFloat;
      VcalculoJuros := VcalculoJuros + ADOParcelaJuros.AsFloat;

      VcalculoAmortizacao := VcalculoAmortizacao +
        ADOParcelaAmortizacao.AsFloat;

      DataAnterior := VencimentoReal;
      VBordero := VBordero + ADOParcelaValorPMT.AsFloat;
      VValorPrincipal := VValorPrincipal + ADOParcelaValorPMT.AsFloat;
      ZeraResto;

      self.Valida_Ord := false;
      ADOParcela.Post;
      self.Valida_Ord := true;

      ADOParcela.Next;
    end;


  end;
end;

procedure TFrmCadEmprestimoBoletoOperacao.Zera_v;
begin
  Prazo := 0;
  TotalItens := 0;
  VcalculoIOF := 0;
  VcalculoIOFComplementar := 0;
  VcalculoAmortizacao := 0;
  VcalculoCarencia := 0;
  VcalculoJuros := 0;
  VcalculoPMT := 0;
  VCalculoPrazoMedio := 0;
  VCalculoPrazoMedioEfetivo := 0;
  VCalculoValorLiquido := 0;

end;

procedure TFrmCadEmprestimoBoletoOperacao.ImportarParcelas;
begin
  Try
    ADOParcela.Close;

    DMConecta.ADOCapitalDeGiro.Execute
      (' delete from kg_boletoParcela where Proposta = ' +
      ADOBoletoOperacaoProposta.AsString);

    Auxs := ' insert kg_boletoParcela ( Proposta, Parcela, ValorPMT, CodigoSacado, InscricaoSacado '
      + ', Vencimento, VencimentoReal, Juros, ValorLiquido, Amortizacao ' +
      ', Prazo, Intervalo, ValorIOF, ValorIOFComplementar, ValorTMF, ValorTac, ValorOutrasDespesas '
      + ', ValorDoc, ValorCustoAdministrativo,TaxaAberturaCredito, ValorCustoCobranca, FatorPrazo, FatorIntervalo '
      + ', PrazoIOF, TipoParcela, PrazoEfetivo, PercentualValorPMT, ValorLiberado, ValorFuturo,valor_ecg  ) ';
    Auxs := Auxs + ' Select ' + ADOBoletoOperacaoProposta.AsString +
      ' as ITEPROP ' + ', ITEORDE, ITEVRTI, CodigoSacado, ITESACCNPJ ' +
      ', ITEDTVE, IteVencimentoReal, IteJuros, ITELIQU, IteAmortizacao ' +
      ', ITEPRAZ, iteintervalo, ITEVRIO, ITEVRIOFC, IteValorTMF, IteVrCac, ITEDESP '
      + ', ITEVRDC, IteTaxaAdministrativa,TaxaAberturaCredito, ITECCOB, IteFatorPrazo, IteFatorIntervalo '
      + ', ItePrazoIOF, IteTipoparcela, ITEPMEF , ItePercentualValorPMT, IteValorLiberado, IteValorFuturo,itevalor_ecg '
      + ' from kg_SimulacaoProposta_Item with (nolock) ' + ' where iteprop = ' +
      SimulacaoBoleto;

    DMConecta.ADOCapitalDeGiro.Execute(Auxs);

    AbreParcelas;

    BitBtnAlterarClick(Self);

    while not ADOParcela.Eof do
    begin
      ADOParcela.Edit;

      MontaParcela;

      self.Valida_Ord := false;
      ADOParcela.Post;
      self.Valida_Ord := true;

      ADOParcela.Next;
    end;

  except
    on E: Exception do
      MessageDlg(' Mensagem: ' + E.Message, mtError, [mbOK], 0);
    else
      MessageDlg('Foi encontrado um parametro inesperado.', mtInformation,
        [mbOK], 0);
  end;

end;

procedure TFrmCadEmprestimoBoletoOperacao.BloqueiaTodos;
begin
  DSBoletoOperacao.AutoEdit := False;
  DSParcela.AutoEdit := False;
end;

procedure TFrmCadEmprestimoBoletoOperacao.AbreConferencia;
begin
  ADOConferencia.Close;
  ADOConferencia.Parameters[0].Value := ADOBoletoOperacaoProposta.AsInteger;
  ADOConferencia.Open;

end;

procedure TFrmCadEmprestimoBoletoOperacao.AjustaValorLiberadoItem;
begin

  ADOParcelaValorLiberado.AsFloat := ADOParcelaValorPMT.AsFloat /
    Power((ADOBoletoOperacaoTaxaMes.AsFloat / 3000 + 1),
    (ADOParcelaPrazo.AsInteger / 1)) - ADOParcelaValorDoc.AsFloat -
    ADOParcelaValorTac.AsFloat - ADOParcelaValorCustoCobranca.AsFloat -
    ADOParcelaValorOutrasDespesas.AsFloat - ADOParcelaValorCustoAdministrativo.
    AsFloat - ADOParcelaTaxaAberturaCredito.AsFloat

    - ADOParcelaValorIOF.AsFloat - ADOParcelaValorIOFComplementar.AsFloat;
end;

procedure TFrmCadEmprestimoBoletoOperacao.Atribui_ValorLiquido;
var
  CustoEfetivo: Double;
begin

  If (Calculos[8, TotalItens] > 0) then
  begin
    ADOParcelaValorLiquido.AsFloat := ADOParcelaAmortizacao.AsFloat -
      ADOParcelaValorCustoCobranca.AsFloat - ADOParcelaValorDoc.AsFloat -
      ADOParcelaValorCustoAdministrativo.AsFloat -
      ADOParcelaTaxaAberturaCredito.AsFloat

      - ADOParcelaValorOutrasDespesas.AsFloat - ADOParcelaValorIOF.AsFloat -
      ADOParcelaValorIOFComplementar.AsFloat

      - ADOParcelaValorTac.AsFloat-ADOParcelavalor_ecg.asfloat;

  end;

end;

procedure TFrmCadEmprestimoBoletoOperacao.DBEditFloatPropostaExit
  (Sender: TObject);
begin
  inherited;
  OnExit(Sender);
  Atribui_Float;
end;

procedure TFrmCadEmprestimoBoletoOperacao.Atribui_Float;
begin
  if (ADOBoletoOperacao.Active) and
    (ADOBoletoOperacao.State in [dsInsert, dsEdit]) then
    if (StrToIntDef(ADOBoletoOperacaoFloating.AsString, 0) <
      ADOClienteCLIFLO.AsInteger) then
      ADOBoletoOperacaoFloating.AsString := '0';
  if ADOClienteCLICOD.AsInteger <> 2560 then
  begin
    if ((ADOBoletoOperacao.Active) and (ADOBoletoOperacao.State IN [dsInsert,
      dsEdit]) and (ADOBoletoOperacaoFloating.AsInteger < 1)) then
      ADOBoletoOperacaoFloating.AsInteger := 0;

    if ((ADOBoletoOperacao.Active) and (ADOBoletoOperacao.State IN [dsInsert,
      dsEdit]) and (ADOBoletoOperacaoFloating.AsInteger > 3)) then
      ADOBoletoOperacaoFloating.AsInteger := 0;
  end;

end;

procedure TFrmCadEmprestimoBoletoOperacao.Atribui_TaxaReferencia;
begin
  If ((ADOProdutoTipoFinanciamento.AsString = 'POS') or
    (ADOProdutoTipoFinanciamento.AsString = 'ROT')) and
    (ADOProdutoMOEDA.AsString <> 'IGPM') then
  begin
    ADOBoletoOperacaoTaxaMes.AsFloat := 0.00;
    ADOBoletoOperacaoTaxaNominalPosFixada.AsFloat :=
      ADOContratoExtraTaxa.AsFloat
  end
  else if ((ADOProdutoTipoFinanciamento.AsString = 'PRE')) then
  begin
    ADOBoletoOperacaoTaxaMes.AsFloat := ADOContratoExtraTaxa.AsFloat;
    ADOBoletoOperacaoTaxaNominalPosFixada.AsFloat := 0.00;
  end;
end;

function TFrmCadEmprestimoBoletoOperacao.ReReadOnlympoGrid
  (Campo: Integer): Boolean;
begin

  If (Campo = 2) then
  begin

    If ((ADOBoletoPagamento.Active) and (ADOBoletoPagamento.State in [dsInsert,
      dsEdit])) then
    begin
      ADOBoletoPagamentoConta.Clear;
      ADOBoletoPagamentoContaDV.Clear;
      ADOBoletoPagamentoPercentual.Clear;
      ADOBoletoPagamentoAgencia.Clear;
      ADOBoletoPagamentoAgenciaDV.Clear;
      ADOBoletoPagamentoPercentual.Clear;
      ADOBoletoPagamentoBanco.AsInteger := 0;
      ADOBoletoPagamentoConta.ReadOnly := True;
      ADOBoletoPagamentoBanco.ReadOnly := True;
      ADOBoletoPagamentoContaDV.ReadOnly := True;
      ADOBoletoPagamentoPercentual.ReadOnly := True;
      ADOBoletoPagamentoAgencia.ReadOnly := True;
      ADOBoletoPagamentoAgenciaDV.ReadOnly := True;
      ADOBoletoPagamentoPercentual.ReadOnly := True;
    end;
  end
  else
  begin
    ADOBoletoPagamentoConta.ReadOnly := False;
    ADOBoletoPagamentoBanco.ReadOnly := False;
    ADOBoletoPagamentoContaDV.ReadOnly := False;
    ADOBoletoPagamentoPercentual.ReadOnly := False;
    ADOBoletoPagamentoAgencia.ReadOnly := False;
    ADOBoletoPagamentoAgenciaDV.ReadOnly := False;
    ADOBoletoPagamentoPercentual.ReadOnly := False;
  end;

end;

procedure TFrmCadEmprestimoBoletoOperacao.ADOBoletoPagamentoBeforePost
  (DataSet: TDataSet);
begin
  inherited;
  If ((ADOBoletoPagamento.Active) and (ADOBoletoOperacao.State in [dsInsert,
    dsEdit, dsBrowse])) then
    If (ADOBoletoPagamentoTipoConta.AsString = '') then
    begin
      Application.MessageBox
        ('O Tipo de conta não informada. Pagamento não será realizado. ',
        'Atenção', MB_OK + MB_ICONEXCLAMATION + MB_DEFBUTTON1 + MB_APPLMODAL);
      DBGridPagamentos.SelectedIndex := 6;
      Abort;
    end;
  If (ADOBoletoPagamentoCodigoPagamento.AsInteger = 5) and
    ((ADOBoletoPagamentoConta.AsString = '') or
    (ADOBoletoPagamentoAgencia.AsString = '')) then
  begin
    Application.MessageBox(pChar('Tipo de ocorrência: "' +
      ADOBoletoPagamentoNomeOcoPagto.AsString + '".' + chr(10) +
      'Número da Conta e o número da Agêngia deve ser informado. ' + chr(10) +
      '' + chr(10) + 'Pagamento não será realizado. '), 'Atenção',
      MB_OK + MB_ICONEXCLAMATION + MB_DEFBUTTON1 + MB_APPLMODAL);
    DBGridPagamentos.SelectedIndex := 6;
    Abort;
  end;


  If not(ADOBoletoPagamentoConta.IsNull) then
  begin
    If not(Consulta_CTADVBanco(ADOBoletoPagamentoBanco.AsInteger,
      StrToInt((ADOBoletoPagamentoAgencia.AsString)),
      ((ADOBoletoPagamentoConta.AsString) + (ADOBoletoPagamentoContaDV.AsString)
      ), ADOBoletoPagamentoConta.AsString, ADOBoletoPagamentoContaDV.AsString,
      ADOBoletoPagamentoTipoConta.AsString)) then
    begin
      Application.MessageBox
        ('O digito verificador incompatível com o número da Conta.' + chr(10) +
        'Certifique-se de que está informando a Conta e Agência correta.',
        'Atenção', MB_OK + MB_ICONEXCLAMATION + MB_DEFBUTTON1 + MB_APPLMODAL);
      DBGridPagamentos.SelectedIndex := 5;
      Abort;
    end;
  end;

  if ((ADOBoletoPagamentoCodigoPagamento.AsInteger in [7, 8]) and
    (ADOBoletoPagamentoTipoConta.AsString <> 'SC')) then
  begin
    Application.MessageBox
      ('O Tipo de conta incompatível para o código do pagamento.', 'Atenção',
      MB_OK + MB_ICONEXCLAMATION + MB_DEFBUTTON1 + MB_APPLMODAL);
    Abort;
  end;
end;

procedure TFrmCadEmprestimoBoletoOperacao.
  ADOBoletoPagamentoCodigoPagamentoChange(Sender: TField);
begin
  inherited;
  ReReadOnlympoGrid(ADOBoletoPagamentoCodigoPagamento.AsInteger);
  if ADOBoletoPagamentoCodigoPagamento.AsString <> '' then
  begin
    Auxs := 'select CodigoPagamento as Codigo, Nome as Descrição, LocalPagamento, Status from Kg_OcorrenciaPagamento  with (nolock) where Status <> ''INATIVO'' ';
    Auxs := Auxs + ' and CodigoPagamento = ' +
      ADOBoletoPagamentoCodigoPagamento.AsString;
    with (DMDados.ADOExecuta) do
    begin
      Close;
      sql.Clear;
      sql.Add(Auxs);
      Open;
      if (RecordCount = 0) then
      begin
        ShowMessage('Codigo de pagamento invalido / inativo');
        ADOBoletoPagamentoCodigoPagamento.AsString := '';
      end;
    end;
  end
end;

Function TFrmCadEmprestimoBoletoOperacao.Consulta_CTADVBanco(Banco,
  Agencia: Integer; Conta, ContaSemDV, DV, Tipo: String): Boolean;
begin
  Result := False;

  CTABancos.Banco := Banco;
  CTABancos.Agencia := Agencia;
  If ((Banco = 001)) then
    CTABancos.Tipo := 'CONTA'
  else If ((Banco = 237) and (Tipo = 'CC')) then
    CTABancos.Tipo := 'CORRENTE'
  else
    CTABancos.Tipo := 'POUPANCA';

  CTABancos.ContaCorrente := Conta;
  CTABancos.Conta_DV := DV;
  CTABancosResult := ValidaDvBanco(CTABancos);
  If (CTABancosResult = aDvValido) then
  begin
    Result := True;
  end
  else If (CTABancosResult = aBancoSemRotina) or (CTABancosResult = aErroRotina)
  then
  begin
    Result := True;
  end
  else

    If CTABancosResult = aDvInvalido then
    begin
      If (Banco = 001) or (Banco = 237) then
      begin
        DigitoVerificador_001(StrToInt(ContaSemDV));
        If (DV = V_DV001) then
          Result := True;
      end;
    end;
end;

function TFrmCadEmprestimoBoletoOperacao.DigitoVerificador_001
  (Conta: Integer): Boolean;
begin
  V_DV001 := ProcuraNome(' SELECT DBO.FC_CALCULARDIGITOBANCARIO_001(' +
    IntToStr(Conta) + ',''AGENCIA'')');
  Result := True;
end;

function TFrmCadEmprestimoBoletoOperacao.AutorizacaoBloqueioLimite90Dias
  (CodigoCedente: Integer): Boolean;
begin
  Result := False;
  Auxs := ' select * from Kg_Autorizacao_BloqueioLimite_90Dias with (nolock) where  '
    + ' CodigoCedente = ' + ADOBoletoOperacaoCodigoCedente.AsString +
    ' and Autorizacao_Vale_Ate >= ' + #39 +
    FormatDateTime(sqldate + ' hh:mm:ss.z', PesquisaDataBanco(True)) + #39;
  if (DMConecta.ADOCapitalDeGiro.Execute(Auxs).RecordCount > 0) then
    Result := True;
end;

function TFrmCadEmprestimoBoletoOperacao.AutorizacaoBoletoDocumentosPendentes
  (CodigoCedente: Integer): Boolean;
begin
  Result := False;
  Auxs := ' select * from Kg_AutorizaBoletoDocumentosPendentes with (nolock) where  '
    + ' CodigoCedente = ' + ADOBoletoOperacaoCodigoCedente.AsString +
    ' and Autorizacao_Vale_Ate >= ' + #39 +
    FormatDateTime(sqldate + ' hh:mm:ss.z', PesquisaDataBanco(False)) + #39;
  if (DMConecta.ADOCapitalDeGiro.Execute(Auxs).RecordCount > 0) then
    Result := True;
end;

function TFrmCadEmprestimoBoletoOperacao.TravaDocumentos
  (Inscricao: String): Boolean;
begin
  Result := False;
  Auxs := ' SELECT DOCEMNOME AS DOCNOME FROM DOC_EMP ' +
    ' WHERE CONVERT(NUMERIC(15,0),ISNULL(DOCEMPCNPJ,'''')+ISNULL(DOCEMPFILI,'''')+ISNULL(DOCEMPDIGITO,'''') ) = '
    + #39 + Inscricao + #39 +
    ' AND LTRIM(RTRIM(ISNULL(DOCOBRIGATORIO,''N''))) = ''S'' AND DOCEMPRESRECEBI IS NULL '
    + ' UNION ' + ' SELECT ' +
    ' 	CONVERT(VARCHAR,DOCNOME)+''/ ''+(CASE WHEN (RED.DOCREPRESPRECEBI IS NULL) THEN ''REPRESENTANTES'' ELSE '''' END) AS DOCNOME'

    + ' 	FROM TIPODOCUMENTO DOC WITH(NOLOCK) LEFT JOIN ' +
    ' 		DOC_EMP EMP WITH(NOLOCK) ON EMP.DOCEMNOME = DOC.DOCNOME AND ISNULL(EMP.DOCEMPCNPJ,'''')+ISNULL(EMP.DOCEMPFILI,'''')+ISNULL(EMP.DOCEMPDIGITO,'''') = '
    + #39 + Inscricao + #39 +
    '  AND (EMP.DOCEMPRESRECEBI IS NULL) AND LTRIM(RTRIM(ISNULL(EMP.DOCOBRIGATORIO,''N''))) = ''S'' INNER JOIN '
    + ' 		REPRESENTANTE REP WITH(NOLOCK) ON ISNULL(REP.REPCNPJ,'''')+ISNULL(REP.REPFILI,'''')+ISNULL(REP.REPDIGITO,'''') =  '
    + #39 + Inscricao + #39 + ' INNER JOIN ' +
    ' 		DOC_REP RED WITH(NOLOCK) ON RED.DOCREPREPCOD = REP.REPCOD AND RED.DOCREPNOME = DOC.DOCNOME '
    + ' AND (RED.DOCREPRESPRECEBI IS NULL) AND LTRIM(RTRIM(ISNULL(RED.DOCREPOBRIGATORIO,''N''))) = ''S'' '
    + ' WHERE LTRIM(RTRIM(ISNULL(DOC.DOCOBRIGATORIO,''N''))) = ''S'' AND (RED.DOCREPDTVENC <= GETDATE() OR ISNULL(RED.DOCREPDTVENC,NULL) = NULL)  ';

  if (DMConecta.ADOCOMITE.Execute(Auxs).RecordCount > 0) then
  begin
    Result := True;
    VerificaPendenciaDocumentos(Inscricao);
    CadastraDocumentoPendentes(Inscricao);
  end
  else
  begin
    CadastraDocumentoPendentes(Inscricao);
  end;
end;

function TFrmCadEmprestimoBoletoOperacao.VerificaLiberaçãoTaxaEfetivaMenor
  (Proposta, Cedente: String): Boolean;
begin
  Result := False;
  Auxs := 'select * from Kg_AutorizacaoUltimaTaxaEfetivaMenor with (nolock) where  '
    + ' BOLETO = ' + ADOBoletoOperacaoProposta.AsString + ' and DUPCLIE = ' +
    ADOBoletoOperacaoCodigoCedente.AsString;
  if (DMConecta.ADOCapitalDeGiro.Execute(Auxs).RecordCount > 0) then
    Result := True;
end;

function TFrmCadEmprestimoBoletoOperacao.VerificaLiberaçãoTaxaPosInferior
  (Proposta, Cedente: String): Boolean;
begin
  Result := False;
  if ((RoundTo(100 * ADOBoletoOperacaoTaxaNominalPosFixada.AsFloat,
    0) < Round(100 * V_TaxaNominalPOS)) and
    (RoundTo(100 * ADOBoletoOperacaoTaxaNominalPosFixada.AsFloat, 0) > 0)) then
    Auxs := 'select * from Kg_AutorizacaoTaxaPosInferior with (nolock) where  '
      + ' BOLETO = ' + ADOBoletoOperacaoProposta.AsString + ' and DUPCLIE = ' +
      ADOBoletoOperacaoCodigoCedente.AsString
  else
    Auxs := 'select * from Kg_AutorizacaoTaxaPosInferior with (nolock) where  '
      + ' BOLETO = ' + ADOBoletoOperacaoProposta.AsString + ' and DUPCLIE = ' +
      ADOBoletoOperacaoCodigoCedente.AsString + ' and AceitaTaxaZero = ''S''';

  if (DMConecta.ADOCapitalDeGiro.Execute(Auxs).RecordCount > 0) then
    Result := True;

end;

function TFrmCadEmprestimoBoletoOperacao.VerificaLiberaçãoOpSemAval(Proposta,
  Cedente: String): Boolean;
begin
  Result := False;
  Auxs := 'select * FROM dbo.KG_AUTORIZACAOOPSEMAVAL WITH(NOLOCK) WHERE  ' +
    ' BOLETO = ' + Proposta + ' AND CEDENTE = ' + Cedente;
  If (DMConecta.ADOCapitalDeGiro.Execute(Auxs).RecordCount > 0) then
    Result := True;
end;

Function TFrmCadEmprestimoBoletoOperacao.VerificaPendenciaDocumentos
  (Inscricao: String): Boolean;
var
  XDocumentos: String;
begin

  Result := False;

  ADODocumentos.Close;
  Auxs := ' SELECT DOCEMNOME AS DOCNOME FROM DOC_EMP ' +
    ' WHERE  CONVERT(NUMERIC(15,0),ISNULL(DOCEMPCNPJ,'''')+ISNULL(DOCEMPFILI,'''')+ISNULL(DOCEMPDIGITO,'''') ) = '
    + #39 + Inscricao + #39 +
    ' AND LTRIM(RTRIM(ISNULL(DOCOBRIGATORIO,''N''))) = ''S'' AND DOCEMPRESRECEBI IS NULL '
    + ' UNION ' + ' SELECT ' +
    ' 	CONVERT(VARCHAR,DOCNOME)+''/ ''+(CASE WHEN (RED.DOCREPRESPRECEBI IS NULL) THEN ''REPRESENTANTES'' ELSE '''' END) AS DOCNOME'

    + ' 	FROM TIPODOCUMENTO DOC WITH(NOLOCK) LEFT JOIN ' +
    ' 		DOC_EMP EMP WITH(NOLOCK) ON EMP.DOCEMNOME = DOC.DOCNOME AND ISNULL(EMP.DOCEMPCNPJ,'''')+ISNULL(EMP.DOCEMPFILI,'''')+ISNULL(EMP.DOCEMPDIGITO,'''') = '
    + #39 + Inscricao + #39 +
    '  AND (EMP.DOCEMPRESRECEBI IS NULL) AND LTRIM(RTRIM(ISNULL(EMP.DOCOBRIGATORIO,''N''))) = ''S'' INNER JOIN '
    + ' 		REPRESENTANTE REP WITH(NOLOCK) ON ISNULL(REP.REPCNPJ,'''')+ISNULL(REP.REPFILI,'''')+ISNULL(REP.REPDIGITO,'''') =  '
    + #39 + Inscricao + #39 + ' INNER JOIN ' +
    ' 		DOC_REP RED WITH(NOLOCK) ON RED.DOCREPREPCOD = REP.REPCOD AND RED.DOCREPNOME = DOC.DOCNOME '
    + ' AND (RED.DOCREPRESPRECEBI IS NULL) AND LTRIM(RTRIM(ISNULL(RED.DOCREPOBRIGATORIO,''N''))) = ''S'' '
    + ' WHERE LTRIM(RTRIM(ISNULL(DOC.DOCOBRIGATORIO,''N''))) = ''S''  AND RED.DOCREPDTVENC <= GETDATE() ';

  ADODocumentos.sql.Add(Auxs);
  ADODocumentos.Open;

  if not(Assigned(Tformmsg(formmsg))) then
    Tformmsg(formmsg) := Tformmsg.Create(nil);

  formmsg.Width := 370;
  formmsg.Top := 190;
  formmsg.Left := 390;
  formmsg.Height := 220;
  formmsg.Label1.Font.Color := clRed;

  while not ADODocumentos.Eof do
  begin
    if ADODocumentos.RecordCount > 1 then
      XDocumentos := XDocumentos + #13 + #10 + ADODocumentos.FieldByName
        ('DOCNOME').AsString + ', '
    else
      XDocumentos := ADODocumentos.FieldByName('DOCNOME').AsString;
    ADODocumentos.Next;
  end;

  formmsg.Label1.Caption := 'Documentos pendentes: ' + #13 + #10 + XDocumentos;

  formmsg.TabStop := False;

  Result := True;

end;

procedure TFrmCadEmprestimoBoletoOperacao.DBEditFatorCorrecaoExit
  (Sender: TObject);
begin
  inherited;
  If (ADOProdutoTipoFinanciamento.AsString = 'POS') and
    (ADOBoletoOperacaoTaxaNominalPosFixada.AsFloat <> 0) then
    If (RoundTo(100 * ADOBoletoOperacaoTaxaNominalPosFixada.AsFloat, 0) <
      Round(100 * V_TaxaNominalPOS)) then
      Application.MessageBox
        ('Fator POS % menor que o determinado pela Diretoria 1,20.' + chr(10) +
        '', 'Atenção', MB_OK + MB_ICONEXCLAMATION + MB_DEFBUTTON1 +
        MB_APPLMODAL);
end;

function TFrmCadEmprestimoBoletoOperacao.CadastraDocumentoPendentes
  (Inscricao: String): Boolean;
Var
  ItensAfetados: Integer;
  V_MensagemErro: String;
begin

  ADORecDocumentos.Parameters[0].Value := '0';
  ADORecDocumentos.Parameters[1].Value := Inscricao;
  ADORecDocumentos.Parameters[2].Value := ADOBoletoPagamentoProposta.AsInteger;

  Try
    ADORecDocumentos.Execute;
  Except
    If (ADORecDocumentos.Parameters[2].Value <> NULL) then
    begin
      V_MensagemErro := ADORecDocumentos.Parameters[3].Value;
      Application.MessageBox
        (pChar('Houve erro no processamento. Descrição Erro.: ' + V_MensagemErro
        + ' '), 'Atenção', MB_OK + MB_ICONEXCLAMATION + MB_DEFBUTTON1 +
        MB_APPLMODAL);
    end;
  end;

end;

procedure TFrmCadEmprestimoBoletoOperacao.bbtnPendenciasClick(Sender: TObject);
begin
  inherited;
  TLiberacaoFinanceiroLegado.GetAlertasContaCedente(
    ADOBoletoOperacao.FieldByName('CodigoCedente').AsInteger, 2);
end;

function TFrmCadEmprestimoBoletoOperacao.VerificarContaDoCedente(): Boolean;
begin
  Result := TLiberacaoFinanceiroLegado.GetAlertasContaCedente(
    ADOBoletoOperacao.FieldByName('CodigoCedente').AsInteger, 1) = EmptyStr;
end;

end.
