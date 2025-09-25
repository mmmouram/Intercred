unit UFrmCadEmprestimoSimulacao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UFrmmaster, DB, ADODB, ExtCtrls, DBCtrls, StdCtrls, Mask,
  Buttons, Grids, DBGrids, ComCtrls, Math, DateUtils, UCalculoEmprestimo2,
  UContratoCapitaldeGiro,
  InvokeRegistry, Rio, SOAPHTTPClient, ComObj, shellapi, StrUtils,
  UQRCedulaCreditoBancarioPJnovo222,UQRCedulaCreditoBancarioPF222;

type
  TFrmCadEmprestimoSimulacao = class(TFrmMaster)
    GroupBox1: TGroupBox;
    GroupBox4: TGroupBox;
    DBEditFatorMes: TDBEdit;
    GroupBox2: TGroupBox;
    Carteira: TEdit;         
    Bordero: TEdit;
    GroupBox3: TGroupBox;
    DBEditTotalItem: TDBEdit;
    GroupBox5: TGroupBox;
    DBEditCedente: TDBEdit;
    DBEdit29: TDBEdit;
    BitBtn6: TBitBtn;
    GroupBox6: TGroupBox;
    DBEditPromotor: TDBEdit;
    DBEdit30: TDBEdit;
    BitBtn7: TBitBtn;
    GroupBox8: TGroupBox;
    DBEditDataOperacao: TDBEdit;
    GroupBox11: TGroupBox;
    DBEditValorReferencia: TDBEdit;
    GroupBox40: TGroupBox;
    DBEdit1: TDBEdit;
    DBRGTipoContrato: TDBRadioGroup;
    ADOProposta: TADODataSet;
    DSProposta: TDataSource;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    ScrollBox2: TScrollBox;
    GroupBox19: TGroupBox;
    DBEdit17: TDBEdit;
    GroupBox21: TGroupBox;
    DBEditVencimento: TDBEdit;
    GroupBox20: TGroupBox;
    DBEditValorTitulo: TDBEdit;
    Panel2: TPanel;
    DBNvgtrItens: TDBNavigator;
    TabSheet2: TTabSheet;
    GroupBox27: TGroupBox;
    DBEditDocumento: TDBEdit;
    GroupBox7: TGroupBox;
    DBEditFatorCorrecao: TDBEdit;
    GroupBox9: TGroupBox;
    DBEditProDataPrimeiraParcela: TDBEdit;
    ADOConferencia: TADOQuery;
    ADOConferenciaAUX_ITENS: TIntegerField;
    ADOConferenciaAUX_COB: TFloatField;
    ADOConferenciaAUX_DOC: TFloatField;
    ADOConferenciaAUX_TXCA: TFloatField;
    ADOConferenciaAUX_TXRE: TFloatField;
    ADOConferenciaAUX_DESP: TFloatField;
    ADOConferenciaAUX_TXRIS: TFloatField;
    ADOConferenciaAUX_VRRIS: TFloatField;
    ADOConferenciaAUX_CPMF: TFloatField;
    ADOConferenciaAUX_T: TFloatField;
    ADOConferenciaAUX_FOM: TFloatField;
    ADOConferenciaAUX_LIQ: TFloatField;
    ADOConferenciaAUX_VRSA: TFloatField;
    ADOConferenciaAUX_VRIO: TFloatField;
    ADOConferenciaAUX_PMEF: TFloatField;
    ADOConferenciaAUX_TXPE: TFloatField;
    ADOConferenciaAUX_PM: TFloatField;
    ADOConferenciaAUX_VRCAC: TFloatField;
    ADOConferenciaAUX_TaxaAdministrativa: TFloatField;
    ADOConferenciaTaxaEfetivaMes: TFloatField;
    ADOConferenciaAUX_VRTMF: TFloatField;
    ADOConferenciaAUX_TARIFADIGITACAO: TFloatField;
    DSConferencia: TDataSource;
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
    ADOCarteiraClaTaxaTMF: TFloatField;
    ADOCarteiraCLATARIFAMINIMADIGITACAO: TFloatField;
    ADOCarteiraCLATARIFADIGITACAOPORTITULO: TFloatField;
    ADOCarteiraCodigoTipoCarteira: TIntegerField;
    ADOCarteiraCLAIOFANO: TFloatField;
    ADOPropostaPROCLAS: TStringField;
    ADOPropostaPROPROP: TIntegerField;
    ADOPropostaPROITEM: TIntegerField;
    ADOPropostaPROCLIE: TIntegerField;
    ADOPropostaPROOPER: TIntegerField;
    ADOPropostaPRODTOP: TDateTimeField;
    ADOPropostaPROTXME: TFloatField;
    ADOPropostaPROTXEF: TFloatField;
    ADOPropostaPROTXPE: TFloatField;
    ADOPropostaPROTPCA: TStringField;
    ADOPropostaPROVRDC: TFloatField;
    ADOPropostaPROCCOB: TFloatField;
    ADOPropostaPROORDE: TIntegerField;
    ADOPropostaPROPMED: TFloatField;
    ADOPropostaPROVRBO: TFloatField;
    ADOPropostaPROFOME: TFloatField;
    ADOPropostaPROLIQU: TFloatField;
    ADOPropostaPROVRINFOR: TFloatField;
    ADOPropostaPROTXAD: TFloatField;
    ADOPropostaPROVRAD: TFloatField;
    ADOPropostaPROTXPI: TFloatField;
    ADOPropostaPROVRPI: TFloatField;
    ADOPropostaPROTXIO: TFloatField;
    ADOPropostaPROTXFI: TFloatField;
    ADOPropostaPROVRFI: TFloatField;
    ADOPropostaPROTXIS: TFloatField;
    ADOPropostaPROVRIS: TFloatField;
    ADOPropostaPROTXIP: TFloatField;
    ADOPropostaPROVRIP: TFloatField;
    ADOPropostaPROFLOA: TStringField;
    ADOPropostaPROPMEF: TFloatField;
    ADOPropostaPROTXTR: TFloatField;
    ADOPropostaPROVRTR: TFloatField;
    ADOPropostaPROTXIOFC: TFloatField;
    ADOPropostaPROVRIOFC: TFloatField;
    ADOPropostaPROEMITE: TStringField;
    ADOPropostaPROTXCA: TFloatField;
    ADOPropostaPROTXRE: TFloatField;
    ADOPropostaPRODESP: TFloatField;
    ADOPropostaPROTXSA: TFloatField;
    ADOPropostaPROVRSA: TFloatField;
    ADOPropostaPROUSUARIO: TIntegerField;
    ADOPropostaPROCMAE: TFloatField;
    ADOPropostaPROTXRISCO: TFloatField;
    ADOPropostaPROVRRISCO: TFloatField;
    ADOPropostaPROTXANTE: TFloatField;
    ADOPropostaPRODTOPAN: TDateTimeField;
    ADOPropostaPROTXEFAN: TFloatField;
    ADOPropostaPROTXMEPEN: TFloatField;
    ADOPropostaPRODTOPPEN: TDateTimeField;
    ADOPropostaPROTXEFPEN: TFloatField;
    ADOPropostaPROSTATUS: TStringField;
    ADOPropostaPROTXCAC: TFloatField;
    ADOPropostaPROVRCAC: TFloatField;
    ADOPropostaProTaxaAdministrativa: TFloatField;
    ADOPropostaPRODOCUMEN: TIntegerField;
    ADOPropostaPROTPCONTR: TStringField;
    ADOPropostaPROORIGEM: TStringField;
    ADOPropostaPROAVASACA: TStringField;
    ADOPropostaProTaxaTMF: TFloatField;
    ADOPropostaProValorTMF: TFloatField;
    ADOPropostaProtarifadigitacao: TFloatField;
    ADOPropostaPROCOBRATARIFADIGITACAO: TStringField;
    ADOPropostaTaxaNominalPosFixada: TFloatField;
    ADOPropostaProValorFinanciado: TFloatField;
    ADOExecuta: TADOQuery;                                                                     
    ADOCliente: TADOQuery;
    DSCliente: TDataSource;
    ADOParcela: TADODataSet;
    DSParcela: TDataSource;
    ADOPromotor: TADOQuery;
    DSPromotor: TDataSource;
    ADOPromotorCodigoPromotor: TIntegerField;
    ADOPromotorNome: TStringField;
    Panel3: TPanel;
    BitBtnAlterar: TBitBtn;
    BitBtnSalvar: TBitBtn;
    BitBtnCancelar: TBitBtn;
    BitBtnExcluir: TBitBtn;
    BitBtnFechar: TBitBtn;
    ADOPendenciaCadastral: TADODataSet;
    ADOPendenciaCadastralITP_OBS_CONSULTA: TMemoField;
    ADOPropostaProDataPrimeiraParcela: TDateTimeField;
    ADOPropostaProTipoPagtoIOF: TStringField;
    ADOParcelaITECLAS: TStringField;
    ADOParcelaITEPROP: TIntegerField;
    ADOParcelaITEORDE: TIntegerField;
    ADOParcelaITEDOCU: TIntegerField;
    ADOParcelaITETXEF: TFloatField;
    ADOParcelaITETXPE: TFloatField;
    ADOParcelaITEVRDC: TFloatField;
    ADOParcelaITECCOB: TFloatField;
    ADOParcelaITEDTVE: TDateTimeField;
    ADOParcelaITEPRAZ: TIntegerField;
    ADOParcelaITEFOME: TFloatField;
    ADOParcelaITEOBSE: TStringField;
    ADOParcelaITETXAD: TFloatField;
    ADOParcelaITEVRAD: TFloatField;
    ADOParcelaITETXPI: TFloatField;
    ADOParcelaITEVRPI: TFloatField;
    ADOParcelaITETXIO: TFloatField;
    ADOParcelaITEVRIO: TFloatField;
    ADOParcelaITETXIS: TFloatField;
    ADOParcelaITEVRIS: TFloatField;
    ADOParcelaITETXFI: TFloatField;
    ADOParcelaITEVRFI: TFloatField;
    ADOParcelaITETXIP: TFloatField;
    ADOParcelaITEVRIP: TFloatField;
    ADOParcelaITEFLOA: TIntegerField;
    ADOParcelaITETXTR: TFloatField;
    ADOParcelaITEVRTR: TFloatField;
    ADOParcelaITETXIOFC: TFloatField;
    ADOParcelaITEVRIOFC: TFloatField;
    ADOParcelaITETXCA: TFloatField;
    ADOParcelaITETXRE: TFloatField;
    ADOParcelaITEDESP: TFloatField;
    ADOParcelaITETXSA: TFloatField;
    ADOParcelaITEVRSA: TFloatField;
    ADOParcelaITETXRISCO: TFloatField;
    ADOParcelaITEVRRISCO: TFloatField;
    ADOParcelaITESERI: TStringField;
    ADOParcelaITESACCNPJ: TStringField;
    ADOParcelaITETXCAC: TFloatField;
    ADOParcelaITEVRCAC: TFloatField;
    ADOParcelaIteTaxaAdministrativa: TFloatField;
    ADOParcelaSacTip: TStringField;
    ADOParcelaCodigoSacado: TIntegerField;
    ADOParcelaITECARTA: TStringField;
    ADOParcelaITEBOLETA: TStringField;
    ADOParcelaITEReservado: TStringField;
    ADOParcelaIteTaxaTMF: TFloatField;
    ADOParcelaIteValorTMF: TFloatField;
    ADOParcelaIteNban: TStringField;
    ADOParcelaITEBCOB: TIntegerField;
    ADOParcelaItetarifadigitacao: TFloatField;
    GroupBox14: TGroupBox;
    DBEdit3: TDBEdit;
    Panel5: TPanel;
    ADOPropostaProAmortizacao: TFloatField;
    ADOPropostaProValorCarencia: TFloatField;
    ADOPropostaProDiasCarencia: TIntegerField;
    DBEdit11: TDBEdit;
    Label1: TLabel;
    ADOPropostaProParcelasCarencia: TIntegerField;
    Panel1: TPanel;
    BitBtnGerarParcela: TBitBtn;
    ADOClienteCLINOM: TStringField;
    ADOClienteCLIOPE: TIntegerField;
    ADOClienteCLIFLO: TIntegerField;
    ADOClienteCLIISENTOIOF: TStringField;
    ADOClienteCLIAGE: TIntegerField;
    ADOClienteCLIAVASACA: TStringField;
    ADOClienteCLICOD: TIntegerField;
    ADOClienteCLIBOLETA: TStringField;
    ADOClienteCLICARTA: TStringField;
    ADOClienteclicgc: TStringField;
    ADOClienteclicgcfili: TStringField;
    ADOClienteclicgcdv: TStringField;
    ADOClienteTermoFielDepositarioDispensaNF: TStringField;
    ADOClienteCobrancaTitulo: TStringField;
    ADOClienteContratoMae: TStringField;
    ADOProduto: TADOQuery;
    ADOProdutoCodigoProduto: TIntegerField;
    ADOProdutoDescricao: TStringField;
    ADOProdutoSiglaProduto: TStringField;
    ADOProdutoCodigoContabil: TIntegerField;
    ADOProdutoControleOperacional: TStringField;
    ADOProdutoSiglaPapelFisico: TStringField;
    ADOProdutoCustoComissao: TFloatField;
    ADOProdutoEmiteCarta: TStringField;
    ADOProdutoEmiteBoleta: TStringField;
    ADOProdutoVencimentoUtil: TStringField;
    ADOProdutoCodigoTabelaTarifa: TIntegerField;
    ADOProdutoCodigoPendencia: TIntegerField;
    ADOProdutoFloating: TIntegerField;
    ADOProdutoDataCadastro: TDateTimeField;
    ADOProdutoVencido_X_DataOperacao: TStringField;
    ADOProdutoFloatingNegativo: TIntegerField;
    ADOProdutoProdutoClean: TStringField;
    ADOProdutoStatus: TStringField;
    ADOProdutoUsuarioInsert: TIntegerField;
    ADOProdutoUsuarioUpdate: TIntegerField;
    ADOProdutoConfirmaTitulo: TStringField;
    ADOProdutoTipoFinanciamento: TStringField;
    DBEdit12: TDBEdit;
    DSProduto: TDataSource;
    BitBtn2: TBitBtn;
    GroupBox24: TGroupBox;
    DBEditValorDoc: TDBEdit;
    GroupBox45: TGroupBox;
    DBEditTaxaTac: TDBEdit;
    GroupBox26: TGroupBox;
    DBEditCustoCobranca: TDBEdit;
    GroupBox10: TGroupBox;
    DBEditTaxaIof: TDBEdit;
    DBRdGrpTipoPagtoIOF: TDBRadioGroup;
    GroupBox43: TGroupBox;
    DBEdit15: TDBEdit;
    ADOCarteiraClaCustoEnvioDoc: TFloatField;
    ADOPropostaProTipoPagtoTac: TStringField;
    DBRdGrpProTipoPagtoTac: TDBRadioGroup;
    ADOPropostaProValorTacs: TFloatField;
    ADOPropostaCodigoTabelaTarifa: TIntegerField;
    ADOPropostaCodigoTipoCarteira: TIntegerField;
    ADOPropostaTaxaEfetivaMinima: TFloatField;
    ADOGuardaCalculo: TADODataSet;
    GroupBox13: TGroupBox;
    DBEdit14: TDBEdit;
    ADOParcelaiteintervalo: TIntegerField;
    ADOParcelaIteFatorPrazo: TFloatField;
    ADOParcelaIteFatorIntervalo: TFloatField;
    ADOPropostaProFator: TFloatField;
    DBRGTipoVencimentoParcela: TDBRadioGroup;
    ADOPropostaProTipoVencimentoParcela: TStringField;
    ADOPropostaProValorReferencia: TFloatField;
    ADOParcelaIteJuros: TFloatField;
    ADOParcelaIteAmortizacao: TFloatField;
    ADOParcelaIteTipoparcela: TStringField;
    GroupBox25: TGroupBox;
    DBEdit18: TDBEdit;
    ADOPropostaProjuros: TFloatField;
    ADOParcelaITEVRTI: TFloatField;
    ADOPropostaProValorPMT: TFloatField;
    ADOPropostaPROVRIO: TFloatField;
    GroupBox18: TGroupBox;
    DBEdit10: TDBEdit;
    GroupBox23: TGroupBox;
    GroupBox32: TGroupBox;
    DBEdit16: TDBEdit;
    DBEdit20: TDBEdit;
    GroupBox33: TGroupBox;
    DBEdit21: TDBEdit;
    GroupBox16: TGroupBox;
    DBEdit4: TDBEdit;
    GroupBox30: TGroupBox;
    DBEdit19: TDBEdit;
    GroupBox22: TGroupBox;
    DBEdit6: TDBEdit;
    GroupBox31: TGroupBox;
    DBEdit7: TDBEdit;
    GroupBox29: TGroupBox;
    DBEdit8: TDBEdit;
    GroupBox34: TGroupBox;
    DBEdit22: TDBEdit;
    GroupBox12: TGroupBox;
    DBEdit5: TDBEdit;
    BitBtnSair: TBitBtn;
    GroupBox17: TGroupBox;
    DBEdit9: TDBEdit;
    ADOParcelaItePrazoIOF: TIntegerField;
    Panel4: TPanel;
    BitBtnRecalcular: TBitBtn;
    ADOParcelaITELIQU: TFloatField;
    ADOPropostaProValorLiberado: TFloatField;
    ADOParcelaItePrazoIntermediario: TIntegerField;
    BitBtn1: TBitBtn;
    GroupBox35: TGroupBox;
    DBdtPercentualValorPMT: TDBEdit;
    DBRdGrpCongelarParcelas: TDBRadioGroup;
    ADOPropostaProCongelarPMT: TStringField;
    ADOPropostaProAjusteIOF: TFloatField;
    GroupBox15: TGroupBox;
    DBEdit2: TDBEdit;
    ADOParcelaITEPMEF: TIntegerField;
    ADOParcelaIteVencimentoReal: TDateTimeField;
    ADOParcelaItePercentualValorPMT: TFloatField;
    ADOClienteCliStatus: TStringField;
    ADOPropostaProTaxaInternaRetorno: TFloatField;
    GroupBox36: TGroupBox;
    CodigoTipoCarteira: TDBEdit;
    DBLookupComboBox3: TDBLookupComboBox;
    GroupBox37: TGroupBox;
    DBEdtIofCompl: TDBEdit;
    ADOCarteiraStatus: TStringField;
    ADOCarteiraCLAIOFPessoaFisica: TFloatField;
    ADOCarteiraCLAIOFAnoPessoaFisica: TFloatField;
    ADOClienteClipes: TIntegerField;
    BitBtnExportarParaBoleto: TBitBtn;
    ADOClienteClicre: TStringField;
    ADOClienteCodigoMotivoBloqueioAcumulados: TStringField;
    ADOClienteCadastroSuspenso: TStringField;
    GroupBox41: TGroupBox;
    DBdtId_ContratoOperacao: TDBEdit;
    BitBtn3: TBitBtn;
    ADOPropostaId_ContratoOperacao: TIntegerField;
    ADOClienteCLIEMPTITU: TIntegerField;
    GroupBox38: TGroupBox;
    DBdtId_CodPrimerioAval: TDBEdit;
    BitBtn4: TBitBtn;
    GroupBox39: TGroupBox;
    DBdtId_CodSegundoAval: TDBEdit;
    BitBtn5: TBitBtn;
    GroupBox42: TGroupBox;
    DBdtId_CodTerceiroAval: TDBEdit;
    BitBtn8: TBitBtn;
    ADOPropostaId_CodPrimeiroAvalista: TIntegerField;
    ADOPropostaId_CodSegundoAvalista: TIntegerField;
    ADOPropostaId_CodTerceiroAvalista: TIntegerField;
    TabSheet3: TTabSheet;
    ScrollBoxGarantias: TScrollBox;
    DBCheckBox8: TDBCheckBox;
    DBCheckBox5: TDBCheckBox;
    DBCheckBox7: TDBCheckBox;
    DBCheckBox6: TDBCheckBox;
    CBOutras: TCheckBox;
    DBCheckBox4: TDBCheckBox;
    DBCheckBox3: TDBCheckBox;
    DBCheckBox2: TDBCheckBox;
    DBCheckBox1: TDBCheckBox;
    DBCheckBox9: TDBCheckBox;
    ADOPropostaProInfoGarantiasA: TStringField;
    ADOPropostaProInfoGarantiasB: TStringField;
    ADOPropostaProInfoGarantiasC: TStringField;
    ADOPropostaProInfoGarantiasD: TStringField;
    ADOPropostaProInfoGarantiasE: TStringField;
    ADOPropostaProInfoGarantiasF: TStringField;
    ADOPropostaProInfoGarantiasG: TStringField;
    ADOPropostaProInfoGarantiasI: TStringField;
    ADOPropostaProInfoGarantiasJ: TStringField;
    DBEdtOutros: TDBEdit;
    ADOPropostaProInfoGarantiasH: TStringField;
    ADOPropostaCodigoRegiao: TIntegerField;
    ADOClienteRegiao: TIntegerField;
    GroupBox44: TGroupBox;
    DBEdit24: TDBEdit;
    ADOParcelaIteValorLiberado: TFloatField;
    GroupBox28: TGroupBox;
    DBEdit25: TDBEdit;
    ADOCarteiraClaAplicaiofLiberacao: TStringField;
    GroupBox46: TGroupBox;
    DBdtId_CodQuartoAval: TDBEdit;
    BitBtn9: TBitBtn;
    ADOPropostaId_CodQuartoAvalista: TIntegerField;
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
    ADOContratoExtraPrazoCaracteristica: TStringField;
    ADOContratoExtraSaldoDevedor: TBCDField;
    ADOContratoExtraTitularGrupo: TIntegerField;
    GroupBox55: TGroupBox;
    DBEdit33: TDBEdit;
    ADOPropostaCodigoCenario: TIntegerField;
    GroupBox47: TGroupBox;
    ADOPropostaProTaxaReal: TFloatField;
    DBEdit23: TDBEdit;
    ADOPropostaProTaxaSelic: TFloatField;
    ADOPropostaProValorFuturo: TFloatField;
    ADOParcelaIteValorFuturo: TFloatField;
    GroupBox48: TGroupBox;
    DBEdit26: TDBEdit;
    ADOClienteCliBloqueioLimite90Dias: TStringField;
    ADOClienteCodigoBloqueioLimite90Dias: TIntegerField;
    ADOClienteCliDataBloqueioLimite90Dias: TDateTimeField;
    ADOProdutoTaxaEfetivaMinima: TFloatField;
    DSBoletoOperacao: TDataSource;
    ADOBoletoOperacao: TADODataSet;
    ADOTipoCarteira: TADODataSet;
    ADOPropostaNomeTipoCarteira: TStringField;
    ADOPropostaProDataPrimeiraParcelaOriginal: TDateTimeField;
    GroupBox49: TGroupBox;
    DBEdit27: TDBEdit;
    ADOProdutoCarteiraAds: TIntegerField;
    TabSheet4: TTabSheet;
    BrnRelatario: TBitBtn;
    BtnContrato: TBitBtn;
    ADOPropostaProFormaPagamento: TMemoField;
    ADOPropostaVrTacDigitada: TFloatField;
    ADOProdutoCOMPRE: TIntegerField;
    ADOProdutoCOMPOS: TIntegerField;
    ADOProdutoINDPRE: TIntegerField;
    ADOProdutoINDPOS: TIntegerField;
    ADOProdutoOUTPRE: TIntegerField;
    ADOProdutoOUTPOS: TIntegerField;
    ADOPropostaCustoEfetivoTotal: TFloatField;
    GroupBox50: TGroupBox;
    DBEdit13: TDBEdit;
    ADOClientecliporte: TStringField;
    ADOCustoEfetivo: TADOCommand;
    ADOContratoExtraIDStatus: TStringField;
    Panel6: TPanel;
    DBGrid1: TDBGrid;
    Panel7: TPanel;
    MemoFormaPagamento: TDBMemo;
    Bevel1: TBevel;
    ADOProdutoMOEDA: TStringField;
    GroupBox51: TGroupBox;
    DBEdit28: TDBEdit;
    DBRGTipoGarantia: TDBRadioGroup;
    GroupBox54: TGroupBox;
    DBEdit34: TDBEdit;
    GroupBox52: TGroupBox;
    DBEdit32: TDBEdit;
    GroupBox53: TGroupBox;
    GroupBox67: TGroupBox;
    MaskEdit1: TMaskEdit;
    ReservaContrato: TGroupBox;
    DBEditContrato: TDBEdit;
    GroupBox68: TGroupBox;
    ADOPropostaTaxaAberturaCredito: TFloatField;
    ADOCarteiraTaxaAberturaCredito: TFloatField;
    ADOParcelaTaxaAberturaCredito: TFloatField;
    GroupBox57: TGroupBox;
    DBEditIOFAtraso: TDBEdit;
    GroupBox58: TGroupBox;
    DBEditIOFBeneficio: TDBEdit;
    GroupBox59: TGroupBox;
    DBEditIofTeto: TDBEdit;
    ADOPropostaIOFValorTeto: TFloatField;
    ADOPropostaIOFBeneficio: TFloatField;
    ADOPropostaIOFAtraso: TFloatField;
    ADOPropostaId_Proposta: TIntegerField;
    GroupBox60: TGroupBox;
    BitBtnPegaRenegociacao: TBitBtn;
    DBEditRenegociacao: TDBEdit;
    ADOParcelaItemVrIOFAproveitamento: TFloatField;
    GroupBox61: TGroupBox;
    DBEdit35: TDBEdit;
    GroupBox62: TGroupBox;
    DBEdit36: TDBEdit;
    ADOParcelaItemVrIOFCobrado: TFloatField;
    httpIImpedidosDeOperar: THTTPRIO;
    ADORepresentantesCliente: TADOQuery;
    ADORepresentantesClienteCpfCnpj: TStringField;
    ADORepresentantesClienteNOME: TStringField;
    BitBtnReservaContrato: TBitBtn;
    ADOReservaContrato: TADODataSet;
    ADOPropostaContratoReservado: TIntegerField;
    ADOaux: TADOQuery;
    DBCheckBox10: TDBCheckBox;
    ADOPropostaProInfoGarantiasL: TStringField;
    DBRadioGroup1: TDBRadioGroup;
    ADOPropostaProDomicilioBancario: TStringField;
    ADOBoletoOperacaoId_Boleto: TAutoIncField;
    ADOBoletoOperacaoCarteira: TStringField;
    ADOBoletoOperacaoProposta: TIntegerField;
    ADOBoletoOperacaoCodigoCedente: TIntegerField;
    ADOBoletoOperacaoClitip: TStringField;
    ADOBoletoOperacaoCodigoPromotor: TIntegerField;
    ADOBoletoOperacaoCodigoProduto: TIntegerField;
    ADOBoletoOperacaoDataOperacao: TDateTimeField;
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
    ADOBoletoOperacaoTaxaAberturaCredito: TFloatField;
    ADOBoletoOperacaoValorCustoRegistro: TFloatField;
    ADOBoletoOperacaoValorCustoCadastro: TFloatField;
    ADOBoletoOperacaoValorTaxaCpmf: TFloatField;
    ADOBoletoOperacaoValorCpmf: TFloatField;
    ADOBoletoOperacaoValorTaxaIOF: TFloatField;
    ADOBoletoOperacaoValorIOF: TFloatField;
    ADOBoletoOperacaoValorCustoAdministrativo: TFloatField;
    ADOBoletoOperacaoValorOutrasDespesas: TFloatField;
    ADOBoletoOperacaoPercentualCaucao: TFloatField;
    ADOBoletoOperacaoDebitarTituloOuContaCorrente: TStringField;
    ADOBoletoOperacaoInstrucoesDebitosExistente: TMemoField;
    ADOBoletoOperacaoOutrasInformacoes: TMemoField;
    ADOBoletoOperacaoDataPromotor: TDateTimeField;
    ADOBoletoOperacaoDataLiberacaoEntrada: TDateTimeField;
    ADOBoletoOperacaoDataLiberacaoSaida: TDateTimeField;
    ADOBoletoOperacaoDataFinanceiroEntrada: TDateTimeField;
    ADOBoletoOperacaoDataFinanceiroSaida: TDateTimeField;
    ADOBoletoOperacaoUsuarioLiberacao: TIntegerField;
    ADOBoletoOperacaoUsuarioFinanceiro: TIntegerField;
    ADOBoletoOperacaoUsuarioComercial: TIntegerField;
    ADOBoletoOperacaoValorTaxaRisco: TFloatField;
    ADOBoletoOperacaoValorCustoRisco: TFloatField;
    ADOBoletoOperacaoTotalTitulo: TIntegerField;
    ADOBoletoOperacaoCodigoTabelaTarifa: TIntegerField;
    ADOBoletoOperacaoTaxaEfetiva: TFloatField;
    ADOBoletoOperacaoStatusBoletoOperacao: TStringField;
    ADOBoletoOperacaoTipoContrato: TStringField;
    ADOBoletoOperacaoValorTaxaTMF: TFloatField;
    ADOBoletoOperacaoValorTMF: TFloatField;
    ADOBoletoOperacaoTarifaDigitacao: TFloatField;
    ADOBoletoOperacaoCodigoControleArquivo: TIntegerField;
    ADOBoletoOperacaoCodigoTipoCarteira: TIntegerField;
    ADOBoletoOperacaoTaxaNominalPosFixada: TFloatField;
    ADOBoletoOperacaoDataPrimeiraParcela: TDateTimeField;
    ADOBoletoOperacaoAmortizacao: TFloatField;
    ADOBoletoOperacaoTipoPagtoTac: TStringField;
    ADOBoletoOperacaoTipoPagtoIOF: TStringField;
    ADOBoletoOperacaoDiasCarencia: TIntegerField;
    ADOBoletoOperacaoParcelasCarencia: TIntegerField;
    ADOBoletoOperacaoTipoVencimentoParcela: TStringField;
    ADOBoletoOperacaoValorFinanciado: TFloatField;
    ADOBoletoOperacaoValorLiquido: TFloatField;
    ADOBoletoOperacaoValorSomatorioTacs: TFloatField;
    ADOBoletoOperacaoValorCarencia: TFloatField;
    ADOBoletoOperacaoPrazo: TFloatField;
    ADOBoletoOperacaoPrazoEfetivo: TFloatField;
    ADOBoletoOperacaoValorReferencia: TFloatField;
    ADOBoletoOperacaoValorPMT: TFloatField;
    ADOBoletoOperacaoJuros: TFloatField;
    ADOBoletoOperacaoValorLiberado: TFloatField;
    ADOBoletoOperacaoCodigoAgencia: TIntegerField;
    ADOBoletoOperacaoId_ContratoOperacao: TIntegerField;
    ADOBoletoOperacaoValorAjusteIOF: TFloatField;
    ADOBoletoOperacaoCongelarPMT: TStringField;
    ADOBoletoOperacaoTaxaInternaRetorno: TFloatField;
    ADOBoletoOperacaoValorTaxaIOFComplementar: TFloatField;
    ADOBoletoOperacaoValorIOFComplementar: TFloatField;
    ADOBoletoOperacaoCodigoRegiao: TIntegerField;
    ADOBoletoOperacaoCodigoCenario: TIntegerField;
    ADOBoletoOperacaoVrTacDigitada: TFloatField;
    ADOBoletoOperacaoCustoEfetivoTotal: TFloatField;
    ADOBoletoOperacaoDomicilioBancario: TStringField;
    TabSheet5: TTabSheet;
    Panel8: TPanel;
    grpMora: TGroupBox;
    DBEdit37: TDBEdit;
    grpVias: TGroupBox;
    DBEdit38: TDBEdit;
    ADOPropostaProMora: TFloatField;
    ADOPropostaProVias: TIntegerField;
    ADOProdutoIOF: TStringField;
    ADOParcelaITENUME: TStringField;
    ADOProdutoVLR_TxTeo: TFloatField;
    ADOProdutoTaxaMes: TFloatField;
    ADOProdutoTaxaRegistro: TFloatField;
    ADOProdutoTaxaTac: TFloatField;
    ADOProdutoTaxaAdministrativa: TFloatField;
    ADOProdutoTaxaAberturaCredito: TFloatField;
    ADOProdutoTaxaRisco: TFloatField;
    ADOProdutoTaxaTmf: TFloatField;
    ADOProdutoTarifaDigitacao: TFloatField;
    ADOProdutoCustoCobranca: TFloatField;
    ADOProdutoValorDoc: TFloatField;
    ADOProdutoValorTac: TFloatField;
    ADOProdutoValorDespesas: TFloatField;
    ADOProdutoTaxaIOF: TFloatField;
    ADOProdutoTaxaIOFC: TFloatField;
    ADOProdutoTipoCalculo: TStringField;
    GroupBox56: TGroupBox;
    Label2: TLabel;
    Label3: TLabel;
    DBEdit39: TDBEdit;
    DBEdit40: TDBEdit;
    ADOPropostaPROTXTEO: TFloatField;
    ADOPropostaPROVRTEO: TFloatField;
    ADOParcelaITETXTEO: TFloatField;
    ADOParcelaitevrteo: TFloatField;
    DBEditTaxaAberturaCredito: TDBEdit;
    DBEdit31: TDBEdit;
    ADOContratoExtrataxa: TFloatField;
    ADOCustoEfetivocapitaldegiro2: TADOCommand;
    ADOCustoEfetivocapitaldegiro: TADOQuery;
    ADOaux2: TADOQuery;
    GroupBox63: TGroupBox;
    DBEdit41: TDBEdit;
    ADOPropostavalor_ecg: TFloatField;
    ADOParcelaitevalor_ecg: TFloatField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure CarteiraClick(Sender: TObject);
    procedure BorderoExit(Sender: TObject);
    procedure CarteiraExit(Sender: TObject);
    procedure CarteiraKeyPress(Sender: TObject; var Key: Char);
    procedure DBEditCedenteExit(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DBEditDataOperacaoExit(Sender: TObject);
    procedure BitBtnGerarParcelaClick(Sender: TObject);
    procedure DBEditDocumentoExit(Sender: TObject);
    procedure DBEdit3Exit(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure ADOClienteBeforeOpen(DataSet: TDataSet);
    procedure ADOProdutoBeforeOpen(DataSet: TDataSet);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn7Click(Sender: TObject);
    procedure DBEditProDataPrimeiraParcelaExit(Sender: TObject);
    procedure DBEditCedenteChange(Sender: TObject);
    procedure BitBtnSalvarClick(Sender: TObject);
    procedure BitBtnFecharClick(Sender: TObject);
    procedure BitBtnCancelarClick(Sender: TObject);
    procedure BrnRelatarioClick(Sender: TObject);
    procedure ADOClienteAfterClose(DataSet: TDataSet);
    procedure ADOClienteAfterOpen(DataSet: TDataSet);
    procedure BitBtnAlterarClick(Sender: TObject);
    procedure ADOPropostaAfterPost(DataSet: TDataSet);
    procedure ADOPropostaAfterOpen(DataSet: TDataSet);
    procedure BitBtnRecalcularClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure DBdtPercentualValorPMTExit(Sender: TObject);
    procedure DBRdGrpCongelarParcelasExit(Sender: TObject);
    procedure BitBtnExportarParaBoletoClick(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure DBdtId_ContratoOperacaoExit(Sender: TObject);
    procedure BtnContratoClick(Sender: TObject);
    procedure DBdtId_CodPrimerioAvalExit(Sender: TObject);
    procedure DBdtId_CodSegundoAvalExit(Sender: TObject);
    procedure DBdtId_CodTerceiroAvalExit(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure BitBtn8Click(Sender: TObject);
    procedure CBOutrasClick(Sender: TObject);
    procedure DBEdit14Exit(Sender: TObject);
    procedure BitBtn9Click(Sender: TObject);
    procedure DBdtId_CodQuartoAvalExit(Sender: TObject);
    procedure ADOParcelaAfterInsert(DataSet: TDataSet);
    procedure ADOBoletoOperacaoBeforePost(DataSet: TDataSet);
    procedure ADOBoletoOperacaoAfterPost(DataSet: TDataSet);
    function AtribuiTipoCarteira: integer;
    procedure ADOBoletoOperacaoAfterOpen(DataSet: TDataSet);
    procedure CodigoTipoCarteiraExit(Sender: TObject);
    procedure DBLookupComboBox3DropDown(Sender: TObject);
    procedure DBLookupComboBox3Click(Sender: TObject);
    procedure DBLookupComboBox3Exit(Sender: TObject);
    procedure DBRdGrpCongelarParcelasChange(Sender: TObject);
    procedure DBEditFatorCorrecaoExit(Sender: TObject);
    procedure MemoFormaPagamentoKeyPress(Sender: TObject; var Key: Char);
    procedure DBRGTipoContratoClick(Sender: TObject);
    procedure DBEditTaxaTacExit(Sender: TObject);
    procedure DBEditTaxaAberturaCreditoExit(Sender: TObject);
    procedure BitBtnPegaRenegociacaoClick(Sender: TObject);
    procedure BitBtnReservaContratoClick(Sender: TObject);
    procedure DBEditValorReferenciaExit(Sender: TObject);
    procedure ADOParcelaBeforePost(DataSet: TDataSet);
    procedure BitBtnSairClick(Sender: TObject);
    procedure DBEditFatorMesExit(Sender: TObject);
  private
    DataVencimento, VencimentoReal , DataBanco : TDateTime;
    Intervalo, Total, TotalItens, Prazo, PrazoIOF  : Integer;
    VCalculoPrazoMedio, VCalculoPrazoMedioEfetivo, VCalculoValorLiquido
    , VcalculoIOF, VcalculoIOFComplementar
    , VcalculoPMT, VcalculoCarencia, VcalculoJuros, VcalculoAmortizacao, VValorPrincipal : Double;
    BaseIOF, Taxa, iof, iofComplemento : Double;
    ErroConsistencia, Auxs,  CodigoSacado : String;

    Ite_ValorTacs, FatorContrato : Double;
    Restovalor_ecg,RestoValorDoc, RestoValorTMF, RestoCustoCobranca, RestoOutraDespesa, RestoTaxaAdministrativa,RestoTaxaAberturaCredito,RestoVrIOFAproveitamento,  RestoValorcac : Double;
    Calculos: TTipoArray;
    ReGerar : Boolean ;
    Valida_Ord: Boolean;

    Function AbreDados(CLAS,PROP: String) : Boolean;
    procedure FechaDados;
    procedure InicioDaOperacao;
    procedure AtribuiaproveitamentoIOF;
    procedure Botoes(Alterar, Salvar, Fechar, Cancelar, Excluir, Imprime, GerarPar, RecalcularPar: Boolean);
    procedure AtualizaAuxQ;
    procedure Cedente(Codigo: String);
    Procedure CalculaContrato;
    procedure MontaParcela;
    Procedure CalculaTacs;
    Procedure atribuiteo;
    Procedure corrigeultimaparcela;
    procedure ConsisteFechamento;
    function StringPendenciaCadastral: String;
    function TemPendenciaCadastral: Boolean;
    procedure HabilitaCampo;
    function VerificarSacado : String ;
    procedure AbreParcelas;
    procedure GeraParcelaMista;
    Procedure Atualizar;
    procedure CriaArray(Itens: integer);
    procedure MontaArray(TipoAcao : String) ;
    procedure ZeraResto;
    procedure AtribuiTacs;
    procedure AjustaTacs;
    Procedure AjustaValorFinanciado;
    Procedure AjustaValorLiberadoItem;

    procedure TotalizaIOF;
    procedure CriaParcelas;
    Procedure PesquisaParcela(Parcela : integer);
    function CriterioParaPesquisa: String;
    procedure TaxaInternaRetorno;
    procedure CalculaTacs_Item;
    procedure Atribui_IOF;
    procedure CalculoParcelaCongelada;
    function CriterioContrato(CriterioC: String):String;
    function CriterioParcelas(CriterioP: String):String;
    procedure MontaArrayCongelado;
    procedure Atribui_ValorLiquido;
    Procedure Atribui_Float;
    Procedure verificadata;
    procedure AbreContratoExtra(Acao: Integer);
    procedure Atribui_TaxaReferencia;
    procedure AtualizaCDI;
    function AutorizacaoBloqueioLimite90Dias(
      CodigoCedente: Integer): Boolean;
    function  inseridata30 (data:string):string;
    procedure Zera_v;
    procedure ChecaUltimaTaxaEfetivaPraticada;
    procedure CustoEfetivoTotal;
    procedure CustoEfetivoTotalcapitaldegiro;
    procedure CriaParcelasIGPM;
    procedure AtualizaIGPM;
    procedure MontaArrayIGPM(TipoAcao: String);
    procedure CalculaContratoIGPM;
    function Extenso( Numero : Word ) : string;
    procedure GeraWord222(tipoPessoa: Integer; numeroVia: Integer);
    procedure gerapdf(tipoPessoa: Integer);
    procedure PreencherTaxas;
    procedure AtualizarTEO;

  public
    Importando : Boolean;
    PropostaBoleto : String;
    ajustedata:string;
    Ano1, Mes1, Dia1 : Word;
    Ano, Mes, Dia, dia2 : Word;
    via: integer;

  end;

var
  FrmCadEmprestimoSimulacao: TFrmCadEmprestimoSimulacao;
  TempCedudulaCreditoBancario, TempCedudulaCreditoBancario2 :String;

  resto :double;

  PrimeiroAvalista, SegundoAvalista :String;
  diaanterior:integer;
  DataAnterior : TDateTime;


implementation
Uses UDmConecta, UDmDados, UUtil, UFrmPrincipal, UFrmSimulacaoEmprestimo,
     UQRCedulaCreditoBancarioPJ222, UFrmCadEmprestimoBoletoOperacao,
     WSIImpedidosDeOperar1, UExtenso, UExtensoNumero,
     UFrmPesquisaCedenteSacado, UFrmPesquisa,
     UFrmVisualizaMensagem;


procedure TFrmCadEmprestimoSimulacao.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  Action := caFree;
  FrmCadEmprestimoSimulacao := nil;

end;

procedure TFrmCadEmprestimoSimulacao.CarteiraClick(Sender: TObject);
begin
  inherited;
  Bordero.Enabled := True;
end;

procedure TFrmCadEmprestimoSimulacao.BorderoExit(Sender: TObject);
begin
  inherited OnExit(Sender);
  if ((ADOCarteira.Active) and  (ADOCarteira.RecordCount > 0) and (Carteira.Text <> '')) then
  begin
    if (Bordero.Text = '') then Bordero.Text := '0';

    if not( AbreDados(Carteira.Text , Bordero.Text ) ) then
    begin
      InicioDaOperacao;
      Abort;
    end;

    if (ADOPROPOSTA.RecordCount > 0) then
    begin
      if (ADOProdutoTipoFinanciamento.AsString = 'DES') then
      begin
        Application.MessageBox('Este Formulário não permite manutenção de produto descontado.', 'Atenção', MB_OK+MB_ICONEXCLAMATION+MB_DEFBUTTON1+MB_APPLMODAL);
        InicioDaOperacao;
        Abort;
      end;
      Botoes(True, False, True, True, True, True, False, False);

      BitBtnFechar.SetFocus;
    end
    else
    begin
        ADOProposta.Append;
        ADOPropostaPROCLAS.AsString    := Carteira.Text;
        ADOPropostaPROPROP.AsString    := Bordero.Text;
        ADOPropostaPROCOBRATARIFADIGITACAO.AsString := 'NAO';
        ADOPropostaProCongelarPMT.AsString := 'NAO';
        ADOPropostaProDomicilioBancario.AsString := 'NAO';
        ADOPropostaProMora.AsFloat  := 10.50;
        ADOPropostaProVias.AsInteger:= 3;

        Bordero.Text := '0';

        ADOPropostaPROFLOA.AsString    := '0';

        ADOPropostaPROTXIP.AsFloat     := ADOCarteiraCLAIPM.AsFloat;

        Atribui_IOF;

        ADOPropostaPROTXCAC.AsFloat      := 0.00;
        ADOPropostaProTaxaTMF.AsFloat    :=  0;
        ADOPropostaPROTXCAC.AsFloat      := ADOCarteiraCLATXCAC.AsFloat;

        ADOPropostaPROVRDC.AsFloat     := ADOCarteiraClaCustoEnvioDoc.AsFloat;

        ADOPropostaPROCOBRATARIFADIGITACAO.AsString := 'SIM';

        ADOPropostaProTaxaAdministrativa.AsFloat := ADOCarteiraClaTaxaAdministrativa.AsFloat;

        ADOPropostaTaxaAberturaCredito.AsFloat   := ADOCarteiraTaxaAberturaCredito.AsFloat;
        ADOPropostaProTipoPagtoIOF.AsString      := 'F';
        ADOPropostaProTipoPagtoTac.AsString      := 'F';
        ADOPropostaProTipoVencimentoParcela.AsString := 'MISTO';
        ADOPropostaProDomicilioBancario.AsString := 'NAO';
        ADOPropostaCodigoTabelaTarifa.AsInteger  := 1;

        ADOPropostaCodigoTipoCarteira.AsInteger := AtribuiTipoCarteira;

        ADOPropostaPROORIGEM.AsString  := 'N';
        ADOPropostaPROTXME.AsFloat     :=  0 ;
        ADOPropostaPROTXRISCO.AsFloat  :=  0 ;
        ADOPropostaPROTXSA.AsFloat     :=  0 ;
        ADOPropostaPROCCOB.AsFloat     :=  0 ;
        ADOPropostaPRODESP.AsFloat     :=  0 ;
        ADOPropostaPROTXRE.AsFloat     :=  0 ;
        ADOPropostaPROTXCA.AsFloat     :=  0 ;
        ADOPropostaPRODTOP.AsDateTime  := DataBanco ;
        ADOPropostaPROUSUARIO.AsString := IntToStr(Ususario.Codigo) ;
        ADOPropostaPROTPCONTR.AsString := 'N' ;

        BitBtnPegaRenegociacao.Enabled  := True;
      Botoes(True, True, True, True, True, True, False, False );
    end;
    Carteira.Enabled := False;
    Bordero.Enabled  := False;
  end;
end;

procedure TFrmCadEmprestimoSimulacao.CarteiraExit(Sender: TObject);
begin
  inherited;
  OnExit(Sender);
  If (Carteira.Text <> '') then
  begin
    with (ADOCarteira) do
    begin
      close;
      Parameters[0].Value := Carteira.Text;
      Open;
      if (ADOCarteira.RecordCount < 1) then
      begin
        ShowMessage('Codigo da carteira não encontrado.');
        Carteira.SetFocus;
        Abort;
      end;
      if (ADOCarteiraStatus.AsString <> 'ATIVO') Then
      begin
        Application.MessageBox('Carteira bloqueada para movimentação.', 'Atenção', MB_OK+MB_ICONEXCLAMATION+MB_DEFBUTTON1+MB_APPLMODAL);
        Carteira.SetFocus;
        Abort;
      end;
    end;
  end else
    Bordero.Enabled := False;

end;

procedure TFrmCadEmprestimoSimulacao.CarteiraKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  if not(key in ['a'..'z','A'..'Z',#8,#13]) then Key := #0;
end;

procedure TFrmCadEmprestimoSimulacao.FechaDados;
begin
  ADOConferencia.Close;
  ADOCliente.Close;
  ADOPromotor.Close;
  ADOProduto.Close;
  ADOParcela.Close;
  ADOProposta.Close;
end;

Function TFrmCadEmprestimoSimulacao.AbreDados(CLAS, PROP: String) : Boolean;

begin
  Result := False;
  if (Bordero.Text = '') then
    Bordero.Text := '0';

  FrmPrincipal.Mensagem('Verificando permissão.');
  if (StrToInt64(PROP) <> 0) then
  begin
    ADOExecuta.Close;
    ADOExecuta.SQL.Clear;
    ADOExecuta.SQL.Add(' Select top 1 prooper, Regiao from Kg_SimulacaoProposta pro with (nolock) '
                           +' join Kg_Promotor Prt with (nolock) on Prt.CodigoPromotor = Pro.Prooper '
                           +' where PROPROP = '+Bordero.Text+' and proclas = '+#39+Carteira.Text+#39
                           + AcessoArea ( ' and pro.prooper ','and prt.Regiao',' and prt.CodigoMacrorregiao', '' )
                           );
    Auxs := ADOExecuta.SQL.Text;

    ADOExecuta.Open;

    if (ADOExecuta.RecordCount < 1) then
    begin
      Application.MessageBox('Proposta não encontrada ou não pode ser editada.', 'Atenção', MB_OK+MB_ICONASTERISK+MB_DEFBUTTON1+MB_APPLMODAL);
      InicioDaOperacao;
      Bordero.SetFocus;
      Exit;
    end;

  end;

  FrmPrincipal.Mensagem('Exibindo a proposta...');

  if (ADOCarteira.RecordCount = 1 ) then
  begin

    FechaDados;

    FrmPrincipal.Mensagem('Abrindo a proposta...');
    with (ADOProposta) do
    begin
      Close;
      Parameters[0].Value := PROP;
      Parameters[1].Value := CLAS;
      Open;
    end;

    FrmPrincipal.Mensagem('Buscando dados do cedente...');
    ADOCliente.Open;

    FrmPrincipal.Mensagem('Abrindo o cadastro do promotor...');
    ADOPromotor.Open;

    FrmPrincipal.Mensagem('Abrindo o cadastro do promotor...');

    AbreParcelas;
    HabilitaCampo;
    Result := True;
  end
  else
    Raise Exception.Create('Carteira inexistente !');

  FrmPrincipal.Mensagem('');

end;

procedure TFrmCadEmprestimoSimulacao.verificadata;
var data:tdatetime;
begin
  data:=strtodatetime(DBEditDataOperacao.text);
  ADOaux.Close;
  ADOaux.sql.Text:='select top 1 case when DATEDIFF(day,'+''''+FormatDateTime('yyyy-mm-dd hh:mm:ss',data)+''''+',DataLancamento)<0 then DATEDIFF(day,'+''''+FormatDateTime('yyyy-mm-dd hh:mm:ss',data)+''''+',DataLancamento)*-1 else DATEDIFF(day,'+''''+FormatDateTime('yyyy-mm-dd hh:mm:ss',data)+''''+',DataLancamento) end diferenca   from factbcli  cli inner join Kg_AvaliacaoCadastral kg on (kg.InscricaoPrefixo=cli.CLICGC) where cli.clicod='+''''+DBEditCedente.Text+''''+'and clitip=''C'' and (cli.suplychain<>1) order by kg.DataLancamento desc ';
  ADOaux.Open;
   ADOaux.Close;
  ADOaux.sql.Text:='select top 1 case when DATEDIFF(day,'+''''+FormatDateTime('yyyy-mm-dd hh:mm:ss',data)+''''+',DataLancamento)<0 then DATEDIFF(day,'+''''+FormatDateTime('yyyy-mm-dd hh:mm:ss',data)+''''+',DataLancamento)*-1 else DATEDIFF(day,'+''''+FormatDateTime('yyyy-mm-dd hh:mm:ss',data)+''''+',DataLancamento) end diferenca   from factbcli  cli inner join Kg_AvaliacaoCadastral kg on (kg.InscricaoPrefixo=cli.CLICGC) where cli.clicod='+''''+DBEditCedente.Text+''''+'and clitip=''C'' and (cli.suplychain=1) order by kg.DataLancamento desc ';
  ADOaux.Open;

end;

procedure TFrmCadEmprestimoSimulacao.InicioDaOperacao;
begin
  FechaDados;
  ADOProposta.Close;
  Carteira.Enabled := True;
  Bordero.Enabled := True;
  Carteira.Clear;
  Bordero.Clear;
  Carteira.SetFocus;
end;

procedure TFrmCadEmprestimoSimulacao.Botoes(Alterar, Salvar, Fechar, Cancelar,  Excluir, Imprime, GerarPar, RecalcularPar : Boolean);
Var NivelPermissao : Integer;
begin
  NivelPermissao := BuscaNivelPermissao( Self );

  BitBtnAlterar.Enabled  := False;
  BitBtnSalvar.Enabled   := False;
  BitBtnFechar.Enabled   := False;
  BitBtnCancelar.Enabled := Cancelar;
  BitBtnExcluir.Enabled  := False;
  BitBtnGerarParcela.Enabled := False;
  BitBtnRecalcular.Enabled := False;

  if (NivelPermissao = 2) then
  begin
     BitBtnAlterar.Enabled  := Alterar;
     BitBtnSalvar.Enabled   := Salvar;
     BitBtnFechar.Enabled   := Fechar;

  end else if (NivelPermissao = 3) then
  begin
    BitBtnAlterar.Enabled  := Alterar;
    BitBtnSalvar.Enabled   := Salvar;
    BitBtnfechar.Enabled   := Fechar;
    BitBtnExcluir.Enabled  := Excluir;
    BitBtnGerarParcela.Enabled := GerarPar;
    BitBtnRecalcular.Enabled := RecalcularPar;
  end;

end;

procedure TFrmCadEmprestimoSimulacao.DBEditCedenteExit(Sender: TObject);
begin
  inherited;
  OnExit(Sender);
  if ( (ADOProposta.Active) and (DBEditCedente.Text <> '') ) then
  begin
    AtualizaAuxQ;

    if (ADOCliente.RecordCount < 1) then
    begin
      Application.MessageBox('Codigo do cedente não encontrado.', 'Atenção', MB_OK+MB_ICONEXCLAMATION+MB_DEFBUTTON1+MB_APPLMODAL);
      DBEditCedente.SetFocus;
      Abort;
    end;


        ADOPropostaPROVRDC.AsFloat     := ADOCarteiraClaCustoEnvioDoc.AsFloat;

        ADOPropostaPROCOBRATARIFADIGITACAO.AsString := 'SIM';

        ADOPropostaProTaxaAdministrativa.AsFloat := ADOCarteiraClaTaxaAdministrativa.AsFloat;

        ADOPropostaTaxaAberturaCredito.AsFloat   := ADOCarteiraTaxaAberturaCredito.AsFloat;

    if ( ADOClienteCliBloqueioLimite90Dias.AsString = 'SIM' ) then
    begin
      Application.MessageBox(pChar('Cedente bloqueado por não operar dentro de 60 dias. Possíveis motivos do bloqueio: [ '+ADOClienteCodigoMotivoBloqueioAcumulados.AsString+' ]' )  , 'Atenção', MB_OK+MB_ICONEXCLAMATION+MB_DEFBUTTON1+MB_APPLMODAL);
    end;

     Atribui_Float;

    if (ADOProposta.State in [DsInsert,dsEdit]) then
      if not(DBEditCedente.Field.IsNull) then
        Cedente(DBEditCedente.Text );

    if (TemPendenciaCadastral) then
      if not(MessageDlg('O cedente tem pendência cadastral, não pode gerar proposta.'+#13+#13+' Autoriza a geração da proposta ?',mtConfirmation,[mbYes,mbNo],0) = mrYes) then
        Abort;

      if (DMDados.DSOperacao.State in [DsInsert, DsEdit]) then
      begin
        if ( ADOCliente.FieldByName('TermoFielDepositarioDispensaNF').AsString = 'NAO' ) then
          Application.MessageBox('Cedente não tem Termo Field Depositário.', 'Atenção', MB_OK+MB_ICONASTERISK+MB_DEFBUTTON1+MB_APPLMODAL);

        if ( ADOCliente.FieldByName('CobrancaTitulo').AsString = 'NAO' ) then
          Application.MessageBox('O Cedente não tem Cobrança de Títulos.', 'Atenção', MB_OK+MB_ICONASTERISK+MB_DEFBUTTON1+MB_APPLMODAL);

        if ( ADOCliente.FieldByName('ContratoMae').AsString = 'NAO' ) then
          Application.MessageBox('O Cedente não tem Contrato Mãe.', 'Atenção', MB_OK+MB_ICONASTERISK+MB_DEFBUTTON1+MB_APPLMODAL);

      end;
    end;

end;

procedure TFrmCadEmprestimoSimulacao.AtualizaAuxQ;
begin
    ADOCliente.Close;
    ADOPromotor.Close;
    if (ADOProposta.Active) then
    begin
      ADOCliente.Open;
      if ( (ADOProposta.State = dsInsert) and (ADOCliente.RecordCount > 0) ) then
      begin
        ADOPropostaPROOPER.AsInteger := ADOClienteCLIOPE.AsInteger;

        ADOPropostaCodigoRegiao.AsInteger := ADOClienteRegiao.AsInteger;

        ADOPropostaPROAVASACA.AsString := ADOClienteCLIAVASACA.AsString;
        if (ADOPropostaPROAVASACA.AsString = '') then
          ADOPropostaPROAVASACA.AsString := 'N';

        if (ADOPropostaPROFLOA.AsString = '') then
          ADOPropostaPROFLOA.AsString := '0';

        ADOPropostaProTaxaAdministrativa.AsFloat := ADOCarteiraClaTaxaAdministrativa.AsFloat;

       ADOPropostaTaxaAberturaCredito.AsFloat   := ADOCarteiraTaxaAberturaCredito.AsFloat;

        Atribui_IOF;

      end;
      ADOPromotor.Open;
    end;
end;

procedure TFrmCadEmprestimoSimulacao.Cedente(Codigo: String);
begin

  FrmPrincipal.Mensagem('Recuperando Informação do Cedente...');

  ADOCliente.Close;
  ADOCliente.Open;

  ADOPropostaPROCLIE.AsString := Codigo;

        ADOExecuta.Close;
        ADOExecuta.sql.Clear;
        ADOExecuta.SQL.Add('Select top 1 CTMCMAE from factbctm with (nolock) where CTMCLIE = '+ADOClienteCLICOD.AsString);
        ADOExecuta.Open;
        ADOPropostaPROCMAE.AsString := ADOExecuta.Fields[0].AsString;

      if (ADOPropostaPROFLOA.IsNull) then
        ADOPropostaPROFLOA.AsString := '0';

      if not(ADOPropostaPROOPER.IsNull) then
        ADOPromotor.Parameters[0].Value := ADOPropostaPROOPER.AsString;

      if ( (ADOProposta.Active) and (ADOProposta.State in [DsInsert, DsEdit]) ) then
      begin
        ADOPropostaPROOPER.AsString := ADOClienteCLIOPE.AsString;
        ADOPromotor.Parameters[0].Value := ADOClienteCLIOPE.AsString;

        Atribui_IOF;

      end;
      ADOPromotor.Close;
      ADOPromotor.Open;
     ADOPropostaPROAVASACA.AsString := ADOClienteCLIAVASACA.AsString;

  FrmPrincipal.Mensagem;

end;

procedure TFrmCadEmprestimoSimulacao.FormCreate(Sender: TObject);
begin
  inherited;
  Valida_Ord:= True;
  DataBanco := PesquisaDataBanco(False);
  BitBtnPegaRenegociacao.Enabled  := false;
  if ((ususario.grupo = 43) or (ususario.grupo = 42) or (ususario.grupo = 39) or (ususario.grupo = 52) ) then
       ReservaContrato.Enabled:=true
  else
     ReservaContrato.Enabled:=false;
end;

procedure TFrmCadEmprestimoSimulacao.DBEditDataOperacaoExit(Sender: TObject);
begin
  inherited;
  OnExit(Sender);
  if ( (ADOProposta.Active) and ( ADOProposta.State in [DsInsert, DsEdit]) and  ( not ADOPropostaPRODTOP.IsNull ) ) then
  begin
    If ADOProdutoMOEDA.AsString = 'IGPM' then
    begin
      ADOPropostaProDataPrimeiraParcela.AsDateTime := IncMonth(ADOPropostaPRODTOP.AsDateTime, 6);
      AtualizaIGPM;
    end else
    begin
      ADOaux.close;
     ADOaux.SQL.Text:= ' select isnull(TipoCalculo,0) from kg_produto where codigoproduto='+''''+ADOPropostaPRODOCUMEN.AsString+''''+'';
     ADOaux.open;
     if ADOaux.fields[0].asinteger=2 then
     begin
     ADOPropostaProDataPrimeiraParcela.AsDateTime := Incday(ADOPropostaPRODTOP.AsDateTime, 30);
     end
     else
       ADOPropostaProDataPrimeiraParcela.AsDateTime := IncMonth(ADOPropostaPRODTOP.AsDateTime, 1);
       AtualizaCDI;
    end;
  end;

end;

procedure TFrmCadEmprestimoSimulacao.CalculaContratoIGPM;
Var DataFinal : TDate;
begin
  if ADOProposta.Active then
    if not(ADOProposta.State in [Dsinsert, DsEdit] ) then
      BitBtnAlterar.Click;

  if (ADOProposta.State in [DSinsert, DsEdit]) then
  begin
    CalculaTacs;

    VcalculoCarencia := 0;
    VCalculoValorLiquido := 0;

    BaseIOF := ADOPropostaProValorReferencia.AsFloat;

    if (ADOPropostaProTipoPagtoTac.AsString = 'F') then
      BaseIOF := BaseIOF + ADOPropostaProValorTacs.AsFloat;

    DataFinal := IncMonth( ADOPropostaProDataPrimeiraParcela.AsDateTime, (ADOPropostaPROITEM.AsInteger - 1) );

    VencimentoReal := (DataFinal + ADOPropostaPROFLOA.AsInteger);

    Prazo := DaysBetween( ADOPropostaPRODTOP.AsDateTime, VencimentoReal );

    PrazoIOF := Min( DaysBetween( ADOPropostaPRODTOP.AsDateTime, DataFinal ), 365);

    Intervalo := DaysBetween( ADOPropostaPRODTOP.AsDateTime, VencimentoReal );

    if (ADOPropostaPROTXME.AsFloat <> 0) then
      VcalculoCarencia := ArredondaValor( calculaCarencia( ADOPropostaProValorReferencia.AsFloat, ADOPropostaPROTXME.AsFloat
                , ADOPropostaPROITEM.AsInteger,  ADOPropostaProDiasCarencia.AsInteger, ADOPropostaProDiasCarencia.AsInteger ),2);

    Vcalculoiof := ArredondaValor(calculaIof( BaseIOF, ADOPropostaPROITEM.AsInteger, ADOPropostaPROTXME.AsFloat, PrazoIOF, ADOPROPOSTAPROTXIO.AsFloat, ADOPropostaProTipoPagtoIOF.AsString, adopropostaprodtop.AsDateTime ), 2 ) ;

    AjustaValorFinanciado;

    if (ADOPropostaPROTXME.AsFloat = 0) then
    begin
      VcalculoPMT := ADOPropostaProValorFinanciado.AsFloat;
      VcalculoJuros := 0;
      VcalculoAmortizacao := ADOPropostaProValorFinanciado.AsFloat;
    end else
    begin
      VcalculoPMT := ArredondaValor( CalculaPmt( ADOPropostaPROTXME.AsFloat, ADOPropostaPROITEM.AsInteger, ADOPropostaProValorFinanciado.AsFloat , 0 , True),7);
      VcalculoJuros := ArredondaValor( calculaJuros(ADOPropostaPROTXME.AsFloat, ADOPropostaPROITEM.AsInteger, ADOPropostaProValorFinanciado.AsFloat , ADOPropostaProDiasCarencia.AsInteger ), 7);
      VcalculoAmortizacao := ArredondaValor( calculaAmortizacao(ADOPropostaPROTXME.AsFloat, ADOPropostaPROITEM.AsInteger, ADOPropostaProValorFinanciado.AsFloat , ADOPropostaProDiasCarencia.AsInteger ), 7);
    end;
  end;
end;

procedure TFrmCadEmprestimoSimulacao.CalculaContrato;
Var DataFinal : TDate;
begin
  if ADOProposta.Active then
    if not(ADOProposta.State in [Dsinsert, DsEdit] ) then
      BitBtnAlterar.Click;

  if (ADOProposta.State in [DSinsert, DsEdit]) then
  begin
    CalculaTacs;

    VcalculoCarencia := 0;
    VCalculoValorLiquido := 0;

    BaseIOF := ADOPropostaProValorReferencia.AsFloat;

    if (ADOPropostaProTipoPagtoTac.AsString = 'F') then
      BaseIOF := BaseIOF + ADOPropostaProValorTacs.AsFloat;

    DataFinal := IncMonth( ADOPropostaProDataPrimeiraParcela.AsDateTime, (ADOPropostaPROITEM.AsInteger - 1) );

    VencimentoReal := D_maisRegional(DataFinal, ADOPropostaPROFLOA.AsInteger, ADOPropostaCodigoRegiao.AsInteger );

    Prazo := DaysBetween( ADOPropostaPRODTOP.AsDateTime, VencimentoReal );

    PrazoIOF := Min( DaysBetween( ADOPropostaPRODTOP.AsDateTime, DataFinal ), 365);

    Intervalo := DaysBetween( ADOPropostaPRODTOP.AsDateTime, VencimentoReal );

    if (ADOPropostaPROTXME.AsFloat <> 0) then
      VcalculoCarencia := ArredondaValor( calculaCarencia( ADOPropostaProValorReferencia.AsFloat, ADOPropostaPROTXME.AsFloat
                , ADOPropostaPROITEM.AsInteger,  ADOPropostaProDiasCarencia.AsInteger, ADOPropostaProDiasCarencia.AsInteger ),2);

    Vcalculoiof := ArredondaValor( calculaIof( BaseIOF, ADOPropostaPROITEM.AsInteger, ADOPropostaPROTXME.AsFloat, PrazoIOF, ADOPROPOSTAPROTXIO.AsFloat, ADOPropostaProTipoPagtoIOF.AsString, adopropostaprodtop.AsDateTime ), 2 ) ;

    AjustaValorFinanciado;

    if (ADOPropostaPROTXME.AsFloat = 0) then
    begin
      VcalculoPMT := ADOPropostaProValorFinanciado.AsFloat;
      VcalculoJuros := 0;
      VcalculoAmortizacao := ADOPropostaProValorFinanciado.AsFloat;
    end else
    begin
      VcalculoPMT := ArredondaValor( CalculaPmt( ADOPropostaPROTXME.AsFloat, ADOPropostaPROITEM.AsInteger, ADOPropostaProValorFinanciado.AsFloat , 0 , True),7);
      VcalculoJuros := ArredondaValor( calculaJuros(ADOPropostaPROTXME.AsFloat, ADOPropostaPROITEM.AsInteger, ADOPropostaProValorFinanciado.AsFloat , ADOPropostaProDiasCarencia.AsInteger ), 7);
      VcalculoAmortizacao := ArredondaValor( calculaAmortizacao(ADOPropostaPROTXME.AsFloat, ADOPropostaPROITEM.AsInteger, ADOPropostaProValorFinanciado.AsFloat , ADOPropostaProDiasCarencia.AsInteger ), 7);
    end;
  end;
end;

procedure TFrmCadEmprestimoSimulacao.BitBtnGerarParcelaClick(Sender: TObject);
begin
  inherited;
  if ( (ADOProposta.Active) and ( ADOPropostaPRODOCUMEN.AsInteger = 0) ) then
  begin
    Application.MessageBox('Código do produto não informado.', 'Atenção', MB_OK+MB_ICONEXCLAMATION+MB_DEFBUTTON1+MB_APPLMODAL);
    DBEditDocumento.SetFocus;
    Abort;
  end;

  if ( (ADOProposta.Active) and ( ADOPropostaPROCLIE.AsInteger = 0) ) then
  begin
    Application.MessageBox('Código do cedente não informado.', 'Atenção', MB_OK+MB_ICONEXCLAMATION+MB_DEFBUTTON1+MB_APPLMODAL);
    DBEditCedente.SetFocus;
    Abort;
  end;

  if ( (ADOProposta.Active) and ( ADOPropostaPRODTOP.AsDateTime  >= ADOPropostaProDataPrimeiraParcela.AsDateTime )  ) then
  begin
    Application.MessageBox(' Data da primeira parcela inválida ou não informada.', 'Atenção', MB_OK+MB_ICONEXCLAMATION+MB_DEFBUTTON1+MB_APPLMODAL);
    DBEditProDataPrimeiraParcela.SetFocus;
    Abort;
  end;

  if ( (ADOProposta.Active) and ( ADOPropostaProValorReferencia.AsFloat < 1)  ) then
  begin
    Application.MessageBox(' Valor de referencia para cálculo não informado.', 'Atenção', MB_OK+MB_ICONEXCLAMATION+MB_DEFBUTTON1+MB_APPLMODAL);
    DBEditValorReferencia.SetFocus;
    Abort;
  end;

  if (ADOProposta.State in [dsEdit, dsInsert] ) then
    BitBtnSalvar.Click;

  Try
    GeraParcelaMista;
  except
    on E: Exception do
      MessageDlg('Houve inconsistencia no calculo do contrato. Erro: '+E.Message, mtError, [mbOK], 0);
    else
     ShowMessage('Foi encontrado um parametro inesperado.');
  end;

end;


procedure TFrmCadEmprestimoSimulacao.BitBtnPegaRenegociacaoClick(
  Sender: TObject);
var
  iofAtraso,iofbeneficio,IofValorTeto,ID_bordero : string;
  v_Id : TStringList;
begin
  inherited;
  StringsDisplayLabel.Clear;
  StringsDisplayLabel.Add('Código');
  StringsDisplayLabel.Add('Código Cedente');
  StringsDisplayLabel.Add('Nome Cedente ');
  StringsDisplayLabel.Add('IOF Atraso');
  StringsDisplayLabel.Add('IOF Beneficio');
  StringsDisplayLabel.Add('IOF ValorTeto');

  if (ADOPesquisa( ' ID_CalculoAproveitamentoIOF, CodCedente,Clinom,  Sum(convert(numeric(15,2),IOFAtraso)) as  IOFAtraso ,  sum(convert(numeric(15,2),IOFBeneficio))  as IOFBeneficio , sum(convert(numeric(15,2),IOFValorTeto)) as IOFValorTeto '
                  ,' kg_CalculoAproveitamentoIOF  ',' IOFAtraso, IOFBeneficio,IOFValorTeto,ID_CalculoAproveitamentoIOF ',DMConecta.ADOCapitalDeGiro, Nil ,' CodCedente desc '
                  ,CriterioParaPesquisa, ' JOIN factbcli on (clicod = CodCedente and clitip = ''C'')  JOIN kg_CalculoAproveitamentoIOF_item on( ID_CalculoAproveitamentoIOF =  ID_CalculoAproveitamentoIOF_item) where CodCedente = ' + DBEditCedente.Text + ' group by  ID_CalculoAproveitamentoIOF,CodCedente,Clinom '   , StringsDisplayLabel, 0, 100, 'SI') ) then
  begin
    if  (StringsPesquisa.Text <> '') then
    begin
      V_Id := Split(StringsPesquisa.Strings[0],',');

      iofAtraso                   := V_Id[0];
      iofbeneficio                := V_Id[1];
      IofValorTeto                := V_Id[2];
      ID_bordero                  := V_Id[3];

      iofAtraso     :=  FloatToStr(StrToFloat(iofAtraso)/100);
      iofbeneficio  :=  FloatToStr(StrToFloat(iofbeneficio)/100);
      IofValorTeto  :=  FloatToStr(StrToFloat(IofValorTeto)/100);

      DBEditIOFAtraso.Text        :=  iofAtraso;
      DBEditIOFBeneficio.Text     :=  iofbeneficio;
      DBEditIofTeto.text          :=  IofValorTeto;
      DBEditRenegociacao.Text     :=  ID_bordero;

    end else
  end;
  StringsDisplayLabel.Clear;
  StringsDisplayLabel.Clear;
end;

procedure TFrmCadEmprestimoSimulacao.DBEditDocumentoExit(Sender: TObject);
const
  FGI_PEAC = 112;
begin
  inherited;
  OnExit(Sender);
  if ( (ADOProposta.Active) and ( ADOProposta.State in [DsInsert, DsEdit] ) ) then
    if (DBEditDocumento.Text <> '') then
    begin

      ADOProduto.Close;
      ADOProduto.Open;
      if ADOPropostaPRODOCUMEN .Value = FGI_PEAC then
      begin
        Adverte('Não é permitido o lançamento de Produto FGI PEAC.');
        ADOPropostaPRODOCUMEN.Clear;
        ADOProduto.Close;
        if DBEditDocumento.CanFocus then
          DBEditDocumento.SetFocus;
        Abort;
      end;
      if (ADOProduto.RecordCount < 1) then
      begin
        Application.MessageBox('Código do produto não encontrado.', 'Atenção', MB_OK+MB_ICONEXCLAMATION+MB_DEFBUTTON1+MB_APPLMODAL);
        DBEditDocumento.SetFocus;
        Abort;
      end;
      if (Pos(ADOProdutoTipoFinanciamento.AsString,'PRE, POS') = 0) then
      begin
        Application.MessageBox('produto não permitido para contrato de empréstimo.', 'Atenção', MB_OK+MB_ICONEXCLAMATION+MB_DEFBUTTON1+MB_APPLMODAL);
        DBEditDocumento.SetFocus;
        Abort;
      end;
      if (ADOProdutoStatus.AsString = 'INATIVO') then
      begin
        Application.MessageBox('produto não permitido para contrato de empréstimo.', 'Atenção', MB_OK+MB_ICONEXCLAMATION+MB_DEFBUTTON1+MB_APPLMODAL);
        DBEditDocumento.SetFocus;
        Abort;
      end;
      Atribui_TaxaReferencia;
      AtualizaCDI;
      HabilitaCampo;
      PreencherTaxas;
      Atribui_IOF;
    end;
end;

procedure TFrmCadEmprestimoSimulacao.DBEdit3Exit(Sender: TObject);
begin
  inherited;
  OnExit(Sender);
  if ( (ADOProposta.Active ) and ( ADOProposta.State in [DsInsert, DsEdit]) ) and (ADOProdutoMOEDA.AsString <> 'IGPM') then
   begin
     if (DBEditDocumento.Text='78') or (DBEditDocumento.Text='152') then
        ADOPropostaProParcelasCarencia.AsInteger := (Trunc(ADOPropostaProDiasCarencia.AsInteger / 30 )-1)
     else
         ADOPropostaProParcelasCarencia.AsInteger := Trunc(ADOPropostaProDiasCarencia.AsInteger / 30 );
   end

  else ADOPropostaProParcelasCarencia.AsInteger := 0;

end;

procedure TFrmCadEmprestimoSimulacao.DBEditTaxaAberturaCreditoExit(
  Sender: TObject);
begin
  inherited;
 OnExit(Sender);
  if ( (DBEditTaxaAberturaCredito.Text <> '') and (ADOProposta.State in [DsInsert, DsEdit]) ) then
     if ((StrToFloat(DBEditTaxaAberturaCredito.Text) < 120) and (Carteira.Text = 'IF')) then
     begin
       if (ADOPropostaTaxaAberturaCredito.AsFloat <> ADOCarteiraTaxaAberturaCredito.AsFloat ) then
         ShowMessage('Deverá ter liberação do Departamento de operações para operar com diferencial de Tx.Abertura Crédito  [120,00]');
     end;
end;

procedure TFrmCadEmprestimoSimulacao.MontaParcela;
begin
  ADOParcelaITECLAS.AsString            := ADOPropostaPROCLAS.AsString;
  ADOParcelaITEPROP.AsInteger           := ADOPropostaPROPROP.AsInteger;
  ADOParcelaITESACCNPJ.AsString         := ADOClienteclicgc.AsString+ADOClienteclicgcfili.AsString;
  ADOParcelaCodigoSacado.AsString       := CodigoSacado;
  ADOParcelaITEDOCU.AsInteger           := ADOPropostaPRODOCUMEN.AsInteger;

  ADOParcelaITEFLOA.AsString            := '0';

  ADOParcelaITETXSA.AsFloat             := ADOPropostaPROTXSA.AsFloat;
  ADOParcelaITETXRISCO.AsFloat          := ADOPropostaPROTXRISCO.AsFloat;
  ADOParcelaItetarifadigitacao.AsFloat  := 0;

  ADOParcelaITETXCAC.AsFloat                := 0.00;
  ADOParcelaITEVRCAC.AsFloat                := 0.00;
  ADOParcelaIteValorTMF.AsFloat             := 0.00;
  ADOParcelaITECCOB.AsFloat                 := 0.00;
  ADOParcelaITEVRDC.AsFloat                 := 0.00;
  ADOParcelaITETXCA.AsFloat                 := 0.00;
  ADOParcelaITETXRE.AsFloat                 := 0.00;
  ADOParcelaITEDESP.AsFloat                 := 0.00;
  ADOParcelaIteTaxaAdministrativa.AsFloat   := 0.00;
  ADOParcelaTaxaAberturaCredito.AsFloat     := 0.00;
  ADOParcelaItemVrIOFAproveitamento.AsFloat := 0.00;
  ADOParcelaITEVRSA.AsFloat                 := 0.00;
  ADOParcelaITEVRRISCO.AsFloat              := 0.00;

end;


procedure TFrmCadEmprestimoSimulacao.BitBtn6Click(Sender: TObject);
begin
  inherited;
  if ( (ADOProposta.Active) and (ADOProposta.State in [DsEdit, DsInsert] ) ) then
    with (DMDados) do Begin
      Auxs := PesquisaCedanteSacado('C', True );
      if (Auxs <> '') then
      begin
        ADOPropostaPROCLIE.AsString := Auxs;
        DBEditCedente.SetFocus;
        DBEditCedenteExit(Sender);
      end else
        DBEditCedente.SetFocus;
    end;
end;

procedure TFrmCadEmprestimoSimulacao.ADOClienteBeforeOpen(DataSet: TDataSet);
begin
  inherited;
  ADOCliente.Parameters[0].Value := ADOPropostaPROCLIE.AsInteger;

end;

procedure TFrmCadEmprestimoSimulacao.ADOProdutoBeforeOpen(DataSet: TDataSet);
begin
  inherited;
  ADOProduto.Parameters[0].Value := ADOPropostaPRODOCUMEN.AsInteger;
end;

procedure TFrmCadEmprestimoSimulacao.BitBtn2Click(Sender: TObject);
begin
  inherited;
  if ( (ADOProposta.Active) and (ADOProposta.State in [DsEdit, DsInsert] ) ) then
    if ( ADOPesquisa(' CodigoProduto, Descricao, SiglaPapelFisico, VencimentoUtil, Status, TipoFinanciamento, CarteiraAds',
    'dbo.Kg_Produto','CodigoProduto',DMConecta.ADOCapitalDeGiro, Nil, 'CodigoProduto', ' where TipoFinanciamento in (''POS'',''PRE'') ', '') )then
    begin
      if  (StringsPesquisa.Text <> '') then
      begin
        ADOPropostaPRODOCUMEN.AsString := StringsPesquisa.Strings[0];
        DBEditDocumentoExit(Sender);
        DBEditDocumento.SetFocus;
      end else
        DBEditDocumento.SetFocus;
    end;

end;

procedure TFrmCadEmprestimoSimulacao.BitBtn7Click(Sender: TObject);
begin
  inherited;
  if ( (ADOProposta.Active) and (ADOProposta.State in [DsEdit, DsInsert] ) ) then
    if ( ADOPesquisa(' CodigoPromotor, Nome','dbo.Kg_Promotor','CodigoPromotor',DMConecta.ADOCapitalDeGiro, Nil,'CodigoPromotor','','') )then
    begin
      if (StringsPesquisa.Text <> '') then
      begin
        ADOPropostaPROOPER.AsString := StringsPesquisa.Strings[0];
        DBEditPromotor.SetFocus;
        ADOPromotor.Close;
        ADOPromotor.Open;
      end else
        DBEditPromotor.SetFocus;
    end;

end;

procedure TFrmCadEmprestimoSimulacao.DBEditProDataPrimeiraParcelaExit(Sender: TObject);
begin
  inherited;
  OnExit(Sender);
   ADOaux.close;
   ADOaux.SQL.Text:= ' select isnull(TipoCalculo,0) from kg_produto where codigoproduto='+''''+ADOPropostaPRODOCUMEN.AsString+''''+'';
   ADOaux.open;


  if ( (ADOProposta.Active) and ( ADOProposta.State in [DsEdit, DsInsert]) and ( not ADOPropostaPRODTOP.IsNull ) ) then
  begin
    TMaskEdit(Sender).Text := CorrigeData(TMaskEdit(Sender).Text);

    if ((ADOPropostaProDataPrimeiraParcelaOriginal.IsNull) or (ADOPropostaProDataPrimeiraParcelaOriginal.AsDateTime <> ADOPropostaProDataPrimeiraParcela.AsDateTime) and (adoaux.fields[0].AsString<>'2') ) then
       ADOPropostaProDataPrimeiraParcelaOriginal.AsDateTime := ADOPropostaProDataPrimeiraParcela.AsDateTime;

    If ((ADOProdutoMOEDA.AsString = 'IGPM') and (adoaux.fields[0].AsString<>'2')) then
      ADOPropostaProDataPrimeiraParcela.AsDateTime := ADOPropostaProDataPrimeiraParcela.AsDateTime
    else if (adoaux.fields[0].AsString<>'2') then

        ADOPropostaProDataPrimeiraParcela.AsDateTime := D_maisBancario (ADOPropostaProDataPrimeiraParcela.AsDateTime,0,'FERIADO BANCÁRIO');


    if (ADOPropostaProDataPrimeiraParcela.AsDateTime <= ADOPropostaPRODTOP.AsDateTime) then
    begin
       Application.MessageBox('Data inconsistente com data do empréstimo.', 'Atenção', MB_OK+MB_ICONEXCLAMATION+MB_DEFBUTTON1+MB_APPLMODAL);
       DBEditProDataPrimeiraParcela.SetFocus;
       Abort;
    end;

    if (ADOPropostaProDataPrimeiraParcela.NewValue <> ADOPropostaProDataPrimeiraParcela.OldValue) then
    begin
      If Application.MessageBox('A alteração da data da primeira PMT/Parcela implica'+chr(10)+''+chr(10)+'           em excluir e recriar as PMT''s/Parcelas.'+chr(10)+''+chr(10)+'                        Confirma a alteração ?'+chr(10)+''+chr(10)+'', 'Atenção', MB_YESNO+MB_ICONEXCLAMATION+MB_DEFBUTTON2+MB_APPLMODAL) = ID_NO Then
      begin
        DBEditProDataPrimeiraParcela.SetFocus;
        Abort;
      end;
      ReGerar := True;
    end;

    if ( ( not ADOPropostaProDataPrimeiraParcela.IsNull) and ( ADOPropostaProDataPrimeiraParcela.AsDateTime > adopropostaprodtop.AsDateTime ) ) then
      ADOPropostaProDiasCarencia.AsInteger := Trunc( ADOPropostaProDataPrimeiraParcela.AsDateTime - adopropostaprodtop.AsDateTime ) - 30;

     ADOaux.close;
     ADOaux.SQL.Text:= ' select isnull(TipoCalculo,0) from kg_produto where codigoproduto='+''''+ADOPropostaPRODOCUMEN.AsString+''''+'';
     ADOaux.open;
     if ADOaux.fields[0].asinteger=2 then
     begin
      if (ADOPropostaPRODOCUMEN.AsString='78') or (ADOPropostaPRODOCUMEN.AsString='152') then
       begin
         ADOPropostaProDiasCarencia.AsInteger := Trunc( ADOPropostaProDataPrimeiraParcela.AsDateTime - adopropostaprodtop.AsDateTime );
       end
       else
       ADOPropostaProDiasCarencia.AsInteger:=0;
     end;

    if ( ADOPropostaProDiasCarencia.AsInteger < 1) then
       ADOPropostaProDiasCarencia.AsInteger := 0;

  end;

end;

procedure TFrmCadEmprestimoSimulacao.DBEditTaxaTacExit(Sender: TObject);
begin
  inherited;
  OnExit(Sender);
  if ( (DBEditTaxaTac.Text <> '') and (ADOProposta.State in [DsInsert, DsEdit]) ) then
     if ((StrToFloat(DBEditTaxaTac.Text) <> 0) or (DBEditTaxaTac.Text = '')) then
     begin
        if (ADOPropostaPROTXCAC.AsFloat <= ADOCarteiraCLATXCAC.AsFloat ) then
          ADOPropostaPROTXCAC.AsFloat := ADOCarteiraCLATXCAC.AsFloat;
     end
     else
        ShowMessage('Deverá ter liberação do Departamento de operações para operar com diferencial de Tac [0,38]');
end;

procedure TFrmCadEmprestimoSimulacao.DBEditValorReferenciaExit(Sender: TObject);
begin
  inherited;
  OnExit(Sender);
  AtualizarTEO;
end;

procedure TFrmCadEmprestimoSimulacao.DBEditCedenteChange(Sender: TObject);
begin
  inherited;
  ADOCliente.Close;
end;

procedure TFrmCadEmprestimoSimulacao.CalculaTacs;
begin
  if ((ADOProposta.Active) and (ADOProposta.State in [DsEdit, DsInsert]) ) then
  begin

    ADOPropostaPROVRCAC.AsFloat :=  StrToFloat( FloatToStrF(  (ADOPropostaProValorReferencia.AsFloat * ADOPropostaPROTXCAC.AsFloat / 100),ffFixed,15,2));

    ADOPropostaProValorTacs.AsFloat := (  ADOPropostaPROVRDC.AsFloat
                                          + ADOPropostaPROVRCAC.AsFloat
                                          + ADOPropostaPROCCOB.AsFloat
                                          + ADOPropostaPRODESP.AsFloat
                                          + ADOPropostaProTaxaAdministrativa.AsFloat
                                          + ADOPropostaTaxaAberturaCredito.AsFloat+ADOPropostaPROVRTEO.asfloat+ADOPropostavalor_ecg.asfloat)
  end;

end;

procedure TFrmCadEmprestimoSimulacao.CalculaTacs_Item;
begin

    Ite_ValorTacs := ( ADOParcelaITEVRDC.AsFloat     +
                        ADOParcelaITEVRCAC.AsFloat    +
                        ADOParcelaITECCOB.AsFloat     +
                        ADOParcelaITEDESP.AsFloat     +
                        ADOParcelaIteTaxaAdministrativa.AsFloat   +
                        adoparcelaItemVrIOFAproveitamento.AsFloat +
                        ADOParcelaTaxaAberturaCredito.AsFloat + adoparcelaitevalor_ecg.asfloat  );
end;

procedure TFrmCadEmprestimoSimulacao.BitBtnSairClick(Sender: TObject);
begin
  inherited;
  close;
end;

procedure TFrmCadEmprestimoSimulacao.BitBtnSalvarClick(Sender: TObject);
var
 auxiliar : string;
 ItensAfetados : integer;
begin
  inherited;
  if not ValidaPreenchimentoTaxaEfetiva(ADOPropostaPROTXEF.AsFloat) then
  begin
    ADOPropostaTaxaNominalPosFixada.FocusControl;
    Abort;
  end;

  verificadata;

  if not (ADOProposta.State in [dsEdit, dsInsert] ) then
     ADOProposta.Edit;
   try
      if (ADOPropostaPROCOBRATARIFADIGITACAO.IsNull) then
         ADOPropostaPROCOBRATARIFADIGITACAO.AsString := 'NAO';

      if (ADOPropostaPROTPCONTR.IsNull) then
         ADOPropostaPROTPCONTR.AsString := 'N';

      if (ADOPropostaPROAVASACA.IsNull) then
         ADOPropostaPROAVASACA.AsString := 'N';

      ADORepresentantesCliente.Close;
      ADORepresentantesCliente.Parameters[0].Value := ADOPropostaPROCLIE.AsInteger;
      ADORepresentantesCliente.Open;
    
     while not(ADORepresentantesCliente.Eof) do
      begin
        if GetIImpedidosDeOperar(False, '', httpIImpedidosDeOperar).ImpedidoDeOperar(ADORepresentantesClienteCpfCnpj.AsString) then
        begin
          Application.MessageBox(pChar(ADORepresentantesClienteNOME.AsString +' '+ADORepresentantesClienteCpfCnpj.AsString +' encontra-se impedido de operar. Favor verificar com o Compliance')  , 'Atenção', MB_OK+MB_ICONEXCLAMATION+MB_DEFBUTTON1+MB_APPLMODAL);
        end;
        ADORepresentantesCliente.Next;
      end;

      ADOaux.Close;
      ADOaux.sql.Text:=' select isnull(taxatac,''-1'') from kg_produto where codigoproduto='+''''+ADOPropostaPRODOCUMEN.AsString+''''+'';
      ADOaux.Open;

      if (StrToFloat(DBEditTaxaTac.Text) <> 0) then
      begin
          if (ADOPropostaVrTacDigitada.AsFloat <= ADOCarteiraCLATXCAC.AsFloat ) then
             ADOPropostaVrTacDigitada.AsFloat := ADOCarteiraCLATXCAC.AsFloat;
      end
      else if ADOaux.fields[0].Asstring='-1' then

         ShowMessage('Deverá ter liberação do Departamento de operações para operar com Tac zero');

      if ( copy(ADOPropostaPROCLAS.AsString,1,1) <> 'A') and (ADOProdutoTipoFinanciamento.AsString = 'PRE') then
         ChecaUltimaTaxaEfetivaPraticada;

      ADOProposta.Post;


      if  DBRdGrpCongelarParcelas.ItemIndex = 0 then
      begin
          if ( ReGerar ) then
          begin
              BitBtnGerarParcelaClick(Sender);
              BitBtnRecalcularClick(Sender);
          end
          else
          BitBtnGerarParcelaClick(Sender);
          ReGerar := False;
      end
      else
      begin
          if (ADOParcela.RecordCount > 0) then
             BitBtnRecalcularClick(Sender)
          else
             BitBtnGerarParcelaClick(Sender);
      end;

      BitBtnPegaRenegociacao.Enabled  := False;
  except
    on E: Exception do
      MessageDlg('Houve inconsistencia no calculo do contrato. Erro: '+E.Message, mtError, [mbOK], 0);
    else
     ShowMessage('Foi encontrado um parametro inesperado.');
  end;
  ScrollBoxGarantias.Enabled := False;
  Botoes(True, False, True, True, True, True, False, False );

  if (( DBdtId_ContratoOperacao.Text  <> '' ) and(DBEditRenegociacao.Text <> ''  )) then
  begin
    auxiliar :=  ' Update kg_CalculoAproveitamentoIOF SET ';
    auxiliar := auxiliar + ' Id_Operacao =  '  + DBdtId_ContratoOperacao.Text ;
    auxiliar := auxiliar + ' ,bordero = ' + Bordero.Text;
    auxiliar := auxiliar + ' where codcedente = '  + DBEditCedente.Text;
    auxiliar := auxiliar + ' and ID_CalculoAproveitamentoIOF = ' + DBEditRenegociacao.Text ;

    ItensAfetados := 0;
    DMConecta.ADOCapitalDeGiro.Execute(auxiliar, ItensAfetados);
    ADOProposta.refresh;
  end;

end;


procedure TFrmCadEmprestimoSimulacao.BitBtnFecharClick(Sender: TObject);
begin
  inherited;

  if ( (ADOProposta.Active) and (ADOProposta.State in [DsEdit, Dsinsert]) ) then
  begin
    If Application.MessageBox('Existe alteração pendente. Deseja continuar ?', 'Atenção', MB_YESNO+MB_ICONEXCLAMATION+MB_DEFBUTTON1+MB_APPLMODAL) = ID_YES Then
      BitBtnSalvarClick(Sender)
    else
      Abort;

  end;
  FrmPrincipal.Mensagem();

  FechaDados;

  Carteira.Enabled := True;
  Bordero.Enabled := True;
  ScrollBoxGarantias.Enabled := False;
  Carteira.Text := '';
  Bordero.Text := '';
  Carteira.SetFocus;


end;

procedure TFrmCadEmprestimoSimulacao.BitBtnCancelarClick(Sender: TObject);
begin
  inherited;
  if (ADOProposta.Active) then
  begin
    Botoes(True, True, True, True, True, False, False, False );
    ADOParcela.Cancel;
    ADOProposta.Cancel;
    ErroConsistencia := '';
    ScrollBoxGarantias.Enabled := False;
    if ( ADOProposta.RecordCount < 1) then
    begin
      FechaDados;

      Carteira.Enabled := True;
      Bordero.Enabled := True;
      Carteira.Text := '';
      Bordero.Text := '';
      Carteira.SetFocus;
    end else
     AtualizaAuxQ;
  end;
end;

procedure TFrmCadEmprestimoSimulacao.ConsisteFechamento;
Begin
  FrmPrincipal.Mensagem;

end;

procedure TFrmCadEmprestimoSimulacao.BrnRelatarioClick(Sender: TObject);
begin
  inherited;
  if ((ADOProposta.State <> dsBrowse) or (ADOParcela.State <> dsBrowse)) then
  begin
    Application.MessageBox('Não é permitido imprimir quando está no processo de inclusão/alteração.', 'Atenção', MB_OK+MB_ICONEXCLAMATION+MB_DEFBUTTON1+MB_APPLMODAL);
    Abort;
  end;
  if (ErroConsistencia <> '') then
  begin
    MessageDlg('Existe inconsistencia no borderô, click em salvar para atualizá-lo.',mtInformation,[mbOK],0 );
    Abort;
  end;

  if not(Assigned(TFrmSimulacaoEmprestimo(FrmSimulacaoEmprestimo))) then
    TFrmSimulacaoEmprestimo(FrmSimulacaoEmprestimo) := TFrmSimulacaoEmprestimo.Create(nil);

  FrmSimulacaoEmprestimo.Proposta.Text := Bordero.Text;
  FrmSimulacaoEmprestimo.Proposta.SetFocus;

end;

function TFrmCadEmprestimoSimulacao.StringPendenciaCadastral: String;
begin
  result := 'SELECT ITP_OBS_CONSULTA '
          +' FROM proposta_comite pro with (nolock) '
          +' join Itens_Proposta ITE with (nolock) '
          +'  on ITP_PRO_CODIGO = pro.PRO_CODIGO and ITP_ITE_CODIGO = 44 '
          +' where  pro.PRO_CODIGO '
          +' in ( select max(PRO_CODIGO) from proposta_comite X with (nolock)  where  '
                                              +' convert(float,isnull(x.PRO_CLICGC,''0'') '
                                              +' + isnull(x.PRO_CLICGCDV,'''')  '
                                              +'    ) = '+ADOClienteclicgc.AsString
                                              +ADOClienteclicgcDV.AsString
                                              +' ) '
          +' and ITP_OBS_CONSULTA is not null '

end;


function TFrmCadEmprestimoSimulacao.TemPendenciaCadastral : Boolean;
begin
  Result := False;
  if (ADOProposta.Active) then
    if ( (not ADOPendenciaCadastralITP_OBS_CONSULTA.IsNull )
          and (Trim(ADOPendenciaCadastralITP_OBS_CONSULTA.AsString) <> '')
          and (pos('NIHIL',Trim(ADOPendenciaCadastralITP_OBS_CONSULTA.AsString)) = 0)  ) then
    begin
      VisualizaMensagem(ADOPendenciaCadastralITP_OBS_CONSULTA.AsString,'PENDÊNCIA CADASTRAL');
      Result := True;
    end;
end;

procedure TFrmCadEmprestimoSimulacao.ADOClienteAfterClose(DataSet: TDataSet);
begin
  inherited;
  ADOPendenciaCadastral.Close;
end;


procedure TFrmCadEmprestimoSimulacao.ADOClienteAfterOpen(DataSet: TDataSet);
begin
  inherited;
  try
    if (ADOCliente.RecordCount > 0) then
    begin
      FrmPrincipal.Mensagem('Abrindo pendencia cadastral...');
      ADOPendenciaCadastral.Close;
      ADOPendenciaCadastral.CommandText := StringPendenciaCadastral;
      ADOPendenciaCadastral.Open;
      FrmPrincipal.Mensagem;
    end;
  except
    on E: Exception do
      MessageDlg(' Mensagem do comitê: '+E.Message, mtError, [mbOK], 0);
    else
      MessageDlg('Foi encontrado um parametro inesperado.', mtInformation, [mbOK],0);
  end;
end;

procedure TFrmCadEmprestimoSimulacao.HabilitaCampo;
begin
  DBEditFatorMes.Color := clWindow;
  DBEditFatorCorrecao.Color := clWindow;
  If (ADOProdutoMOEDA.AsString = 'CDI') then
  begin
    If (ADOProdutoTipoFinanciamento.AsString = 'POS') then
      DBEditFatorMes.Color := clSilver
    else
      DBEditFatorCorrecao.Color := clSilver;
  end else
  If (ADOProdutoMOEDA.AsString = 'IGPM') then
  begin
    DBEditFatorMes.Color := clWindow;
    DBEditFatorCorrecao.Color := clSilver;
  end;

  DBEditFatorCorrecao.Enabled := ((ADOProdutoTipoFinanciamento.AsString = 'POS') and (ADOProdutoMOEDA.AsString <> 'IGPM'));
  DBEditFatorMes.Enabled := ((ADOProdutoTipoFinanciamento.AsString = 'PRE') or (ADOProdutoMOEDA.AsString = 'IGPM'));
end;

procedure TFrmCadEmprestimoSimulacao.BitBtnAlterarClick(Sender: TObject);
begin
  inherited;

  if  DBRdGrpCongelarParcelas.ItemIndex = 0 then
  begin
     Botoes(False, True, True, True, False, False, True, False );
  end else
  Botoes(False, True, True, True, False, False, True, True );

  if (ADOProposta.Active) then
    ADOproposta.Edit;
    ScrollBoxGarantias.Enabled := True;

  if (ADOParcela.Active) then
    ADOParcela.Edit;

  if ((DBEditTaxaAberturaCredito.Text = '') and ( Carteira.Text = 'IF'))  then
    ADOPropostaTaxaAberturaCredito.AsFloat   := ADOCarteiraTaxaAberturaCredito.AsFloat;
  BitBtnPegaRenegociacao.Enabled  := True;
end;


Function TFrmCadEmprestimoSimulacao.VerificarSacado : String ;
begin
  Result := '';
  if (ADOClienteclicgc.AsString+ADOClienteclicgcfili.AsString+ADOClienteclicgcdv.AsString <> '') then
  begin
    CodigoSacado := ProcuraNome( 'select top 1 convert(varchar,clicod) from factbcli with (nolock) where convert( Numeric(15,0), clicgc+isnull(clicgcfili,'''')+isnull(clicgcdv,'''') ) = '
                        +ADOClienteclicgc.AsString + ADOClienteclicgcfili.AsString + ADOClienteclicgcdv.AsString +' and clitip = ''S'' ');
    Result := CodigoSacado;
  end;

end;

procedure TFrmCadEmprestimoSimulacao.ADOPropostaAfterPost( DataSet: TDataSet);
begin
  inherited;
  Bordero.Text := ADOPropostaPROPROP.AsString;
end;

procedure TFrmCadEmprestimoSimulacao.ADOPropostaAfterOpen(DataSet: TDataSet);
begin
  inherited;
  AbreParcelas;
end;

procedure TFrmCadEmprestimoSimulacao.AbreParcelas;
begin
  ADOParcela.Close;
  ADOParcela.Parameters[0].Value := Bordero.Text;
  ADOParcela.Parameters[1].Value := Carteira.Text;
  ADOParcela.Open;
  CodigoSacado:= ADOParcelaCodigoSacado.AsString;
end;

procedure TFrmCadEmprestimoSimulacao.GeraParcelaMista;
begin

  if not (ADOParcela.Active) then
    AbreParcelas;

  Prazo := 0;
  TotalItens := 0;
  VcalculoIOF := 0;
  VcalculoIOFComplementar := 0;

  if not (ADOProposta.State in [DsInsert, DsEdit]) then
    BitBtnAlterarClick(Self);

  ADOPropostaProValorFinanciado.AsFloat := ADOPropostaProValorReferencia.AsFloat;

  CalculaTacs;

  ADOPropostaProValorFinanciado.AsFloat := ADOPropostaProValorReferencia.AsFloat;
  if ( ADOPropostaProTipoPagtoTac.AsString = 'F') then
    ADOPropostaProValorFinanciado.AsFloat := ADOPropostaProValorFinanciado.AsFloat + ADOPropostaProValorTacs.AsFloat;

  AjustaValorFinanciado;

  CriaArray(ADOPropostaPROITEM.AsInteger + ADOPropostaProParcelasCarencia.AsInteger );

  If ADOProdutoMOEDA.AsString = 'IGPM' then
    MontaArrayIGPM('GeraParcelaIGPM')
  else MontaArray('GeraParcelaMista');

  Atribui_IOF;

  If (ADOPropostaPROITEM.AsInteger > 0) then
  begin
    VcalculoIOF := 0;
    VcalculoJuros := 0;
    VcalculoAmortizacao := 0;
    VcalculoIOFComplementar := 0;

    If ADOProdutoMOEDA.AsString = 'IGPM' then
    begin
      Calculos := CalculaContratoMistoIGPM(  ADOPropostaProTipoPagtoIOF.AsString,
                                             ADOPropostaPROITEM.AsInteger + ADOPropostaProParcelasCarencia.AsInteger,
                                             ADOPropostaPROTXME.AsFloat,
                                             ADOPropostaPROTXIO.AsFloat,
                                             ADOPropostaProValorFinanciado.AsFloat,
                                             Calculos,
                                             ADOPropostaPRODTOP.AsDateTime,
                                             ADOPropostaPROTXIOFC.AsFloat );


      CriaParcelasIGPM;
    end
    else
    begin
     ADOaux.close;
     ADOaux.SQL.Text:= ' select TipoCalculo from kg_produto where codigoproduto='+''''+ADOPropostaPRODOCUMEN.AsString+''''+'';
     ADOaux.open;
     if ADOaux.Fields[0].AsString<>'2' then
     begin
      Calculos := CalculaContratoMisto2(  ADOPropostaProTipoPagtoIOF.AsString,
                                          ADOPropostaPROITEM.AsInteger + ADOPropostaProParcelasCarencia.AsInteger,
                                          ADOPropostaPROTXME.AsFloat,
                                          ADOPropostaPROTXIO.AsFloat,
                                          ADOPropostaProValorFinanciado.AsFloat,
                                          Calculos,
                                          ADOPropostaPRODTOP.AsDateTime,
                                          ADOPropostaPROTXIOFC.AsFloat,ADOPropostaPRODOCUMEN.AsString);

      CriaParcelas;
     end
    else
     begin

       Calculos := CalculaContratoMisto2(  ADOPropostaProTipoPagtoIOF.AsString,
                                          ADOPropostaPROITEM.AsInteger + ADOPropostaProParcelasCarencia.AsInteger,
                                          ADOPropostaPROTXME.AsFloat,
                                          ADOPropostaPROTXIO.AsFloat,
                                          ADOPropostaProValorFinanciado.AsFloat,
                                          Calculos,
                                          ADOPropostaPRODTOP.AsDateTime,
                                          ADOPropostaPROTXIOFC.AsFloat,ADOPropostaPRODOCUMEN.AsString );

      CriaParcelas;
     end;
    end;

  end;

  Atualizar;

  corrigeultimaparcela;

  if (ADOPropostaPRODOCUMEN.AsInteger <> 78) and (ADOPropostaPRODOCUMEN.AsInteger <> 152) then
  TaxaInternaRetorno;


  ADOProposta.Post;
   if ((ADOPropostaPRODOCUMEN.AsInteger = 18) or (ADOPropostaPRODOCUMEN.AsInteger = 78) or (ADOPropostaPRODOCUMEN.AsInteger = 152) or (ADOPropostaPRODOCUMEN.AsInteger = 42) or(ADOPropostaPRODOCUMEN.AsInteger = 71) or(ADOPropostaPRODOCUMEN.AsInteger = 72)  or (ADOPropostaPRODOCUMEN.AsInteger = 17)  or (ADOPropostaPRODOCUMEN.AsInteger = 79) or (ADOPropostaPRODOCUMEN.AsInteger = 155) or (ADOPropostaPRODOCUMEN.AsInteger = 32) or (ADOPropostaPRODOCUMEN.AsInteger = 77) ) then
   begin
      CustoEfetivoTotalcapitaldegiro;
   end;

end;

procedure TFrmCadEmprestimoSimulacao.GeraWord222(tipoPessoa: Integer; numeroVia: Integer);
var
  MSWord: Variant;
  pCaminhoArqModelo: string;
  i, i2, cnt_a, cnt_b:Integer;

const
  tb = '#T';
begin
  try
    Screen.Cursor := crHourGlass;
    pCaminhoArqModelo := procuradiretorio(Self.Name, tipoPessoa);
    if (via = 2) then
    begin
      pCaminhoArqModelo := StringReplace(pCaminhoArqModelo, 'CCB_J.docx', 'CCB_J2.docx', [rfReplaceAll, rfIgnoreCase]);
      pCaminhoArqModelo := StringReplace(pCaminhoArqModelo, 'CCB_F.docx', 'CCB_F2.docx', [rfReplaceAll, rfIgnoreCase]);
    end;

    MsWord := CreateOleObject('Word.Basic');
    MSWord.FileNew(pCaminhoArqModelo);
    MsWord.EditReplace(Find := '#num_celula', Replace :=  ADOPropostaContratoReservado.AsString, ReplaceAll:=1);
    MsWord.EditReplace(Find := '#001', Replace := ADO.FieldByName('CLINOM').AsString, ReplaceAll:=1);
    MsWord.EditReplace(Find := '#002', Replace := FormataCPFCNPJ(ADO.FieldByName('CNPJ').AsString), ReplaceAll:=1);
    MsWord.EditReplace(Find := '#003', Replace := ADO.FieldByName('cliend').AsString, ReplaceAll:=1);
    MsWord.EditReplace(Find := '#004', Replace := '', ReplaceAll:=1);
    MsWord.EditReplace(Find := '#005', Replace := '', ReplaceAll:=1);
    MsWord.EditReplace(Find := '#006', Replace := ADO.FieldByName('clibai').AsString, ReplaceAll:=1);
    MsWord.EditReplace(Find := '#007', Replace := ADO.FieldByName('clicid').AsString, ReplaceAll:=1);
    MsWord.EditReplace(Find := '#008', Replace := ADO.FieldByName('cliest').AsString, ReplaceAll:=1);
    if (length(trim(ADO.FieldByName('clicep').AsString)) > 0) then
    MsWord.EditReplace(Find := '#009', Replace := FormatFloat('00000-000',StrToInt64Def(ADO.FieldByName('clicep').AsString, 0)), ReplaceAll:=1)
    else
      MsWord.EditReplace(Find := '#009', Replace := '', ReplaceAll:=1);
    if (length(trim(ADO.FieldByName('clitel').AsString)) > 0) then
    MsWord.EditReplace(Find := '#010', Replace := FormatFloat('(00)-0000-0000',StrToInt64Def(StringReplace(ADO.FieldByName('clitel').AsString, ' ' , ''	, [rfReplaceAll]), 0)), ReplaceAll:=1)
    else
     MsWord.EditReplace(Find := '#010', Replace := '', ReplaceAll:=1);
    with QRCedulaCreditoBancarioPJ222 do
    begin
      MsWord.EditReplace(Find := '#011', Replace := ADOPrimeiroAvalistaNome.AsString, ReplaceAll:=1);
      MsWord.EditReplace(Find := '#012', Replace := FormataCPFCNPJ(ADOPrimeiroAvalistaInscricaoAvalista.AsString), ReplaceAll:=1);
      MsWord.EditReplace(Find := '#013', Replace := ADOPrimeiroAvalistaEndereco.AsString +' '+ADOPrimeiroAvalistaEnderecoNumero.AsString +' '+ ADOPrimeiroAvalistaEnderecoComplemento.AsString, ReplaceAll:=1);
      MsWord.EditReplace(Find := '#014', Replace := ADOPrimeiroAvalistaBairro.AsString, ReplaceAll:=1);
      MsWord.EditReplace(Find := '#015', Replace := ADOPrimeiroAvalistaEstado.AsString, ReplaceAll:=1);
      if (length(trim(ADOPrimeiroAvalistaCep.AsString)) > 0) then
        MsWord.EditReplace(Find := '#016', Replace := FormatFloat('00000-000',StrToInt64Def(ADOPrimeiroAvalistaCep.AsString, 0)), ReplaceAll:=1)
      else
        MsWord.EditReplace(Find := '#016', Replace := '', ReplaceAll:=1);
      MsWord.EditReplace(Find := '#017', Replace := ADOPrimeiroAvalistaIdentidade.AsString, ReplaceAll:=1);
      MsWord.EditReplace(Find := '#018', Replace := ADOPrimeiroAvalistaCidade.AsString, ReplaceAll:=1);
      MsWord.EditReplace(Find := '#019', Replace := ADOPrimeiroAvalistaNacionalidade.AsString, ReplaceAll:=1);
      MsWord.EditReplace(Find := '#020', Replace := ADOPrimeiroAvalistaNaturalidade.AsString, ReplaceAll:=1);
      MsWord.EditReplace(Find := '#021', Replace := ADOPrimeiroAvalistaEstadoCivil.AsString, ReplaceAll:=1);
      MsWord.EditReplace(Find := '#022', Replace := ADOPrimeiroAvalistaProfissao.AsString, ReplaceAll:=1);

      MsWord.EditReplace(Find := '#023', Replace := ADOSegundoAvalistaNome.AsString, ReplaceAll:=1);
      MsWord.EditReplace(Find := '#024', Replace := FormataCPFCNPJ(ADOSegundoAvalistaInscricaoAvalista.AsString), ReplaceAll:=1);
      MsWord.EditReplace(Find := '#025', Replace := ADOSegundoAvalistaEndereco.AsString +' '+ADOSegundoAvalistaEnderecoNumero.AsString +' '+ ADOSegundoAvalistaEnderecoComplemento.AsString, ReplaceAll:=1);
      MsWord.EditReplace(Find := '#026', Replace := ADOSegundoAvalistaBairro.AsString, ReplaceAll:=1);
      MsWord.EditReplace(Find := '#027', Replace := ADOSegundoAvalistaEstado.AsString, ReplaceAll:=1);
      if (length(trim(ADOSegundoAvalistaCep.AsString)) > 0) then
        MsWord.EditReplace(Find := '#028', Replace := FormatFloat('00000-000',StrToInt64Def(ADOSegundoAvalistaCep.AsString, 0)), ReplaceAll:=1)
      else
        MsWord.EditReplace(Find := '#028', Replace := '', ReplaceAll:=1);
      MsWord.EditReplace(Find := '#029', Replace := ADOSegundoAvalistaIdentidade.AsString, ReplaceAll:=1);
      MsWord.EditReplace(Find := '#030', Replace := ADOSegundoAvalistaCidade.AsString, ReplaceAll:=1);
      MsWord.EditReplace(Find := '#031', Replace := ADOSegundoAvalistaNacionalidade.AsString, ReplaceAll:=1);
      MsWord.EditReplace(Find := '#032', Replace := ADOSegundoAvalistaNaturalidade.AsString, ReplaceAll:=1);
      MsWord.EditReplace(Find := '#033', Replace := ADOSegundoAvalistaEstadoCivil.AsString, ReplaceAll:=1);
      MsWord.EditReplace(Find := '#034', Replace := ADOSegundoAvalistaProfissao.AsString, ReplaceAll:=1);

      MsWord.EditReplace(Find := '#035', Replace := ADOTerceiroAvalistaNome.AsString, ReplaceAll:=1);
      MsWord.EditReplace(Find := '#036', Replace := FormataCPFCNPJ(ADOTerceiroAvalistaInscricaoAvalista.AsString), ReplaceAll:=1);
      MsWord.EditReplace(Find := '#037', Replace := ADOTerceiroAvalistaEndereco.AsString +' '+ADOTerceiroAvalistaEnderecoNumero.AsString +' '+ ADOTerceiroAvalistaEnderecoComplemento.AsString, ReplaceAll:=1);
      MsWord.EditReplace(Find := '#038', Replace := ADOTerceiroAvalistaBairro.AsString, ReplaceAll:=1);
      MsWord.EditReplace(Find := '#039', Replace := ADOTerceiroAvalistaEstado.AsString, ReplaceAll:=1);
      if (length(trim(ADOTerceiroAvalistaCep.AsString)) > 0) then
        MsWord.EditReplace(Find := '#040', Replace := FormatFloat('00000-000',StrToInt64Def(ADOTerceiroAvalistaCep.AsString, 0)), ReplaceAll:=1)
      else
        MsWord.EditReplace(Find := '#040', Replace := '', ReplaceAll:=1);
      MsWord.EditReplace(Find := '#041', Replace := ADOTerceiroAvalistaIdentidade.AsString, ReplaceAll:=1);
      MsWord.EditReplace(Find := '#042', Replace := ADOTerceiroAvalistaCidade.AsString, ReplaceAll:=1);
      MsWord.EditReplace(Find := '#043', Replace := ADOTerceiroAvalistaNacionalidade.AsString, ReplaceAll:=1);
      MsWord.EditReplace(Find := '#044', Replace := ADOTerceiroAvalistaNaturalidade.AsString, ReplaceAll:=1);
      MsWord.EditReplace(Find := '#045', Replace := ADOTerceiroAvalistaEstadoCivil.AsString, ReplaceAll:=1);
      MsWord.EditReplace(Find := '#046', Replace := ADOTerceiroAvalistaProfissao.AsString, ReplaceAll:=1);

      MsWord.EditReplace(Find := '#047', Replace := ADOQuartoAvalistaNome.AsString, ReplaceAll:=1);
      MsWord.EditReplace(Find := '#048', Replace := FormataCPFCNPJ(ADOQuartoAvalistaInscricaoAvalista.AsString), ReplaceAll:=1);
      MsWord.EditReplace(Find := '#049', Replace := ADOQuartoAvalistaEndereco.AsString +' '+ADOQuartoAvalistaEnderecoNumero.AsString +' '+ ADOQuartoAvalistaEnderecoComplemento.AsString, ReplaceAll:=1);
      MsWord.EditReplace(Find := '#050', Replace := ADOQuartoAvalistaBairro.AsString, ReplaceAll:=1);
      MsWord.EditReplace(Find := '#051', Replace := ADOQuartoAvalistaEstado.AsString, ReplaceAll:=1);
      if (length(trim(ADOQuartoAvalistaCep.AsString)) > 0) then
        MsWord.EditReplace(Find := '#052', Replace := FormatFloat('00000-000',StrToInt64Def(ADOQuartoAvalistaCep.AsString, 0)), ReplaceAll:=1)
      else
        MsWord.EditReplace(Find := '#052', Replace := '', ReplaceAll:=1);
      MsWord.EditReplace(Find := '#053', Replace := ADOQuartoAvalistaIdentidade.AsString, ReplaceAll:=1);
      MsWord.EditReplace(Find := '#054', Replace := ADOQuartoAvalistaCidade.AsString, ReplaceAll:=1);
      MsWord.EditReplace(Find := '#055', Replace := ADOQuartoAvalistaNacionalidade.AsString, ReplaceAll:=1);
      MsWord.EditReplace(Find := '#056', Replace := ADOQuartoAvalistaNaturalidade.AsString, ReplaceAll:=1);
      MsWord.EditReplace(Find := '#105', Replace := ADOQuartoAvalistaEstadoCivil.AsString, ReplaceAll:=1);
      MsWord.EditReplace(Find := '#106', Replace := ADOQuartoAvalistaProfissao.AsString, ReplaceAll:=1);

      MsWord.EditReplace(Find := '#107', Replace := QRLblValor.Caption+ QRLblValorExtenso.Caption, ReplaceAll:=1);
      MsWord.EditReplace(Find := '#108', Replace := QRLblDataContrato.Caption, ReplaceAll:=1);
      MsWord.EditReplace(Find := '#057', Replace := QRLblDataVenc.Caption, ReplaceAll:=1);
      MsWord.EditReplace(Find := '#058', Replace := QRLblComissao.Caption , ReplaceAll:=1);

      if QRDBTxtTaxaMes.Caption <> 'QRDBTxtTaxaMes' then
        MsWord.EditReplace(Find := '#059', Replace := QRDBTxtTaxaMes.Caption, ReplaceAll:=1)
      else
        MsWord.EditReplace(Find := '#059', Replace := '', ReplaceAll:=1);
      if QRDBTxtAno.Caption <> 'QRLblPre' then
        MsWord.EditReplace(Find := '#060', Replace := QRDBTxtAno.Caption, ReplaceAll:=1)
      else
        MsWord.EditReplace(Find := '#060', Replace := '', ReplaceAll:=1);
      if QRDBTxtPosMes.Caption <> 'QRDBTxtTaxaMes' then
        MsWord.EditReplace(Find := '#061', Replace := QRDBTxtPosMes.Caption, ReplaceAll:=1)
      else
        MsWord.EditReplace(Find := '#061', Replace := '', ReplaceAll:=1);
      if QRDBTxtPosAno.Caption <> 'QRLblPre' then
        MsWord.EditReplace(Find := '#062', Replace := QRDBTxtPosAno.Caption, ReplaceAll:=1)
      else
        MsWord.EditReplace(Find := '#062', Replace := '', ReplaceAll:=1);

      MsWord.EditReplace(Find := '#063', Replace := 'X', ReplaceAll:=1);
      MsWord.EditReplace(Find := '#064', Replace := '_', ReplaceAll:=1);
      MsWord.EditReplace(Find := '#065', Replace := StringReplace(QRLbliof.Caption,'% % ','%',[rfReplaceAll]) , ReplaceAll:=1);
      MsWord.EditReplace(Find := '#067', Replace := FormatFloat(' #,##0.00;- #,##0.00',AdoPropostaProvrio.AsFloat), ReplaceAll:=1);
      MsWord.EditReplace(Find := '#068', Replace := QRLblPracaPag.Caption, ReplaceAll:=1);
      MsWord.EditReplace(Find := '#069', Replace := FormatFloat(' #,##0.00;- #,##0.00',ADOPropostaProMora.AsFloat), ReplaceAll:=1);
      if QRLblCET.Caption <> 'QRLblCET' then
        MsWord.EditReplace(Find := '#070', Replace := ADOPropostaCustoEfetivoTotal.AsString, ReplaceAll:=1)
      else
        MsWord.EditReplace(Find := '#070', Replace := '', ReplaceAll:=1);
      MsWord.EditReplace(Find := '#071', Replace := Copy(Trim(MemoFormaPagamento.Lines.Text),0  ,254), ReplaceAll:=1);
      MsWord.EditReplace(Find := '#110', Replace := Copy(Trim(MemoFormaPagamento.Lines.Text),255,509), ReplaceAll:=1);
      MsWord.EditReplace(Find := '#111', Replace := Copy(Trim(MemoFormaPagamento.Lines.Text),510,764), ReplaceAll:=1);

      MsWord.EditReplace(Find := '#072', Replace := QRLblA.Caption, ReplaceAll:=1);
      MsWord.EditReplace(Find := '#073', Replace := QRLblF.Caption, ReplaceAll:=1);
      MsWord.EditReplace(Find := '#074', Replace := QRLblI.Caption, ReplaceAll:=1);
      MsWord.EditReplace(Find := '#075', Replace := QRLblG.Caption, ReplaceAll:=1);
      MsWord.EditReplace(Find := '#076', Replace := QRLblL.Caption, ReplaceAll:=1);
      MsWord.EditReplace(Find := '#077', Replace := QRLblB.Caption, ReplaceAll:=1);
      MsWord.EditReplace(Find := '#078', Replace := QRLblH.Caption, ReplaceAll:=1);
      MsWord.EditReplace(Find := '#079', Replace := QRLblC.Caption, ReplaceAll:=1);
      MsWord.EditReplace(Find := '#080', Replace := QRLblD.Caption, ReplaceAll:=1);
      MsWord.EditReplace(Find := '#081', Replace := QRLblE.Caption, ReplaceAll:=1);
      MsWord.EditReplace(Find := '#082', Replace := QRLblJ.Caption, ReplaceAll:=1);

      MsWord.EditReplace(Find := '#083', Replace := '3'      , ReplaceAll:=1);
      MsWord.EditReplace(Find := '#084', Replace := '(TRÊS)' , ReplaceAll:=1);

      MsWord.EditReplace(Find := '#085', Replace := QRLblDia      .Caption, ReplaceAll:=1);
      MsWord.EditReplace(Find := '#086', Replace := QRLblMes      .Caption, ReplaceAll:=1);
      MsWord.EditReplace(Find := '#087', Replace := QRLblAno      .Caption, ReplaceAll:=1);
      MsWord.EditReplace(Find := '#088', Replace := QRLblRemetente.Caption, ReplaceAll:=1);

      MsWord.EditReplace(Find := '#089', Replace := ADOPrimeiroAvalistaNome .AsString, ReplaceAll:=1);
      MsWord.EditReplace(Find := '#090', Replace := ADOSegundoAvalistaNome  .AsString, ReplaceAll:=1);
      MsWord.EditReplace(Find := '#091', Replace := ADOTerceiroAvalistaNome .AsString, ReplaceAll:=1);
      MsWord.EditReplace(Find := '#092', Replace := ADOQuartoAvalistaNome   .AsString, ReplaceAll:=1);

      MsWord.EditReplace(Find := '#093', Replace := ADOPrimeiroConjugeNome.AsString , ReplaceAll:=1);
      MsWord.EditReplace(Find := '#094', Replace := FormataCPFCNPJ(ADOPrimeiroConjugeCpfConjuge.AsString), ReplaceAll:=1);
      MsWord.EditReplace(Find := '#095', Replace := ADOPrimeiroAvalistaEstadoCivil.AsString, ReplaceAll:=1);

      MsWord.EditReplace(Find := '#096', Replace := ADOSegundoConjugeNome.AsString , ReplaceAll:=1);
      MsWord.EditReplace(Find := '#097', Replace := FormataCPFCNPJ(ADOSegundoConjugeCpfConjuge.AsString), ReplaceAll:=1);
      MsWord.EditReplace(Find := '#098', Replace := ADOSegundoAvalistaEstadoCivil.AsString, ReplaceAll:=1);

      MsWord.EditReplace(Find := '#099', Replace := ADOTerceiroConjugeNome.AsString, ReplaceAll:=1);
      MsWord.EditReplace(Find := '#100', Replace := FormataCPFCNPJ(ADOTerceiroConjugeCpfConjuge.AsString), ReplaceAll:=1);
      MsWord.EditReplace(Find := '#101', Replace := ADOTerceiroAvalistaEstadoCivil.AsString, ReplaceAll:=1);


      MsWord.EditReplace(Find := '#102', Replace := ADOQuartoConjugeNome.AsString, ReplaceAll:=1);
      MsWord.EditReplace(Find := '#103', Replace := FormataCPFCNPJ(ADOQuartoConjugeCpfConjuge.AsString), ReplaceAll:=1);
      MsWord.EditReplace(Find := '#104', Replace := ADOQuartoAvalistaEstadoCivil.AsString, ReplaceAll:=1);
      MsWord.EditReplace(Find := '#vlr_financiado', Replace := (FormatFloat(' #,##0.00;- #,##0.00',ADOPropostaProValorFinanciado.AsFloat)+ ' ('+ NumeroParaExtenso(ADOPropostaProValorFinanciado.AsFloat)) +')' , ReplaceAll:=1);
      MsWord.EditReplace(Find := '#vlr_principal' , Replace := (FormatFloat(' #,##0.00;- #,##0.00',ADOPropostaPROVRBO.AsFloat)+ ' ('+NumeroParaExtenso(ADOPropostaPROVRBO.AsFloat))+')', ReplaceAll:=1);
      ADOContratoCedula.First;
      cnt_a := 1;
      cnt_b := 3 * ADOContratoCedula.RecordCount;
      i2    := 1;
      for i := 1 to 29 do
      begin
        MsWord.EditReplace(Find := tb +FormatFloat('000',StrToInt64Def(IntToStr(i2),0 ) ), Replace := ifThen(((cnt_a <= cnt_b) and (ADOContratoCedula.FieldByName('Parcela1').AsString <> '0')), ADOContratoCedula.FieldByName('Parcela1').AsString, ''), ReplaceAll:=1);
        Inc(i2);
        MsWord.EditReplace(Find := tb +FormatFloat('000',StrToInt64Def(IntToStr(i2),0 ) ), Replace := ifThen(((cnt_a <= cnt_b) and (ADOContratoCedula.FieldByName('Parcela1').AsString <> '0')), FormatFloat('###,###,##0.00', ADOContratoCedula.FieldByName('Valor1').AsFloat), ''), ReplaceAll:=1);
        Inc(i2);
        MsWord.EditReplace(Find := tb +FormatFloat('000',StrToInt64Def(IntToStr(i2),0 ) ), Replace := ifThen(((cnt_a <= cnt_b) and (ADOContratoCedula.FieldByName('Parcela1').AsString <> '0')), ADOContratoCedula.FieldByName('venc1').AsString, ''), ReplaceAll:=1);
        Inc(i2);
        Inc(cnt_a);
        MsWord.EditReplace(Find := tb +FormatFloat('000',StrToInt64Def(IntToStr(i2),0 ) ), Replace := ifThen(((cnt_a <= cnt_b) and (ADOContratoCedula.FieldByName('Parcela2').AsString <> '0')), ADOContratoCedula.FieldByName('Parcela2').AsString, ''), ReplaceAll:=1);
        Inc(i2);
        MsWord.EditReplace(Find := tb +FormatFloat('000',StrToInt64Def(IntToStr(i2),0 ) ), Replace := ifThen(((cnt_a <= cnt_b) and (ADOContratoCedula.FieldByName('Parcela2').AsString <> '0')), FormatFloat('###,###,##0.00', ADOContratoCedula.FieldByName('Valor2').AsFloat), ''), ReplaceAll:=1);
        Inc(i2);
        MsWord.EditReplace(Find := tb +FormatFloat('000',StrToInt64Def(IntToStr(i2),0 ) ), Replace := ifThen(((cnt_a <= cnt_b) and (ADOContratoCedula.FieldByName('Parcela2').AsString <> '0')), ADOContratoCedula.FieldByName('venc2').AsString, ''), ReplaceAll:=1);
        Inc(i2);
        Inc(cnt_a);
        MsWord.EditReplace(Find := tb +FormatFloat('000',StrToInt64Def(IntToStr(i2),0 ) ), Replace := ifThen(((cnt_a <= cnt_b) and (ADOContratoCedula.FieldByName('Parcela3').AsString <> '0')), ADOContratoCedula.FieldByName('Parcela3').AsString, ''), ReplaceAll:=1);
        Inc(i2);
        MsWord.EditReplace(Find := tb +FormatFloat('000',StrToInt64Def(IntToStr(i2),0 ) ), Replace := ifThen(((cnt_a <= cnt_b) and (ADOContratoCedula.FieldByName('Parcela3').AsString <> '0')), FormatFloat('###,###,##0.00', ADOContratoCedula.FieldByName('Valor3').AsFloat), ''), ReplaceAll:=1);
        Inc(i2);
        MsWord.EditReplace(Find := tb +FormatFloat('000',StrToInt64Def(IntToStr(i2),0 ) ), Replace := ifThen(((cnt_a <= cnt_b) and (ADOContratoCedula.FieldByName('Parcela3').AsString <> '0')), ADOContratoCedula.FieldByName('venc3').AsString, ''), ReplaceAll:=1);
        Inc(i2);
        Inc(cnt_a);
        ADOContratoCedula.Next;
      end;
    end;
    MSWord.AppShow;
    Screen.Cursor := crDefault;

  except
    on E: Exception do
    begin
      MessageDlg('Criação documento em Word!' + chr(10) +
      'Mensagem: Erro: '+E.Message, mtConfirmation, [mbOK], 0);
      Screen.Cursor := crDefault;
    end;
  end;

end;

procedure TFrmCadEmprestimoSimulacao.corrigeultimaparcela;
var valor : Double;
begin
   valor:=0;
   if resto<0 then
   begin
     resto:=resto*-1;
   end;
   if ((ADOPropostaProDOCUMEN.AsINTEGER=79) or (ADOPropostaProDOCUMEN.AsINTEGER=155) ) and (resto<>0) then
    begin
      adoaux.close;
      adoaux.sql.text:='select itevrti from  kg_simulacaoproposta_item where iteprop ='+''''+ADOPropostaProprop.asstring+''''+' and iteorde='+''''+ADOPropostaProitem.asstring+'''';
      adoaux.open;

      valor:=adoaux.fields[0].asfloat-resto;

      adoaux.close;
      adoaux.sql.text :=' update kg_simulacaoproposta_item set itevrti='+''''+StringReplace(FormatFloat('##0.00', valor), ',', '.', [])+''''+' , iteamortizacao='+''''+StringReplace(FormatFloat('##0.00', valor), ',', '.', [])+''''+' where iteprop ='+''''+ADOPropostaProprop.asstring+''''+' and iteorde='+''''+ADOPropostaProitem.asstring+'''';
      adoaux.ExecSQL;
    end;

end;

procedure TFrmCadEmprestimoSimulacao.Atualizar;
var CustoEfetivo : Double;
begin
   resto:=0;
  if not (ADOProposta.State in [DsEdit, DsInsert] )  then
    ADOProposta.Edit;

  ADOPropostaPROVRBO.AsFloat := VValorPrincipal;

  if (VValorPrincipal = 0) then
    ADOPropostaPROVRBO.AsFloat := ( VcalculoPMT * ADOPropostaPROITEM.AsInteger ) + VcalculoCarencia ;

  Taxa := ADOPropostaPROTXME.AsFloat;
  IOF  := ADOPropostaPROTXIO.AsFloat;

  if (ADOPropostaProTipoVencimentoParcela.AsString = 'UNIFORME') and (ADOProdutoMOEDA.AsString = 'CDI') then
    CalculaContrato;

  AjustaTacs;
  TotalizaIOF;

  ADOPropostaProValorPMT.AsFloat      := VcalculoPMT;
  ADOPropostaProValorCarencia.AsFloat := VcalculoCarencia;
  ADOPropostaProAmortizacao.AsFloat   := VcalculoAmortizacao;
  ADOPropostaPROFOME.AsFloat          := VcalculoJuros;
  ADOPropostaPROVRIO.AsFloat          := VcalculoIOF;
  ADOPropostaPROVRIOFC.AsFloat        := VcalculoIOFComplementar;

  AjustaValorFinanciado;

  if ADOPropostaPROLIQU.AsFloat <> ADOPropostaProValorLiberado.AsFloat then
     ADOPropostaPROLIQU.AsFloat := ADOPropostaProValorLiberado.AsFloat;
   if (ADOPropostaPROVRBO.AsFloat <> ADOPropostaProValorFinanciado.AsFloat) AND ((ADOPropostaProDOCUMEN.AsINTEGER=17) or (ADOPropostaProDOCUMEN.AsINTEGER=155) ) then
   begin
    if ((ADOPropostaProDOCUMEN.AsINTEGER=155)) then
     begin
         resto:=ADOPropostaPROVRBO.AsFloat-ADOPropostaProValorFinanciado.AsFloat;
         ADOPropostaPROVRBO.AsFloat:=  ADOPropostaProValorFinanciado.AsFloat;
     end       
     else
      ADOPropostaPROVRBO.AsFloat:=  ADOPropostaProValorFinanciado.AsFloat;
   end;

  ADOPropostaPROPMED.AsFloat :=  ArredondaValor(VCalculoPrazoMedio / ADOPropostaPROVRBO.AsFloat,7);
  ADOPropostaPROPMEF.AsFloat :=  ArredondaValor(VCalculoPrazoMedioEfetivo / ADOPropostaPROVRBO.AsFloat,7);

  if ADOPropostaPROTXME.AsFloat  > 0 then
  begin

      CustoEfetivo := ADOPropostaPROLIQU.AsFloat                +  
                      ADOPropostaPROCCOB.AsFloat                +  
                      ADOPropostaPROVRDC.AsFloat                +  
                      ADOPropostaProtarifadigitacao.AsFloat     +  
                      ADOPropostaPROVRIO.AsFloat                +  
                      ADOPropostaPROVRIOFC.AsFloat              +  
                      ADOPropostaPROTXRE.AsFloat                +  
                      ADOPropostaProTaxaAdministrativa.AsFloat  +  
                      ADOPropostaTaxaAberturaCredito.AsFloat    +  
                      ADOPropostaPROVRTEO.AsFloat    +
                      ADOPropostaPROVRCAC.AsFloat;

     ADOPropostaPROTXEF.AsFloat := StrToFloat(FloatToStrF(((Power((Power((ADOPropostaPROVRBO.AsFloat
                                      / CustoEfetivo ),(1 / ADOPropostaPROPMEF.AsFloat))),30) -1) * 100),ffFixed,20,7));
  end
  else
     ADOPropostaPROTXEF.AsFloat:= ADOPropostaTaxaNominalPosFixada.AsFloat;


  If (ADOPropostaProTaxaSelic.AsFloat > 0) and (ADOProdutoMOEDA.AsString <> 'IGPM') then
  begin
    ADOPropostaProValorFuturo.AsFloat := ADOPropostaProvrbo.AsFloat * power( ( ( ADOPropostaProTaxaSelic.Asfloat ) / 100.000000000 + 1.000000000)
                       , ( ADOPropostaPROPMEF.AsFloat * 1.000000000 ) / 360.000000000) * ( power( ADOPropostaTaxaNominalPosFixada.AsFloat / 100.000000000
                         + 1.000000000, ( ADOPropostaPROPMEF.AsInteger / 30.000000000)) )

  end else
    ADOPropostaProValorFuturo.AsFloat := ADOPropostaPROVRBO.AsFloat;

end;


procedure TFrmCadEmprestimoSimulacao.AtualizarTEO;
begin
  if ((ADOProduto.Active) and (ADOProdutoVLR_TxTeo.Value > 0)) then
  begin
    ADOPropostaPROVRTEO.AsFloat := (ADOPropostaProValorReferencia.AsFloat * ADOProdutoVLR_TxTeo.Value) / 100;
  end;
end;

procedure TFrmCadEmprestimoSimulacao.CriaArray( Itens : integer) ;
begin
    Itens := Itens + 1;
    SetLength( Calculos, 14);
    SetLength( Calculos[0], 0);
    SetLength( Calculos[0], Itens);  
    SetLength( Calculos[1], Itens ); 
    SetLength( Calculos[2], Itens ); 
    SetLength( Calculos[3], Itens ); 
    SetLength( Calculos[4], Itens ); 
    SetLength( Calculos[5], Itens ); 
    SetLength( Calculos[6], Itens ); 
    SetLength( Calculos[7], Itens ); 
    SetLength( Calculos[8], Itens ); 
    SetLength( Calculos[9], 1);      
    SetLength( Calculos[10], Itens );
    SetLength( Calculos[11], Itens );
    SetLength( Calculos[12], Itens );
    SetLength( Calculos[13], Itens );
end;

procedure TFrmCadEmprestimoSimulacao.BitBtnRecalcularClick( Sender: TObject);
begin
  inherited;
 ADOaux.close;
 ADOaux.SQL.Text:= ' select isnull(TipoCalculo,0) from kg_produto where codigoproduto='+''''+ADOPropostaPRODOCUMEN.AsString+''''+'';
 ADOaux.open;
 if ADOaux.fields[0].asinteger<>2 then
 begin
  If (ADOParcela.RecordCount < 1) then
  begin
    Application.MessageBox('Não existe parcela para recalcular.','Atenção', MB_OK+MB_ICONEXCLAMATION+MB_DEFBUTTON1+MB_APPLMODAL);
    Abort;
  end else if ( (ADOPropostaPROITEM.AsInteger + ADOPropostaProParcelasCarencia.AsInteger) <> ADOParcela.RecordCount ) then
  begin
    Application.MessageBox('Houve redimencionamento das parcelas. Use a opção de Gerar Parcelas.', 'Atenção', MB_OK+MB_ICONEXCLAMATION+MB_DEFBUTTON1+MB_APPLMODAL);
    Abort;
  end;
  FrmPrincipal.Mensagem('Aguarde. Recalculando as parcelas....');

    If not (ADOParcela.Active) then
      ADOParcela.Active;

    VcalculoIOF := 0;
    VcalculoIOFComplementar := 0;

    Zera_v;

    if not (ADOProposta.State in [DsInsert, DsEdit]) then
      BitBtnAlterarClick(Self);

    CalculaTacs;

    AjustaValorFinanciado;

    CriaArray( ADOPropostaPROITEM.AsInteger + ADOPropostaProParcelasCarencia.AsInteger );

    If ( DBRdGrpCongelarParcelas.ItemIndex = 0) then
    begin
      If ADOProdutoMOEDA.AsString = 'IGPM' then
        MontaArrayIGPM('Recalculo')
      else MontaArray('Recalculo');
      If ADOProdutoMOEDA.AsString = 'IGPM' then
      begin

        Calculos := CalculaContratoMistoIGPM(  ADOPropostaProTipoPagtoIOF.AsString,
                                               ADOPropostaPROITEM.AsInteger + ADOPropostaProParcelasCarencia.AsInteger,
                                               ADOPropostaPROTXME.AsFloat,
                                               ADOPropostaPROTXIO.AsFloat,
                                               ADOPropostaProValorFinanciado.AsFloat,
                                               Calculos,
                                               ADOPropostaPRODTOP.AsDateTime,
                                               ADOPropostaPROTXIOFC.AsFloat );


        CriaParcelasIGPM;

      end else
      begin
        Calculos := CalculaContratoMisto2(  ADOPropostaProTipoPagtoIOF.AsString,
                                            ADOPropostaPROITEM.AsInteger+ADOPropostaProParcelasCarencia.AsInteger,
                                            ADOPropostaPROTXME.AsFloat,
                                            ADOPropostaPROTXIO.AsFloat,
                                            ADOPropostaProValorFinanciado.AsFloat,
                                            Calculos,
                                            ADOPropostaPRODTOP.AsDateTime,
                                            ADOPropostaPROTXIOFC.AsFloat,ADOPropostaPRODOCUMEN.AsString );
        CriaParcelas;
      end;

    end else If ( DBRdGrpCongelarParcelas.ItemIndex = 1) then
    begin

      MontaArrayCongelado;
      CalculoParcelaCongelada;

    end;

  Atualizar;

  TaxaInternaRetorno;
   if ((ADOPropostaPRODOCUMEN.AsInteger = 18) or (ADOPropostaPRODOCUMEN.AsInteger = 78) or (ADOPropostaPRODOCUMEN.AsInteger = 152) or (ADOPropostaPRODOCUMEN.AsInteger = 42) or (ADOPropostaPRODOCUMEN.AsInteger = 71)or (ADOPropostaPRODOCUMEN.AsInteger = 72)or (ADOPropostaPRODOCUMEN.AsInteger = 17) or (ADOPropostaPRODOCUMEN.AsInteger = 79) or (ADOPropostaPRODOCUMEN.AsInteger = 155) or (ADOPropostaPRODOCUMEN.AsInteger = 32) or (ADOPropostaPRODOCUMEN.AsInteger = 77) ) then
   begin
      CustoEfetivoTotalcapitaldegiro;
   end;
  ADOProposta.Post;
 end;

end;

procedure TFrmCadEmprestimoSimulacao.BitBtnReservaContratoClick(
  Sender: TObject);
var
  boleto:integer;
begin
  inherited;

    if ADOPropostaContratoReservado.AsInteger > 0 then
    begin
        ShowMessage('Contrato já reservado');
        BitBtnReservaContrato.Enabled:= False;
    end
    else
    begin
        if ADOPropostaId_ContratoOperacao.AsInteger <> 0 then
        begin
            If (MessageDlg('Confirma a reserva de contrato para esta operação ?', mtInformation, mbOkCancel, 0) = ID_OK) Then
            begin
                ADOReservaContrato.close;
                ADOReservaContrato.CommandText:='select min(boleto)-1 as reserva from Kg_SequenciaContrato where boleto > 9999999';
                ADOReservaContrato.Open;
                boleto:=ADOReservaContrato.FieldByName('reserva').AsInteger;
                try
                  if not(DMConecta.ADOCapitalDeGiro.InTransaction) then
                     DMConecta.ADOCapitalDeGiro.BeginTrans;
                  DMDados.ADOUtil.CommandText:='insert Kg_SequenciaContrato ( Boleto) values ('+ADOReservaContrato.FieldByName('reserva').AsString+')';
                  DMDados.ADOUtil.Execute;
                  DMDados.ADOUtil.CommandText:='update Kg_SequenciaContrato set DV_CONTRATO = dbo.digitomodulo11( substring(convert(varchar,39 + 1000000),2,6) ' +
                                               '  +substring(convert(varchar, Id_contrato + 10000000000),2,10) )' +
                                               '  where boleto = '+ADOReservaContrato.FieldByName('reserva').AsString;
                  DMDados.ADOUtil.Execute;
                  ADOReservaContrato.close;
                  ADOReservaContrato.CommandText:='select (convert(varchar,id_contrato)+convert(varchar,dv_contrato)) as contrato from Kg_SequenciaContrato where boleto = '+inttostr(boleto);
                  ADOReservaContrato.Open;
                  if not (ADOProposta.State in [dsEdit, dsInsert] ) then
                  begin
                      ADOProposta.Edit;
                      ADOPropostaContratoReservado.AsInteger:= ADOReservaContrato.FieldByName('CONTRATO').AsInteger;
                      ADOProposta.post;
                  end
                  else
                     ADOPropostaContratoReservado.AsInteger:= ADOReservaContrato.FieldByName('CONTRATO').AsInteger;
                  DMConecta.ADOCapitalDeGiro.CommitTrans;
                  ShowMessage('Contrato reservado com sucesso');
                Except
                on E: Exception do
                begin
                    if (DMConecta.ADOCapitalDeGiro.InTransaction) then
                    begin
                        MessageDlg(' Mensagem: Erro ao reservar contrato para a operação. ' +E.Message, mtError, [mbOK], 0);
                        DMConecta.ADOCapitalDeGiro.RollbackTrans;
                    end;
                end;
              end;
          end;
        end
        else
           ShowMessage('Para reservar contrato a simulação tem que existir um ID de garantia ou simulação nao esta no modo de alteração');
    end;
end;

procedure TFrmCadEmprestimoSimulacao.Zera_v;
begin
  Prazo                      := 0;
  TotalItens                 := 0;
  VcalculoIOF                := 0;
  VcalculoIOFComplementar    := 0;
  VcalculoAmortizacao        := 0;
  VcalculoCarencia           := 0;
  VcalculoJuros              := 0;
  VcalculoPMT                := 0;
  VCalculoPrazoMedio         := 0;
  VCalculoPrazoMedioEfetivo  := 0;
  VCalculoValorLiquido       := 0;
end;

Procedure TFrmCadEmprestimoSimulacao.MontaArrayIGPM(TipoAcao : String);
var i, TotalItens : Integer;
    DataAnterior, UltimaDataCarencia : TdateTime;
begin

  TotalItens := 0;

  UltimaDataCarencia := ADOPropostaPRODTOP.AsDateTime;

  If (ADOPropostaProParcelasCarencia.AsInteger > 0) then
  begin
    i := 1;

    DataVencimento  := IncMonth(ADOPropostaPRODTOP.AsDateTime, 1);
    DataAnterior    := ADOPropostaPRODTOP.AsDateTime;

    while not (i > ADOPropostaProParcelasCarencia.AsInteger) do
    begin
      If ADOParcela.RecordCount > 0 then
      begin
        PesquisaParcela(i);
        DataVencimento  :=  ADOParcelaITEDTVE.AsDateTime;
      end;

      VencimentoReal := (DataVencimento + ADOPropostaPROFLOA.AsInteger);

      Prazo := DaysBetween( ADOPropostaPRODTOP.AsDateTime, VencimentoReal);

      Intervalo := DaysBetween( DataAnterior, VencimentoReal);

      Calculos[0, i]      := DataVencimento;
      Calculos[1, i]      := Prazo;
      Calculos[2, i]      := Intervalo;
      Calculos[3, i]      := 0.00;
      Calculos[4, i]      := 0.00;
      Calculos[5, i]      := 0.00;
      Calculos[6, i]      := 0.00;
      Calculos[7, i]      := 0.00;
      Calculos[8, i]      := 0; 
      Calculos[10, i]     := 0;
      Calculos[12, i]     := 0.00;
      Calculos[13, i]     := VencimentoReal;
      DataAnterior        := VencimentoReal;
      UltimaDataCarencia  := DataVencimento;

     DataVencimento := IncMonth(ADOPropostaProDataPrimeiraParcelaOriginal.AsDateTime,i);
     Inc(i);

      Inc(TotalItens);
    end;
  end;
  i := 1;

  If ADOPropostaProParcelasCarencia.AsInteger > 0 then
     DataVencimento := IncMonth(ADOPropostaProDataPrimeiraParcela.AsDateTime,ADOPropostaProParcelasCarencia.AsInteger)
  else
     DataVencimento := ADOPropostaProDataPrimeiraParcela.AsDateTime;

  DataAnterior := UltimaDataCarencia;

  while (i <= ADOPropostaPROITEM.AsInteger) do
  begin
    Inc(TotalItens);

    If ADOParcela.RecordCount > 0 then
    begin
      PesquisaParcela(TotalItens);
      DataVencimento :=  ADOParcelaITEDTVE.AsDateTime;
    end;

    VencimentoReal  := (DataVencimento + ADOPropostaPROFLOA.AsInteger);

    Prazo           := DaysBetween( ADOPropostaPRODTOP.AsDateTime,  VencimentoReal);

    PrazoIOF        := Min( DaysBetween( ADOPropostaPRODTOP.AsDateTime,  d_maisbancario(DataVencimento,0,'FERIADO BANCÁRIO')), 365);

    Intervalo       := DaysBetween ( DataAnterior, VencimentoReal);

    Calculos[0, TotalItens]   := DataVencimento;
    Calculos[1, TotalItens]   := Prazo;
    Calculos[2, TotalItens]   := Intervalo;
    Calculos[3, TotalItens]   := 0.00;
    Calculos[4, TotalItens]   := 0.00;
    Calculos[5, TotalItens]   := 0.00;
    Calculos[6, TotalItens]   := 0.00;
    Calculos[7, TotalItens]   := 0.00;
    Calculos[8, TotalItens]   := 1;
    Calculos[10, TotalItens]  := PrazoIOF;
    Calculos[12, TotalItens]  := 0.00;
    Calculos[13, TotalItens]  := VencimentoReal;
    DataAnterior              := VencimentoReal;

    DataVencimento := IncMonth(ADOPropostaProDataPrimeiraParcelaOriginal.AsDateTime,i);
    Inc(i);

  end;

end;

Procedure TFrmCadEmprestimoSimulacao.MontaArray(TipoAcao : String);
var I, TotalItens,prazoanterior : Integer;
    DataAnterior, VencimentoAnterior, UltimaDataCarencia : TdateTime;
begin
  TotalItens := 0;
  prazoanterior:=0;
  UltimaDataCarencia := ADOPropostaPRODTOP.AsDateTime;


  if (ADOPropostaProParcelasCarencia.AsInteger > 0) then
  begin
    I := 1;

    DataVencimento  := IncMonth(ADOPropostaPRODTOP.AsDateTime, 1);
    DataAnterior    := ADOPropostaPRODTOP.AsDateTime;

    while not (I > ADOPropostaProParcelasCarencia.AsInteger) do
    begin

        if (TipoAcao = 'Recalculo') then
        begin
          PesquisaParcela(I);
          DataVencimento := ADOParcelaITEDTVE.AsDateTime;
        end;

        VencimentoReal := D_maisRegional(DataVencimento, ADOPropostaPROFLOA.AsInteger, ADOPropostaCodigoRegiao.AsInteger );

       Prazo := DaysBetween( ADOPropostaPRODTOP.AsDateTime, VencimentoReal);

        Intervalo := DaysBetween( DataAnterior, VencimentoReal);


         if (ADOPropostaPRODOCUMEN.AsInteger=78) or (ADOPropostaPRODOCUMEN.AsInteger=152) then
         begin
          VencimentoReal := DataVencimento;
        Prazo := 0;
         Intervalo := 30;
        end;

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
        if (ADOPropostaPRODOCUMEN.AsInteger<>78) and (ADOPropostaPRODOCUMEN.AsInteger<>152) then
        DataVencimento := IncMonth(ADOPropostaProDataPrimeiraParcelaOriginal.AsDateTime,i)
        else
        DataVencimento := strtodatetime(inseridata30(datetimetostr(DataVencimento)));

        prazoanterior:=(30*I);
        inc(i);
        Inc(TotalItens);

      end;
  end;

  I := 1;
  if (ADOPropostaProParcelasCarencia.AsInteger > 0) and (ADOPropostaPRODOCUMEN.AsInteger<>78) and (ADOPropostaPRODOCUMEN.AsInteger<>152) then
     DataVencimento := IncMonth(ADOPropostaProDataPrimeiraParcela.AsDateTime,ADOPropostaProParcelasCarencia.AsInteger)
  else
   begin
     ADOaux.close;
     ADOaux.SQL.Text:= ' select isnull(TipoCalculo,0) from kg_produto where codigoproduto='+''''+ADOPropostaPRODOCUMEN.AsString+''''+'';
     ADOaux.open;

     DataVencimento := ADOPropostaProDataPrimeiraParcela.AsDateTime;
   end;
  DataAnterior := UltimaDataCarencia;
  while (I <= ADOPropostaPROITEM.AsInteger) do
  begin
    inc(TotalItens);

    if (TipoAcao = 'Recalculo') then
    begin
        PesquisaParcela(TotalItens);
        DataVencimento :=  ADOParcelaITEDTVE.AsDateTime;
    end;
   if (ADOaux.fields[0].asinteger<>2) and (ADOPropostaPRODOCUMEN.AsInteger<>78) and (ADOPropostaPRODOCUMEN.AsInteger<>152)then
   begin

    VencimentoReal :=  D_maisRegional(DataVencimento, ADOPropostaPROFLOA.AsInteger, ADOPropostaCodigoRegiao.AsInteger);

    Prazo := DaysBetween( ADOPropostaPRODTOP.AsDateTime,  VencimentoReal);

    PrazoIOF := Min( DaysBetween( ADOPropostaPRODTOP.AsDateTime,  d_maisbancario(DataVencimento,0,'FERIADO BANCÁRIO')), 365);
    Intervalo := DaysBetween ( DataAnterior, VencimentoReal);
   end
   else
   begin
    VencimentoReal := DataVencimento;
     Prazo := prazoanterior+(30*I);
    if (ADOPropostaPRODOCUMEN.AsInteger=78) or (ADOPropostaPRODOCUMEN.AsInteger=152) or (ADOPropostaPRODOCUMEN.AsInteger=42) or (ADOPropostaPRODOCUMEN.AsInteger=79) or (ADOPropostaPRODOCUMEN.AsInteger=155) then         
     PrazoIOF := Min( DaysBetween( ADOPropostaPRODTOP.AsDateTime,  DataVencimento), 365)
     else
    PrazoIOF := Min( DaysBetween( ADOPropostaPRODTOP.AsDateTime,  d_maisbancario(DataVencimento,0,'FERIADO BANCÁRIO')), 365);
    Intervalo := 30;
   end;




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
    VencimentoAnterior := DataVencimento;

     if (ADOaux.fields[0].asinteger=2) then
     begin
      DataVencimento := strtodatetime(inseridata30(datetimetostr(DataVencimento)));
     end
     else
     DataVencimento := IncMonth(ADOPropostaProDataPrimeiraParcelaOriginal.AsDateTime,i);

    Inc(I);

  end;
end;




function  TFrmCadEmprestimoSimulacao.inseridata30 (data: string):string;
  var dia,mes,ano:word;
   datafevereiro: Tdatetime;
begin
  DecodeDate(strtodatetime(Data), ano, mes, dia);
 mes:= mes+1;
 if mes=13 then
 begin
  ano:=ano+1;
  mes:=1;
 end;
 if mes<>2 then
  begin
    if ((mes=3) and(diaanterior>0))then
    begin
     dia:=diaanterior;
     diaanterior:=0;
    end;
     if (dia=31) or(dia=30) then
     dia:=DaysInMonth(EncodeDate(ano,mes,30));
     result:= datetimetostr(EncodeDate(ano,mes,dia));
  end
 else
  begin
   diaanterior:=dia;
   dia:=DaysInMonth(EncodeDate(ano,mes,25));
   if dia<diaanterior then
    result:= datetimetostr(EncodeDate(ano,mes,dia))
   else
    result:= datetimetostr(EncodeDate(ano,mes,diaanterior));
   
  end;


end;

procedure TFrmCadEmprestimoSimulacao.ZeraResto;
begin
  RestoValorDoc             := 0;
  RestoValorcac             := 0;
  RestoCustoCobranca        := 0;
  RestoOutraDespesa         := 0;
  RestoTaxaAdministrativa   := 0;
  RestoTaxaAberturaCredito  := 0;
  RestoVrIOFAproveitamento  := 0;
  Restovalor_ecg:=0;
end;

procedure TFrmCadEmprestimoSimulacao.AtribuiTacs;
begin
  if ( DBRdGrpCongelarParcelas.ItemIndex = 0) then
  begin
    Total := ADOPropostaPROITEM.AsInteger + ADOPropostaProParcelasCarencia.AsInteger;

    ADOParcelaitevalor_ecg.asfloat := StrToFloat( FloatToStrF( ADOPropostavalor_ecg.AsFloat / Total ,ffFixed,15,2)) + Restovalor_ecg;
    ADOParcelaITEVRDC.AsFloat                 :=  StrToFloat( FloatToStrF( ADOPropostaPROVRDC.AsFloat / Total ,ffFixed,15,2)) + RestoValorDoc;
    ADOParcelaITEVRCAC.AsFloat                :=  StrToFloat( FloatToStrF( ADOPropostaPROVRCAC.AsFloat / Total ,ffFixed,15,2)) + RestoValorcac ;
    ADOParcelaITECCOB.AsFloat                 :=  StrToFloat( FloatToStrF( ADOPropostaPROCCOB.AsFloat / Total ,ffFixed,15,2))  + RestoCustoCobranca;
    ADOParcelaITEDESP.AsFloat                 :=  StrToFloat( FloatToStrF( ADOPropostaPRODESP.AsFloat / Total ,ffFixed,15,2))  + RestoOutraDespesa ;
    ADOParcelaIteTaxaAdministrativa.AsFloat   :=  StrToFloat( FloatToStrF( ADOPropostaProTaxaAdministrativa.AsFloat / Total ,ffFixed,15,2))  + RestoTaxaAdministrativa;
    ADOParcelaTaxaAberturaCredito.AsFloat     :=  StrToFloat( FloatToStrF( ADOPropostaTaxaAberturaCredito.AsFloat / Total ,ffFixed,15,2))+ RestoTaxaAberturaCredito;
  end else
  begin
    ADOParcelaitevalor_ecg.asfloat := StrToFloat( FloatToStrF( ADOPropostavalor_ecg.AsFloat / Total ,ffFixed,15,2));
    ADOParcelaITEVRDC.AsFloat                 :=  StrToFloat( FloatToStrF( ADOPropostaPROVRDC.AsFloat  * ADOParcelaItePercentualValorPMT.AsFloat / 100 ,ffFixed,15,2));
    ADOParcelaITEVRCAC.AsFloat                :=  StrToFloat( FloatToStrF( ADOPropostaPROVRCAC.AsFloat * ADOParcelaItePercentualValorPMT.AsFloat / 100 ,ffFixed,15,2)) ;
    ADOParcelaITECCOB.AsFloat                 :=  StrToFloat( FloatToStrF( ADOPropostaPROCCOB.AsFloat * ADOParcelaItePercentualValorPMT.AsFloat / 100 ,ffFixed,15,2));
    ADOParcelaITEDESP.AsFloat                 :=  StrToFloat( FloatToStrF( ADOPropostaPRODESP.AsFloat * ADOParcelaItePercentualValorPMT.AsFloat / 100 ,ffFixed,15,2));
    ADOParcelaIteTaxaAdministrativa.AsFloat   :=  StrToFloat( FloatToStrF( ADOPropostaProTaxaAdministrativa.AsFloat * ADOParcelaItePercentualValorPMT.AsFloat / 100 ,ffFixed,15,2));
    ADOParcelaTaxaAberturaCredito.AsFloat     :=  StrToFloat( FloatToStrF( ADOPropostaTaxaAberturaCredito.AsFloat * ADOParcelaItePercentualValorPMT.AsFloat / 100 ,ffFixed,15,2));

  end;
  AtribuiaproveitamentoIOF;
end;

procedure TFrmCadEmprestimoSimulacao.AjustaTacs;
begin
  Total := ADOPropostaPROITEM.AsInteger + ADOPropostaProParcelasCarencia.AsInteger;
  Restovalor_ecg:= ADOPropostavalor_ecg.AsFloat - ( StrToFloat( FloatToStrF( ADOPropostavalor_ecg.AsFloat / Total ,ffFixed,15,2))  * Total);
  RestoValorDoc            := ADOPropostaPROVRDC.AsFloat - ( StrToFloat( FloatToStrF( ADOPropostaPROVRDC.AsFloat / Total ,ffFixed,15,2))  * Total);
  RestoValorcac            := ADOPropostaPROVRCAC.AsFloat - ( StrToFloat( FloatToStrF( ADOPropostaPROVRCAC.AsFloat / Total ,ffFixed,15,2))  * Total);
  RestoCustoCobranca       := ADOPropostaPROCCOB.AsFloat - ( StrToFloat( FloatToStrF( ADOPropostaPROCCOB.AsFloat / Total ,ffFixed,15,2))  * Total);
  RestoOutraDespesa        := ADOPropostaPRODESP.AsFloat - ( StrToFloat( FloatToStrF( ADOPropostaPRODESP.AsFloat / Total ,ffFixed,15,2))  * Total);
  RestoTaxaAdministrativa  := ADOPropostaProTaxaAdministrativa.AsFloat - ( StrToFloat( FloatToStrF( ADOPropostaProTaxaAdministrativa.AsFloat / Total ,ffFixed,15,2))  * Total);
  RestoTaxaAberturaCredito := ADOPropostaTaxaAberturaCredito.AsFloat   - ( StrToFloat( FloatToStrF( ADOPropostaTaxaAberturaCredito.AsFloat / Total ,ffFixed,15,2))  * Total);  
  RestoVrIOFAproveitamento := ADOPropostaIOFBeneficio.AsFloat   - ( StrToFloat( FloatToStrF( ADOPropostaIOFBeneficio.AsFloat / Total ,ffFixed,15,2))  * Total);
end;

procedure TFrmCadEmprestimoSimulacao.AjustaValorFinanciado;
begin
  ADOPropostaProValorFinanciado.AsFloat := ADOPropostaProValorReferencia.AsFloat;
  ADOPropostaProValorLiberado.AsFloat   := ADOPropostaProValorReferencia.AsFloat;

  if (ADOPropostaProTipoPagtoIOF.AsString = 'F') then
    ADOPropostaProValorFinanciado.AsFloat := ADOPropostaProValorFinanciado.AsFloat + Vcalculoiof + VcalculoIOFComplementar
  else if ( ADOPropostaProTipoPagtoIOF.AsString = 'V') then
      ADOPropostaProValorLiberado.AsFloat := ADOPropostaProValorLiberado.AsFloat - VcalculoIOF - VcalculoIOFComplementar;

  if (ADOPropostaProTipoPagtoTac.AsString = 'F') then
    ADOPropostaProValorFinanciado.AsFloat := ADOPropostaProValorFinanciado.AsFloat + ADOPropostaProValorTacs.AsFloat
  else if ( ADOPropostaProTipoPagtoTac.AsString = 'V') then
    ADOPropostaProValorLiberado.AsFloat := ADOPropostaProValorLiberado.AsFloat - ADOPropostaProValorTacs.AsFloat;

end;

procedure TFrmCadEmprestimoSimulacao.TotalizaIOF;
begin
  VcalculoIOF := 0;
  VcalculoIOFComplementar := 0;
  TotalItens := 1;
  if ( (ADOParcela.Active) and (ADOParcela.RecordCount > 0) ) then
  begin
    ADOParcela.First;
    while ( TotalItens <= ( ADOPropostaPROITEM.AsInteger + ADOPropostaProParcelasCarencia.AsInteger )  ) do
    begin
      begin
      VcalculoIOF   := VcalculoIOF + Calculos[7, TotalItens];
      VcalculoIOFComplementar := VcalculoIOFComplementar + Calculos[12, TotalItens];
      end;
      Inc(TotalItens)
    end;
  end;
end;

procedure TFrmCadEmprestimoSimulacao.CriaParcelasIGPM;
Var
  DataAnterior : TDateTime;
  TotalJuros : Double;
begin
    VcalculoCarencia := 0;
    VCalculoValorLiquido := 0;
    VCalculoPrazoMedioEfetivo   := 0;
    VCalculoPrazoMedio := 0;
    VValorPrincipal := 0;
    TotalJuros := 0;

    if ( (ADOParcela.Active ) and (ADOParcela.State =  DsInactive) ) then
      AbreParcelas;

    AjustaTacs;

    TotalizaIOF;

    AjustaValorFinanciado;

    TotalItens := 1;

    while (TotalItens <= ADOPropostaPROITEM.AsInteger )  do
    begin
        TotalJuros:= TotalJuros +  Calculos[5, TotalItens ];
        Inc(TotalItens);
    end;

    VcalculoPMT := (ADOPropostaProValorFinanciado.AsFloat + TotalJuros) /ADOPropostaPROITEM.AsInteger;

    with (ADOParcela) do
    begin
      ADOParcela.Cancel;
      ADOParcela.First;
      while not ADOParcela.Eof do
        ADOParcela.Delete;

      DataAnterior := ADOPropostaPRODTOP.AsDateTime;
      TotalItens   := 1;

      DecodeDate(ADOPropostaProDataPrimeiraParcelaOriginal.AsDateTime, Ano1, Mes1, Dia1);
      dia2 := dia1;
      while ( TotalItens <= ( ADOPropostaPROITEM.AsInteger + ADOPropostaProParcelasCarencia.AsInteger )  ) do
      begin
        DataVencimento := Calculos[0, TotalItens];

        DecodeDate(DataVencimento, Ano, Mes, Dia);

        if ((dia1 = 31) and ((mes = 4) or (mes = 6) or (mes = 9) or (mes = 11))) then
        begin
           dia2 := dia1;
           dia1 := 30;
         end
        else
        if (mes = 2) and (dia1 > 28) then
        begin
             dia2 := dia1;
             dia1 := 28;
        end;

        if (dia <> dia1) and (TotalItens <> 1)  and (ADOPropostaProParcelasCarencia.AsInteger = 0)  then
           DataVencimento := EncodeDate(ano, mes, dia1);

        if (dia <> dia1) and (TotalItens <> 1)  and (ADOPropostaProParcelasCarencia.AsInteger > 0)  then
           DataVencimento := EncodeDate(ano, mes, dia);

        DataVencimento := DataVencimento;

        dia1 := dia2;

        if ( ( DataVencimento < DataAnterior) and ( not Application.MessageBox(Pchar( 'O vencimento atual  << '+ DateTimeToStr(DataVencimento) +' >> é menor que o vencimento anterior << '+ DateTimeToStr(DataAnterior) +' >> .'+chr(10)+''+chr(10)+'                                    Deseja continuar ?'), 'Atenção', MB_YESNO+MB_ICONEXCLAMATION+MB_DEFBUTTON1+MB_APPLMODAL) = ID_YES) ) Then
          Abort;

        ADOParcela.Append;
        ADOParcelaITECLAS.AsString          := Carteira.Text;
        ADOParcelaITEORDE.AsInteger         := TotalItens;
        ADOParcelaITENUME.AsString          := IntToStr(TotalItens);
        ADOParcelaITEDTVE.AsDateTime        := DataVencimento;
        ADOParcelaITEPRAZ.AsInteger         := Trunc(Calculos[1, TotalItens]);
        Prazo                               := Trunc(Calculos[1, TotalItens]);

        ADOParcelaItePrazoIntermediario.AsFloat := Calculos[1, TotalItens];
        ADOParcelaiteintervalo.AsFloat      := Calculos[2, TotalItens];
        ADOParcelaIteFatorPrazo.AsFloat     := Calculos[3, TotalItens];
        ADOParcelaIteFatorIntervalo.AsFloat := Calculos[4, TotalItens];
        ADOParcelaIteJuros.AsFloat          := Calculos[5, TotalItens];
        ADOParcelaIteAmortizacao.AsFloat    := VcalculoPMT - Calculos[5, TotalItens];

        if ( (Calculos[6, TotalItens] > TruncaValor(ADOPropostaProValorFinanciado.AsFloat,2)  )
        and (Calculos[8, TotalItens] = 1) and ( Application.MessageBox('O valor da amortização é maior que o valor financiado. Deseja fazer ajuste ?', '', MB_YESNO+MB_ICONQUESTION+MB_DEFBUTTON1+MB_APPLMODAL) = ID_YES) ) Then
        begin
          ADOParcelaIteAmortizacao.AsFloat := TruncaValor(ADOPropostaProValorFinanciado.AsFloat,2);
          ADOParcelaIteJuros.AsFloat       := VcalculoPMT - ADOParcelaIteAmortizacao.AsFloat;
        end;

        ADOParcelaITEVRIO.AsFloat           := Calculos[7, TotalItens];
        ADOParcelaItePrazoIOF.AsFloat       := Calculos[10, TotalItens];
        ADOParcelaITEVRIOFC.AsFloat         := Calculos[12, TotalItens];
        ADOParcelaIteVencimentoReal.AsDateTime := Calculos[13, TotalItens];
        ADOParcelaITEVRTI.AsFloat           := VcalculoPMT;

        ADOParcelaITEFOME.AsFloat           := Calculos[5, TotalItens];

        if (Calculos[8, TotalItens] = 1) then
        begin
          ADOParcelaITEVRTI.AsFloat           := VcalculoPMT;

          ADOParcelaIteTipoparcela.AsString := 'PMT'
        end else
        begin
          ADOParcelaIteTipoparcela.AsString := 'JUROS';
          ADOParcelaITEVRTI.AsFloat         := Calculos[5, TotalItens];
          ADOParcelaIteJuros.AsFloat        := 0.00;
          ADOParcelaIteAmortizacao.AsFloat  := 0.00;
          ADOParcelaITELIQU.AsFloat         := 0.00;
          VcalculoCarencia := VcalculoCarencia + ADOParcelaITEVRTI.AsFloat;
        end;

        VcalculoJuros       := VcalculoJuros + ADOParcelaIteJuros.AsFloat;
        VcalculoAmortizacao := VcalculoAmortizacao + ADOParcelaIteAmortizacao.AsFloat;

        DataAnterior := DataVencimento;

        MontaParcela;

        ADOParcelaITEPMEF.AsInteger := DaysBetween(ADOPropostaPRODTOP.AsDateTime,  D_maisRegional(ADOParcelaITEDTVE.AsDateTime, 1, ADOPropostaCodigoRegiao.AsInteger ) );

        If (ADOPropostaProTaxaSelic.AsFloat > 0) and (ADOProdutoMOEDA.AsString <> 'IGPM') then
            ADOParcelaIteValorFuturo.AsFloat := ADOParcelaITEVRTI.AsFloat * power( ( ( ADOPropostaProTaxaSelic.Asfloat ) / 100.000000000 + 1.000000000)
                       , ( ADOParcelaITEPMEF.AsInteger ) / 360.000000000) * ( power( ADOPropostaTaxaNominalPosFixada.AsFloat / 100.000000000
                         + 1.000000000, ( ADOParcelaITEPMEF.AsInteger / 30.000000000)) )
        else
            ADOParcelaIteValorFuturo.AsFloat := ADOParcelaITEVRTI.AsFloat;

        AtribuiTacs;

        Atribui_ValorLiquido;

        if ADOPropostaPROLIQU.AsFloat <> ADOPropostaProValorLiberado.AsFloat then
           ADOPropostaPROLIQU.AsFloat := ADOPropostaProValorLiberado.AsFloat;

        AjustaValorLiberadoItem;

        VCalculoValorLiquido := VCalculoValorLiquido + ADOParcelaITELIQU.AsFloat;

        if (VCalculoValorLiquido < ADOPropostaPROLIQU.AsFloat) and (TotalItens = ( ADOPropostaPROITEM.AsInteger + ADOPropostaProParcelasCarencia.AsInteger )  ) then
           ADOParcelaITELIQU.AsFloat  := ADOParcelaITELIQU.AsFloat + (ADOPropostaPROLIQU.AsFloat - VCalculoValorLiquido);

        VCalculoPrazoMedio := VCalculoPrazoMedio + (ADOParcelaITEPRAZ.AsInteger * ADOParcelaITEVRTI.AsFloat);
        VCalculoPrazoMedioEfetivo := VCalculoPrazoMedioEfetivo + (ADOParcelaITEPMEF.AsInteger * ADOParcelaITEVRTI.AsFloat);

        VValorPrincipal := VValorPrincipal + ADOParcelaITEVRTI.AsFloat;

        ZeraResto ;

        Valida_Ord:= false;
        ADOParcela.Post;
        Valida_Ord:= true;

        Inc(TotalItens);
      end;
    end;
end;





procedure TFrmCadEmprestimoSimulacao.CriaParcelas;
Var

  TotalJuros : Double;
  x:integer;
begin
    VcalculoCarencia := 0;
    VCalculoValorLiquido := 0;
    VCalculoPrazoMedioEfetivo   := 0;
    VCalculoPrazoMedio := 0;
    VValorPrincipal := 0;
    TotalJuros := 0;

    if ( (ADOParcela.Active ) and (ADOParcela.State =  DsInactive) ) then
      AbreParcelas;

    AjustaTacs;

    TotalizaIOF;

    AjustaValorFinanciado;
       TotalItens:=1;

       if (ADOPropostaPRODOCUMEN.AsInteger=78) and (ADOPropostaPRODOCUMEN.AsInteger=152) then
       begin
        TotalItens:=TotalItens+ADOPropostaProParcelasCarencia.AsInteger;
        while (TotalItens <= ADOPropostaPROITEM.AsInteger+ADOPropostaProParcelasCarencia.AsInteger)  do
         begin
         TotalJuros:= TotalJuros +  Calculos[5, TotalItens ];
         Inc(TotalItens);
         end;
        VcalculoPMT := (ADOPropostaProValorFinanciado.AsFloat + TotalJuros)/ADOPropostaPROITEM.AsInteger ;
       end
       else
       begin
        while (TotalItens <= ADOPropostaPROITEM.AsInteger)  do
         begin
         TotalJuros:= TotalJuros +  Calculos[5, TotalItens ];
         Inc(TotalItens);
         end;
         if (ADOPropostaprodocumen.asstring='17' ) or (ADOPropostaprodocumen.asstring='79') or (ADOPropostaprodocumen.asstring='155') or (ADOPropostaprodocumen.asstring='18') or (ADOPropostaprodocumen.asstring='78') or (ADOPropostaprodocumen.asstring='152') or (ADOPropostaprodocumen.asstring='32') or (ADOPropostaprodocumen.asstring= '42') or(ADOPropostaprodocumen.asstring='77')or(ADOPropostaprodocumen.asstring='65') or(ADOPropostaprodocumen.asstring='75') or(ADOPropostaprodocumen.asstring='71') or(ADOPropostaprodocumen.asstring='72') then
         begin
          VcalculoPMT:=Calculos[0,0]
          end
         else
        VcalculoPMT := (ADOPropostaProValorFinanciado.AsFloat + TotalJuros)/ADOPropostaPROITEM.AsInteger ;
       end;

    with (ADOParcela) do
    begin

      ADOParcela.Cancel;
      ADOParcela.First;

      while not ADOParcela.Eof do
        ADOParcela.Delete;

      DataAnterior := ADOPropostaPRODTOP.AsDateTime;
      TotalItens   := 1;

      DecodeDate(ADOPropostaProDataPrimeiraParcelaOriginal.AsDateTime, Ano1, Mes1, Dia1);

      dia2:=dia1;
      while ( TotalItens <= ( ADOPropostaPROITEM.AsInteger + ADOPropostaProParcelasCarencia.AsInteger )  ) do
      begin



          DataVencimento := Calculos[0, TotalItens];

        DecodeDate(DataVencimento, Ano, Mes, Dia);

        if ((dia1 = 31) and ((mes = 4) or (mes = 6) or (mes = 9) or (mes = 11))) then
        begin
           dia2:=dia1;
           dia1 := 30;
        end
        else
        if (mes = 2) and (dia1 > 28) then
        begin
             dia2:=dia1;
             dia1:= 28;
        end;

        ADOaux.close;
        ADOaux.SQL.Text:= ' select isnull(TipoCalculo,0) from kg_produto where codigoproduto='+''''+ADOPropostaPRODOCUMEN.AsString+''''+'';
        ADOaux.open;

        if (dia <> dia1) and (TotalItens <> 1) and (ADOPropostaProParcelasCarencia.AsInteger = 0) and (adoaux.Fields[0].AsString<>'2')  then
           DataVencimento:=EncodeDate(ano, mes, dia1);

        if (dia <> dia1) and (TotalItens <> 1)  and (ADOPropostaProParcelasCarencia.AsInteger > 0) and (adoaux.Fields[0].AsString<>'2') then
           DataVencimento:=EncodeDate(ano, mes, dia);


        if adoaux.Fields[0].AsString<>'2' then
        DataVencimento:= D_maisBancario (DataVencimento,0,'FERIADO BANCÁRIO');

        dia1:=dia2;

        if ( ( DataVencimento < DataAnterior) and ( not Application.MessageBox(Pchar( 'O vencimento atual  << '+ DateTimeToStr(DataVencimento) +' >> é menor que o vencimento anterior << '+ DateTimeToStr(DataAnterior) +' >> .'+chr(10)+''+chr(10)+'                                    Deseja continuar ?'), 'Atenção', MB_YESNO+MB_ICONEXCLAMATION+MB_DEFBUTTON1+MB_APPLMODAL) = ID_YES) ) Then
          Abort;

        ADOParcela.Append;
        ADOParcelaITECLAS.AsString          := Carteira.Text;
        ADOParcelaITEORDE.AsInteger         := TotalItens;
        ADOParcelaITENUME.AsInteger         := TotalItens;
        ADOParcelaITEDTVE.AsDateTime        := DataVencimento;
        ADOParcelaITEPRAZ.AsInteger         := Trunc(Calculos[1, TotalItens]);
        Prazo                               := Trunc(Calculos[1, TotalItens]);
        ADOParcelaItePrazoIntermediario.AsFloat := Calculos[1, TotalItens];
        ADOParcelaiteintervalo.AsFloat      := Calculos[2, TotalItens];
        ADOParcelaIteFatorPrazo.AsFloat     := Calculos[3, TotalItens];

        ADOParcelaIteFatorIntervalo.AsFloat := Calculos[4, TotalItens];
        ADOParcelaIteJuros.AsFloat          := Calculos[5, TotalItens];
        ADOParcelaIteAmortizacao.AsFloat    := VcalculoPMT - Calculos[5, TotalItens];

        if ( (Calculos[6, TotalItens] > TruncaValor(ADOPropostaProValorFinanciado.AsFloat,2)  )
        and (Calculos[8, TotalItens] = 1) and ( Application.MessageBox('O valor da amortização é maior que o valor financiado. Deseja fazer ajuste ?', '', MB_YESNO+MB_ICONQUESTION+MB_DEFBUTTON1+MB_APPLMODAL) = ID_YES) ) Then
        begin
          ADOParcelaIteAmortizacao.AsFloat  := TruncaValor(ADOPropostaProValorFinanciado.AsFloat,2);
          ADOParcelaIteJuros.AsFloat        := VcalculoPMT - ADOParcelaIteAmortizacao.AsFloat;
        end;

        ADOParcelaITEVRIO.AsFloat           := Calculos[7, TotalItens];
        ADOParcelaItePrazoIOF.AsFloat       := Calculos[10, TotalItens];
        ADOParcelaITEVRIOFC.AsFloat         := Calculos[12, TotalItens];
        ADOParcelaIteVencimentoReal.AsDateTime := Calculos[13, TotalItens];
        ADOParcelaITEVRTI.AsFloat           := VcalculoPMT;
        ADOParcelaITEFOME.AsFloat           := Calculos[5, TotalItens];

        if (Calculos[8, TotalItens] = 1) then
        begin
          ADOParcelaITEVRTI.AsFloat           := VcalculoPMT;

          ADOParcelaIteTipoparcela.AsString := 'PMT'
        end else
        begin
          ADOParcelaIteTipoparcela.AsString := 'JUROS';
          ADOParcelaITEVRTI.AsFloat         := Calculos[5, TotalItens];
          ADOParcelaIteJuros.AsFloat        := 0.00;
          ADOParcelaIteAmortizacao.AsFloat  := 0.00;
          ADOParcelaITELIQU.AsFloat         := 0.00;
          VcalculoCarencia := VcalculoCarencia + ADOParcelaITEVRTI.AsFloat;
        end;

        VcalculoJuros       := VcalculoJuros + ADOParcelaIteJuros.AsFloat;
        VcalculoAmortizacao := VcalculoAmortizacao + ADOParcelaIteAmortizacao.AsFloat;
        DataAnterior := DataVencimento;

        MontaParcela;

        ADOParcelaITEPMEF.AsInteger := DaysBetween(ADOPropostaPRODTOP.AsDateTime,  D_maisRegional(ADOParcelaITEDTVE.AsDateTime, 1, ADOPropostaCodigoRegiao.AsInteger ) );

        If (ADOPropostaProTaxaSelic.AsFloat > 0) and (ADOProdutoMOEDA.AsString <> 'IGPM') then
            ADOParcelaIteValorFuturo.AsFloat := ADOParcelaITEVRTI.AsFloat * power( ( ( ADOPropostaProTaxaSelic.Asfloat ) / 100.000000000 + 1.000000000)
                       , ( ADOParcelaITEPMEF.AsInteger ) / 360.000000000) * ( power( ADOPropostaTaxaNominalPosFixada.AsFloat / 100.000000000
                         + 1.000000000, ( ADOParcelaITEPMEF.AsInteger / 30.000000000)) )
        else
            ADOParcelaIteValorFuturo.AsFloat := ADOParcelaITEVRTI.AsFloat;

        if ( ADOPropostaPRODOCUMEN.AsInteger=77) or ( ADOPropostaPRODOCUMEN.AsInteger=155) or ( ADOPropostaPRODOCUMEN.AsInteger=79) or ( ADOPropostaPRODOCUMEN.AsInteger=78) or ( ADOPropostaPRODOCUMEN.AsInteger=152) or (ADOPropostaPRODOCUMEN.AsInteger=42) then
        begin
        atribuiteo;
        end
        else
        begin
        ADOParcelaitevrteo.asfloat:=0;
        ADOParcelaITETXTEO.asfloat:=0;

        end;

        AtribuiTacs;

        Atribui_ValorLiquido;

        if ADOPropostaPROLIQU.AsFloat <> ADOPropostaProValorLiberado.AsFloat then
           ADOPropostaPROLIQU.AsFloat := ADOPropostaProValorLiberado.AsFloat;

        AjustaValorLiberadoItem;

        VCalculoValorLiquido := VCalculoValorLiquido + ADOParcelaITELIQU.AsFloat;
        if (VCalculoValorLiquido < ADOPropostaPROLIQU.AsFloat) and (TotalItens = ( ADOPropostaPROITEM.AsInteger + ADOPropostaProParcelasCarencia.AsInteger )  ) then
           ADOParcelaITELIQU.AsFloat  := ADOParcelaITELIQU.AsFloat + (ADOPropostaPROLIQU.AsFloat - VCalculoValorLiquido);

        VCalculoPrazoMedio := VCalculoPrazoMedio + (ADOParcelaITEPRAZ.AsInteger * ADOParcelaITEVRTI.AsFloat);
        VCalculoPrazoMedioEfetivo := VCalculoPrazoMedioEfetivo + (ADOParcelaITEPMEF.AsInteger * ADOParcelaITEVRTI.AsFloat);

        VValorPrincipal := VValorPrincipal + ADOParcelaITEVRTI.AsFloat;

        ZeraResto ;

        Valida_Ord:= false;
        ADOParcela.Post;
        Valida_Ord:= true;

        Inc(TotalItens);

      end;
    end;
end;


Procedure TFrmCadEmprestimoSimulacao.atribuiteo;
var restoteo,teo: double ;
begin

  teo:= (ADOPropostaProValorReferencia.AsFloat * ADOProdutoVLR_TxTeo.Value) / 100;
    ADOParcelaitevrteo.AsFloat:=(ADOPropostaProValorReferencia.AsFloat * ADOProdutoVLR_TxTeo.Value) / 100/ADOPropostaPROITEM.asinteger;
    ADOParcelaITETXTEO.AsFloat:=ADOPropostaPROTXTEO.asfloat;

end;

Procedure TFrmCadEmprestimoSimulacao.PesquisaParcela(Parcela: Integer);
begin
 ADOParcela.Locate('ITEPROP; ITEORDE; ITECLAS',varArrayOf([Bordero.Text, Parcela, Carteira.Text ]),[loPartialKey]);

end;

procedure TFrmCadEmprestimoSimulacao.PreencherTaxas;
begin
  if not ADOProdutoVLR_TxTeo.IsNull then
  begin
    ADOPropostaPROTXME.Value := ADOProdutoTaxaMes.Value;
    ADOPropostaPROTXCAC.Value := ADOProdutoTaxaTac.Value;
    ADOPropostaProTaxaAdministrativa.Value := ADOProdutoTaxaAdministrativa.Value;
    ADOPropostaTaxaAberturaCredito.Value := ADOProdutoTaxaAberturaCredito.Value;
    ADOPropostaPROCCOB.Value := ADOProdutoCustoCobranca.Value;
    ADOPropostaPROVRDC.Value := ADOProdutoValorDoc.Value;
    ADOPropostaPRODESP.Value := ADOProdutoValorDespesas.Value;
    ADOPropostaPROTXIO.Value := ADOProdutoTaxaIOF.Value;
    ADOPropostaPROTXIOFC.Value := ADOProdutoTaxaIOFC.Value;
    ADOPropostaPROTXTEO.Value := ADOProdutoVLR_TxTeo.Value;
    AtualizarTEO;
  end;
end;

procedure TFrmCadEmprestimoSimulacao.BitBtn1Click(Sender: TObject);
begin
  inherited;
  StringsDisplayLabel.Clear;
  StringsDisplayLabel.Add('Cód Cedente');
  StringsDisplayLabel.Add('Nome Cedente');
  StringsDisplayLabel.Add('Carteira');
  StringsDisplayLabel.Add('Proposta');
  StringsDisplayLabel.Add('Itens');
  StringsDisplayLabel.Add('Nome Produto');
  StringsDisplayLabel.Add('Promotor');
  StringsDisplayLabel.Add('Dt.Proposta');
  StringsDisplayLabel.Add('Taxa Mês');
  StringsDisplayLabel.Add('Taxa Efetiva');
  StringsDisplayLabel.Add('Prazo Medio');
  If (ADOPesquisa( '  cli.clicod, cli.clinom '
                   + ' ,proclas, proprop, proitem '
                   +'  ,descricao as NomeProduto '
                   + ' ,prooper, convert(varchar,prodtop,103)'
                   + ' ,protxme, Protxef, propmed '
                      ,'Kg_SimulacaoProposta SIM ',' proprop, proclas ',DMConecta.ADOCapitalDeGiro, Nil ,' proprop desc '
                      ,CriterioParaPesquisa, '  Join Kg_Produto PRD on PRD.CodigoProduto = SIM.PRODOCUMEN and isnull(PRD.TipoFinanciamento,''NAD'') <> ''DES'' '
                                             +' Join Kg_Promotor Ger on sim.prooper = Ger.CodigoPromotor '
                                             +' Join factbcli Cli on clicod = proclie and clitip = ''C'' ', StringsDisplayLabel, 0, 100, 'SI') ) then
  begin
    If  (StringsPesquisa.Text <> '') then
    begin
      Bordero.Text  := copy( StringsPesquisa.Strings[0], 1, Pos(',', StringsPesquisa.Strings[0]) - 1 ) ;
      Carteira.Text := copy( StringsPesquisa.Strings[0], Pos(',', StringsPesquisa.Strings[0]) + 1, 5 ) ;
      CarteiraExit(Sender);
      BorderoExit(Sender);

    end else
      Carteira.SetFocus;
  end;

end;


function TFrmCadEmprestimoSimulacao.CriterioParaPesquisa: String;
begin
  if ((Ususario.Tipo[1] in ['0'..'9']) and (Ususario.Tipo[2] in ['0'..'9'])) then
     Auxs := ' and prooper = '+Ususario.Tipo
  else if (Ususario.Regiao > 0) then
    Auxs := Auxs+' and Regiao = '+IntToStr(Ususario.Regiao) ;

end;


procedure TFrmCadEmprestimoSimulacao.DBdtPercentualValorPMTExit(Sender: TObject);
begin
  inherited;
  OnExit(Sender);
  if ( (ADOParcela.Active)  and ( ADOParcela.State in [DsInsert, DsEdit]  ) ) then
  begin
    AtribuiTacs;
    if ( StrToFloat(DBdtPercentualValorPMT.Text) > 0 ) then
      ADOParcelaITEVRTI.AsFloat := StrToFloat(DBdtPercentualValorPMT.Text) * ( ADOPropostaProValorTacs.AsFloat + ADOPropostaProValorReferencia.AsFloat)  / 100;

  end;


end;

procedure TFrmCadEmprestimoSimulacao.DBRdGrpCongelarParcelasExit(Sender: TObject);
begin
  inherited;
  if ( (ADOProposta.Active ) AND (ADOProposta.State in [DSinsert, Dsedit] ) ) then
  begin
    if (DBRdGrpCongelarParcelas.ItemIndex = 0) then
    begin
      DBdtPercentualValorPMT.Enabled := False;
      DBdtPercentualValorPMT.Color := clSilver;

    end else if (DBRdGrpCongelarParcelas.ItemIndex = 1) then
    begin
      DBdtPercentualValorPMT.Enabled := True;
      DBdtPercentualValorPMT.Color := clWindow;
      BitBtnGerarParcela.Enabled:=False;
    end;
  end;
end;

procedure TFrmCadEmprestimoSimulacao.DBRGTipoContratoClick(Sender: TObject);
begin
  inherited;
  if  DBRGTipoContrato.ItemIndex = 1 then
  begin
    ADOPropostaPRODESP.AsFloat  := 1000;
    ADOPropostaPROTXIOFC.AsFloat  := 0.0000;
  end else
  begin
    ADOPropostaPROTXIOFC.AsFloat  := 0.38;
  end;
end;

function TFrmCadEmprestimoSimulacao.Extenso(Numero: Word): string;
const
  Valores : array[1..36] of word = ( 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12,
    13, 14, 15, 16, 17, 18, 19, 20, 30, 40, 50, 60, 70, 80, 90,
    100, 200, 300, 400, 500, 600, 700, 800, 900 );
  Nomes : array[0..36] of string[12] = ( '', 'UMA', 'DUAS', 'TRÊS', 'QUATRO',
    'CINCO', 'SEIS', 'SETE', 'OITO', 'NOVE', 'DEZ', 'ONZE',
    'DOZE', 'TREZE', 'QUATORZE', 'QUINZE', 'DEZESSEIS',
    'DEZESSETE', 'DEZOITO', 'DEZENOVE', 'VINTE', 'TRINTA',
    'QUARENTA', 'CINQÜENTA', 'SESSENTA', 'SETENTA', 'OITENTA',
    'NOVENTA', 'CEM', 'DUZENTAS', 'TREZENTAS', 'QUATROCENTAS',
    'QUINHENTAS', 'SEISCENTAS', 'SETECENTAS', 'OITOCENTAS',
    'NOVECENTAS' );
var
  i         : byte;
  Resposta  : string;
  Inteiro   : word;
  Resto     : word;
begin
  Inteiro   := Numero;
  Resposta  := '';

  for i := 36 downto 1 do begin
    Resto := ( Inteiro div valores[i] ) * valores[i];
    if ( Resto = valores[i] ) and ( Inteiro >= Resto ) then begin
      Resposta := Resposta + Nomes[i] + ' E ';
      Inteiro  := Inteiro - Valores[i];
    end;
  end;
  Result := Copy( Resposta, 1, Length( Resposta ) - 3 );
end;

Procedure TFrmCadEmprestimoSimulacao.TaxaInternaRetorno;
var vfinparacalculo,  vtaxa2, vlrcalcfin  : Double;
    VPLANO : Integer;
    ValorBaseTIR : Double;
begin
  FrmPrincipal.Mensagem('Aguarde. Gerando a Taxa de Retorno Interno.');
  DBNvgtrItens.DataSource := Nil;
  ADOPropostaProTaxaInternaRetorno.AsFloat := 0.00;

  Botoes (False, False, False, False, false, False, False, False);

  vfinparacalculo :=ADOPropostaProValorLiberado.AsFloat + ADOPropostaPROVRIO.AsFloat + ADOPropostaPROVRIOFC.AsFloat;


  vlrcalcfin := ADOPropostaPROVRBO.AsFloat;

  if (ADOPropostaPROTXME.AsFloat > 0) then
    vtaxa2 :=  ADOPropostaPROTXME.AsFloat
  else
    vtaxa2 :=  ADOPropostaTaxaNominalPosFixada.AsFloat;

  IF ( vtaxa2 > 0) then
  begin

    while formatfloat('#,##0.00',int(vlrcalcfin*100)/100) <> formatfloat('#,##0.00',int(vfinparacalculo*100)/100) do
    begin

       if vlrcalcfin <> 100000000000 then
         vtaxa2:= vtaxa2 * ((vlrcalcfin-vfinparacalculo)/vfinparacalculo+1);

       vplano:=1;
       vlrcalcfin:=0;
       ADOParcela.First;
       while (not ADOParcela.Eof) do
       begin
       if ( (DBRGTipoContrato.ItemIndex = 1) and (adoparcelaitevrti.AsFloat > 0.00) ) or (adoparcelaitevrti.AsFloat > 0.00) then
       begin
           if (adoparcelaitevrti.AsFloat < 1.00) then
           begin
             Application.MessageBox('Existe parcela com valor (PMT) zero. O cálculo não será realizado,', 'Atenção', MB_OK+MB_ICONEXCLAMATION+MB_DEFBUTTON1+MB_APPLMODAL);

             vtaxa2 := 0;
             Exit;
           end;

           if ( ADOPropostaPROTXME.AsFloat > 0) then
             ValorBaseTIR := ADOParcelaITEVRTI.AsFloat
           else
             ValorBaseTIR := ADOParcelaITEVRTI.AsFloat * power( ( ( ADOPropostaProTaxaSelic.Asfloat ) / 100.000000000 + 1.000000000)
                         , ( ADOParcelaITEPMEF.AsInteger * 1.000000000 ) / 365.000000000)
                         * ( power( ADOPropostaTaxaNominalPosFixada.AsFloat / 100.000000000
                         + 1.000000000, ( ADOParcelaITEPMEF.AsInteger / 30.000000000)) );

           vlrcalcfin := vlrcalcfin + ( ValorBaseTIR / power(( vtaxa2 / 100 + 1),( ADOParcelaITEPMEF.AsFloat /365.0000000)) );
         end;
         vplano := vplano + 1;
         ADOParcela.Next;
       end;
    end;
    ADOPropostaProTaxaInternaRetorno.AsFloat := vtaxa2;
  end;
  Botoes(True, False, True, False, True, True, False, False );

  DBNvgtrItens.DataSource := DSParcela;
  FrmPrincipal.Mensagem;

end;

procedure TFrmCadEmprestimoSimulacao.Atribui_IOF;
begin
  if ((ADOClienteCLIISENTOIOF.AsString = 'S' ) or (ADOProdutoIOF.AsString = 'NAO')) then
  begin
      ADOPropostaPROTXIO.AsFloat  := 0.0000;
      ADOPropostaPROTXIOFC.AsFloat  := 0.0000;
  end
  else
  begin
    if (ADOClienteClipes.AsInteger = 2) then
    begin
      ADOPropostaPROTXIO.AsFloat      := ADOCarteiraCLAIOFAnoPessoaFisica.AsFloat;
      ADOPropostaPROTXIOFC.AsFloat    := ADOCarteiraCLAIOFCOMP.AsFloat;
    end else
    begin
      ADOPropostaPROTXIO.AsFloat      := ADOCarteiraCLAIOFANO.AsFloat;
      ADOPropostaPROTXIOFC.AsFloat    := ADOCarteiraCLAIOFCOMP.AsFloat;
    end;

    if  DBRGTipoContrato.ItemIndex = 1 then
    begin
      ADOPropostaPROTXIOFC.AsFloat  := 0.0000;
    end;

    if (ADOCarteiraClaAplicaiofLiberacao.AsString = 'NAO') then
    begin
      ADOPropostaPROTXIO.AsFloat    := 0.0000;
      ADOPropostaPROTXIOFC.AsFloat  := 0.0000;
    end;

  end;
end;

Procedure TFrmCadEmprestimoSimulacao.BitBtnExportarParaBoletoClick( Sender: TObject);
var
  QryBoleto: TADOQuery;
  valores: string;
begin
  inherited;

  verificadata;

  if (ADOProposta.Active) then
  begin
    QryBoleto := TADOQuery.Create(nil);
    try
      QryBoleto.Connection := ADOProposta.Connection;

      QryBoleto.SQL.Text :=
        'select top 1 id_boleto ' +
        'from KG_BoletoOperacao with(nolock) ' +
        'where 1=1 ' +
        '  and CodigoCedente = :Cedente ' +
        '  and DataOperacao = :Data ' +
        '  and Round(ValorOperacao, 2) = :Valor ' +
        '  and CodigoProduto = :produto ' +
        '  and StatusBoletoOperacao <> :status ';

      QryBoleto.Parameters[0].Value := ADOPropostaPROCLIE.AsInteger;
      QryBoleto.Parameters[1].Value := ADOPropostaPRODTOP.AsDateTime;
      QryBoleto.Parameters[2].Value := ArredondaValor(ADOPropostaPROVRBO.AsFloat, 2);
      QryBoleto.Parameters[3].Value := ADOPropostaPRODOCUMEN.AsInteger;
      QryBoleto.Parameters[4].Value := 'CANCELADO';

      QryBoleto.Open;
      if not QryBoleto.IsEmpty then
      begin   -
        Application.MessageBox(
           'Já existe um boleto com mesmo valor e data para este cedente!' + sLineBreak +
           'Não é possivel continuar com a exportação, cancele o boleto existente antes de continuar.',
           'Atenção',
           MB_OK + MB_ICONWARNING
        );
        Abort;
      end;
    finally
      QryBoleto.Free;
    end;

    if (ADOProposta.RecordCount > 0) then
    begin
      if not ValidaPreenchimentoTaxaEfetiva(ADOPropostaPROTXEF.AsFloat) then
      begin
        ADOPropostaTaxaNominalPosFixada.FocusControl;
        Abort;
      end;
      
      ADOCliente.Close;
      ADOCliente.Open;

      if ( ADOPropostaId_ContratoOperacao.AsInteger = 0) and (ADOPropostaPRODOCUMEN.AsInteger<>42) and (ADOPropostaPRODOCUMEN.AsInteger<>77) and (ADOPropostaPRODOCUMEN.AsInteger<>78) and (ADOPropostaPRODOCUMEN.AsInteger<>152) and (ADOPropostaPRODOCUMEN.AsInteger<>155) and (ADOPropostaPRODOCUMEN.AsInteger<>79) then
      begin
        Application.MessageBox( ' O Identificador da Operação não foi informado. Exportação cancelada. ' , 'Atenção', MB_OK+MB_ICONEXCLAMATION+MB_DEFBUTTON1+MB_APPLMODAL);
        DBdtId_ContratoOperacao.SetFocus;
        Abort;
      end;

      if ( ADOClienteCliBloqueioLimite90Dias.AsString = 'SIM') and (not AutorizacaoBloqueioLimite90Dias(StrToInt(DBEditCedente.Text)) )then
      begin
        Application.MessageBox(pChar('Cedente bloqueado por não operar dentro de 90 dias. Procure o departamento de Operações.'+chr(10)+''+chr(10)+' Possíveis motivos do bloqueio: ['+ADOClienteCodigoMotivoBloqueioAcumulados.AsString+' ]' )  , 'Atenção', MB_OK+MB_ICONEXCLAMATION+MB_DEFBUTTON1+MB_APPLMODAL);
        DBEditCedente.SetFocus;
      end;

      if ( ADOClienteCadastroSuspenso.AsString  = 'SIM') then
      begin
        Application.MessageBox( 'Exportação bloqueada para cedente com cadastro suspenso.'  , 'Atenção', MB_OK+MB_ICONEXCLAMATION+MB_DEFBUTTON1+MB_APPLMODAL);
        Abort;
      end;

      if ( ADOClienteCliStatus.AsString  = 'INATIVO') then
      begin
        Application.MessageBox( 'Exportação bloqueada para cedente com cadastro inativo.'  , 'Atenção', MB_OK+MB_ICONEXCLAMATION+MB_DEFBUTTON1+MB_APPLMODAL);
        Abort;
      end;
      If  ( ADOPropostaId_CodPrimeiroAvalista.AsInteger < 0 ) and
          ( ADOPropostaId_CodSegundoAvalista.AsInteger < 0 ) and
          ( ADOPropostaId_CodTerceiroAvalista.AsInteger < 0 ) and
          ( ADOPropostaId_CodQuartoAvalista.AsInteger < 0 )
       then
      begin
        If Application.MessageBox('Não registrado " Avalista " para a simulação.'+chr(10)+'Deve registrar um Avalista para efetivar a operação.'+chr(10)+''+chr(10)+'Boleto não será efetivado.'+chr(10)+''+chr(10)+'Deseja contnuar a exportação ?'+chr(10)+'', 'Aviso !', MB_YESNO+MB_ICONQUESTION+MB_DEFBUTTON1+MB_APPLMODAL) = ID_NO Then
        Abort;
      end;


      if (MessageDlg('Confirma a exportação para o Boleto ?.',mtConfirmation,[mbYes,mbNo],0) = mrYes ) then
      begin
        if (ADOProposta.State in [DsEdit, Dsinsert]) then
           BitBtnSalvar.Click;

        if not(Assigned(TFrmCadEmprestimoBoletoOperacao(FrmCadEmprestimoBoletoOperacao))) then
         TFrmCadEmprestimoBoletoOperacao(FrmCadEmprestimoBoletoOperacao) := TFrmCadEmprestimoBoletoOperacao.Create(nil);

        FrmCadEmprestimoBoletoOperacao.Importando := True;
        FrmCadEmprestimoBoletoOperacao.Left := 6;
        FrmCadEmprestimoBoletoOperacao.Top := 0;
        FrmCadEmprestimoBoletoOperacao.Carteira.Enabled := True;
        FrmCadEmprestimoBoletoOperacao.Bordero.Enabled := True;
        FrmCadEmprestimoBoletoOperacao.SimulacaoBoleto := ADOPropostaPROPROP.AsString;
        FrmCadEmprestimoBoletoOperacao.Carteira.Text := ADOPropostaPROCLAS.AsString;

        FrmCadEmprestimoBoletoOperacao.Bordero.Text := '0';
        FrmCadEmprestimoBoletoOperacao.CarteiraExit(Sender);
        FrmCadEmprestimoBoletoOperacao.BorderoExit(Sender);

      end;
    end else
      MessageDlg('Simulação ainda não existe para ser exportada.',mtInformation,[mbOK],0 );
  end;
end;

Procedure TFrmCadEmprestimoSimulacao.CalculoParcelaCongelada;
Var  TaxaDiaria : Double;
     DataAnterior : TDateTime;
     FatorPrazo, FatorIntervalo, BaseIOFComplemento : Double;
     Ano, Mes, Dia, Ano1, Mes1, Dia1, dia2 : Word;
begin
    VcalculoIOF := 0;
    VcalculoIOFComplementar := 0;
    VValorPrincipal := 0;
    VcalculoCarencia := 0;
    VCalculoValorLiquido := 0;
    VCalculoPrazoMedioEfetivo  := 0;
    VCalculoPrazoMedio := 0;

      with ADOParcela do
      begin

        TaxaDiaria :=  0.00;
        DataAnterior := ADOPropostaPRODTOP.AsDateTime;
        if (ADOPropostaPROTXME.AsFloat <> 0) then
          TaxaDiaria := ADOPropostaPROTXME.AsFloat / 3000;

        ADOParcela.First;
        ADOPropostaPROVRBO.AsFloat := 0.00;
        DecodeDate(ADOPropostaPRODTOP.AsDateTime, Ano1, Mes1, Dia1);

        while not Eof do
        begin

          ADOParcela.Edit;

          AtribuiTacs;

          DataVencimento :=  ADOParcelaITEDTVE.AsDateTime;

          if  DBRdGrpCongelarParcelas.ItemIndex = 0 then
          begin

              DecodeDate(DataVencimento, Ano, Mes, Dia);

              if ((dia1 = 31) and ((mes = 4) or (mes = 6) or (mes = 9) or (mes = 11))) then
              begin
                  dia2:=dia1;
                  dia1 := 30;
              end
              else
              if (mes = 2) and (dia1 > 28) then
              begin
                  dia2:=dia1;
                  dia1:= 28;
              end;

              if (dia <> dia1) and (TotalItens <> 1) then
                DataVencimento:=EncodeDate(ano, mes, dia1);

          end;
          DataVencimento:= D_maisBancario (DataVencimento,0,'FERIADO BANCÁRIO');

          VencimentoReal :=  D_maisRegional(DataVencimento, ADOPropostaPROFLOA.AsInteger, ADOPropostaCodigoRegiao.AsInteger );

          Prazo := DaysBetween( ADOPropostaPRODTOP.AsDateTime, VencimentoReal);

          PrazoIOF := Min( DaysBetween( ADOPropostaPRODTOP.AsDateTime, d_maisbancario(DataVencimento,0,'FERIADO BANCÁRIO')), 365);

          Intervalo := DaysBetween( DataAnterior, VencimentoReal);

          FatorPrazo     := ArredondaValor( Power( 1/ ( 1 + TaxaDiaria / 100), Prazo ), 7);
          FatorIntervalo := ArredondaValor( power(    ( 1 + TaxaDiaria / 100 ),  ( Intervalo / 1 )  ) -1, 7);

          ADOParcelaIteVencimentoReal.AsDateTime := VencimentoReal;
          ADOParcelaITEPRAZ.AsInteger  := Prazo;

          ADOParcelaITEPMEF.AsInteger  := DaysBetween(ADOPropostaPRODTOP.AsDateTime,  D_maisRegional(ADOParcelaITEDTVE.AsDateTime, 1, ADOPropostaCodigoRegiao.AsInteger ) );

          CalculaTacs_Item;

          ADOParcelaItePrazoIOF.AsInteger := PrazoIOF;

          ADOParcelaIteAmortizacao.AsFloat := (ADOPropostaProValorReferencia.AsFloat * ADOParcelaItePercentualValorPMT.AsFloat / 100 );

          BaseIOF := ADOParcelaIteAmortizacao.AsFloat ;

          if ( ADOPropostaProTipoPagtoTac.AsString = 'F') then
            BaseIOF := BaseIOF + Ite_ValorTacs;

      BaseIOFComplemento := ( ADOPropostaProValorReferencia.AsFloat * ADOParcelaItePercentualValorPMT.AsFloat / 100 );

      Calculos[7, ADOParcelaITEORDE.AsInteger] := calculaIof( BaseIOF , 1, ADOPropostaPROTXME.AsFloat,
                        PrazoIOF , ADOPropostaPROTXIO.AsFloat, ADOPropostaProTipoPagtoIOF.AsString,
                                      ADOPropostaPRODTOP.AsFloat );

      Calculos[12, ADOParcelaITEORDE.AsInteger] :=  calculaIofComplementar(  BaseIOFComplemento, BaseIOFComplemento
                          , ADOPropostaPROTXIOFC.AsFloat, ADOPropostaProTipoPagtoIOF.AsString
                          , ADOPropostaPRODTOP.AsDateTime) ;

          ADOPropostaProValorFinanciado.AsFloat := ADOPropostaProValorReferencia.AsFloat;
          ADOParcelaIteAmortizacao.AsFloat := (ADOPropostaProValorReferencia.AsFloat * ADOParcelaItePercentualValorPMT.AsFloat / 100 );

          if ( ADOPropostaProTipoPagtoIOF.AsString = 'F') then
          begin
            ADOPropostaProValorFinanciado.AsFloat := ADOPropostaProValorFinanciado.AsFloat +
                                                     Calculos[7, ADOParcelaITEORDE.AsInteger] +
                                                     Calculos[12, ADOParcelaITEORDE.AsInteger]  ;
            ADOParcelaIteAmortizacao.AsFloat := ADOParcelaIteAmortizacao.AsFloat
                                              + Calculos[7, ADOParcelaITEORDE.AsInteger]
                                              + Calculos[12, ADOParcelaITEORDE.AsInteger]  ;
          end;

          if ( ADOPropostaProTipoPagtoTac.AsString = 'F') then
          begin
             ADOPropostaProValorFinanciado.AsFloat := ADOPropostaProValorFinanciado.AsFloat + Ite_ValorTacs;
             ADOParcelaIteAmortizacao.AsFloat := ADOParcelaIteAmortizacao.AsFloat + Ite_ValorTacs;
          end;


          ADOParcelaIteJuros.AsFloat := ( Power( TaxaDiaria + 1 ,  (ADOParcelaITEPRAZ.AsFloat/1 ) ) - 1) * ADOParcelaIteAmortizacao.AsFloat ;

          ADOParcelaITEVRTI.AsFloat := ADOParcelaIteAmortizacao.AsFloat + ADOParcelaIteJuros.AsFloat;
          ADOPropostaPROVRBO.AsFloat := ADOPropostaPROVRBO.AsFloat + ADOParcelaITEVRTI.AsFloat;

          If (ADOPropostaProTaxaSelic.AsFloat > 0) and (ADOProdutoMOEDA.AsString <> 'IGPM') then
              ADOParcelaIteValorFuturo.AsFloat := ADOParcelaITEVRTI.AsFloat * power( ( ( ADOPropostaProTaxaSelic.Asfloat ) / 100.000000000 + 1.000000000)
                       , ( ADOParcelaITEPMEF.AsInteger ) / 360.000000000) * ( power( ADOPropostaTaxaNominalPosFixada.AsFloat / 100.000000000
                         + 1.000000000, ( ADOParcelaITEPMEF.AsInteger / 30.000000000)) )
          else
             ADOParcelaIteValorFuturo.AsFloat := ADOParcelaITEVRTI.AsFloat;

          ADOParcelaITEVRIO.AsFloat   := Calculos[7, ADOParcelaITEORDE.AsInteger];
          ADOParcelaITEVRIOFC.AsFloat := Calculos[12, ADOParcelaITEORDE.AsInteger];

          AtribuiTacs;

          Atribui_ValorLiquido;

          AjustaValorLiberadoItem;

          VCalculoValorLiquido := VCalculoValorLiquido + ADOParcelaITELIQU.AsFloat;
          VCalculoPrazoMedio := VCalculoPrazoMedio + (ADOParcelaITEPRAZ.AsInteger * ADOParcelaITEVRTI.AsFloat);
          VCalculoPrazoMedioEfetivo := VCalculoPrazoMedioEfetivo + (ADOParcelaITEPMEF.AsInteger * ADOParcelaITEVRTI.AsFloat);

          VcalculoIOF := VcalculoIOF + ADOParcelaITEVRIO.AsFloat;
          VcalculoIOFComplementar := VcalculoIOFComplementar + ADOParcelaITEVRIOFC.AsFloat;
          VcalculoJuros := VcalculoJuros + ADOParcelaIteJuros.AsFloat;

          VcalculoAmortizacao := VcalculoAmortizacao + ADOParcelaIteAmortizacao.AsFloat;

          DataAnterior := VencimentoReal;
          VValorPrincipal := VValorPrincipal + ADOParcelaITEVRTI.AsFloat;
          ZeraResto ;

          Valida_Ord:= false;
          ADOParcela.Post;
          Valida_Ord:= true;

          ADOParcela.Next;
        end;

      end;
end;

procedure TFrmCadEmprestimoSimulacao.BitBtn3Click(Sender: TObject);
Var Ordem, Tabela, Select, Join, Criterio : String;
begin
  inherited;
  if ( (ADOProposta.Active) and (ADOPropostaPROCLIE.AsInteger <> 0)  ) then
  begin
    if (ADOProposta.RecordCount > 0)  and not(ADOProposta.State in [DsInsert, DsEdit]) then
      BitBtnAlterarClick(Sender);

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
              +' , Garantia, Prazo, Modalidade, PrimeiroAvalista, SegundoAvalista , ValorFuturo, Taxa , PrazoCaracteristica '
              +' , PropostaComite, TitularGrupo ';
    Tabela := ' dbo.Kg_CedenteContratoExtra  CCE with (nolock) ';
   Join := ' join factbcli cli    with (nolock) on Cli.Cliemptitu = CCE.TitularGrupo and Cli.clitip = ''C'' and cli.clicod = cli.cliemptitu '
          +' join kg_promotor PRT with (nolock) on CodigoPromotor = Cli.Cliope ';

   Criterio := ' WHERE TitularGrupo = '+ADOClienteCLIEMPTITU.AsString ;

    if (Ususario.Tipo[1] in ['0'..'9']) then
      Criterio := Criterio+' and Cli.Cliope = '+Ususario.Tipo
    else if (Ususario.Regiao > 0) then
      Criterio := Criterio+' and PRT.Regiao = '+IntToStr(Ususario.Regiao) ;

    Ordem := ' DataAprovacaoContrato desc ';

    if ADOPesquisa(Select, Tabela, 'Id_ContratoOperacao' , DMConecta.ADOCapitalDeGiro, NIl,Ordem, Criterio, Join, StringsDisplayLabel ) then
      if (StringsPesquisa.Text <> '') then
      begin
        ADOPropostaId_ContratoOperacao.AsString := StringsPesquisa.Strings[0];
        DBdtId_ContratoOperacao.SetFocus;
        DBdtId_ContratoOperacaoExit(Sender);
      end else
      DBdtId_ContratoOperacao.SetFocus;
  end;
end;

procedure TFrmCadEmprestimoSimulacao.DBdtId_ContratoOperacaoExit( Sender: TObject);
begin
  inherited;
  OnExit(Sender);
  if ( (ADOProposta.Active) and  ( ADOProposta.State in [DsInsert, DsEdit]) ) then
  begin
    if (StrToInt64Def(DBdtId_ContratoOperacao.Text,0) > 0) then
    begin
      AbreContratoExtra( 1 );
      if (ADOContratoExtra.RecordCount < 1 ) then
      begin
        Application.MessageBox('Identificador do contrato de operação não encontrado.'+chr(10)+'', 'Atenção', MB_OK+MB_ICONEXCLAMATION+MB_DEFBUTTON1+MB_APPLMODAL);
        DBdtId_ContratoOperacao.SetFocus;
        Abort;
      end;

      if (ADOClienteCLIEMPTITU.AsInteger <> ADOContratoExtraTitularGrupo.AsInteger ) then
      begin
        Application.MessageBox('O contrato informado não pertence ao titular do grupo.'+chr(10)+'', 'Atenção', MB_OK+MB_ICONEXCLAMATION+MB_DEFBUTTON1+MB_APPLMODAL);
        DBdtId_ContratoOperacao.SetFocus;
        Abort;
      end;

      if (ADOContratoExtraTaxa.AsFloat = 0 ) and ( not ADOPropostaPROPROP.AsInteger = 19655) then 
      begin
        Application.MessageBox('Não existe taxa definida para o contrato de operação. Consulte o setor de Operações de Capital de Giro.'+chr(10)+'', 'Atenção', MB_OK+MB_ICONEXCLAMATION+MB_DEFBUTTON1+MB_APPLMODAL);
        DBdtId_ContratoOperacao.SetFocus;
        Abort;
      end;

      if (ADOContratoExtraDataVencimentoContrato.AsDateTime < PesquisaDataBanco(False) ) then
      begin
        Application.MessageBox('Não é permitido operação com contrato vencido.'+chr(10)+'', 'Atenção', MB_OK+MB_ICONEXCLAMATION+MB_DEFBUTTON1+MB_APPLMODAL);
        DBdtId_ContratoOperacao.SetFocus;
        Abort;
      end;

      if (ADOContratoExtraIDStatus.AsString = 'SIM' ) then
      begin
        Application.MessageBox(pchar('ID Bloqueado!'+chr(10)+'Procure o depto de Cadastro PJ.'+chr(10)+''), 'Atenção', MB_OK+MB_ICONEXCLAMATION+MB_DEFBUTTON1+MB_APPLMODAL);
        DBdtId_ContratoOperacao.SetFocus;
        Abort;
      end;

      ADOPropostaCodigoCenario.AsInteger :=2;

      Atribui_TaxaReferencia;

    end;

  end;

end;


function TFrmCadEmprestimoSimulacao.CriterioContrato(CriterioC: String): String;
begin
  Result := '';
  if (StrToInt64(Bordero.Text) <> 0) then
  begin
     Auxs := ' PROPROP = '+Bordero.Text+' and PROCLAS = '+#39+Carteira.Text+#39;
  end else if (StrToInt64(Bordero.Text) = 0) then
    Auxs := ' PROPROP = '+Bordero.Text+' and PROCLAS = '+#39+Carteira.Text+#39;

    Result := Auxs;
end;

function TFrmCadEmprestimoSimulacao.CriterioParcelas(CriterioP: String): String;
begin
  Result := '';
  if (StrToInt64(Bordero.Text) <> 0) then
  begin
     Auxs := ' ITEPROP = '+Bordero.Text+' and ITECLAS = '+#39+Carteira.Text+#39;
  end else if (StrToInt64(Bordero.Text) = 0) then
    Auxs := ' ITEPROP = '+Bordero.Text+' and ITECLAS = '+#39+Carteira.Text+#39;

    Result := Auxs;
end;

procedure TFrmCadEmprestimoSimulacao.CustoEfetivoTotalcapitaldegiro;
var
    V_MensagemErro : String;
begin

  If ( copy(ADOPropostaPROCLAS.AsString,1,1) <> 'A')  then
  begin
    Botoes(False, False, False, False, false, False, False, False);
    FrmPrincipal.Mensagem('Aguarde. Gerando o custo efetivo total (CET).');
    ADOCustoEfetivocapitaldegiro.Close;
    ADOCustoEfetivocapitaldegiro.Parameters[0].Value := ADOPropostaPROPROP.AsInteger;
    ADOCustoEfetivocapitaldegiro.Parameters[1].Value := 'KG_SIMULACAOPROPOSTA';

    Try
      ADOCustoEfetivocapitaldegiro.ExecSQL;
      ADOaux2.close;
      ADOaux2.sql.Text:= ' select CustoEfetivoTotal from kg_simulacaoproposta where PROPROP='+''''+ADOPropostaPROPROP.Asstring+''''+'';
      ADOaux2.Open;
      DBEdit13.Text:=floattostr(ADOaux2.Fields[0].AsFloat);

    Except
      on E: Exception do
      MessageDlg('Foi encontrado um parametro inesperado. '+E.Message, mtError, [mbOK], 0);
    end;
  end;
  botoes(True, True, True, True, True, True, True, True);
  FrmPrincipal.Mensagem;

end;

procedure TFrmCadEmprestimoSimulacao.CustoEfetivoTotal;
var
    V_MensagemErro : String;
begin

  If ( copy(ADOPropostaPROCLAS.AsString,1,1) <> 'A')  then
  begin
    ADOProposta.Edit;
    Botoes(False, False, False, False, false, False, False, False);
    ADOPropostaCustoEfetivoTotal.AsFloat := 0.00;
    FrmPrincipal.Mensagem('Aguarde. Gerando o custo efetivo total (CET).');
    ADOCustoEfetivo.Parameters[0].Value := '0';
    ADOCustoEfetivo.Parameters[1].Value := ADOPropostaPROPROP.AsInteger;
    ADOCustoEfetivo.Parameters[2].Value := 'KG_SIMULACAOPROPOSTA';

    Try
      ADOCustoEfetivo.Execute;
      if (ADOCustoEfetivo.Parameters[4].Value <> NULL) then
      begin
         V_MensagemErro := ADOCustoEfetivo.Parameters[5].Value;
         Application.MessageBox(pchar('Houve erro no calculo do custo efetivo. Descrição Erro.: '+V_MensagemErro+' '), 'Atenção', MB_OK+MB_ICONEXCLAMATION+MB_DEFBUTTON1+MB_APPLMODAL);
      end else
      ADOPropostaCustoEfetivoTotal.AsFloat := ADOCustoEfetivo.Parameters[3].Value;
      ADOProposta.Post;
    Except
      on E: Exception do
      MessageDlg('Foi encontrado um parametro inesperado. '+E.Message, mtError, [mbOK], 0);
    end;
  end;
  botoes(True, True, True, True, True, True, True, True);
  FrmPrincipal.Mensagem;
end;

procedure TFrmCadEmprestimoSimulacao.BtnContratoClick(Sender: TObject);
var
NumParcelas, NomeExtenso, NumDias, DiaExtenso, TipoImpr :String;
  i, NumTipo: Integer;
begin
  inherited;
  via:=0;
  If ((ADOProposta.State <> dsBrowse) or (ADOParcela.State <> dsBrowse)) then
  begin
    Application.MessageBox('Não é permitido imprimir quando está no processo de inclusão/alteração.', 'Atenção', MB_OK+MB_ICONEXCLAMATION+MB_DEFBUTTON1+MB_APPLMODAL);
    Abort;
  end;
  Try
    if (length(trim(ADOPropostaProVias.AsString)) = 0 )  then
    begin
      ShowMessage('N°.Copias não identificado!');
      Abort;
    end
    else
    for I := 1 to StrToIntDef(ADOPropostaProVias.AsString, 1) do
    begin
     via:=via+1;
      Screen.Cursor := crHourGlass;
      FrmPrincipal.StatusBar.Panels[2].Text := 'Processando CCB '+ IntToStr(I)+' - '+ ADOPropostaProVias.AsString+ '  Aguarde...';
      If not(Assigned(TQRCedulaCreditoBancarioPJ222(QRCedulaCreditoBancarioPJ222))) then
        TQRCedulaCreditoBancarioPJ222(QRCedulaCreditoBancarioPJ222) := TQRCedulaCreditoBancarioPJ222.Create(Self,222);

      with (QRCedulaCreditoBancarioPJ222) do
      begin
        ADOConsulta( ' Proprop ,cli.clinom Nome ,pro.PROVRBO valor , ProValorLiberado, ProValorReferencia ,convert(varchar,prodtop,103) DtProposta, dbo.MesExtenso(prodtop) MesOperacao, ProValorTacs '
        + ' ,(select top 1 convert(varchar,ITEDTVE,103) from kg_simulacaoProposta_Item with (nolock) where ITEPROP = '+Bordero.Text+' and ITECLAS = '+#39+Carteira.Text+#39' ) DtPrimeiraParcela '
        + ' ,(select top 1 convert(varchar,ITEDTVE,103) from kg_simulacaoProposta_Item with (nolock) where ITEPROP = '+Bordero.Text+' and ITECLAS = '+#39+Carteira.Text+#39' order by ITEDTVE desc) DtVencimento '
        + ' ,(select top 1 ITEORDE from kg_simulacaoProposta_Item with (nolock) where ITEPROP = '+Bordero.Text+' and ITECLAS = '+#39+Carteira.Text+#39' order by ITEDTVE desc) NumParcelas '
        + ' ,(select top 1 ITEVRTI from kg_simulacaoProposta_Item with (nolock) where ITEPROP = '+Bordero.Text+' and ITECLAS = '+#39+Carteira.Text+#39' order by ITEDTVE desc) ValorParcela '
        + ' ,pro.PROCLIE CodCedente, pro.ProValorFinanciado ,prd.TipoFinanciamento '
        + ' ,prd.codigoProduto, convert(numeric(5,2) ,pro.PROTXME) TaxaMes, Protxef TaxaEfetiva, TaxaNominalPosFixada '
        + ' ,ProInfoGarantiasA, ProInfoGarantiasB, ProInfoGarantiasC, ProInfoGarantiasD, ProInfoGarantiasE, ProInfoGarantiasF, ProInfoGarantiasG, ProInfoGarantiasH, ProInfoGarantiasI, ProInfoGarantiasJ,ProInfoGarantiasL '
        + ' ,(case when TipoFinanciamento = ''PRE'' then convert(numeric(5,2),(power( 1 + PROTXME / 100.0000000 , 12) - 1) * 100) '
        + '        when TipoFinanciamento = ''POS'' then convert(numeric(5,2),(power( 1 + isnull(TaxaNominalPosFixada,0) / 100.0000000 , 12) - 1) * 100) '
        + '        when TipoFinanciamento = ''ROT'' then convert(numeric(5,2),(power( 1 + isnull(TaxaNominalPosFixada,0) / 100.0000000 , 12) - 1) * 100) '
        + '   else convert(numeric(5,2),(power( 1 + PROTXME / 100.0000000 , 12) - 1) * 100) '
        + '   end) TaxaAno '
        + ' ,pro.PROVRIO + PROVRIOFC as ValorIOF, PROTXIO, propmed PrazoMedio, PROTXIOFC IOFCOMP, PROVRDC + ProVrCac + PROCCOB + PRODESP + ProTaxaAdministrativa + pro.TaxaAberturaCredito+ valor_ecg as Comissao,custoefetivototal '
        + ' , ContratoReservado, ProMora, ProVias'
        , ' Kg_SimulacaoProposta pro with (nolock)',' Proprop, Nome, valor, ProValorLiberado, DtProposta, DtVencimento, TaxaMes, TaxaEfetiva, TaxaAno, TaxaNominalPosFixada, ValorIOF, PROTXIO, PrazoMedio, TipoFinanciamento, IOFCOMP, Comissao, MesOperacao, NumParcelas, DtPrimeiraParcela, ProValorTacs '
        + ' ,ProInfoGarantiasA, ProInfoGarantiasB, ProInfoGarantiasC, ProInfoGarantiasD, ProInfoGarantiasE, ProInfoGarantiasF, ProInfoGarantiasG, ProInfoGarantiasH, ProInfoGarantiasI, ProInfoGarantiasJ,ProInfoGarantiasL ',DMConecta.ADOCapitalDeGiro, Nil,' proprop desc '
        ,CriterioContrato(''), 'Join Kg_Produto PRD with (nolock) on PRD.CodigoProduto = pro.PRODOCUMEN and isnull(PRD.TipoFinanciamento,''NAD'') <> ''DES'' '
        + ' Join Kg_Promotor prt with (nolock) on pro.prooper = prt.CodigoPromotor '
        + ' Join factbcli cli with (nolock) on clicod = proclie and clitip = ''C''  ');

        QRLblCrontato .Caption := ADO.FieldByName('ContratoReservado').AsString;
        QRLabel128    .Caption :=
          ADO.FieldByName('ProVias').AsString + ' ('+
          Extenso(StrToInt(ADO.FieldByName('ProVias').AsString))+' ) vias, ';
        case via of
          01: begin
            qrlCredor.Caption := '(X) VIA DO CREDOR [NEGOCIÁVEL]';
            qrlEmitente.Caption := '( ) VIA DO EMITENTE [NÃO NEGOCIÁVEL]';
          end;
          02: begin
            qrlCredor.Caption := '( ) VIA DO CREDOR [NEGOCIÁVEL]';
            qrlEmitente.Caption := '(X) VIA DO EMITENTE [NÃO NEGOCIÁVEL]';
          end
          else begin
            qrlCredor.Caption := '( ) VIA DO CREDOR [NEGOCIÁVEL]';
            qrlEmitente.Caption := '( ) VIA DO EMITENTE [NÃO NEGOCIÁVEL]';
          end;
        end;


        QRLblComissao.Caption :=             'R$ '+FormatFloat('#,##0.00',ADO.FieldByName('ProValorTacs').AsFloat) +' ('+NumeroParaExtenso(Ado.FieldByName('ProValorTacs').AsFloat)+')';
        QRLblDataContrato.Caption :=         ADO.FieldByName('DtProposta').AsString;
        QRLblDataVenc.Caption :=             ADO.FieldByName('DtVencimento').AsString;                    
        QRLblValor.Caption :=                FormatFloat('#,##0.00',ADO.FieldByName('ProValorReferencia').AsFloat);
        QRLblValorExtenso.Caption :=         ' ('+(NumeroParaExtenso(ADO.FieldByName('ProValorReferencia').AsFloat))+')';
        QRLbliof.Caption :=                  FormatFloat('0.00',ADO.FieldByName('PROTXIO').AsFloat)+'%a.a. + '+FormatFloat('0.00',ADO.FieldByName('IOFCOMP').AsFloat)+'%';
        QRLblValoriof.Caption :=             'R$ '+FormatFloat('#,##0.00',ADO.FieldByName('ValorIOF').AsFloat);
        QRLblDia.Caption :=                  Trim(copy(ADO.FieldByName('DtProposta').AsString,1,2));
        QRLblMes.Caption :=                  ADO.FieldByName('MesOperacao').AsString;
        QRLblAno.Caption :=                  Trim(copy(ADO.FieldByName('DtProposta').AsString,7,4));

        if ADO.FieldByName('ProInfoGarantiasB').AsString = 'SIM' then
           QRLblI.Caption := '(X)';
        if ADO.FieldByName('ProInfoGarantiasC').AsString = 'SIM' then
           QRLblB.Caption := '(X)';
        if ADO.FieldByName('ProInfoGarantiasD').AsString = 'SIM' then
           QRLblC.Caption := '(X)';
        if CBOutras.Checked then
        begin
          QRLblE.Caption := '(X)';
          if ADO.FieldByName('ProInfoGarantiasE').AsString <> ''  then
            QRLblOutras.Caption := ADO.FieldByName('ProInfoGarantiasE').AsString
          else QRLblOutras.Caption := '';
        end
        else
          QRLblOutras.Caption := '';
        if ADO.FieldByName('ProInfoGarantiasF').AsString = 'SIM' then
          QRLblF.Caption := '(X)';
        if ADO.FieldByName('ProInfoGarantiasG').AsString = 'SIM' then
          QRLblG.Caption := '(X)';
        if ADO.FieldByName('ProInfoGarantiasH').AsString = 'SIM' then
          QRLblH.Caption := '(X)';
        if ADO.FieldByName('ProInfoGarantiasI').AsString = 'SIM' then
          QRLblD.Caption := '(X)';
        if ADO.FieldByName('ProInfoGarantiasJ').AsString = 'SIM' then
          QRLblJ.Caption := '(X)';
        if ADO.FieldByName('ProInfoGarantiasL').AsString = 'SIM' then
           QRLblL.Caption := '(X)';

        if ADO.FieldByName('TipoFinanciamento').AsString = 'PRE' then
        begin
          QRDBTxtTaxaMes.Enabled :=          True;
          QRDBTxtAno.Enabled :=              True;
          QRDBTxtTaxaMes.Caption :=          FormatFloat('0.00',ADO.FieldByName('TaxaMes').AsFloat);
          QRDBTxtAno.Caption :=              FormatFloat('0.00',ADO.FieldByName('TaxaAno').AsFloat);
          QRDBTxtPosAno.Enabled :=           False;
          QRDBTxtPosMes.Enabled :=           False;
          if ADO.FieldByName('custoefetivototal').isnull  then
            QRLblCET.Enabled :=              False
          else
            QRLblCET.Caption                   := (FormatFloat('0.00',ADO.FieldByName('custoefetivototal').AsFloat));

          QRRichTexto.Lines.Add(MemoFormaPagamento.Lines.Text)
        end else
        begin
          QRDBTxtPosAno.Enabled :=           True;
          QRDBTxtPosMes.Enabled :=           True;
          QRDBTxtPosMes.Caption :=           FormatFloat('0.00',ADO.FieldByName('TaxaNominalPosFixada').AsFloat);
          QRDBTxtPosAno.Caption :=           FormatFloat('0.00',ADO.FieldByName('TaxaAno').AsFloat);
          QRDBTxtTaxaMes.Enabled :=          False;
          QRDBTxtAno.Enabled :=              False;

          if ADO.FieldByName('custoefetivototal').isnull  then
            QRLblCET.Enabled :=              False
          else
            QRLblCET.Caption                   := (FormatFloat('0.00',ADO.FieldByName('custoefetivototal').AsFloat));

          NumParcelas := UpperCase(NumExtenso(StrToFloat(ADO.FieldByName('NumParcelas').AsString)));
          NumDias :=  Trim(copy(ADO.FieldByName('DtPrimeiraParcela').AsString,1,2));
          DiaExtenso := UpperCase(NumExtenso(StrToFloat(Trim(copy(ADO.FieldByName('DtPrimeiraParcela').AsString,1,2)))));
          NomeExtenso :=  UpperCase(NumeroParaExtenso(ADO.FieldByName('ValorParcela').AsFloat));
          QRRichTexto.Lines.Add(MemoFormaPagamento.Lines.Text)
        end;
        ADOConsulta( ' TOP 1 CLINOM, CLIOPE, CLICOD '
          + ' , isnull(clicgc,'''')+isnull(clicgcfili,'''')+isnull(clicgcdv,'''') CNPJ '
          + ' , clitel, clibai, cliend, clicid, cliest, clicep '
          , ' FACTBCLI cli with (nolock) ',' CLINOM, CNPJ, clitel, clibai, cliend, clicid, cliest, clicep ',DMConecta.ADOCapitalDeGiro, Nil,''
          , ' CLICOD = '+ADOClienteCLICOD.AsString+' and CLITIP = ''C'' ','' );

        QRLblNome.Caption :=                 ADO.FieldByName('CLINOM').AsString;
        QRLblEndereco.Caption :=             ADO.FieldByName('cliend').AsString;
        QRLblTelefone.Caption :=             ADO.FieldByName('clitel').AsString;
        QRLblCidade.Caption :=               ADO.FieldByName('clicid').AsString;
        QRLblUF.Caption :=                   ADO.FieldByName('cliest').AsString;
        QRLblCNPJ.Caption :=                 FormataCPFCNPJ(ADO.FieldByName('CNPJ').AsString);
        QRLblBairro.Caption :=               ADO.FieldByName('clibai').AsString;
        QRLblCEP.Caption :=                  ADO.FieldByName('clicep').AsString;
        QRLblPracaPag.Caption :=             ADO.FieldByName('clicid').AsString;
        QRLblRemetente.Caption :=            ADO.FieldByName('CLINOM').AsString;

        TempCedudulaCreditoBancario := '##TmpContratoCedulaCredito_222_1'+FormatDateTime('ddmmyyhhmmzz',now);
        TempCedudulaCreditoBancario2 := '##TmpContratoCedulaCredito_222_2'+FormatDateTime('ddmmyyhhmmzz',now);

        ConsultaParcelas( ' if exists (select * from [tempdb].dbo.sysobjects where id = object_id(N''[tempdb].[dbo].['+TempCedudulaCreditoBancario+']'') and OBJECTPROPERTY(id, N''IsUserTable'') is null ) '
           +' drop table dbo.['+TempCedudulaCreditoBancario+'] SELECT identity (int,1, 1) AS ID_Num, ITEORDE, ITEPROP, ITECLAS, sum(ITEVRTI) as ValorParcela, ITEDTVE ,ITEDOCU ',TempCedudulaCreditoBancario,' dbo.kg_simulacaoProposta_Item ITE with (nolock)'
          ,'ID_Num, ITEPROP, ITECLAS, ValorParcela, ITEDTVE',DMConecta.ADOCapitalDeGiro, Nil,''
          ,CriterioParcelas(''), ' Join Kg_Produto PRD on PRD.CodigoProduto = ITE.ITEDOCU and isnull(PRD.TipoFinanciamento,''NAD'') <> ''DES'' '
          ,' ITEPROP, ITECLAS, ITEORDE, ITEDTVE, ITEDOCU ');
        ConsultaParcelas( ' if exists (select * from [tempdb].dbo.sysobjects where id = object_id(N''[tempdb].[dbo].['+TempCedudulaCreditoBancario2+']'') and OBJECTPROPERTY(id, N''IsUserTable'') is null ) '
           +' drop table dbo.['+TempCedudulaCreditoBancario2+'] SELECT (id_num + 0) as ID_Linha, ITEORDE as Parcela1, ValorParcela as Valor1, convert(int,0) as Parcela2, convert( numeric(38,2), 0.00) as Valor2, convert(int,0) as Parcela3, convert( numeric(38,2), 0.00) as Valor3, '
          +' ITEDTVE as Venc1, convert(DateTime, ''01/01/1900'') as Venc2, convert(DateTime, ''01/01/1900'') as Venc3 ',TempCedudulaCreditoBancario2,TempCedudulaCreditoBancario+' ITE with (nolock)'
          ,' ID_Linha, Valor1, Valor2, Valor3, Venc1, Venc2, Venc3 ',DMConecta.ADOCapitalDeGiro, Nil,''
          ,' id_num = 1 or ( (id_num + 3) - (((id_num + 3) / 3) * 3)  ) = 1 and '+CriterioParcelas(''), ' Join Kg_Produto PRD on PRD.CodigoProduto = ITE.ITEDOCU and isnull(PRD.TipoFinanciamento,''NAD'') <> ''DES'' '
          ,'');
        ConsultaParcelas( ' SELECT (Id_Num - 1) as Id_Linha, convert(int,0) as Parcela1, convert( numeric(38,2), 0.00) as Valor1, ITEORDE as Parcela2, ValorParcela as Valor2, convert(int,0) as Parcela3, convert( numeric(38,2), 0.00) as Valor3, '
          +' convert(DateTime, ''01/01/1900'') as Venc1, ITEDTVE as Venc2, convert(DateTime, ''01/01/1900'') as Venc3 ','',TempCedudulaCreditoBancario+' ITE with (nolock)'
          ,' ID_Linha, Valor1, Valor2, Valor3, Venc1, Venc2, Venc3 ',DMConecta.ADOCapitalDeGiro, Nil,''
          ,' id_num = 2 or ( (id_num + 3) - (((id_num + 3) / 3) * 3)  ) = 2 and '+CriterioParcelas(''), ' Join Kg_Produto PRD on PRD.CodigoProduto = ITE.ITEDOCU and isnull(PRD.TipoFinanciamento,''NAD'') <> ''DES'' '
          ,'',TempCedudulaCreditoBancario2);
        ConsultaParcelas( ' SELECT (Id_Num - 2)  as  Id_Linha, convert(int,0) as Parcela1, convert( numeric(38,2), 0.00) as Valor1, convert(int,0) as Parcela2, convert( numeric(38,2), 0.00) as Valor2, ITEORDE as Parcela3 ,ValorParcela as Valor3, '
          +' convert(DateTime, ''01/01/1900'') as Venc1, convert(DateTime, ''01/01/1900'') as Venc2, ITEDTVE as Venc3 ','',TempCedudulaCreditoBancario+' ITE with (nolock)'
          ,' ID_Linha, Valor1, Valor2, Valor3, Venc1, Venc2, Venc3 ',DMConecta.ADOCapitalDeGiro, Nil,''
          ,' id_num = 3 or ( (id_num + 3) - (((id_num + 3) / 3) * 3)  ) = 0 and '+CriterioParcelas(''), ' Join Kg_Produto PRD on PRD.CodigoProduto = ITE.ITEDOCU and isnull(PRD.TipoFinanciamento,''NAD'') <> ''DES'' '
          ,'',TempCedudulaCreditoBancario2);

        ADOContratoCedula.Close;
        Auxs:= ' select Id_Linha, max(Parcela1) Parcela1, max(Parcela2) Parcela2, max(Parcela3) Parcela3, max(venc1) venc1, max(venc2) venc2, max(venc3) venc3, ';
        Auxs := Auxs +' convert( numeric(15,2),sum(Valor1)) Valor1, convert( numeric(15,2),sum(Valor2)) Valor2, convert(numeric(15,2),sum(Valor3)) Valor3 ';
        Auxs := Auxs +' from '+TempCedudulaCreditoBancario2;
        Auxs := Auxs +' group by Id_Linha ';
        ADOContratoCedula.CommandText := Auxs;
        ADOContratoCedula.Open;
        if ADOPropostaId_CodPrimeiroAvalista.AsInteger <> 0 then
        begin
          ADOPrimeiroAvalista.Close;
          Auxs := 'SELECT CodigoAvalista '
                +' ,InscricaoAvalista '
                +' ,Nome '
                +' ,Endereco '
                +' ,EnderecoNumero '
                +' ,EnderecoComplemento '
                +' ,Bairro '
                +' ,Cidade '
                +' ,Cep '
                +' ,Estado '
                +' ,DDD '
                +' ,Telefone '
                +' ,EnderecoNumero '
                +' ,Nacionalidade '
                +' ,Naturalidade '
                +' ,EstadoCivil '
                +' ,Identidade '
                +' ,Profissao '
                +' FROM Kg_Avalista with (nolock) where CodigoAvalista = '+IntToStr(ADOPropostaId_CodPrimeiroAvalista.AsInteger);
          ADOPrimeiroAvalista.CommandText := Auxs;
          ADOPrimeiroAvalista.Open;

          ADOPrimeiroConjuge.Close;
          Auxs := 'SELECT CodigoAvalista '
                +' ,CpfConjuge '
                +' ,Nome '
                +' FROM Kg_Conjuge with (nolock) where CodigoAvalista = '+IntToStr(ADOPropostaId_CodPrimeiroAvalista.AsInteger);
          ADOPrimeiroConjuge.CommandText := Auxs;
          ADOPrimeiroConjuge.Open;
        end;
        if ADOPropostaId_CodSegundoAvalista.AsInteger <> 0 then
        begin
          ADOSegundoAvalista.Close;
          Auxs := 'SELECT CodigoAvalista '
                +' ,InscricaoAvalista '
                +' ,Nome '
                +' ,Endereco '
                +' ,EnderecoNumero '
                +' ,EnderecoComplemento '
                +' ,Bairro '
                +' ,Cidade '
                +' ,Cep '
                +' ,Estado '
                +' ,DDD '
                +' ,Telefone '
                +' ,EnderecoNumero '
                +' ,Nacionalidade '
                +' ,Naturalidade '
                +' ,EstadoCivil '
                +' ,Identidade '
                +' ,Profissao '
                +' FROM Kg_Avalista with (nolock) where CodigoAvalista = '+IntToStr(ADOPropostaId_CodSegundoAvalista.AsInteger);
          ADOSegundoAvalista.CommandText := Auxs;
          ADOSegundoAvalista.Open;

          ADOSegundoConjuge.Close;
          Auxs := 'SELECT CodigoAvalista '
                +' ,CpfConjuge '
                +' ,Nome '
                +' FROM Kg_Conjuge with (nolock) where CodigoAvalista = '+IntToStr(ADOPropostaId_CodSegundoAvalista.AsInteger);
          ADOSegundoConjuge.CommandText := Auxs;
          ADOSegundoConjuge.Open;
        end;
        if ADOPropostaId_CodTerceiroAvalista.AsInteger <> 0 then
        begin
          ADOTerceiroAvalista.Close;
          Auxs := 'SELECT CodigoAvalista '
                +' ,InscricaoAvalista '
                +' ,Nome '
                +' ,Endereco '
                +' ,EnderecoNumero '
                +' ,EnderecoComplemento '
                +' ,Bairro '
                +' ,Cidade '
                +' ,Cep '
                +' ,Estado '
                +' ,DDD '
                +' ,Telefone '
                +' ,EnderecoNumero '
                +' ,Nacionalidade '
                +' ,Naturalidade '
                +' ,EstadoCivil '
                +' ,Identidade '
                +' ,Profissao '
                +' FROM Kg_Avalista with (nolock) where CodigoAvalista = '+IntToStr(ADOPropostaId_CodTerceiroAvalista.AsInteger);
          ADOTerceiroAvalista.CommandText := Auxs;
          ADOTerceiroAvalista.Open;

          ADOTerceiroConjuge.Close;
          Auxs := 'SELECT CodigoAvalista '
                +' ,CpfConjuge '
                +' ,Nome '
                +' FROM Kg_Conjuge with (nolock) where CodigoAvalista = '+IntToStr(ADOPropostaId_CodTerceiroAvalista.AsInteger);
          ADOTerceiroConjuge.CommandText := Auxs;
          ADOTerceiroConjuge.Open;
        end;
        if ADOPropostaId_CodQuartoAvalista.AsInteger <> 0 then
        begin
          ADOQuartoAvalista.Close;
          Auxs := 'SELECT CodigoAvalista '
                +' ,InscricaoAvalista '
                +' ,Nome '
                +' ,Endereco '
                +' ,EnderecoNumero '
                +' ,EnderecoComplemento '
                +' ,Bairro '
                +' ,Cidade '
                +' ,Cep '
                +' ,Estado '
                +' ,DDD '
                +' ,Telefone '
                +' ,EnderecoNumero '
                +' ,Nacionalidade '
                +' ,Naturalidade '
                +' ,EstadoCivil '
                +' ,Identidade '
                +' ,Profissao '
                +' FROM Kg_Avalista with (nolock) where CodigoAvalista = '+IntToStr(ADOPropostaId_CodQuartoAvalista.AsInteger);
          ADOQuartoAvalista.CommandText := Auxs;
          ADOQuartoAvalista.Open;

          ADOQuartoConjuge.Close;
          Auxs := 'SELECT CodigoAvalista '
                +' ,CpfConjuge '
                +' ,Nome '
                +' FROM Kg_Conjuge with (nolock) where CodigoAvalista = '+IntToStr(ADOPropostaId_CodQuartoAvalista.AsInteger);
          ADOQuartoConjuge.CommandText := Auxs;
          ADOQuartoConjuge.Open;
        end;

        QRCedulaCreditoBancarioPJ222.Prepare;
        QRLabel121.Caption:=IntToStr(QRCedulaCreditoBancarioPJ222.QRPrinter.PageCount);

        FrmPrincipal.StatusBar.Panels[2].Text := EmptyStr;
        Screen.Cursor := crDefault;

        if InputQuery('Definir Relatorio', 'Tipo de Relatorio?'+chr(10)+'(1-PDF / 2-Word)', TipoImpr) then
        begin
          NumTipo := StrToInt(RetornaNumero(TipoImpr));
          case NumTipo of
            1: gerapdf(StrToInt(IfThen((length(trim(ADO.FieldByName('CNPJ').AsString)) > 11),'2','1')));
            2: GeraWord222(StrToInt(IfThen((length(trim(ADO.FieldByName('CNPJ').AsString)) > 11),'2','1')), via);
            else
              ShowMessage('Opção Invalida! : '+TipoImpr);
          end;
        end;

      end;
      QRCedulaCreditoBancarioPJ222.Free;
      QRCedulaCreditoBancarioPJ222 := Nil;

    end;
  Except
    on E: Exception do
      MessageDlg(' Mensagem: '+E.Message, mtError, [mbOK], 0);
    else
    ShowMessage('Foi encontrado um parametro inesperado.');
  end;
end;

procedure TFrmCadEmprestimoSimulacao.DBdtId_CodPrimerioAvalExit(Sender: TObject);
begin
  inherited;
  OnExit(Sender);
  if ( (ADOProposta.Active) and  ( ADOProposta.State in [DsInsert, DsEdit]) ) then
  begin
    if (StrToInt64Def(DBdtId_CodSegundoAval.Text,0) > 0) then
    begin
       Auxs := 'SELECT CodigoAvalista '
              +' ,InscricaoAvalista '
              +' ,Nome '
              +' ,Endereco '
              +' ,Bairro '
              +' ,Cidade '
              +' ,Cep '
              +' ,Estado '
              +' ,DDD '
              +' ,Telefone '
              +' ,EnderecoNumero '
              +' ,Nacionalidade '
              +' ,Naturalidade '
              +' ,EstadoCivil '
              +' ,Identidade '
              +' ,Profissao '
              +' FROM Kg_Avalista with (nolock) where CodigoAvalista =  '+DBdtId_CodPrimerioAval.Text;

      with DMDados do
      begin
        ADOExecuta.Close;
        ADOExecuta.SQL.Clear;
        ADOExecuta.SQL.Add( Auxs );
        ADOExecuta.Open;
        if (ADOExecuta.RecordCount < 1 ) then
        begin
          Application.MessageBox('Avalista não encontrado.'+chr(10)+'', 'Atenção', MB_OK+MB_ICONEXCLAMATION+MB_DEFBUTTON1+MB_APPLMODAL);
          DBdtId_CodPrimerioAval.SetFocus;
          Abort;
        end;
      end;
    end;
  end;
end;

procedure TFrmCadEmprestimoSimulacao.DBdtId_CodSegundoAvalExit(Sender: TObject);
begin
  inherited;
  OnExit(Sender);
  if ( (ADOProposta.Active) and  ( ADOProposta.State in [DsInsert, DsEdit]) ) then
  begin
    if (StrToInt64Def(DBdtId_CodPrimerioAval.Text,0) > 0) then
    begin
       Auxs := 'SELECT CodigoAvalista '
              +' ,InscricaoAvalista '
              +' ,Nome '
              +' ,Endereco '
              +' ,Bairro '
              +' ,Cidade '
              +' ,Cep '
              +' ,Estado '
              +' ,DDD '
              +' ,Telefone '
              +' ,EnderecoNumero '
              +' ,Nacionalidade '
              +' ,Naturalidade '
              +' ,EstadoCivil '
              +' ,Identidade '
              +' ,Profissao '
              +' FROM Kg_Avalista with (nolock) where CodigoAvalista =  '+DBdtId_CodSegundoAval.Text;

      with DMDados do
      begin
        ADOExecuta.Close;
        ADOExecuta.SQL.Clear;
        ADOExecuta.SQL.Add( Auxs );
        ADOExecuta.Open;
        if (ADOExecuta.RecordCount < 1 ) then
        begin
          Application.MessageBox('Avalista não encontrado.'+chr(10)+'', 'Atenção', MB_OK+MB_ICONEXCLAMATION+MB_DEFBUTTON1+MB_APPLMODAL);
          DBdtId_CodSegundoAval.SetFocus;
          Abort;
        end;
      end;
    end;
  end;
end;

procedure TFrmCadEmprestimoSimulacao.DBdtId_CodTerceiroAvalExit(
  Sender: TObject);
begin
  inherited;
  OnExit(Sender);
  if ( (ADOProposta.Active) and  ( ADOProposta.State in [DsInsert, DsEdit]) ) then
  begin
    if (StrToInt64Def(DBdtId_CodTerceiroAval.Text,0) > 0) then
    begin
       Auxs := 'SELECT CodigoAvalista '
              +' ,InscricaoAvalista '
              +' ,Nome '
              +' ,Endereco '
              +' ,Bairro '
              +' ,Cidade '
              +' ,Cep '
              +' ,Estado '
              +' ,DDD '
              +' ,Telefone '
              +' ,EnderecoNumero '
              +' ,Nacionalidade '
              +' ,Naturalidade '
              +' ,EstadoCivil '
              +' ,Identidade '
              +' ,Profissao '
              +' FROM Kg_Avalista with (nolock) where CodigoAvalista =  '+DBdtId_CodTerceiroAval.Text;
      with DMDados do
      begin
        ADOExecuta.Close;
        ADOExecuta.SQL.Clear;
        ADOExecuta.SQL.Add( Auxs );
        ADOExecuta.Open;
        if (ADOExecuta.RecordCount < 1 ) then
        begin
          Application.MessageBox('Avalista não encontrado.'+chr(10)+'', 'Atenção', MB_OK+MB_ICONEXCLAMATION+MB_DEFBUTTON1+MB_APPLMODAL);
          DBdtId_CodTerceiroAval.SetFocus;
          Abort;
        end;
      end;
    end;
  end;
end;

procedure TFrmCadEmprestimoSimulacao.BitBtn4Click(Sender: TObject);
Var Ordem, Tabela, Select, Join, Criterio : String;
begin
  inherited;
  if ( (ADOProposta.Active) and (ADOPropostaPROCLIE.AsInteger <> 0)  ) then
  begin
    if (ADOProposta.RecordCount > 0)  and not(ADOProposta.State in [DsInsert, DsEdit]) then
      BitBtnAlterarClick(Sender);

    StringsDisplayLabel.Clear;
    StringsDisplayLabel.Add('Id Avalista');
    StringsDisplayLabel.Add('Inscrição');
    StringsDisplayLabel.Add('Nome');
    StringsDisplayLabel.Add('Endereço');
    StringsDisplayLabel.Add('Bairro');
    StringsDisplayLabel.Add('Cidade');
    StringsDisplayLabel.Add('Cep');
    StringsDisplayLabel.Add('Estado');
    StringsDisplayLabel.Add('DDD');
    StringsDisplayLabel.Add('Telefone');
    StringsDisplayLabel.Add('Numero');
    StringsDisplayLabel.Add('Nacionalidade');
    StringsDisplayLabel.Add('Naturalidade');
    StringsDisplayLabel.Add('EstadoCivil');
    StringsDisplayLabel.Add('Identidade');
    StringsDisplayLabel.Add('Profissao');

    Select := ' CodigoAvalista, InscricaoAvalista, Nome, Endereco, Bairro '
              +' , Cidade, Cep, Estado, DDD, Telefone , EnderecoNumero, Nacionalidade , Naturalidade '
              +' , EstadoCivil, Identidade, Profissao ';
    Tabela := ' dbo.Kg_Avalista  Ava ';

    Ordem := ' Nome ';

    if ADOPesquisa(Select, Tabela, 'CodigoAvalista' , DMConecta.ADOCapitalDeGiro, NIl,Ordem, Criterio, Join, StringsDisplayLabel ) then
      if (StringsPesquisa.Text <> '') then
      begin
        ADOPropostaId_CodPrimeiroAvalista.AsString := StringsPesquisa.Strings[0];
        DBdtId_CodPrimerioAval.SetFocus;
        DBdtId_CodPrimerioAvalExit(Sender);
      end else
      DBdtId_CodPrimerioAval.SetFocus;
  end;
end;

procedure TFrmCadEmprestimoSimulacao.BitBtn5Click(Sender: TObject);
Var Ordem, Tabela, Select, Join, Criterio : String;
begin
  inherited;
  if ( (ADOProposta.Active) and (ADOPropostaPROCLIE.AsInteger <> 0)  ) then
  begin
    if (ADOProposta.RecordCount > 0)  and not(ADOProposta.State in [DsInsert, DsEdit]) then
      BitBtnAlterarClick(Sender);

    StringsDisplayLabel.Clear;
    StringsDisplayLabel.Add('Id Avalista');
    StringsDisplayLabel.Add('Inscrição');
    StringsDisplayLabel.Add('Nome');
    StringsDisplayLabel.Add('Endereço');
    StringsDisplayLabel.Add('Bairro');
    StringsDisplayLabel.Add('Cidade');
    StringsDisplayLabel.Add('Cep');
    StringsDisplayLabel.Add('Estado');
    StringsDisplayLabel.Add('DDD');
    StringsDisplayLabel.Add('Telefone');
    StringsDisplayLabel.Add('Numero');
    StringsDisplayLabel.Add('Nacionalidade');
    StringsDisplayLabel.Add('Naturalidade');
    StringsDisplayLabel.Add('EstadoCivil');
    StringsDisplayLabel.Add('Identidade');
    StringsDisplayLabel.Add('Profissao');

    Select := ' CodigoAvalista, InscricaoAvalista, Nome, Endereco, Bairro '
              +' , Cidade, Cep, Estado, DDD, Telefone , EnderecoNumero, Nacionalidade , Naturalidade '
              +' , EstadoCivil, Identidade, Profissao ';
    Tabela := ' dbo.Kg_Avalista  Ava ';

    Ordem := ' Nome ';

    if ADOPesquisa(Select, Tabela, 'CodigoAvalista' , DMConecta.ADOCapitalDeGiro, NIl,Ordem, Criterio, Join, StringsDisplayLabel ) then
      if (StringsPesquisa.Text <> '') then
      begin
        ADOPropostaId_CodSegundoAvalista.AsString := StringsPesquisa.Strings[0];
        DBdtId_CodSegundoAval.SetFocus;
        DBdtId_CodSegundoAvalExit(Sender);
      end else
      DBdtId_CodSegundoAval.SetFocus;
  end;

end;

procedure TFrmCadEmprestimoSimulacao.BitBtn8Click(Sender: TObject);
Var Ordem, Tabela, Select, Join, Criterio : String;
begin
  inherited;
  if ( (ADOProposta.Active) and (ADOPropostaPROCLIE.AsInteger <> 0)  ) then
  begin
    if (ADOProposta.RecordCount > 0)  and not(ADOProposta.State in [DsInsert, DsEdit]) then
      BitBtnAlterarClick(Sender);

    StringsDisplayLabel.Clear;
    StringsDisplayLabel.Add('Id Avalista');
    StringsDisplayLabel.Add('Inscrição');
    StringsDisplayLabel.Add('Nome');
    StringsDisplayLabel.Add('Endereço');
    StringsDisplayLabel.Add('Bairro');
    StringsDisplayLabel.Add('Cidade');
    StringsDisplayLabel.Add('Cep');
    StringsDisplayLabel.Add('Estado');
    StringsDisplayLabel.Add('DDD');
    StringsDisplayLabel.Add('Telefone');
    StringsDisplayLabel.Add('Numero');
    StringsDisplayLabel.Add('Nacionalidade');
    StringsDisplayLabel.Add('Naturalidade');
    StringsDisplayLabel.Add('EstadoCivil');
    StringsDisplayLabel.Add('Identidade');
    StringsDisplayLabel.Add('Profissao ');
    Select := ' CodigoAvalista, InscricaoAvalista, Nome, Endereco, Bairro '
              +' , Cidade, Cep, Estado, DDD, Telefone , EnderecoNumero, Nacionalidade , Naturalidade '
              +' , EstadoCivil, Identidade, Profissao ';
    Tabela := ' dbo.Kg_Avalista  Ava ';

    Ordem := ' Nome ';


    if ADOPesquisa(Select, Tabela, 'CodigoAvalista' , DMConecta.ADOCapitalDeGiro, NIl,Ordem, Criterio, Join, StringsDisplayLabel ) then
      if (StringsPesquisa.Text <> '') then
      begin
        ADOPropostaId_CodTerceiroAvalista.AsString := StringsPesquisa.Strings[0];
        DBdtId_CodTerceiroAval.SetFocus;
        DBdtId_CodTerceiroAvalExit(Sender);
      end else
      DBdtId_CodTerceiroAval.SetFocus;
  end;

end;

procedure TFrmCadEmprestimoSimulacao.ChecaUltimaTaxaEfetivaPraticada;
 var
  DtOperacaoPraticada : TDateTime;
  TaxaEfetivaPraticada : Double;
begin
    Auxs := ' SELECT TOP 1 BORDTOP AS DATAOPER, BORTXEF AS TAXAEFETIVA '
           +' FROM FACTBBOR BOR WITH (NOLOCK) '
           +' WHERE BORCLIE =  '+ IntToStr(ADOPropostaPROCLIE.AsInteger)
           +' AND BORDOCUMEN = '+ IntToStr(ADOPropostaPRODOCUMEN.AsInteger)
           +' AND BORCLAS = ''IF'' '
           +' ORDER BY BORDTOP DESC ';

    DMDados.ADOExecuta.Close;
    DMDados.ADOExecuta.SQL.Clear;
    DMDados.ADOExecuta.SQL.Add(Auxs);
    DMDados.ADOExecuta.Open;

    DtOperacaoPraticada      := DMDados.ADOExecuta.Fields[0].AsDateTime;
    TaxaEfetivaPraticada     := DMDados.ADOExecuta.Fields[1].AsFloat;

    If ( (not DMDados.ADOExecuta.IsEmpty)
    and ((ADOPropostaPROTXEF.AsFloat) < (TaxaEfetivaPraticada)) ) then
    begin
      Application.MessageBox(Pchar( 'Taxa Efetiva '+ FormatFloat('#,##0.0000000',ADOPropostaPROTXEF.AsFloat)+ ' é menor que a última praticada em '+FormatDateTime('dd/mm/yyyy',DtOperacaoPraticada)
                                  +chr(10)+''+chr(10)+'Procure o depto de operações para liberação.'), 'Atenção!', MB_OK+MB_ICONEXCLAMATION+MB_DEFBUTTON1+MB_APPLMODAL);
    end;
    DMDados.ADOExecuta.Close;
end;

procedure TFrmCadEmprestimoSimulacao.CBOutrasClick(Sender: TObject);
begin
  inherited;
  DBEdtOutros.Enabled := True;
end;

procedure TFrmCadEmprestimoSimulacao.AjustaValorLiberadoItem;
begin
  ADOParcelaIteValorLiberado.AsFloat :=  ADOParcelaITEVRTI.AsFloat / power( ( ADOPropostaPROTXME.AsFloat / 3000 + 1 ) , ( ADOParcelaITEPRAZ.AsInteger /1 ) )
                                       - ADOParcelaITEVRDC.AsFloat
                                       - ADOParcelaITECCOB.AsFloat
                                       - ADOParcelaITEDESP.AsFloat
                                       - ADOParcelaIteTaxaAdministrativa.AsFloat
                                       - ADOParcelaTaxaAberturaCredito.AsFloat
                                       - ADOParcelaItemVrIOFAproveitamento.AsFloat
                                       - ADOParcelaITEVRIO.AsFloat
                                       - ADOParcelaITEVRIOFC.AsFloat
                                       - ADOParcelaITEVRCAC.AsFloat-ADOParcelaitevrteo.asfloat;
end;


procedure TFrmCadEmprestimoSimulacao.MontaArrayCongelado;
var I : Integer;
    DataAnterior : TdateTime;
    FatorPrazo, FatorIntervalo : Double;
begin
  I := 1;

  TotalItens := 1;
  DataVencimento := IncMonth(ADOPropostaPRODTOP.AsDateTime, 1);
  DataAnterior := ADOPropostaPRODTOP.AsDateTime;
  Calculos[0, 0] := VcalculoPMT;

  while not (I > (ADOPropostaProParcelasCarencia.AsInteger + ADOPropostaPROITEM.AsInteger) ) do
  begin
    PesquisaParcela(I);
    DataVencimento :=  ADOParcelaITEDTVE.AsDateTime;

    VencimentoReal :=  D_maisRegional(DataVencimento, ADOPropostaPROFLOA.AsInteger, ADOPropostaCodigoRegiao.AsInteger );

    Prazo := DaysBetween( ADOPropostaPRODTOP.AsDateTime, VencimentoReal);

    PrazoIOF := Min( DaysBetween( ADOPropostaPRODTOP.AsDateTime, d_maisbancario(DataVencimento,0,'FERIADO BANCÁRIO')), 365);

    Intervalo := DaysBetween( DataAnterior, VencimentoReal);

    FatorPrazo     := ArredondaValor( Power( 1/ ( 1 + adopropostaprotxme.AsFloat / 100), Prazo ), 11);
    FatorIntervalo := ArredondaValor( power(    ( 1 + adopropostaprotxme.AsFloat / 100 ),  ( Intervalo / 1 )  ) -1, 11);

    Calculos[0, TotalItens] := ADOParcelaITEDTVE.AsDateTime;
    Calculos[1, TotalItens] := Prazo;
    Calculos[2, TotalItens] := ADOParcelaiteintervalo.AsFloat;
    Calculos[3, TotalItens] := FatorPrazo;
    Calculos[4, TotalItens] := FatorIntervalo;
    Calculos[5, TotalItens] := ADOParcelaIteJuros.AsFloat;
    Calculos[6, TotalItens] := ADOParcelaIteAmortizacao.AsFloat;
    Calculos[7, TotalItens] := ADOParcelaITEVRIO.AsFloat;
    Calculos[8, TotalItens] := ADOParcelaITEVRTI.AsFloat;
    Calculos[10, TotalItens] := PrazoIOF;
    Calculos[11, TotalItens] := ADOParcelaItePercentualValorPMT.AsFloat;
    Calculos[12, TotalItens] := ADOParcelaITEVRIOFC.AsFloat;
    Calculos[13, TotalItens] := VencimentoReal;

    DataAnterior := VencimentoReal;
    inc(i);
    Inc(TotalItens);
  end;

end;

procedure TFrmCadEmprestimoSimulacao.Atribui_ValorLiquido;
var CustoEfetivo : Double;
begin
  If (Calculos[8, TotalItens] > 0) then
  begin
  ADOParcelaITELIQU.AsFloat := ( ADOParcelaITEVRTI.AsFloat / power( ( ADOPropostaPROTXME.AsFloat / 3000 + 1 ) , ( ADOParcelaITEPRAZ.AsInteger /1 ) ) )
                               - ADOParcelaITECCOB.AsFloat
                               - ADOParcelaITEVRDC.AsFloat
                               - ADOParcelaITEtarifadigitacao.AsFloat
                               - ADOParcelaITETaxaAdministrativa.AsFloat
                               - ADOParcelaTaxaAberturaCredito.AsFloat
                               - ADOParcelaItemVrIOFAproveitamento.AsFloat
                               - ADOParcelaITEVRCAC.AsFloat - ADOParcelaITEDESP.AsFloat
                               - ADOParcelaITETXCA.AsFloat - ADOParcelaITETXRE.AsFloat
                               - ADOParcelaITEVRIO.AsFloat - ADOParcelaITEVRIOFC.AsFloat-ADOParcelaitevrteo.asfloat-ADOParcelaitevalor_ecg.asfloat;


  CustoEfetivo := ADOParcelaITELIQU.AsFloat + ADOParcelaITECCOB.AsFloat + ADOParcelaITEVRDC.AsFloat
                 + ADOParcelaITETARIFADIGITACAO.AsFloat + ADOParcelaITEVRIO.AsFloat
                 + ADOParcelaITEVRIOFC.AsFloat + ADOParcelaITETXRE.AsFloat + ADOParcelaITEVRCAC.AsFloat+ADOParcelaitevrteo.asfloat;

  ADOParcelaITETXEF.AsFloat  := StrToFloat(FloatToStrF(((Power((Power((ADOParcelaITEVRTI.AsFloat
                                      / CustoEfetivo ),(1 / ADOParcelaITEPMEF.AsFloat))),30) -1) * 100),ffFixed,20,7)) ;
  end;
end;

procedure TFrmCadEmprestimoSimulacao.DBEdit14Exit(Sender: TObject);
begin
  inherited;
  OnExit(Sender);
  Atribui_Float
end;

procedure TFrmCadEmprestimoSimulacao.Atribui_Float;
begin
  if (ADOProposta.Active) and (ADOProposta.State in [dsInsert, DsEdit] ) then
     if ( StrToIntDef( ADOPropostaPROFLOA.AsString, 0 ) < ADOClienteCLIFLO.AsInteger ) then
           ADOPropostaPROFLOA.AsString := '0';
  if ADOClienteCLICOD.AsInteger <> 2560 then
  begin
    if ( (ADOProposta.Active) and (ADOProposta.State IN [DSInsert, DSEdit]) and (ADOPropostaPROFLOA.AsInteger < 0) ) then
          ADOPropostaPROFLOA.AsInteger := 0;

    if ( (ADOProposta.Active) and (ADOProposta.State IN [DSInsert, DSEdit]) and (ADOPropostaPROFLOA.AsInteger > 3) ) then
          ADOPropostaPROFLOA.AsInteger := 0;
  end;
end;

procedure TFrmCadEmprestimoSimulacao.BitBtn9Click(Sender: TObject);
Var Ordem, Tabela, Select, Join, Criterio : String;
begin
  inherited;
  if ( (ADOProposta.Active) and (ADOPropostaPROCLIE.AsInteger <> 0)  ) then
  begin
    if (ADOProposta.RecordCount > 0)  and not(ADOProposta.State in [DsInsert, DsEdit]) then
      BitBtnAlterarClick(Sender);

    StringsDisplayLabel.Clear;
    StringsDisplayLabel.Add('Id Avalista');
    StringsDisplayLabel.Add('Inscrição');
    StringsDisplayLabel.Add('Nome');
    StringsDisplayLabel.Add('Endereço');
    StringsDisplayLabel.Add('Bairro');
    StringsDisplayLabel.Add('Cidade');
    StringsDisplayLabel.Add('Cep');
    StringsDisplayLabel.Add('Estado');
    StringsDisplayLabel.Add('DDD');
    StringsDisplayLabel.Add('Telefone');
    StringsDisplayLabel.Add('Numero');
    StringsDisplayLabel.Add('Nacionalidade');
    StringsDisplayLabel.Add('Naturalidade');
    StringsDisplayLabel.Add('EstadoCivil');
    StringsDisplayLabel.Add('Identidade');
    StringsDisplayLabel.Add('Profissao');

    Select := ' CodigoAvalista, InscricaoAvalista, Nome, Endereco, Bairro '
              +' , Cidade, Cep, Estado, DDD, Telefone , EnderecoNumero, Nacionalidade , Naturalidade '
              +' , EstadoCivil, Identidade, Profissao ';
    Tabela := ' dbo.Kg_Avalista  Ava ';

    Ordem := ' Nome ';

    if ADOPesquisa(Select, Tabela, 'CodigoAvalista' , DMConecta.ADOCapitalDeGiro, NIl,Ordem, Criterio, Join, StringsDisplayLabel ) then
      if (StringsPesquisa.Text <> '') then
      begin
        ADOPropostaId_CodQuartoAvalista.AsString := StringsPesquisa.Strings[0];
        DBdtId_CodQuartoAval.SetFocus;
        DBdtId_CodQuartoAvalExit(Sender);
      end else
      DBdtId_CodQuartoAval.SetFocus;
  end;
end;

procedure TFrmCadEmprestimoSimulacao.DBdtId_CodQuartoAvalExit(
  Sender: TObject);
begin
  inherited;
  OnExit(Sender);
  if ( (ADOProposta.Active) and  ( ADOProposta.State in [DsInsert, DsEdit]) ) then
  begin
    if (StrToInt64Def(DBdtId_CodQuartoAval.Text,0) > 0) then
    begin
       Auxs := 'SELECT CodigoAvalista '
              +' ,InscricaoAvalista '
              +' ,Nome '
              +' ,Endereco '
              +' ,Bairro '
              +' ,Cidade '
              +' ,Cep '
              +' ,Estado '
              +' ,DDD '
              +' ,Telefone '
              +' ,EnderecoNumero '
              +' ,Nacionalidade '
              +' ,Naturalidade '
              +' ,EstadoCivil '
              +' ,Identidade '
              +' ,Profissao '
              +' FROM Kg_Avalista with (nolock) where CodigoAvalista =  '+DBdtId_CodQuartoAval.Text;
      with DMDados do
      begin
        ADOExecuta.Close;
        ADOExecuta.SQL.Clear;
        ADOExecuta.SQL.Add( Auxs );
        ADOExecuta.Open;
        if (ADOExecuta.RecordCount < 1 ) then
        begin
          Application.MessageBox('Avalista não encontrado.'+chr(10)+'', 'Atenção', MB_OK+MB_ICONEXCLAMATION+MB_DEFBUTTON1+MB_APPLMODAL);
          DBdtId_CodQuartoAval.SetFocus;
          Abort;
        end;
      end;
    end;
  end;
end;

Procedure TFrmCadEmprestimoSimulacao.AbreContratoExtra( Acao : Integer) ;
begin
  ADOContratoExtra.Close;
  ADOContratoExtra.Parameters[0].Value := ADOPropostaId_ContratoOperacao.AsInteger;
  ADOContratoExtra.Open;
end;

procedure TFrmCadEmprestimoSimulacao.Atribui_TaxaReferencia;
begin
  If ( (ADOProdutoTipoFinanciamento.AsString = 'POS') or
  (ADOProdutoTipoFinanciamento.AsString = 'ROT') ) and (ADOProdutoMOEDA.AsString <> 'IGPM') then
  begin
    ADOPropostaPROTXME.AsFloat := 0.00;
    if (ADOContratoExtra.Active) then
       ADOPropostaTaxaNominalPosFixada.AsFloat := ADOContratoExtraTaxa.AsFloat;

  end else if ( (ADOProdutoTipoFinanciamento.AsString = 'PRE') ) then
  begin
    ADOPropostaTaxaNominalPosFixada.AsFloat := 0.00;
    if (ADOContratoExtra.Active) then
      ADOPropostaPROTXME.AsFloat := ADOContratoExtraTaxa.AsFloat;
  end;
end;

procedure TFrmCadEmprestimoSimulacao.AtualizaIGPM;
begin
  if (  not (ADOPropostaPRODTOP.IsNull ) and (ADOProduto.Active) and ( ADOProdutoTipoFinanciamento.AsString = 'POS' ) and (ADOProdutoMOEDA.AsString <> 'CDI') ) then
  else
    ADOPropostaProTaxaSelic.AsFloat := 0.00;
end;

procedure TFrmCadEmprestimoSimulacao.AtualizaCDI;
begin
  Try
    if (  not (ADOPropostaPRODTOP.IsNull ) and (ADOProduto.Active) and ( ADOProdutoTipoFinanciamento.AsString = 'POS' ) and (ADOProdutoMOEDA.AsString <> 'IGPM') ) then
      ADOPropostaProTaxaSelic.AsFloat := StrToFloatDef( ProcuraNome(' Select TXS_VALOR_1  '
                          +' From [Financeiro].[dbo].[Taxas] with (nolock) '
                          +' Where TXS_DATA = '+#39+FormatDateTime(sqldate,ADOPropostaPRODTOP.AsDateTime)+#39+' and TXS_MDS_CODIGO = 3 ' ) , 0)
    else
      ADOPropostaProTaxaSelic.AsFloat := 0.00;

  except
    on E: Exception do
      ADOPropostaProTaxaSelic.AsFloat := 0.00;
  end;

end;

procedure TFrmCadEmprestimoSimulacao.ADOParcelaAfterInsert(
  DataSet: TDataSet);
begin
  inherited;
  ADOParcelaItePercentualValorPMT.AsFloat := 0;

end;

procedure TFrmCadEmprestimoSimulacao.ADOParcelaBeforePost(DataSet: TDataSet);
var sql: string;
begin
  inherited;
  if (ADOParcela.RecordCount > 1) and (self.Valida_Ord) then
  begin
    sql := '';
    sql := sql + 'declare @proposta int = ' + self.Bordero.text;
	  sql := sql + ' ,@iteclas varchar(2) = ' + quotedstr(self.carteira.text);
    sql := sql + ' ,@dt_vcto datetime = :dt_vcto';
    sql := sql + ' ,@parcela int = ' + ADOParcelaITEORDE.AsString;
    sql := sql + ' declare @vcto_invalido char(1) = ''N'', @min_dt_vcto datetime, @max_dt_vcto datetime';
    sql := sql + '  if @parcela < 1'+
                 ' begin'+
                 '	select @parcela = max(k.ITEORDE)+1'+
                 '    FROM dbo.kg_simulacaoProposta_Item k'+
                 '	Where k.ITEPROP = @proposta'+
                 ' 	  and k.iteclas = @iteclas'+
                 '	group by k.ITEORDE'+
                 ' end';
    sql := sql + ' select @min_dt_vcto = isnull(k.ITEDTVE,0)';
    sql := sql + ' FROM dbo.kg_simulacaoProposta_Item k';
    sql := sql + ' Where k.ITEPROP = @proposta';
    sql := sql + ' 	and k.iteclas = @iteclas';
    sql := sql + ' 	and k.ITEORDE = @parcela - 1';
    sql := sql + ' select @max_dt_vcto = isnull(k.ITEDTVE,dateadd(year,100,@dt_vcto))';
    sql := sql + ' FROM dbo.kg_simulacaoProposta_Item k';
    sql := sql + ' Where k.ITEPROP = @proposta';
    sql := sql + '   and k.iteclas = @iteclas';
    sql := sql + '   and k.ITEORDE = @parcela + 1';

    if DMDados.VerificaQuebraOrdParcela(ADOParcela.Connection, sql, dataset.fieldbyname('ITEDTVE').asdatetime) then
    begin
      raise Exception.Create('');
    end;
  end;
end;

function TFrmCadEmprestimoSimulacao.AutorizacaoBloqueioLimite90Dias(CodigoCedente: Integer): Boolean;
begin
  result := False;
  Auxs := ' select * from Kg_Autorizacao_BloqueioLimite_90Dias with (nolock) where  '
                    +' CodigoCedente = '+ADOPropostaPROCLIE.AsString
                    +' and Autorizacao_Vale_Ate >= '+#39+FormatDateTime(sqldate+' hh:mm:ss.z',PesquisaDataBanco(False))+#39;
  if (DMConecta.ADOCapitalDeGiro.Execute(Auxs).RecordCount > 0) then
    Result := True;
end;
procedure TFrmCadEmprestimoSimulacao.ADOBoletoOperacaoBeforePost(
  DataSet: TDataSet);
begin
  inherited;
  if (ADOBoletoOperacaoProposta.AsVariant = null) then
    ADOBoletoOperacaoProposta.AsInteger := DMDados.Sequencias(ADOBoletoOperacaoCarteira.AsString,'CLAPRO');

end;

procedure TFrmCadEmprestimoSimulacao.ADOBoletoOperacaoAfterPost(
  DataSet: TDataSet);
begin
  inherited;
  Carteira.Text := ADOBoletoOperacaoCarteira.AsString;
  Bordero.Text := ADOBoletoOperacaoProposta.AsString;
end;

procedure TFrmCadEmprestimoSimulacao.ADOBoletoOperacaoAfterOpen(
  DataSet: TDataSet);
begin
  inherited;
  AbreParcelas;
end;

Function TFrmCadEmprestimoSimulacao.AtribuiTipoCarteira : integer;
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
    Application.MessageBox('Não foi possível atribuir automaticamento o código do tipo de carteira.'+chr(10)+''+chr(10)+'                             Faça a seleção manualmente.', 'Atenção', MB_OK+MB_ICONASTERISK+MB_DEFBUTTON1+MB_APPLMODAL);
  end;
end;

procedure TFrmCadEmprestimoSimulacao.CodigoTipoCarteiraExit(
  Sender: TObject);
begin
  inherited;
  OnExit(Sender);
  if (CodigoTipoCarteira.Text <> '') then
  begin
    Auxs := ' select CodigoTipoCarteira, Descricao  '
     + ' from Kg_TipoCarteira TPC with (nolock) '
     + ' where CodigoTipoCarteira = '+CodigoTipoCarteira.Text;
    with (DMDados.ADOExecuta) do
    begin
      Close;
      SQL.Clear;
      SQL.Add(Auxs);
      Open;
      if (Recordset.RecordCount < 1) then
      Begin
        MessageDlg('Codigo do tipo de carteira não encontrado.', mtInformation, [mbOK],0);
        CodigoTipoCarteira.SetFocus;
        Abort;
      end;
    end;
  end;
end;

procedure TFrmCadEmprestimoSimulacao.DBLookupComboBox3DropDown(
  Sender: TObject);
begin
  inherited;
  CodigoTipoCarteiraExit(Sender);
end;

procedure TFrmCadEmprestimoSimulacao.DBLookupComboBox3Click(
  Sender: TObject);
begin
  inherited;
  CodigoTipoCarteiraExit(Sender);
end;

procedure TFrmCadEmprestimoSimulacao.DBLookupComboBox3Exit(
  Sender: TObject);
begin
  inherited;
  If (ADOProposta.Active) then
    CodigoTipoCarteiraExit(Sender);
end;

procedure TFrmCadEmprestimoSimulacao.MemoFormaPagamentoKeyPress(Sender: TObject;
  var Key: Char);
var temp: String;
begin
  if ( (ADOProposta.Active) and ( ADOProposta.State in [DsEdit, dsInsert]) ) then
  begin
    if (Key = #13) then
    begin
      MemoFormaPagamento.Text := Trim(MemoFormaPagamento.Text);
    end else
    begin
      temp := AnsiUpperCase(Key);
      Key := temp[1];
    end;
  end;
end;

procedure TFrmCadEmprestimoSimulacao.DBRdGrpCongelarParcelasChange(
  Sender: TObject);
begin
  inherited;
  if DBRdGrpCongelarParcelas.ItemIndex = 0 then
     BitBtnGerarParcela.Enabled := True
  else
     BitBtnGerarParcela.Enabled := False;
end;

procedure TFrmCadEmprestimoSimulacao.DBEditFatorCorrecaoExit(
  Sender: TObject);
begin
  inherited;
   If (( ADOProdutoTipoFinanciamento.AsString = 'POS' ) and ( ADOPropostaTaxaNominalPosFixada.AsFloat <> 0 ))  then
    If ( RoundTo(100 * ADOPropostaTaxaNominalPosFixada.AsFloat,0) < Round(100 * V_TaxaNominalPOS) ) then
      Application.MessageBox('Fator POS % menor que o determinado pela Diretoria 1,20.'+chr(10)+'', 'Atenção', MB_OK+MB_ICONEXCLAMATION+MB_DEFBUTTON1+MB_APPLMODAL);
end;
procedure TFrmCadEmprestimoSimulacao.DBEditFatorMesExit(Sender: TObject);
begin
  inherited;
 If (( ADOProdutoTipoFinanciamento.AsString = 'PRE' ) and ( ADOPropostaPROTXME.AsFloat <> 0 ))  then
    If ( RoundTo(100 * ADOPropostaPROTXME.AsFloat,0) < Round(100 * V_TaxaNominalPRE) ) then
      Application.MessageBox('Fator PRE % menor que o determinado pela Diretoria 2,50.'+chr(10)+'', 'Atenção', MB_OK+MB_ICONEXCLAMATION+MB_DEFBUTTON1+MB_APPLMODAL);
end;

procedure TFrmCadEmprestimoSimulacao.gerapdf(tipoPessoa: Integer);
var
  NumParcelas, NomeExtenso, NumDias, DiaExtenso: String;
begin

if tipoPessoa=2 then
begin
      If not(Assigned(TQRCedulaCreditoBancarioPJnovo222(QRCedulaCreditoBancarioPJnovo222))) then
        TQRCedulaCreditoBancarioPJnovo222(QRCedulaCreditoBancarioPJnovo222) := TQRCedulaCreditoBancarioPJnovo222.Create(Self,222);

      with (QRCedulaCreditoBancarioPJnovo222) do
      begin
        ADOConsulta( ' Proprop ,cli.clinom Nome ,pro.PROVRBO valor , ProValorLiberado, ProValorReferencia ,convert(varchar,prodtop,103) DtProposta, dbo.MesExtenso(prodtop) MesOperacao, ProValorTacs '
        + ' ,(select top 1 convert(varchar,ITEDTVE,103) from kg_simulacaoProposta_Item with (nolock) where ITEPROP = '+Bordero.Text+' and ITECLAS = '+#39+Carteira.Text+#39' ) DtPrimeiraParcela '
        + ' ,(select top 1 convert(varchar,ITEDTVE,103) from kg_simulacaoProposta_Item with (nolock) where ITEPROP = '+Bordero.Text+' and ITECLAS = '+#39+Carteira.Text+#39' order by ITEDTVE desc) DtVencimento '
        + ' ,(select top 1 ITEORDE from kg_simulacaoProposta_Item with (nolock) where ITEPROP = '+Bordero.Text+' and ITECLAS = '+#39+Carteira.Text+#39' order by ITEDTVE desc) NumParcelas '
        + ' ,(select top 1 ITEVRTI from kg_simulacaoProposta_Item with (nolock) where ITEPROP = '+Bordero.Text+' and ITECLAS = '+#39+Carteira.Text+#39' order by ITEDTVE desc) ValorParcela '
        + ' ,pro.PROCLIE CodCedente, pro.ProValorFinanciado ,prd.TipoFinanciamento '
        + ' ,prd.codigoProduto, convert(numeric(5,2) ,pro.PROTXME) TaxaMes, Protxef TaxaEfetiva, TaxaNominalPosFixada '
        + ' ,ProInfoGarantiasA, ProInfoGarantiasB, ProInfoGarantiasC, ProInfoGarantiasD, ProInfoGarantiasE, ProInfoGarantiasF, ProInfoGarantiasG, ProInfoGarantiasH, ProInfoGarantiasI, ProInfoGarantiasJ,ProInfoGarantiasL '
        + ' ,(case when TipoFinanciamento = ''PRE'' then convert(numeric(5,2),(power( 1 + PROTXME / 100.0000000 , 12) - 1) * 100) '
        + '        when TipoFinanciamento = ''POS'' then convert(numeric(5,2),(power( 1 + isnull(TaxaNominalPosFixada,0) / 100.0000000 , 12) - 1) * 100) '
        + '        when TipoFinanciamento = ''ROT'' then convert(numeric(5,2),(power( 1 + isnull(TaxaNominalPosFixada,0) / 100.0000000 , 12) - 1) * 100) '
        + '   else convert(numeric(5,2),(power( 1 + PROTXME / 100.0000000 , 12) - 1) * 100) '
        + '   end) TaxaAno '
        + ' ,pro.PROVRIO + PROVRIOFC as ValorIOF, PROTXIO, propmed PrazoMedio, PROTXIOFC IOFCOMP, PROVRDC + ProVrCac + PROCCOB + PRODESP + ProTaxaAdministrativa + pro.TaxaAberturaCredito+isnull(valor_ecg,0) as Comissao,custoefetivototal '
        + ' , ContratoReservado, ProMora, ProVias'
        , ' Kg_SimulacaoProposta pro with (nolock)',' Proprop, Nome, valor, ProValorLiberado, DtProposta, DtVencimento, TaxaMes, TaxaEfetiva, TaxaAno, TaxaNominalPosFixada, ValorIOF, PROTXIO, PrazoMedio, TipoFinanciamento, IOFCOMP, Comissao, MesOperacao, NumParcelas, DtPrimeiraParcela, ProValorTacs '
        + ' ,ProInfoGarantiasA, ProInfoGarantiasB, ProInfoGarantiasC, ProInfoGarantiasD, ProInfoGarantiasE, ProInfoGarantiasF, ProInfoGarantiasG, ProInfoGarantiasH, ProInfoGarantiasI, ProInfoGarantiasJ,ProInfoGarantiasL ',DMConecta.ADOCapitalDeGiro, Nil,' proprop desc '
        ,CriterioContrato(''), 'Join Kg_Produto PRD with (nolock) on PRD.CodigoProduto = pro.PRODOCUMEN and isnull(PRD.TipoFinanciamento,''NAD'') <> ''DES'' '
        + ' Join Kg_Promotor prt with (nolock) on pro.prooper = prt.CodigoPromotor '
        + ' Join factbcli cli with (nolock) on clicod = proclie and clitip = ''C''  ');

        QRLblCrontato .Caption := ADO.FieldByName('ContratoReservado').AsString;
        QRLabel128    .Caption :=
          ADO.FieldByName('ProVias').AsString + ' ('+
          Extenso(StrToInt(ADO.FieldByName('ProVias').AsString))+' ) vias, ';
        case via of
          01: QRLblVia.Caption := EmptyStr;
          02: QRLblVia.Caption := EmptyStr;
          else QRLblVia.Caption := EmptyStr;
        end;
        case via of
          01: begin
            qrlCredor.Caption := '(X) VIA DO CREDOR [NEGOCIÁVEL]';
            qrlEmitente.Caption := '( ) VIA DO EMITENTE [NÃO NEGOCIÁVEL]';
          end;
          02: begin
            qrlCredor.Caption := '( ) VIA DO CREDOR [NEGOCIÁVEL]';
            qrlEmitente.Caption := '(X) VIA DO EMITENTE [NÃO NEGOCIÁVEL]';
          end
          else begin
            qrlCredor.Caption := '( ) VIA DO CREDOR [NEGOCIÁVEL]';
            qrlEmitente.Caption := '( ) VIA DO EMITENTE [NÃO NEGOCIÁVEL]';
          end;
        end;


        QRLblComissao.Caption :=             'R$ '+FormatFloat('#,##0.00',ADO.FieldByName('ProValorTacs').AsFloat);
        QRLblDataContrato.Caption :=         ADO.FieldByName('DtProposta').AsString;
        QRLblDataVenc.Caption :=             ADO.FieldByName('DtVencimento').AsString;
        QRLblValor.Caption :=                FormatFloat('#,##0.00',ADO.FieldByName('ProValorReferencia').AsFloat);
        QRLblValorExtenso.Caption :=         '('+UpperCase(NumeroParaExtenso(ADO.FieldByName('ProValorReferencia').AsFloat))+')';
        QRLbliof.Caption :=                  FormatFloat('0.00',ADO.FieldByName('PROTXIO').AsFloat)+'%a.a. + '+FormatFloat('0.00',ADO.FieldByName('IOFCOMP').AsFloat)+'%';
        QRLblValoriof.Caption :=             'R$ '+FormatFloat('#,##0.00',ADO.FieldByName('ValorIOF').AsFloat);
        QRLblDia.Caption :=                  Trim(copy(ADO.FieldByName('DtProposta').AsString,1,2));
        QRLblMes.Caption :=                  ADO.FieldByName('MesOperacao').AsString;
        QRLblAno.Caption :=                  Trim(copy(ADO.FieldByName('DtProposta').AsString,7,4));

        if ADO.FieldByName('ProInfoGarantiasA').AsString = 'SIM' then
           QRLblA.Caption := '(X)';
        if ADO.FieldByName('ProInfoGarantiasB').AsString = 'SIM' then
           QRLblI.Caption := '(X)';
        if ADO.FieldByName('ProInfoGarantiasC').AsString = 'SIM' then
           QRLblB.Caption := '(X)';
        if ADO.FieldByName('ProInfoGarantiasD').AsString = 'SIM' then
           QRLblC.Caption := '(X)';
        if CBOutras.Checked then
        begin
          QRLblE.Caption := '(X)';
          if ADO.FieldByName('ProInfoGarantiasE').AsString <> ''  then
            QRLblOutras.Caption := ADO.FieldByName('ProInfoGarantiasE').AsString
          else QRLblOutras.Caption := '';
        end
        else
          QRLblOutras.Caption := '';
        if ADO.FieldByName('ProInfoGarantiasF').AsString = 'SIM' then
          QRLblF.Caption := '(X)';
        if ADO.FieldByName('ProInfoGarantiasG').AsString = 'SIM' then
          QRLblG.Caption := '(X)';
        if ADO.FieldByName('ProInfoGarantiasH').AsString = 'SIM' then
          QRLblH.Caption := '(X)';
        if ADO.FieldByName('ProInfoGarantiasI').AsString = 'SIM' then
          QRLblD.Caption := '(X)';
        if ADO.FieldByName('ProInfoGarantiasJ').AsString = 'SIM' then
          QRLblJ.Caption := '(X)';
        if ADO.FieldByName('ProInfoGarantiasL').AsString = 'SIM' then
           QRLblL.Caption := '(X)';

        if ADO.FieldByName('TipoFinanciamento').AsString = 'PRE' then
        begin
          QRDBTxtTaxaMes.Enabled :=          True;
          QRDBTxtAno.Enabled :=              True;
          QRDBTxtTaxaMes.Caption :=          FormatFloat('0.00',ADO.FieldByName('TaxaMes').AsFloat);
          QRDBTxtAno.Caption :=              FormatFloat('0.00',ADO.FieldByName('TaxaAno').AsFloat);
          QRDBTxtPosAno.Enabled :=           False;
          QRDBTxtPosMes.Enabled :=           False;
          if ADO.FieldByName('custoefetivototal').isnull  then
            QRLblCET.Enabled :=              False
          else
            QRLblCET.Caption                   := (FormatFloat('0.00',ADO.FieldByName('custoefetivototal').AsFloat));

          QRRichTexto.Lines.Add(MemoFormaPagamento.Lines.Text)

        end else
        begin
          QRDBTxtPosAno.Enabled :=           True;
          QRDBTxtPosMes.Enabled :=           True;
          QRDBTxtPosMes.Caption :=           FormatFloat('0.00',ADO.FieldByName('TaxaNominalPosFixada').AsFloat);
          QRDBTxtPosAno.Caption :=           FormatFloat('0.00',ADO.FieldByName('TaxaAno').AsFloat);
          QRDBTxtTaxaMes.Enabled :=          False;
          QRDBTxtAno.Enabled :=              False;

          if ADO.FieldByName('custoefetivototal').isnull  then
            QRLblCET.Enabled :=              False
          else
            QRLblCET.Caption                   := (FormatFloat('0.00',ADO.FieldByName('custoefetivototal').AsFloat));

          NumParcelas := UpperCase(NumExtenso(StrToFloat(ADO.FieldByName('NumParcelas').AsString)));
          NumDias :=  Trim(copy(ADO.FieldByName('DtPrimeiraParcela').AsString,1,2));
          DiaExtenso := UpperCase(NumExtenso(StrToFloat(Trim(copy(ADO.FieldByName('DtPrimeiraParcela').AsString,1,2)))));
          NomeExtenso :=  UpperCase(NumeroParaExtenso(ADO.FieldByName('ValorParcela').AsFloat));
          QRRichTexto.Lines.Add(MemoFormaPagamento.Lines.Text)
        end;
        ADOConsulta( ' TOP 1 CLINOM, CLIOPE, CLICOD '
          + ' , isnull(clicgc,'''')+isnull(clicgcfili,'''')+isnull(clicgcdv,'''') CNPJ '
          + ' , clitel, clibai, cliend, clicid, cliest, clicep '
          , ' FACTBCLI cli with (nolock) ',' CLINOM, CNPJ, clitel, clibai, cliend, clicid, cliest, clicep ',DMConecta.ADOCapitalDeGiro, Nil,''
          , ' CLICOD = '+ADOClienteCLICOD.AsString+' and CLITIP = ''C'' ','' );

        QRLblNome.Caption :=                 ADO.FieldByName('CLINOM').AsString;
        QRLblEndereco.Caption :=             ADO.FieldByName('cliend').AsString;
        QRLblTelefone.Caption :=             ADO.FieldByName('clitel').AsString;
        QRLblCidade.Caption :=               ADO.FieldByName('clicid').AsString;
        QRLblUF.Caption :=                   ADO.FieldByName('cliest').AsString;
        QRLblCNPJ.Caption :=                 FormataCPFCNPJ(ADO.FieldByName('CNPJ').AsString);
        QRLblBairro.Caption :=               ADO.FieldByName('clibai').AsString;
        QRLblCEP.Caption :=                  ADO.FieldByName('clicep').AsString;
        QRLblPracaPag.Caption :=             ADO.FieldByName('clicid').AsString;
        QRLblRemetente.Caption :=            ADO.FieldByName('CLINOM').AsString;
        TempCedudulaCreditoBancario := '##TmpContratoCedulaCredito_222_1'+FormatDateTime('ddmmyyhhmmzz',now);
        TempCedudulaCreditoBancario2 := '##TmpContratoCedulaCredito_222_2'+FormatDateTime('ddmmyyhhmmzz',now);

        ConsultaParcelas( ' if exists (select * from [tempdb].dbo.sysobjects where id = object_id(N''[tempdb].[dbo].['+TempCedudulaCreditoBancario+']'') and OBJECTPROPERTY(id, N''IsUserTable'') is null ) '
           +' drop table dbo.['+TempCedudulaCreditoBancario+'] SELECT identity (int,1, 1) AS ID_Num, ITEORDE, ITEPROP, ITECLAS, sum(ITEVRTI) as ValorParcela, ITEDTVE ,ITEDOCU ',TempCedudulaCreditoBancario,' dbo.kg_simulacaoProposta_Item ITE with (nolock)'
          ,'ID_Num, ITEPROP, ITECLAS, ValorParcela, ITEDTVE',DMConecta.ADOCapitalDeGiro, Nil,''
          ,CriterioParcelas(''), ' Join Kg_Produto PRD on PRD.CodigoProduto = ITE.ITEDOCU and isnull(PRD.TipoFinanciamento,''NAD'') <> ''DES'' '
          ,' ITEPROP, ITECLAS, ITEORDE, ITEDTVE, ITEDOCU ');
        ConsultaParcelas( ' if exists (select * from [tempdb].dbo.sysobjects where id = object_id(N''[tempdb].[dbo].['+TempCedudulaCreditoBancario2+']'') and OBJECTPROPERTY(id, N''IsUserTable'') is null ) '
           +' drop table dbo.['+TempCedudulaCreditoBancario2+'] SELECT (id_num + 0) as ID_Linha, ITEORDE as Parcela1, ValorParcela as Valor1, convert(int,0) as Parcela2, convert( numeric(38,2), 0.00) as Valor2, convert(int,0) as Parcela3, convert( numeric(38,2), 0.00) as Valor3, '
          +' ITEDTVE as Venc1, convert(DateTime, ''01/01/1900'') as Venc2, convert(DateTime, ''01/01/1900'') as Venc3 ',TempCedudulaCreditoBancario2,TempCedudulaCreditoBancario+' ITE with (nolock)'
          ,' ID_Linha, Valor1, Valor2, Valor3, Venc1, Venc2, Venc3 ',DMConecta.ADOCapitalDeGiro, Nil,''
          ,' id_num = 1 or ( (id_num + 3) - (((id_num + 3) / 3) * 3)  ) = 1 and '+CriterioParcelas(''), ' Join Kg_Produto PRD on PRD.CodigoProduto = ITE.ITEDOCU and isnull(PRD.TipoFinanciamento,''NAD'') <> ''DES'' '
          ,'');
        ConsultaParcelas( ' SELECT (Id_Num - 1) as Id_Linha, convert(int,0) as Parcela1, convert( numeric(38,2), 0.00) as Valor1, ITEORDE as Parcela2, ValorParcela as Valor2, convert(int,0) as Parcela3, convert( numeric(38,2), 0.00) as Valor3, '
          +' convert(DateTime, ''01/01/1900'') as Venc1, ITEDTVE as Venc2, convert(DateTime, ''01/01/1900'') as Venc3 ','',TempCedudulaCreditoBancario+' ITE with (nolock)'
          ,' ID_Linha, Valor1, Valor2, Valor3, Venc1, Venc2, Venc3 ',DMConecta.ADOCapitalDeGiro, Nil,''
          ,' id_num = 2 or ( (id_num + 3) - (((id_num + 3) / 3) * 3)  ) = 2 and '+CriterioParcelas(''), ' Join Kg_Produto PRD on PRD.CodigoProduto = ITE.ITEDOCU and isnull(PRD.TipoFinanciamento,''NAD'') <> ''DES'' '
          ,'',TempCedudulaCreditoBancario2);
        ConsultaParcelas( ' SELECT (Id_Num - 2)  as  Id_Linha, convert(int,0) as Parcela1, convert( numeric(38,2), 0.00) as Valor1, convert(int,0) as Parcela2, convert( numeric(38,2), 0.00) as Valor2, ITEORDE as Parcela3 ,ValorParcela as Valor3, '
          +' convert(DateTime, ''01/01/1900'') as Venc1, convert(DateTime, ''01/01/1900'') as Venc2, ITEDTVE as Venc3 ','',TempCedudulaCreditoBancario+' ITE with (nolock)'
          ,' ID_Linha, Valor1, Valor2, Valor3, Venc1, Venc2, Venc3 ',DMConecta.ADOCapitalDeGiro, Nil,''
          ,' id_num = 3 or ( (id_num + 3) - (((id_num + 3) / 3) * 3)  ) = 0 and '+CriterioParcelas(''), ' Join Kg_Produto PRD on PRD.CodigoProduto = ITE.ITEDOCU and isnull(PRD.TipoFinanciamento,''NAD'') <> ''DES'' '
          ,'',TempCedudulaCreditoBancario2);

        ADOContratoCedula.Close;
        Auxs:= ' select Id_Linha, max(Parcela1) Parcela1, max(Parcela2) Parcela2, max(Parcela3) Parcela3, max(venc1) venc1, max(venc2) venc2, max(venc3) venc3, ';
        Auxs := Auxs +' convert( numeric(15,2),sum(Valor1)) Valor1, convert( numeric(15,2),sum(Valor2)) Valor2, convert(numeric(15,2),sum(Valor3)) Valor3 ';
        Auxs := Auxs +' from '+TempCedudulaCreditoBancario2;
        Auxs := Auxs +' group by Id_Linha ';
        ADOContratoCedula.CommandText := Auxs;
        ADOContratoCedula.Open;
        if ADOPropostaId_CodPrimeiroAvalista.AsInteger <> 0 then
        begin
          ADOPrimeiroAvalista.Close;
          Auxs := 'SELECT CodigoAvalista '
                +' ,InscricaoAvalista '
                +' ,Nome '
                +' ,Endereco '
                +' ,EnderecoNumero '
                +' ,EnderecoComplemento '
                +' ,Bairro '
                +' ,Cidade '
                +' ,Cep '
                +' ,Estado '
                +' ,DDD '
                +' ,Telefone '
                +' ,EnderecoNumero '
                +' ,Nacionalidade '
                +' ,Naturalidade '
                +' ,EstadoCivil '
                +' ,Identidade '
                +' ,Profissao '
                +' FROM Kg_Avalista with (nolock) where CodigoAvalista = '+IntToStr(ADOPropostaId_CodPrimeiroAvalista.AsInteger);
          ADOPrimeiroAvalista.CommandText := Auxs;
          ADOPrimeiroAvalista.Open;

          ADOPrimeiroConjuge.Close;
          Auxs := 'SELECT CodigoAvalista '
                +' ,CpfConjuge '
                +' ,Nome '
                +' FROM Kg_Conjuge with (nolock) where CodigoAvalista = '+IntToStr(ADOPropostaId_CodPrimeiroAvalista.AsInteger);
          ADOPrimeiroConjuge.CommandText := Auxs;
          ADOPrimeiroConjuge.Open;
        end;
        if ADOPropostaId_CodSegundoAvalista.AsInteger <> 0 then
        begin
          ADOSegundoAvalista.Close;
          Auxs := 'SELECT CodigoAvalista '
                +' ,InscricaoAvalista '
                +' ,Nome '
                +' ,Endereco '
                +' ,EnderecoNumero '
                +' ,EnderecoComplemento '
                +' ,Bairro '
                +' ,Cidade '
                +' ,Cep '
                +' ,Estado '
                +' ,DDD '
                +' ,Telefone '
                +' ,EnderecoNumero '
                +' ,Nacionalidade '
                +' ,Naturalidade '
                +' ,EstadoCivil '
                +' ,Identidade '
                +' ,Profissao '
                +' FROM Kg_Avalista with (nolock) where CodigoAvalista = '+IntToStr(ADOPropostaId_CodSegundoAvalista.AsInteger);
          ADOSegundoAvalista.CommandText := Auxs;
          ADOSegundoAvalista.Open;

          ADOSegundoConjuge.Close;
          Auxs := 'SELECT CodigoAvalista '
                +' ,CpfConjuge '
                +' ,Nome '
                +' FROM Kg_Conjuge with (nolock) where CodigoAvalista = '+IntToStr(ADOPropostaId_CodSegundoAvalista.AsInteger);
          ADOSegundoConjuge.CommandText := Auxs;
          ADOSegundoConjuge.Open;
        end;
        if ADOPropostaId_CodTerceiroAvalista.AsInteger <> 0 then
        begin
          ADOTerceiroAvalista.Close;
          Auxs := 'SELECT CodigoAvalista '
                +' ,InscricaoAvalista '
                +' ,Nome '
                +' ,Endereco '
                +' ,EnderecoNumero '
                +' ,EnderecoComplemento '
                +' ,Bairro '
                +' ,Cidade '
                +' ,Cep '
                +' ,Estado '
                +' ,DDD '
                +' ,Telefone '
                +' ,EnderecoNumero '
                +' ,Nacionalidade '
                +' ,Naturalidade '
                +' ,EstadoCivil '
                +' ,Identidade '
                +' ,Profissao '
                +' FROM Kg_Avalista with (nolock) where CodigoAvalista = '+IntToStr(ADOPropostaId_CodTerceiroAvalista.AsInteger);
          ADOTerceiroAvalista.CommandText := Auxs;
          ADOTerceiroAvalista.Open;

          ADOTerceiroConjuge.Close;
          Auxs := 'SELECT CodigoAvalista '
                +' ,CpfConjuge '
                +' ,Nome '
                +' FROM Kg_Conjuge with (nolock) where CodigoAvalista = '+IntToStr(ADOPropostaId_CodTerceiroAvalista.AsInteger);
          ADOTerceiroConjuge.CommandText := Auxs;
          ADOTerceiroConjuge.Open;
        end;
        if ADOPropostaId_CodQuartoAvalista.AsInteger <> 0 then
        begin
          ADOQuartoAvalista.Close;
          Auxs := 'SELECT CodigoAvalista '
                +' ,InscricaoAvalista '
                +' ,Nome '
                +' ,Endereco '
                +' ,EnderecoNumero '
                +' ,EnderecoComplemento '
                +' ,Bairro '
                +' ,Cidade '
                +' ,Cep '
                +' ,Estado '
                +' ,DDD '
                +' ,Telefone '
                +' ,EnderecoNumero '
                +' ,Nacionalidade '
                +' ,Naturalidade '
                +' ,EstadoCivil '
                +' ,Identidade '
                +' ,Profissao '
                +' FROM Kg_Avalista with (nolock) where CodigoAvalista = '+IntToStr(ADOPropostaId_CodQuartoAvalista.AsInteger);
          ADOQuartoAvalista.CommandText := Auxs;
          ADOQuartoAvalista.Open;

          ADOQuartoConjuge.Close;
          Auxs := 'SELECT CodigoAvalista '
                +' ,CpfConjuge '
                +' ,Nome '
                +' FROM Kg_Conjuge with (nolock) where CodigoAvalista = '+IntToStr(ADOPropostaId_CodQuartoAvalista.AsInteger);
          ADOQuartoConjuge.CommandText := Auxs;
          ADOQuartoConjuge.Open;
        end;

        QRCedulaCreditoBancarioPJnovo222.Prepare;
        QRLabel121.Caption:=IntToStr(QRCedulaCreditoBancarioPJnovo222.QRPrinter.PageCount);

        FrmPrincipal.StatusBar.Panels[2].Text := EmptyStr;
        Screen.Cursor := crDefault;
         QRCedulaCreditoBancarioPJnovo222.PreviewModal;
      end;
      QRCedulaCreditoBancarioPJnovo222.Free;
      QRCedulaCreditoBancarioPJnovo222 := Nil;
end
else
 begin
 QRCedulaCreditoBancarioPJ222.Free;
 QRCedulaCreditoBancarioPJ222 := Nil;
  If not(Assigned(TQRCedulaCreditoBancarioPF222(QRCedulaCreditoBancarioPF222))) then
        TQRCedulaCreditoBancarioPF222(QRCedulaCreditoBancarioPF222) := TQRCedulaCreditoBancarioPF222.Create(Self,222);
      with (QRCedulaCreditoBancarioPF222) do
      begin
        ADOConsulta( ' Proprop ,cli.clinom Nome ,pro.PROVRBO valor , ProValorLiberado, ProValorReferencia ,convert(varchar,prodtop,103) DtProposta, dbo.MesExtenso(prodtop) MesOperacao, ProValorTacs '
        + ' ,(select top 1 convert(varchar,ITEDTVE,103) from kg_simulacaoProposta_Item with (nolock) where ITEPROP = '+Bordero.Text+' and ITECLAS = '+#39+Carteira.Text+#39' ) DtPrimeiraParcela '
        + ' ,(select top 1 convert(varchar,ITEDTVE,103) from kg_simulacaoProposta_Item with (nolock) where ITEPROP = '+Bordero.Text+' and ITECLAS = '+#39+Carteira.Text+#39' order by ITEDTVE desc) DtVencimento '
        + ' ,(select top 1 ITEORDE from kg_simulacaoProposta_Item with (nolock) where ITEPROP = '+Bordero.Text+' and ITECLAS = '+#39+Carteira.Text+#39' order by ITEDTVE desc) NumParcelas '
        + ' ,(select top 1 ITEVRTI from kg_simulacaoProposta_Item with (nolock) where ITEPROP = '+Bordero.Text+' and ITECLAS = '+#39+Carteira.Text+#39' order by ITEDTVE desc) ValorParcela '
        + ' ,pro.PROCLIE CodCedente, pro.ProValorFinanciado ,prd.TipoFinanciamento '
        + ' ,prd.codigoProduto, convert(numeric(5,2) ,pro.PROTXME) TaxaMes, Protxef TaxaEfetiva, TaxaNominalPosFixada '
        + ' ,ProInfoGarantiasA, ProInfoGarantiasB, ProInfoGarantiasC, ProInfoGarantiasD, ProInfoGarantiasE, ProInfoGarantiasF, ProInfoGarantiasG, ProInfoGarantiasH, ProInfoGarantiasI, ProInfoGarantiasJ,ProInfoGarantiasL '
        + ' ,(case when TipoFinanciamento = ''PRE'' then convert(numeric(5,2),(power( 1 + PROTXME / 100.0000000 , 12) - 1) * 100) '
        + '        when TipoFinanciamento = ''POS'' then convert(numeric(5,2),(power( 1 + isnull(TaxaNominalPosFixada,0) / 100.0000000 , 12) - 1) * 100) '
        + '        when TipoFinanciamento = ''ROT'' then convert(numeric(5,2),(power( 1 + isnull(TaxaNominalPosFixada,0) / 100.0000000 , 12) - 1) * 100) '
        + '   else convert(numeric(5,2),(power( 1 + PROTXME / 100.0000000 , 12) - 1) * 100) '
        + '   end) TaxaAno '
        + ' ,pro.PROVRIO + PROVRIOFC as ValorIOF, PROTXIO, propmed PrazoMedio, PROTXIOFC IOFCOMP, PROVRDC + ProVrCac + PROCCOB + PRODESP + ProTaxaAdministrativa + pro.TaxaAberturaCredito as Comissao,custoefetivototal '
        + ' , ContratoReservado, ProMora, ProVias'
        , ' Kg_SimulacaoProposta pro with (nolock)',' Proprop, Nome, valor, ProValorLiberado, DtProposta, DtVencimento, TaxaMes, TaxaEfetiva, TaxaAno, TaxaNominalPosFixada, ValorIOF, PROTXIO, PrazoMedio, TipoFinanciamento, IOFCOMP, Comissao, MesOperacao, NumParcelas, DtPrimeiraParcela, ProValorTacs '
        + ' ,ProInfoGarantiasA, ProInfoGarantiasB, ProInfoGarantiasC, ProInfoGarantiasD, ProInfoGarantiasE, ProInfoGarantiasF, ProInfoGarantiasG, ProInfoGarantiasH, ProInfoGarantiasI, ProInfoGarantiasJ,ProInfoGarantiasL ',DMConecta.ADOCapitalDeGiro, Nil,' proprop desc '
        ,CriterioContrato(''), 'Join Kg_Produto PRD with (nolock) on PRD.CodigoProduto = pro.PRODOCUMEN and isnull(PRD.TipoFinanciamento,''NAD'') <> ''DES'' '
        + ' Join Kg_Promotor prt with (nolock) on pro.prooper = prt.CodigoPromotor '
        + ' Join factbcli cli with (nolock) on clicod = proclie and clitip = ''C''  ');

        QRLblCrontato .Caption := ADO.FieldByName('ContratoReservado').AsString;
        QRLbMora      .Caption :=
          FormatFloat('0.00',ADO.FieldByName('ProMora').AsFloat) +'% a.m.';
        QRLabel128    .Caption :=
          ADO.FieldByName('ProVias').AsString + ' ('+
          Extenso(StrToInt(ADO.FieldByName('ProVias').AsString))+' ) vias, ';
        case via of
          01: QRLblVia.Caption := 'VIA DA CREDORA';
          02: QRLblVia.Caption := 'VIA DA DEVEDORA';
          else QRLblVia.Caption := EmptyStr;
        end;

        QRLblDataContrato.Caption :=         ADO.FieldByName('DtProposta').AsString;                     
        QRLblDataVenc.Caption :=             ADO.FieldByName('DtVencimento').AsString;
        QRLblValor.Caption :=                FormatFloat('#,##0.00',ADO.FieldByName('ProValorReferencia').AsFloat);   
        QRLblValorExtenso.Caption :=         '('+NumeroParaExtenso(ADO.FieldByName('ProValorReferencia').AsFloat)+')';
        QRLbliof.Caption :=                  FormatFloat('0.00',ADO.FieldByName('PROTXIO').AsFloat)+'%a.a. + '+FormatFloat('0.00',ADO.FieldByName('IOFCOMP').AsFloat)+'%';
        QRLblValoriof.Caption :=             'R$ '+FormatFloat('#,##0.00',ADO.FieldByName('ValorIOF').AsFloat);
        QRLblDia.Caption :=                  Trim(copy(ADO.FieldByName('DtProposta').AsString,1,2));
        QRLblMes.Caption :=                  ADO.FieldByName('MesOperacao').AsString;
        QRLblAno.Caption :=                  Trim(copy(ADO.FieldByName('DtProposta').AsString,7,4));

        if ADO.FieldByName('ProInfoGarantiasA').AsString = 'SIM' then
           QRLblA.Caption := '(X)';
        if ADO.FieldByName('ProInfoGarantiasB').AsString = 'SIM' then
           QRLblI.Caption := '(X)';
        if ADO.FieldByName('ProInfoGarantiasC').AsString = 'SIM' then
           QRLblB.Caption := '(X)';
        if ADO.FieldByName('ProInfoGarantiasD').AsString = 'SIM' then
           QRLblC.Caption := '(X)';
        if CBOutras.Checked then
        begin
          QRLblE.Caption := '(X)';
          if ADO.FieldByName('ProInfoGarantiasE').AsString <> ''  then
            QRLblOutras.Caption := ADO.FieldByName('ProInfoGarantiasE').AsString
          else QRLblOutras.Caption := '';
        end
        else
          QRLblOutras.Caption := '';
        if ADO.FieldByName('ProInfoGarantiasF').AsString = 'SIM' then
          QRLblF.Caption := '(X)';
        if ADO.FieldByName('ProInfoGarantiasG').AsString = 'SIM' then
          QRLblG.Caption := '(X)';
        if ADO.FieldByName('ProInfoGarantiasH').AsString = 'SIM' then
          QRLblH.Caption := '(X)';
        if ADO.FieldByName('ProInfoGarantiasI').AsString = 'SIM' then
          QRLblD.Caption := '(X)';
        if ADO.FieldByName('ProInfoGarantiasJ').AsString = 'SIM' then
          QRLblJ.Caption := '(X)';
        if ADO.FieldByName('ProInfoGarantiasL').AsString = 'SIM' then
           QRLblL.Caption := '(X)';


        if ADO.FieldByName('TipoFinanciamento').AsString = 'PRE' then
        begin
          QRDBTxtTaxaMes.Enabled :=          True;
          QRDBTxtAno.Enabled :=              True;
          QRDBTxtTaxaMes.Caption :=          FormatFloat('0.00',ADO.FieldByName('TaxaMes').AsFloat);
          QRDBTxtAno.Caption :=              FormatFloat('0.00',ADO.FieldByName('TaxaAno').AsFloat);

          QRDBTxtPosAno.Enabled :=           False;
          QRDBTxtPosMes.Enabled :=           False;
          if ADO.FieldByName('custoefetivototal').isnull  then
            QRLblCET.Enabled :=              False
          else
            QRLblCET.Caption                   := (FormatFloat('0.00',ADO.FieldByName('custoefetivototal').AsFloat));

          QRRichTexto.Lines.Add(MemoFormaPagamento.Lines.Text)

        end else
        begin
          QRDBTxtPosAno.Enabled :=           True;
          QRDBTxtPosMes.Enabled :=           True;
          QRDBTxtPosMes.Caption :=           FormatFloat('0.00',ADO.FieldByName('TaxaNominalPosFixada').AsFloat);
          QRDBTxtPosAno.Caption :=           FormatFloat('0.00',ADO.FieldByName('TaxaAno').AsFloat);
          QRDBTxtTaxaMes.Enabled :=          False;
          QRDBTxtAno.Enabled :=              False;

          if ADO.FieldByName('custoefetivototal').isnull  then
            QRLblCET.Enabled :=              False
          else
            QRLblCET.Caption                   := (FormatFloat('0.00',ADO.FieldByName('custoefetivototal').AsFloat));

          NumParcelas := UpperCase(NumExtenso(StrToFloat(ADO.FieldByName('NumParcelas').AsString)));
          NumDias :=  Trim(copy(ADO.FieldByName('DtPrimeiraParcela').AsString,1,2));
          DiaExtenso := UpperCase(NumExtenso(StrToFloat(Trim(copy(ADO.FieldByName('DtPrimeiraParcela').AsString,1,2)))));
          NomeExtenso :=  UpperCase(NumeroParaExtenso(ADO.FieldByName('ValorParcela').AsFloat));

          QRRichTexto.Lines.Add(MemoFormaPagamento.Lines.Text)

        end;

        ADOConsulta( ' TOP 1 CLINOM, CLIOPE, CLICOD '
          + ' , isnull(clicgc,'''')+isnull(clicgcfili,'''')+isnull(clicgcdv,'''') CNPJ '
          + ' , clitel, clibai, cliend, clicid, cliest, clicep '
          , ' FACTBCLI cli with (nolock) ',' CLINOM, CNPJ, clitel, clibai, cliend, clicid, cliest, clicep ',DMConecta.ADOCapitalDeGiro, Nil,''
          , ' CLICOD = '+ADOClienteCLICOD.AsString+' and CLITIP = ''C'' ','' );

        QRLblNome.Caption :=                 ADO.FieldByName('CLINOM').AsString;
        QRLblEndereco.Caption :=             ADO.FieldByName('cliend').AsString;
        QRLblTelefone.Caption :=             ADO.FieldByName('clitel').AsString;
        QRLblCidade.Caption :=               ADO.FieldByName('clicid').AsString;
        QRLblUF.Caption :=                   ADO.FieldByName('cliest').AsString;
        QRLblCNPJ.Caption :=                 FormataCPFCNPJ(ADO.FieldByName('CNPJ').AsString);
        QRLblBairro.Caption :=               ADO.FieldByName('clibai').AsString;
        QRLblCEP.Caption :=                  ADO.FieldByName('clicep').AsString;
        QRLblPracaPag.Caption :=             ADO.FieldByName('clicid').AsString;
        QRLblRemetente.Caption :=            ADO.FieldByName('CLINOM').AsString;

        TempCedudulaCreditoBancario := '##TmpContratoCedulaCredito_222_1'+FormatDateTime('ddmmyyhhmmzz',now);
        TempCedudulaCreditoBancario2 := '##TmpContratoCedulaCredito_222_2'+FormatDateTime('ddmmyyhhmmzz',now);

        ConsultaParcelas( ' if exists (select * from [tempdb].dbo.sysobjects where id = object_id(N''[tempdb].[dbo].['+TempCedudulaCreditoBancario+']'') and OBJECTPROPERTY(id, N''IsUserTable'') is null ) '
           +' drop table dbo.['+TempCedudulaCreditoBancario+'] SELECT identity (int,1, 1) AS ID_Num, ITEORDE, ITEPROP, ITECLAS, sum(ITEVRTI) as ValorParcela, ITEDTVE ,ITEDOCU ',TempCedudulaCreditoBancario,' dbo.kg_simulacaoProposta_Item ITE with (nolock)'
          ,'ID_Num, ITEPROP, ITECLAS, ValorParcela, ITEDTVE',DMConecta.ADOCapitalDeGiro, Nil,''
          ,CriterioParcelas(''), ' Join Kg_Produto PRD on PRD.CodigoProduto = ITE.ITEDOCU and isnull(PRD.TipoFinanciamento,''NAD'') <> ''DES'' '
          ,' ITEPROP, ITECLAS, ITEORDE, ITEDTVE, ITEDOCU ');
        ConsultaParcelas( ' if exists (select * from [tempdb].dbo.sysobjects where id = object_id(N''[tempdb].[dbo].['+TempCedudulaCreditoBancario2+']'') and OBJECTPROPERTY(id, N''IsUserTable'') is null ) '
           +' drop table dbo.['+TempCedudulaCreditoBancario2+'] SELECT (id_num + 0) as ID_Linha, ITEORDE as Parcela1, ValorParcela as Valor1, convert(int,0) as Parcela2, convert( numeric(38,2), 0.00) as Valor2, convert(int,0) as Parcela3, convert( numeric(38,2), 0.00) as Valor3, '
          +' ITEDTVE as Venc1, convert(DateTime, ''01/01/1900'') as Venc2, convert(DateTime, ''01/01/1900'') as Venc3 ',TempCedudulaCreditoBancario2,TempCedudulaCreditoBancario+' ITE with (nolock)'
          ,' ID_Linha, Valor1, Valor2, Valor3, Venc1, Venc2, Venc3 ',DMConecta.ADOCapitalDeGiro, Nil,''
          ,' id_num = 1 or ( (id_num + 3) - (((id_num + 3) / 3) * 3)  ) = 1 and '+CriterioParcelas(''), ' Join Kg_Produto PRD on PRD.CodigoProduto = ITE.ITEDOCU and isnull(PRD.TipoFinanciamento,''NAD'') <> ''DES'' '
          ,'');
        ConsultaParcelas( ' SELECT (Id_Num - 1) as Id_Linha, convert(int,0) as Parcela1, convert( numeric(38,2), 0.00) as Valor1, ITEORDE as Parcela2, ValorParcela as Valor2, convert(int,0) as Parcela3, convert( numeric(38,2), 0.00) as Valor3, '
          +' convert(DateTime, ''01/01/1900'') as Venc1, ITEDTVE as Venc2, convert(DateTime, ''01/01/1900'') as Venc3 ','',TempCedudulaCreditoBancario+' ITE with (nolock)'
          ,' ID_Linha, Valor1, Valor2, Valor3, Venc1, Venc2, Venc3 ',DMConecta.ADOCapitalDeGiro, Nil,''
          ,' id_num = 2 or ( (id_num + 3) - (((id_num + 3) / 3) * 3)  ) = 2 and '+CriterioParcelas(''), ' Join Kg_Produto PRD on PRD.CodigoProduto = ITE.ITEDOCU and isnull(PRD.TipoFinanciamento,''NAD'') <> ''DES'' '
          ,'',TempCedudulaCreditoBancario2);
        ConsultaParcelas( ' SELECT (Id_Num - 2)  as  Id_Linha, convert(int,0) as Parcela1, convert( numeric(38,2), 0.00) as Valor1, convert(int,0) as Parcela2, convert( numeric(38,2), 0.00) as Valor2, ITEORDE as Parcela3 ,ValorParcela as Valor3, '
          +' convert(DateTime, ''01/01/1900'') as Venc1, convert(DateTime, ''01/01/1900'') as Venc2, ITEDTVE as Venc3 ','',TempCedudulaCreditoBancario+' ITE with (nolock)'
          ,' ID_Linha, Valor1, Valor2, Valor3, Venc1, Venc2, Venc3 ',DMConecta.ADOCapitalDeGiro, Nil,''
          ,' id_num = 3 or ( (id_num + 3) - (((id_num + 3) / 3) * 3)  ) = 0 and '+CriterioParcelas(''), ' Join Kg_Produto PRD on PRD.CodigoProduto = ITE.ITEDOCU and isnull(PRD.TipoFinanciamento,''NAD'') <> ''DES'' '
          ,'',TempCedudulaCreditoBancario2);

        ADOContratoCedula.Close;
        Auxs:= ' select Id_Linha, max(Parcela1) Parcela1, max(Parcela2) Parcela2, max(Parcela3) Parcela3, max(venc1) venc1, max(venc2) venc2, max(venc3) venc3, ';
        Auxs := Auxs +' convert( numeric(15,2),sum(Valor1)) Valor1, convert( numeric(15,2),sum(Valor2)) Valor2, convert(numeric(15,2),sum(Valor3)) Valor3 ';
        Auxs := Auxs +' from '+TempCedudulaCreditoBancario2;
        Auxs := Auxs +' group by Id_Linha ';
        ADOContratoCedula.CommandText := Auxs;
        ADOContratoCedula.Open;
        if ADOPropostaId_CodPrimeiroAvalista.AsInteger <> 0 then
        begin
          ADOPrimeiroAvalista.Close;
          Auxs := 'SELECT CodigoAvalista '
                +' ,InscricaoAvalista '
                +' ,Nome '
                +' ,Endereco '
                +' ,EnderecoNumero '
                +' ,EnderecoComplemento '
                +' ,Bairro '
                +' ,Cidade '
                +' ,Cep '
                +' ,Estado '
                +' ,DDD '
                +' ,Telefone '
                +' ,EnderecoNumero '
                +' ,Nacionalidade '
                +' ,Naturalidade '
                +' ,EstadoCivil '
                +' ,Identidade '
                +' ,Profissao '
                +' FROM Kg_Avalista with (nolock) where CodigoAvalista = '+IntToStr(ADOPropostaId_CodPrimeiroAvalista.AsInteger);
          ADOPrimeiroAvalista.CommandText := Auxs;
          ADOPrimeiroAvalista.Open;

          ADOPrimeiroConjuge.Close;
          Auxs := 'SELECT CodigoAvalista '
                +' ,CpfConjuge '
                +' ,Nome '
                +' FROM Kg_Conjuge with (nolock) where CodigoAvalista = '+IntToStr(ADOPropostaId_CodPrimeiroAvalista.AsInteger);
          ADOPrimeiroConjuge.CommandText := Auxs;
          ADOPrimeiroConjuge.Open;
        end;
        if ADOPropostaId_CodSegundoAvalista.AsInteger <> 0 then
        begin
          ADOSegundoAvalista.Close;
          Auxs := 'SELECT CodigoAvalista '
                +' ,InscricaoAvalista '
                +' ,Nome '
                +' ,Endereco '
                +' ,EnderecoNumero '
                +' ,EnderecoComplemento '
                +' ,Bairro '
                +' ,Cidade '
                +' ,Cep '
                +' ,Estado '
                +' ,DDD '
                +' ,Telefone '
                +' ,EnderecoNumero '
                +' ,Nacionalidade '
                +' ,Naturalidade '
                +' ,EstadoCivil '
                +' ,Identidade '
                +' ,Profissao '
                +' FROM Kg_Avalista with (nolock) where CodigoAvalista = '+IntToStr(ADOPropostaId_CodSegundoAvalista.AsInteger);
          ADOSegundoAvalista.CommandText := Auxs;
          ADOSegundoAvalista.Open;

          ADOSegundoConjuge.Close;
          Auxs := 'SELECT CodigoAvalista '
                +' ,CpfConjuge '
                +' ,Nome '
                +' FROM Kg_Conjuge with (nolock) where CodigoAvalista = '+IntToStr(ADOPropostaId_CodSegundoAvalista.AsInteger);
          ADOSegundoConjuge.CommandText := Auxs;
          ADOSegundoConjuge.Open;
        end;
        if ADOPropostaId_CodTerceiroAvalista.AsInteger <> 0 then
        begin
          ADOTerceiroAvalista.Close;
          Auxs := 'SELECT CodigoAvalista '
                +' ,InscricaoAvalista '
                +' ,Nome '
                +' ,Endereco '
                +' ,EnderecoNumero '
                +' ,EnderecoComplemento '
                +' ,Bairro '
                +' ,Cidade '
                +' ,Cep '
                +' ,Estado '
                +' ,DDD '
                +' ,Telefone '
                +' ,EnderecoNumero '
                +' ,Nacionalidade '
                +' ,Naturalidade '
                +' ,EstadoCivil '
                +' ,Identidade '
                +' ,Profissao '
                +' FROM Kg_Avalista with (nolock) where CodigoAvalista = '+IntToStr(ADOPropostaId_CodTerceiroAvalista.AsInteger);
          ADOTerceiroAvalista.CommandText := Auxs;
          ADOTerceiroAvalista.Open;

          ADOTerceiroConjuge.Close;
          Auxs := 'SELECT CodigoAvalista '
                +' ,CpfConjuge '
                +' ,Nome '
                +' FROM Kg_Conjuge with (nolock) where CodigoAvalista = '+IntToStr(ADOPropostaId_CodTerceiroAvalista.AsInteger);
          ADOTerceiroConjuge.CommandText := Auxs;
          ADOTerceiroConjuge.Open;
        end;
        if ADOPropostaId_CodQuartoAvalista.AsInteger <> 0 then
        begin
          ADOQuartoAvalista.Close;
          Auxs := 'SELECT CodigoAvalista '
                +' ,InscricaoAvalista '
                +' ,Nome '
                +' ,Endereco '
                +' ,EnderecoNumero '
                +' ,EnderecoComplemento '
                +' ,Bairro '
                +' ,Cidade '
                +' ,Cep '
                +' ,Estado '
                +' ,DDD '
                +' ,Telefone '
                +' ,EnderecoNumero '
                +' ,Nacionalidade '
                +' ,Naturalidade '
                +' ,EstadoCivil '
                +' ,Identidade '
                +' ,Profissao '
                +' FROM Kg_Avalista with (nolock) where CodigoAvalista = '+IntToStr(ADOPropostaId_CodQuartoAvalista.AsInteger);
          ADOQuartoAvalista.CommandText := Auxs;
          ADOQuartoAvalista.Open;

          ADOQuartoConjuge.Close;
          Auxs := 'SELECT CodigoAvalista '
                +' ,CpfConjuge '
                +' ,Nome '
                +' FROM Kg_Conjuge with (nolock) where CodigoAvalista = '+IntToStr(ADOPropostaId_CodQuartoAvalista.AsInteger);
          ADOQuartoConjuge.CommandText := Auxs;
          ADOQuartoConjuge.Open;
        end;

        QRCedulaCreditoBancarioPF222.Prepare;
        QRLabel121.Caption:=IntToStr(QRCedulaCreditoBancarioPF222.QRPrinter.PageCount);

        FrmPrincipal.StatusBar.Panels[2].Text := EmptyStr;
        Screen.Cursor := crDefault;
         QRCedulaCreditoBancarioPF222.PreviewModal;
      end;
      QRCedulaCreditoBancarioPF222.Free;
      QRCedulaCreditoBancarioPF222 := Nil;

end;

end;

procedure TFrmCadEmprestimoSimulacao.AtribuiaproveitamentoIOF;
begin
  if DBEditRenegociacao.Text  <> ''  then
  begin
    ADOParcelaItemVrIOFAproveitamento.AsFloat :=  StrToFloat( FloatToStrF( ADOPropostaIOFBeneficio.AsFloat / Total ,ffFixed,15,2))+ RestoVrIOFAproveitamento;
    AdoparcelaItemVrIOFCobrado.AsFloat        :=   StrToFloat( FloatToStrF( adoparcelaITEVRIO.AsFloat -  ADOParcelaItemVrIOFAproveitamento.AsFloat ,ffFixed,15,2));
  end;
end;

end.




