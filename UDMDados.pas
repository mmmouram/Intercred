unit UDMDados;

interface

uses
  Controls, Forms, SysUtils, Classes, DB, ADODB, Variants, Math, Menus,
  Graphics,
  Dialogs, DBTables, StrUtils, SOAPHTTPClient, SOAPHTTPTrans, WinINet, EncdDecd,
  InvokeRegistry, Rio;

type
  TAlerta = class
    ChegadaArquivoPagamentoPortal: Boolean;
    ChegadaArquivoCedente: Boolean;
    ChegadaArquivoRetornoDDA: Boolean;
  end;

  TUsuario = class
    Nivel: integer;
    Tipo: String;
    Codigo: integer;
    Senha: String;
    Usuario: String;
    Nome: String;
    Regiao: integer;
    Cargo: integer;
    CodigoMacrorregiao: integer;
    NivelAcessoArea: integer;
    Grupo: integer;
    Assinatura: TBitmap;
    Alertas: TAlerta;
    RegiaoSuplementar: String;
    CodigoInterCaixa: integer;
    DataAscesso: TDateTime;
    Setor: integer;
    visaogerente: string;
    RedeAD: string;

    constructor Create;
    destructor Free;
  end;

  TEmpresa = class
    Codigo: integer;
    Nome: String;

  end;

  TDMDados = class(TDataModule)
    ADOBuscaGerentes: TADOQuery;
    ADOBuscaColetor: TADOQuery;
    ADOBuscaColetorCOLECOD: TWideStringField;
    ADOBuscaColetorCOLECGC: TWideStringField;
    ADOBuscaColetorCOLEDES: TWideStringField;
    ADOExecuta: TADOQuery;
    ADOBuscaUsuarios: TADOQuery;
    ADOBuscaPerfilSacado: TADOQuery;
    ADOItens: TADODataSet;
    DSOperacao: TDataSource;
    ADOBuscaTPDocumento: TADOQuery;
    ADODUP: TADODataSet;
    DSBOR: TDataSource;
    ADOTpCobranca: TADOQuery;
    PopupMenu: TPopupMenu;
    Pesquisarregistro1: TMenuItem;
    ADOTpSituacao: TADOQuery;
    ADOTpSituacaoTPSITUACAO: TWideStringField;
    ADOTpSituacaoTBLVL1: TWideStringField;
    ADOTpSituacaoTBLVL7: TWideStringField;
    ADOTpSituacaoTBLV10: TWideStringField;
    ADOTpPagamento: TADOQuery;
    ADOClasse: TADOQuery;
    ADOClasseCLACOD: TWideStringField;
    ADOClasseCLAADM: TWideStringField;
    ADOAlinea: TADODataSet;
    ADOHIS: TADODataSet;
    ADOAlineaTBLTIP: TWideStringField;
    ADOAlineaTBLCOD: TWideStringField;
    ADOAlineaCODIGO: TWideStringField;
    ADOAlineaTBLDES: TWideStringField;
    ADOGrupoContabil: TADODataSet;
    ADOGrupoContabilCODIGO: TWideStringField;
    ADOGrupoContabilTBLDES: TWideStringField;
    ADOGrupoContabilTBLCOD: TWideStringField;
    ADOHISNomeGrupo: TStringField;
    ADOCHG: TADODataSet;
    ADOFACTBCTL: TADODataSet;
    DSFACTBCTL: TDataSource;
    ADOFACTBHIS: TADODataSet;
    ADOFACTBHISHISNAT: TWideStringField;
    ADOFACTBHISHISGRUCONDES: TWideStringField;
    ADOGRUPOCONT: TADODataSet;
    ADOGRUPOCONTCODIGO: TWideStringField;
    ADOGRUPOCONTTBLCOD: TWideStringField;
    ADOGRUPOCONTTBLDES: TWideStringField;
    ADOGRUPOCONTTBLVL1: TWideStringField;
    ADOFACTBCKL: TADODataSet;
    ADOFACTBCKP: TADODataSet;
    DSFACTBCKL: TDataSource;
    DSFACTBCKP: TDataSource;
    ADOVirtual: TADODataSet;
    ADOTmp1: TADODataSet;
    ADOTmp2: TADODataSet;
    ADOTmp3: TADODataSet;
    ADOTmp4: TADODataSet;
    ADODUPDUPCLAS: TStringField;
    ADODUPDUPBORD: TIntegerField;
    ADODUPDUPORDE: TIntegerField;
    ADODUPDUPDTOP: TDateTimeField;
    ADODUPDUPCLIE: TIntegerField;
    ADODUPDUPOPER: TIntegerField;
    ADODUPDUPSACA: TIntegerField;
    ADODUPDUPDOCU: TIntegerField;
    ADODUPDUPSERI: TStringField;
    ADODUPDUPTXPE: TBCDField;
    ADODUPDUPVRDC: TBCDField;
    ADODUPDUPCCOB: TBCDField;
    ADODUPDUPBCOB: TIntegerField;
    ADODUPDUPTPCO: TIntegerField;
    ADODUPDUPNBAN: TStringField;
    ADODUPDUPNBAN2: TStringField;
    ADODUPDUPDTVE: TDateTimeField;
    ADODUPDUPDTVEORI: TDateTimeField;
    ADODUPDUPVRTI: TBCDField;
    ADODUPDUPLIQU: TBCDField;
    ADODUPDUPTXAD: TBCDField;
    ADODUPDUPVRAD: TBCDField;
    ADODUPDUPTXPI: TBCDField;
    ADODUPDUPVRPI: TBCDField;
    ADODUPDUPTXIO: TBCDField;
    ADODUPDUPVRIO: TBCDField;
    ADODUPDUPTXIS: TBCDField;
    ADODUPDUPVRIS: TBCDField;
    ADODUPDUPTXFI: TBCDField;
    ADODUPDUPVRFI: TBCDField;
    ADODUPDUPTXIP: TBCDField;
    ADODUPDUPVRIP: TBCDField;
    ADODUPDUPSITU: TIntegerField;
    ADODUPDUPSTAT: TStringField;
    ADODUPDUPDTPG: TDateTimeField;
    ADODUPDUPJURO: TBCDField;
    ADODUPDUPDESC: TBCDField;
    ADODUPDUPVRPG: TBCDField;
    ADODUPDUPOBSE: TIntegerField;
    ADODUPDUPREMESSA: TDateTimeField;
    ADODUPDUPBCOORI: TIntegerField;
    ADODUPDUPRETORNO: TDateTimeField;
    ADODUPDUPULTOCO: TIntegerField;
    ADODUPDUPBCOCORR: TIntegerField;
    ADODUPDUPAGECORR: TStringField;
    ADODUPDUPDTPGSIS: TDateTimeField;
    ADODUPDUPTRANSFE: TStringField;
    ADODUPDUPRECANTE: TBCDField;
    ADODUPDUPDTPT: TDateTimeField;
    ADODUPDUPDTCREPG: TDateTimeField;
    ADODUPDUPCTABCO: TStringField;
    ADODUPDUPDTBX: TDateTimeField;
    ADODUPDUPFLOA: TIntegerField;
    ADODUPDUPTXTR: TBCDField;
    ADODUPDUPVRTR: TBCDField;
    ADODUPDUPTXIOFC: TBCDField;
    ADODUPDUPVRIOFC: TBCDField;
    ADODUPDUPDTPR: TDateTimeField;
    ADODUPDUPTXIO2: TBCDField;
    ADODUPDUPVRIO2: TBCDField;
    ADODUPDUPCMAE: TBCDField;
    ADODUPDUPCONT: TBCDField;
    ADODUPDUPAGE: TIntegerField;
    ADODUPDUPTXCA: TBCDField;
    ADODUPDUPTXRE: TBCDField;
    ADODUPDUPDESP: TBCDField;
    ADODUPDUPTXSA: TBCDField;
    ADODUPDUPVRSA: TBCDField;
    ADODUPDUPCESSAO: TIntegerField;
    ADODUPDUPTPCESSA: TStringField;
    ADODUPDUPDTCESSA: TDateTimeField;
    ADODUPDUPVRCUSTO: TBCDField;
    ADODUPDUPVRRECDE: TBCDField;
    ADODUPDUPDTNEG: TDateTimeField;
    ADODUPDUPSITUNEG: TIntegerField;
    ADODUPDUPDTFECHA: TDateTimeField;
    ADODUPDUPPZEF: TSmallintField;
    ADODUPDUPCARTA: TStringField;
    ADODUPDUPBOLETA: TStringField;
    ADODUPDUPRECCTZ: TStringField;
    ADODUPDUPTXRISCO: TBCDField;
    ADODUPDUPVRRISCO: TBCDField;
    ADODUPDUPCOMCTZ: TStringField;
    ADODUPDUPBORCES: TIntegerField;
    ADODUPDUPDTCRCTB: TDateTimeField;
    ADODUPDUPDTJURI: TDateTimeField;
    ADODUPDUPTXCUSTO: TBCDField;
    ADOItensITESERI: TStringField;
    ADOItensITESACCNPJ: TStringField;
    ADOItensTPDOCUMENTO: TStringField;
    ADOFACTBCKLPROCLAS: TStringField;
    ADOFACTBCKLPROPROP: TIntegerField;
    ADOFACTBCKLPROCLIE: TIntegerField;
    ADOFACTBCKLPRODTOP: TDateTimeField;
    ADOFACTBCKLPROOPER: TIntegerField;
    ADOFACTBCKLPROVRBO: TBCDField;
    ADOFACTBCKLCKLADMI: TStringField;
    ADOFACTBCKLCKLSTCA: TStringField;
    ADOFACTBCKLCKLSTCL: TStringField;
    ADOFACTBCKLCKLNF: TStringField;
    ADOFACTBCKLCKLNFORI: TStringField;
    ADOFACTBCKLCKLNFXER: TStringField;
    ADOFACTBCKLCKLCA: TStringField;
    ADOFACTBCKLCKLCAXER: TStringField;
    ADOFACTBCKLCKLCAXEC: TStringField;
    ADOFACTBCKLCKLCAORI: TStringField;
    ADOFACTBCKLCKLCAORC: TStringField;
    ADOFACTBCKLCKLCO: TStringField;
    ADOFACTBCKLCKLCOPER: TStringField;
    ADOFACTBCKLCKLCOCAR: TStringField;
    ADOFACTBCKLCKLBO: TStringField;
    ADOFACTBCKLCKLBOASS: TStringField;
    ADOFACTBCKLCKLBOCAR: TStringField;
    ADOFACTBCKLCKLDP: TStringField;
    ADOFACTBCKLCKLDPASS: TStringField;
    ADOFACTBCKLCKLDPEND: TStringField;
    ADOFACTBCKLCKLDPREE: TStringField;
    ADOFACTBCKLCKLDPPUL: TStringField;
    ADOFACTBCKLCKLDPS60: TStringField;
    ADOFACTBCKLCKLDPTER: TStringField;
    ADOFACTBCKLCKLDPI15: TStringField;
    ADOFACTBCKLCKLDPCAU: TStringField;
    ADOFACTBCKLCKLDPFIS: TStringField;
    ADOFACTBCKLCKLDPFISQD: TIntegerField;
    ADOFACTBCKLCKLDPFISVR: TBCDField;
    ADOFACTBCKLCKLDPCOL: TStringField;
    ADOFACTBCKLCKLDPCRU: TStringField;
    ADOFACTBCKLCKLDPCRUVR: TBCDField;
    ADOFACTBCKLCKLDPCRUZA: TMemoField;
    ADOFACTBCKLCKLVRDEB: TBCDField;
    ADOFACTBCKLCKLCAU: TStringField;
    ADOFACTBCKLCKLCAU15: TStringField;
    ADOFACTBCKLCKLCAU60: TStringField;
    ADOFACTBCKLCKLPUOP: TStringField;
    ADOFACTBCKLCKLSCI: TStringField;
    ADOFACTBCKLCKLDPEXP: TStringField;
    DSTmp3: TDataSource;
    DSTmp2: TDataSource;
    DSTmp4: TDataSource;
    DSTmp1: TDataSource;
    ADOFACTBBCI: TADODataSet;
    DSFACTBBCI: TDataSource;
    ADOFACTBBCIBCITIP: TStringField;
    ADOFACTBBCIBCIDTL: TDateTimeField;
    ADOFACTBBCIBCICGC: TStringField;
    ADOFACTBBCIBCISIMPLES: TStringField;
    ADOFACTBBCIBCIPERIODO: TStringField;
    ADOFACTBBCIBCIAC: TBCDField;
    ADOFACTBBCIBCIPC: TBCDField;
    ADOFACTBBCIBCIPL: TBCDField;
    ADOFACTBBCIBCILL: TBCDField;
    ADOFACTBBCIBCIET: TBCDField;
    ADOFACTBBCIBCIELP: TBCDField;
    ADOFACTBBCIBCIRLP: TBCDField;
    ADOFACTBBCIBCIFATMED: TBCDField;
    ADOFACTBSCI: TADODataSet;
    DSFACTBSCI: TDataSource;
    ADODUPDUPOURECEB: TBCDField;
    ADODUPDUPTPDOCUMENTO: TStringField;
    ADODUPDUPTPCOBRANCA: TStringField;
    ADOGRUPOCONTTBLTIP: TIntegerField;
    ADOGrupoContabilTBLTIP: TIntegerField;
    ADOHISHISCOD: TIntegerField;
    ADOHISHISNAT: TStringField;
    ADOCHGCHGCLAS: TStringField;
    ADOCHGCHGBORD: TIntegerField;
    ADOCHGCHGORDE: TIntegerField;
    ADOCHGCHGNUME: TIntegerField;
    ADOCHGCHGSERI: TStringField;
    ADOCHGCHGDTLA: TDateTimeField;
    ADOCHGCHGCLIE: TIntegerField;
    ADOCHGCHGSACA: TIntegerField;
    ADOCHGCHGVRCH: TBCDField;
    ADOCHGCHGDTVE: TDateTimeField;
    ADOCHGCHGALIN: TStringField;
    ADOCHGCHGBDEP: TIntegerField;
    ADOCHGCHGOPER: TIntegerField;
    ADOCHGCHGTPOP: TIntegerField;
    ADOCHGCHGSITU: TIntegerField;
    ADOCHGCHGSTAT: TStringField;
    ADOCHGCHGDTPG: TDateTimeField;
    ADOCHGCHGVRMO: TBCDField;
    ADOCHGCHGVRCA: TBCDField;
    ADOCHGCHGVRDE: TBCDField;
    ADOCHGCHGVRPG: TBCDField;
    ADOCHGCHGDDEB: TDateTimeField;
    ADOCHGCHGVDEB: TBCDField;
    ADOCHGCHGDDEV: TDateTimeField;
    ADOCHGCHGVDES: TBCDField;
    ADOCHGCHGAVIS: TIntegerField;
    ADOCHGCHGCTABCO: TStringField;
    ADOCHGCHGRECU: TBCDField;
    ADOCHGCHGOBSE: TStringField;
    ADOCHGCHGDTDEP: TDateTimeField;
    ADOCHGCHGDTCREPG: TDateTimeField;
    ADOCHGCHGDTPGSIS: TDateTimeField;
    ADOCHGCHGDTFECHA: TDateTimeField;
    ADOCHGCHGDTJURI: TDateTimeField;
    ADOCHGCHGVRCUSTO: TBCDField;
    ADOCHGCHGTXCUSTO: TBCDField;
    ADOCHGCHGCOMCTZ: TStringField;
    ADOCHGCHGCONT: TStringField;
    ADOCHGCHGDOCU: TIntegerField;
    ADOCHGCHGRECANTE: TBCDField;
    ADOCHGCHGOURECEB: TBCDField;
    ADOCHGCHGDTCRCTB: TDateTimeField;
    ADOCHGCHGDTVEORI: TDateTimeField;
    ADODUPDUPPRAZ: TIntegerField;
    ADOFACTBCTLCTLDAT: TDateTimeField;
    ADOFACTBCTLCTLLOT: TIntegerField;
    ADOFACTBCTLCTLTLC: TBCDField;
    ADOFACTBCTLCTLSIT: TStringField;
    ADOFACTBCTLCTLTIP: TStringField;
    ADOFACTBCTLCTLVRD: TBCDField;
    ADOFACTBCTLCTLVRC: TBCDField;
    ADOFACTBCTLCTLPER: TIntegerField;
    ADOFACTBCTC: TADODataSet;
    ADOFACTBCTCCTCDAT: TDateTimeField;
    ADOFACTBCTCCTCLOT: TIntegerField;
    ADOFACTBCTCCTCDOC: TIntegerField;
    ADOFACTBCTCCTCTIP: TStringField;
    ADOFACTBCTCCTCVAL: TBCDField;
    ADOFACTBCTCCTCCLI: TIntegerField;
    ADOFACTBCTCCTCDEB: TStringField;
    ADOFACTBCTCCTCCRE: TStringField;
    ADOFACTBCTCCTCHIP: TIntegerField;
    ADOFACTBCTCCTCOPE: TIntegerField;
    ADOFACTBHISHISCOD: TIntegerField;
    ADOFACTBCTCDUPCLAS: TStringField;
    ADOFACTBCTCDUPBORD: TIntegerField;
    ADOFACTBCTCDUPORDE: TIntegerField;
    ADOPreliminar: TADODataSet;
    ADOTpSituacaoCODIGO: TIntegerField;
    ADODUPDUPTXEF: TBCDField;
    ADOBOR: TADODataSet;
    ADOBORBORCLAS: TStringField;
    ADOBORBORBORD: TIntegerField;
    ADOBORBORITEM: TIntegerField;
    ADOBORBORCLIE: TIntegerField;
    ADOBORBOROPER: TIntegerField;
    ADOBORBORDTOP: TDateTimeField;
    ADOBORBORTXME: TFloatField;
    ADOBORBORTXEF: TFloatField;
    ADOBORBORTXPE: TFloatField;
    ADOBORBORTPCA: TStringField;
    ADOBORBORVRDC: TFloatField;
    ADOBORBORCCOB: TFloatField;
    ADOBORBORORDE: TIntegerField;
    ADOBORBORPMED: TFloatField;
    ADOBORBORVRBO: TFloatField;
    ADOBORBORFOME: TFloatField;
    ADOBORBORLIQU: TFloatField;
    ADOBORBORTXAD: TFloatField;
    ADOBORBORVRAD: TFloatField;
    ADOBORBORTXPI: TFloatField;
    ADOBORBORVRPI: TFloatField;
    ADOBORBORTXIO: TFloatField;
    ADOBORBORVRIO: TFloatField;
    ADOBORBORTXFI: TFloatField;
    ADOBORBORVRFI: TFloatField;
    ADOBORBORTXIS: TFloatField;
    ADOBORBORVRIS: TFloatField;
    ADOBORBORTXIP: TFloatField;
    ADOBORBORVRIP: TFloatField;
    ADOBORBORVRINFOR: TFloatField;
    ADOBORBORFPA: TIntegerField;
    ADOBORBORCTBZ: TStringField;
    ADOBORBORNF: TBooleanField;
    ADOBORBORCBMG: TIntegerField;
    ADOBORBORFLOA: TStringField;
    ADOBORBORPZEF: TFloatField;
    ADOBORBORTXTR: TFloatField;
    ADOBORBORVRTR: TFloatField;
    ADOBORBORTXIOFC: TFloatField;
    ADOBORBORVRIOFC: TFloatField;
    ADOBORBORCMAE: TFloatField;
    ADOBORBORCONT: TFloatField;
    ADOBORBORAGE: TIntegerField;
    ADOBORBORTXCA: TFloatField;
    ADOBORBORTXRE: TFloatField;
    ADOBORBORDESP: TFloatField;
    ADOBORBORTXSA: TFloatField;
    ADOBORBORVRSA: TFloatField;
    ADOBORBORUSUARIO: TIntegerField;
    ADOBORBORTXRISCO: TFloatField;
    ADOBORBORVRRISCO: TFloatField;
    ADOBORBORTXANTER: TFloatField;
    ADOBORBORDTANTER: TDateTimeField;
    ADOBORBORREPACTU: TStringField;
    ADOBORBORTPCONTR: TStringField;
    ADOBORBORAVASACA: TStringField;
    ADOBORBORGARSAC: TStringField;
    ADOBORBORDOCUMEN: TIntegerField;
    ADOBORTPDOCUMENTO: TStringField;
    ADOHISHISGRUCON: TIntegerField;
    ADOItensITECLAS: TStringField;
    ADOItensITEPROP: TIntegerField;
    ADOItensITEORDE: TIntegerField;
    ADOItensITEDOCU: TIntegerField;
    ADOItensITETXEF: TFloatField;
    ADOItensITETXPE: TFloatField;
    ADOItensITEVRDC: TFloatField;
    ADOItensITECCOB: TFloatField;
    ADOItensITEDTVE: TDateTimeField;
    ADOItensITEPRAZ: TIntegerField;
    ADOItensITEVRTI: TFloatField;
    ADOItensITEFOME: TFloatField;
    ADOItensITELIQU: TFloatField;
    ADOItensITEOBSE: TStringField;
    ADOItensITETXAD: TFloatField;
    ADOItensITEVRAD: TFloatField;
    ADOItensITETXPI: TFloatField;
    ADOItensITEVRPI: TFloatField;
    ADOItensITETXIO: TFloatField;
    ADOItensITEVRIO: TFloatField;
    ADOItensITETXIS: TFloatField;
    ADOItensITEVRIS: TFloatField;
    ADOItensITETXFI: TFloatField;
    ADOItensITEVRFI: TFloatField;
    ADOItensITETXIP: TFloatField;
    ADOItensITEVRIP: TFloatField;
    ADOItensITEFLOA: TIntegerField;
    ADOItensITETXTR: TFloatField;
    ADOItensITEVRTR: TFloatField;
    ADOItensITETXIOFC: TFloatField;
    ADOItensITEVRIOFC: TFloatField;
    ADOItensITETXCA: TFloatField;
    ADOItensITETXRE: TFloatField;
    ADOItensITEDESP: TFloatField;
    ADOItensITETXSA: TFloatField;
    ADOItensITEVRSA: TFloatField;
    ADOItensITETXRISCO: TFloatField;
    ADOItensITEVRRISCO: TFloatField;
    ADOPreliminarPROCLAS: TStringField;
    ADOPreliminarPROPROP: TIntegerField;
    ADOPreliminarPROITEM: TIntegerField;
    ADOPreliminarPROCLIE: TIntegerField;
    ADOPreliminarPROOPER: TIntegerField;
    ADOPreliminarPRODTOP: TDateTimeField;
    ADOPreliminarPROTXME: TFloatField;
    ADOPreliminarPROTXEF: TFloatField;
    ADOPreliminarPROTXPE: TFloatField;
    ADOPreliminarPROTPCA: TStringField;
    ADOPreliminarPROVRDC: TFloatField;
    ADOPreliminarPROCCOB: TFloatField;
    ADOPreliminarPROORDE: TIntegerField;
    ADOPreliminarPROPMED: TFloatField;
    ADOPreliminarPROVRBO: TFloatField;
    ADOPreliminarPROFOME: TFloatField;
    ADOPreliminarPROLIQU: TFloatField;
    ADOPreliminarPROVRINFOR: TFloatField;
    ADOPreliminarPROTXAD: TFloatField;
    ADOPreliminarPROVRAD: TFloatField;
    ADOPreliminarPROTXPI: TFloatField;
    ADOPreliminarPROVRPI: TFloatField;
    ADOPreliminarPROTXIO: TFloatField;
    ADOPreliminarPROVRIO: TFloatField;
    ADOPreliminarPROTXFI: TFloatField;
    ADOPreliminarPROVRFI: TFloatField;
    ADOPreliminarPROTXIS: TFloatField;
    ADOPreliminarPROVRIS: TFloatField;
    ADOPreliminarPROTXIP: TFloatField;
    ADOPreliminarPROVRIP: TFloatField;
    ADOPreliminarPROFLOA: TStringField;
    ADOPreliminarPROPMEF: TFloatField;
    ADOPreliminarPROTXTR: TFloatField;
    ADOPreliminarPROVRTR: TFloatField;
    ADOPreliminarPROTXIOFC: TFloatField;
    ADOPreliminarPROVRIOFC: TFloatField;
    ADOPreliminarPROEMITE: TStringField;
    ADOPreliminarPROTXCA: TFloatField;
    ADOPreliminarPROTXRE: TFloatField;
    ADOPreliminarPRODESP: TFloatField;
    ADOPreliminarPROTXSA: TFloatField;
    ADOPreliminarPROVRSA: TFloatField;
    ADOPreliminarPROUSUARIO: TIntegerField;
    ADOPreliminarPROCMAE: TFloatField;
    ADOPreliminarPROTXRISCO: TFloatField;
    ADOPreliminarPROVRRISCO: TFloatField;
    ADOPreliminarPROTXANTE: TFloatField;
    ADOPreliminarPRODTOPAN: TDateTimeField;
    ADOPreliminarPROTXEFAN: TFloatField;
    ADOPreliminarPROTXMEPEN: TFloatField;
    ADOPreliminarPRODTOPPEN: TDateTimeField;
    ADOPreliminarPROTXEFPEN: TFloatField;
    ADOPreliminarPROSTATUS: TStringField;
    ADOFACTBCTCCTCHIS: TMemoField;
    ADOFACTBCKPCKPTIPO: TIntegerField;
    ADOFACTBCKPPROCLAS: TStringField;
    ADOFACTBCKPPROPROP: TIntegerField;
    ADOFACTBCKPCKPDTLA: TDateTimeField;
    ADOFACTBCKPCKPSERIE: TStringField;
    ADOFACTBCKPCKPVLRD: TFloatField;
    ADOFACTBCKPCKPDTVE: TDateTimeField;
    ADOFACTBCKPCKPDTRE: TDateTimeField;
    ADOFACTBCKLCKLOBSERVA: TMemoField;
    ADOFACTBCKLCKLDPEXPRE: TMemoField;
    ADODUPDUPFOME: TFloatField;
    ADOEmpresa: TADODataSet;
    ADOFACTBCKPID_CKP: TAutoIncField;
    ADOFACTBCKPCKPRECEBI: TStringField;
    ADOFACTBCKPCKPSACA: TStringField;
    ADOFACTBSCISCITIP: TStringField;
    ADOFACTBSCISCICLI: TIntegerField;
    ADOFACTBSCISCICGC: TStringField;
    ADOFACTBSCISCIDTL: TDateTimeField;
    ADOFACTBSCISCIPGAVI: TIntegerField;
    ADOFACTBSCISCIPGPON: TIntegerField;
    ADOFACTBSCISCIPGVRP: TFloatField;
    ADOFACTBSCISCIPGATI: TIntegerField;
    ADOFACTBSCISCIPGATF: TIntegerField;
    ADOFACTBSCISCIPGPGA: TIntegerField;
    ADOFACTBSCISCIPGVRA: TFloatField;
    ADOFACTBSCISCIPGQ15: TIntegerField;
    ADOFACTBSCISCIPGV15: TFloatField;
    ADOFACTBSCISCIPGQ30: TIntegerField;
    ADOFACTBSCISCIPGV30: TFloatField;
    ADOFACTBSCISCIPGQ60: TIntegerField;
    ADOFACTBSCISCIPGV60: TFloatField;
    ADOFACTBSCISCIPGQ999: TIntegerField;
    ADOFACTBSCISCIPGV999: TFloatField;
    ADOFACTBSCISCIMFQDE: TIntegerField;
    ADOFACTBSCISCIMFVLR: TFloatField;
    ADOFACTBSCISCIMFMED: TFloatField;
    ADOFACTBSCISCIMAQDE: TIntegerField;
    ADOFACTBSCISCIMAVLR: TFloatField;
    ADOFACTBSCISCIMAMED: TFloatField;
    ADOFACTBSCISCIPTQDE: TIntegerField;
    ADOFACTBSCISCIPTVAC: TFloatField;
    ADOFACTBSCISCIPTPER: TStringField;
    ADOFACTBSCISCIPTLPR: TStringField;
    ADOFACTBSCISCIPTDPR: TStringField;
    ADOFACTBSCISCIPTVPR: TFloatField;
    ADOFACTBSCISCIPTLSE: TStringField;
    ADOFACTBSCISCIPTDSE: TStringField;
    ADOFACTBSCISCIPTVSE: TFloatField;
    ADOFACTBSCISCIPTLTE: TStringField;
    ADOFACTBSCISCIPTDTE: TStringField;
    ADOFACTBSCISCIPTVTE: TFloatField;
    ADOFACTBSCISCIPTLQU: TStringField;
    ADOFACTBSCISCIPTDQU: TStringField;
    ADOFACTBSCISCIPTVQU: TFloatField;
    ADOFACTBSCISCIPTPONTO: TIntegerField;
    ADOFACTBSCISCIPFQDE: TIntegerField;
    ADOFACTBSCISCIPFPER: TStringField;
    ADOFACTBSCISCIPFLOC: TStringField;
    ADOFACTBSCISCIPFPONTO: TIntegerField;
    ADOFACTBSCISCIAEQDE: TIntegerField;
    ADOFACTBSCISCIAEPER: TStringField;
    ADOFACTBSCISCIAELOC: TStringField;
    ADOFACTBSCISCIAEMQDE: TIntegerField;
    ADOFACTBSCISCIAEMPER: TStringField;
    ADOFACTBSCISCIAEMLOC: TStringField;
    ADOFACTBSCISCIAEEQDE: TIntegerField;
    ADOFACTBSCISCIAEEPER: TStringField;
    ADOFACTBSCISCIAEELOC: TStringField;
    ADOFACTBSCISCIAEFQDE: TIntegerField;
    ADOFACTBSCISCIAEFPER: TStringField;
    ADOFACTBSCISCIAEFLOC: TStringField;
    ADOFACTBSCISCIAEPRIQD: TIntegerField;
    ADOFACTBSCISCIAEPRIPE: TStringField;
    ADOFACTBSCISCIAEPRILO: TStringField;
    ADOFACTBSCISCIAEPUBPO: TIntegerField;
    ADOFACTBSCISCIAEPRIPO: TIntegerField;
    ADOFACTBSCISCICHQDE: TIntegerField;
    ADOFACTBSCISCICHPER: TStringField;
    ADOFACTBSCISCICHBAN: TStringField;
    ADOFACTBSCISCICHPONTO: TIntegerField;
    ADOFACTBSCISCICOQDE: TIntegerField;
    ADOFACTBSCISCICOPER: TStringField;
    ADOFACTBSCISCICOLOC: TStringField;
    ADOFACTBSCISCICOPONTO: TIntegerField;
    ADOFACTBSCISCITEULTIM: TStringField;
    ADOFACTBSCISCITEPENUL: TStringField;
    ADOFACTBSCISCITEANTIP: TStringField;
    ADOFACTBSCISCIOUTROQD: TIntegerField;
    ADOFACTBSCISCIOUTRODE: TStringField;
    ADOFACTBSCISCIOUTROPO: TIntegerField;
    ADOFACTBSCISCIOUTROPE: TStringField;
    ADOSen: TADODataSet;
    ADOSenSENUSU: TIntegerField;
    ADOSenSENNOM: TStringField;
    ADOSenSENSEN: TStringField;
    ADOSenSENNIV: TIntegerField;
    ADOSenSENATI: TBooleanField;
    ADOSenSENTER: TStringField;
    ADOSenSENAPELIDO: TStringField;
    ADOSenSENTPUSU: TStringField;
    ADOSenSenRegiao: TIntegerField;
    ADOSenSENSTATUS: TStringField;
    ADOSenSENENTRADA: TDateTimeField;
    ADOSenSENSAIDA: TDateTimeField;
    ADOSenCodigoGrupo: TIntegerField;
    ADOSenSENNOVA: TStringField;
    ADOPreliminarPROTXCAC: TFloatField;
    ADOPreliminarPROVRCAC: TFloatField;
    ADOBuscaGerentesCODIGO: TIntegerField;
    ADOBuscaGerentesGERENTE: TStringField;
    ADOBuscaTPDocumentoCODIGO: TIntegerField;
    ADOBuscaTPDocumentoTPDOCUMENTO: TStringField;
    ADOBuscaPerfilSacadoCODIGO: TIntegerField;
    ADOBuscaPerfilSacadoPERFIL: TStringField;
    ADOTpCobrancaCODIGO: TIntegerField;
    ADOTpCobrancaTPCOBRANCA: TStringField;
    ADOTpPagamentoCODIGO: TIntegerField;
    ADOTpPagamentoTPPAGAMENTO: TStringField;
    ADOItensITETXCAC: TFloatField;
    ADOItensITEVRCAC: TFloatField;
    ADOBORBORTXCAC: TFloatField;
    ADOBORBORVRCAC: TFloatField;
    ADODUPDUPTXCAC: TFloatField;
    ADOBuscaTPDocumentoBoleta: TStringField;
    ADOBuscaTPDocumentoCarta: TStringField;
    ADODUPDUPVRCAC: TFloatField;
    ADOBuscaUsuariosSENUSU: TIntegerField;
    ADOBuscaUsuariosSENNOM: TStringField;
    ADOBuscaUsuariosSENNIV: TIntegerField;
    ADOBuscaUsuariosSENAPELIDO: TStringField;
    ADOBuscaUsuariosCodigoGrupo: TIntegerField;
    ADOBuscaUsuariosSENREGIAO: TIntegerField;
    ADOFACTBHISHISGRUCON: TIntegerField;
    ADODUPDupdtprevi: TDateTimeField;
    ADOFACCESBO: TADODataSet;
    ADOFACCESBOCESBORDERO: TIntegerField;
    ADOFACCESBOCESBORDATA: TDateTimeField;
    ADOFACCESBOCESBORBCO: TIntegerField;
    ADOFACCESBOCESBORVRIN: TFloatField;
    ADOFACCESBOCESBORCART: TIntegerField;
    ADOFACCESBOCESBORTAXA: TFloatField;
    ADOFACCESBOCESBORFLOA: TIntegerField;
    ADOFACCESBOCESBORCAPT: TFloatField;
    ADOFACCESBOCESBORARQU: TStringField;
    ADOFACCESBOCESBORFINA: TFloatField;
    ADOFACCESBOCESBORPRIN: TFloatField;
    ADOFACCESBOCESPRESEN: TFloatField;
    ADOFACCESBOCESPRIVENC: TDateTimeField;
    ADOFACCESBOCESULTVENC: TDateTimeField;
    ADOFACCESBOCESPMEDIO: TFloatField;
    ADOFACCESBOCESBORITEM: TIntegerField;
    ADOFACCESIT: TADODataSet;
    ADOFACCESITCESBORDERO: TIntegerField;
    ADOFACCESITCESITEM: TIntegerField;
    ADOFACCESITCESDUPCLAS: TStringField;
    ADOFACCESITCESDUPBORD: TIntegerField;
    ADOFACCESITCESDUPORDE: TIntegerField;
    ADOFACCESITCESITEVRPR: TFloatField;
    ADOFACCESITCESPRAZO: TIntegerField;
    ADOFACCESITCESPRAZOEF: TIntegerField;
    ADOFACCESITCESVRVENDA: TFloatField;
    ADOFACCESBOCESTAXASOBREVALORFACE: TFloatField;
    ADOFACTBBCIBCICLI: TIntegerField;
    ADOBuscaUsuariosASSINATURA: TBlobField;
    ADOFACTBCTCCTCDataInsert: TDateTimeField;
    ADOFACTBCTCCTCDataUpdate: TDateTimeField;
    ADOFACTBCTCCTCUsuarioInsert: TIntegerField;
    ADOFACTBCTCCTCUsuarioUpdate: TIntegerField;
    ADOFACTBCTCID_CTC: TAutoIncField;
    ADOFACTBCKPUsuarioInsert: TIntegerField;
    ADOFACTBCKPUsuarioUpdate: TIntegerField;
    ADOFACTBCKPUsuarioBaixou: TIntegerField;
    ADOFACTBCKPDataRecebimento: TDateTimeField;
    ADOFACTBCKPDataUpdate: TDateTimeField;
    ADOPreliminarProTaxaAdministrativa: TFloatField;
    ADOItensIteTaxaAdministrativa: TFloatField;
    ADODUPdupTaxaAdministrativa: TFloatField;
    ADOBORBorTaxaAdministrativa: TFloatField;
    ADOPreliminarPRODOCUMEN: TIntegerField;
    ADOPreliminarTPDOCUMENTO: TStringField;
    ADOPreliminarCodigoTabelaTarifa: TIntegerField;
    ADOBORCodigoTabelaTarifa: TIntegerField;
    ADOBORBORUSUARIOUpdate: TIntegerField;
    ADOBuscaUsuariosRecebeMensagemChegadaArquivo: TStringField;
    ADOPreliminarPROAGE: TIntegerField;
    ADOPreliminarPROCONT: TFloatField;
    ADOItensCodigoSacado: TIntegerField;
    ADOPreliminarPROTPCONTR: TStringField;
    ADOPreliminarPROAVASACA: TStringField;
    ADOPreliminarPROORIGEM: TStringField;
    ADOItensSacTip: TStringField;
    ADOItensITECARTA: TStringField;
    ADOItensITEBOLETA: TStringField;
    ADOPreliminarProTaxaTMF: TFloatField;
    ADOPreliminarProValorTMF: TFloatField;
    ADOItensIteTaxaTMF: TFloatField;
    ADOItensIteValorTMF: TFloatField;
    ADOBORBorTaxaTMF: TFloatField;
    ADOBORBorValorTMF: TFloatField;
    ADODUPDupTaxaTMF: TFloatField;
    ADODUPDupValorTMF: TFloatField;
    ADOItensIteNban: TStringField;
    ADOItensITEBCOB: TIntegerField;
    ADOPreliminarStatusBoletoOperacao: TStringField;
    ADOBORBortarifadigitacao: TFloatField;
    ADOItensITETARIFADIGITACAO: TFloatField;
    ADODUPDuptarifadigitacao: TFloatField;
    ADOPreliminarPROTARIFADIGITACAO: TFloatField;
    ADOPreliminarPROCOBRATARIFADIGITACAO: TStringField;
    ADOBORBORCOBRATARIFADIGITACAO: TStringField;
    ADOBuscaUsuariosSENSEN: TStringField;
    ADOBuscaTPDocumentoCodigoTabelaTarifa: TIntegerField;
    ADOBuscaTPDocumentoVencimentoUtil: TStringField;
    ADOFACTBCKPDUPORDE: TIntegerField;
    ADOFACCESBOCESCongelarValorPresente: TStringField;
    ADOFACCESBOCESCNPJCESSIONARIO: TStringField;
    ADOPreliminarTaxaEfetivaMinima: TFloatField;
    ADOFACTBCTLCTLCONTROL: TIntegerField;
    ADOPreliminarCodigoTipoCarteira: TIntegerField;
    ADOBORCodigoTipoCarteira: TIntegerField;
    ADOFACTBHISHISDES: TStringField;
    ADOHISHISDES: TStringField;
    ADOItensITEReservado: TStringField;
    ADODUPDUPReservado: TStringField;
    Filtrar1: TMenuItem;
    CancelarFiltro1: TMenuItem;
    ADOBuscaUsuariosSENSTATUS: TStringField;
    ADOPreliminarProTipoPagtoIOF: TStringField;
    ADOPreliminarProTipoPagtoTAC: TStringField;
    ADOBORTaxaNominalPosFixada: TFloatField;
    ADOBORBorTipoPagtoIOF: TStringField;
    ADOBORBorTipoPagtoTac: TStringField;
    ADOBORBorValorTacs: TFloatField;
    ADOPreliminarCodigoRegiao: TIntegerField;
    ADOBORCodigoRegiao: TIntegerField;
    ADOPreliminarProIsentarTarifaDigitacao: TStringField;
    ADOPreliminarCodigoControleArquivo: TIntegerField;
    ADOItensITEPMEF: TIntegerField;
    ADODUPRemessaOcorrenciaBancaria: TIntegerField;
    ADOBuscaUsuariosNivelAcessoArea: TIntegerField;
    ADOBuscaUsuariosId_cargo: TIntegerField;
    ADOBuscaUsuariosSenRegiaoSuplementar: TStringField;
    ADOFACCESBOCESCONTRATOBANCARIO: TStringField;
    ADOBuscaUsuariosCodigoMacrorregiao: TIntegerField;
    ADOPreliminarCodigoCenario: TIntegerField;
    ADOExecQuery: TADODataSet;
    ADOBORBorTravaCemig: TStringField;
    ADOBuscaUsuariosRecebeMensagemChegadaRetornoDDA: TStringField;
    ADOexecutainterprocessamento: TADOQuery;
    AdoCl01: TADODataSet;
    AdoCl01CL01_NR_CLIENT: TBCDField;
    AdoCl01CL01_TP_PESSOA: TStringField;
    AdoCl01CL01_NR_CPFCNPJ: TStringField;
    AdoCl01CL01_NM_CLIENT: TStringField;
    AdoCl01CL01_TP_CATEG: TStringField;
    AdoCl01CL01_DT_INCSIS: TDateTimeField;
    AdoCl01CL01_NR_CLIAGE: TIntegerField;
    AdoCl01CL01_NR_INST: TIntegerField;
    ADOBuscaAtividade: TADOQuery;
    ADOBuscaAtividadeCODIGO: TIntegerField;
    ADOBuscaAtividadeATIVIDADE: TStringField;
    ADOBuscaAtividadeGRUPO: TIntegerField;
    ADOPreliminarProTacDigitada: TFloatField;
    ADOPreliminarCustoEfetivoTotal: TFloatField;
    ADOPreliminarProCartaAgronegocio: TStringField;
    ADOExecutaUtil: TADOQuery;
    ADOBuscaUsuariosSENTPUSU: TMemoField;
    ADOBuscaUsuariosCodInterCaixa: TIntegerField;
    ADOPreliminarproCodPriAval: TIntegerField;
    ADOPreliminarproCodSegAval: TIntegerField;
    ADOPreliminarproCodTerAval: TIntegerField;
    ADOPreliminarproCodQuaAval: TIntegerField;
    ADOHISTransacaoSAP: TIntegerField;
    ADOFACTBCTCNSUSAP: TStringField;
    ADOFACTBCTCCTCPARCELAPARCIAL: TIntegerField;
    ADOFACTBCTCNSUSapPrd: TStringField;
    ADOBORTaxaAberturaCredito: TFloatField;
    ADOPreliminartaxaaberturacredito: TFloatField;
    ADOItensTAXAABERTURACREDITO: TFloatField;
    ADODUPTaxaAberturaCredito: TFloatField;
    ADOUtil: TADOCommand;
    AdoPesquisaLancamentoCC: TADODataSet;
    ADOsaldolancamento: TADODataSet;
    PesquisaCEP: TADODataSet;
    PesquisaCEPMUN_NU: TStringField;
    PesquisaCEPUFE_SG: TStringField;
    PesquisaCEPLOC_NO: TStringField;
    PesquisaCEPBAI_NO: TStringField;
    PesquisaCEPTLO_TX: TStringField;
    PesquisaCEPLOG_NO: TStringField;
    PesquisaCEPCEP: TStringField;
    PesquisaCEPLOG_COMPLEMENTO: TStringField;
    PesquisaCEPNOME: TStringField;
    AchaCEP: TADODataSet;
    AchaCEPCOD_MUNICIPIO: TStringField;
    AchaCEPESTADO: TStringField;
    AchaCEPCIDADE: TStringField;
    AchaCEPBAIRRO: TStringField;
    AchaCEPLOGRADOURO: TStringField;
    AchaCEPCEP: TStringField;
    AchaCEPCOMPLEMENTO: TStringField;
    ADOPreliminarProDomicilioBancario: TStringField;
    SP_ControleAcessoSistema: TADOStoredProc;
    ADOBuscaUsuariosCod_Ad: TStringField;
    ADOBuscaUsuariosCodigoSetor: TIntegerField;
    SP_ControleAcessoTela: TADOStoredProc;
    ADOSacado: TADODataSet;
    ADOSacadoclitip: TStringField;
    ADOSacadoclicod: TIntegerField;
    ADOSacadoclipes: TIntegerField;
    ADOSacadoclicgc: TStringField;
    ADOSacadoclicgcfili: TStringField;
    ADOSacadoclicgcdv: TStringField;
    ADOSacadoclinom: TStringField;
    ADOSacadoclicep: TStringField;
    ADOSacadocliend: TStringField;
    ADOSacadoclibai: TStringField;
    ADOSacadoclicid: TStringField;
    ADOSacadocliest: TStringField;
    ADOSacadoclitel: TStringField;
    ADOSacadoclifax: TStringField;
    ADOSacadoclicre: TStringField;
    ADOSacadoclidtc: TDateTimeField;
    ADOSacadoclilim: TBCDField;
    ADOSacadoclidtl: TDateTimeField;
    ADOSacadoclidtf: TDateTimeField;
    ADOSacadoclicarta: TStringField;
    ADOSacadocliboleta: TStringField;
    ADOSacadocliemptitu: TIntegerField;
    ADOSacadoclihisto: TMemoField;
    ADOSacadocliati: TIntegerField;
    ADOSacadoclilibsal: TStringField;
    ADOSacadoclicontato: TStringField;
    ADOSacadocliemail: TStringField;
    ADOSacadoCLIDDA: TStringField;
    ADOSacadoDiasProtesto: TIntegerField;
    ADOSacadoEmiteCartorio: TStringField;
    ADOSacadocodclisap: TIntegerField;
    ADOSacadofatmedsacado: TBCDField;
    ADOSacadoCLIIES: TStringField;
    ADOSacadoCliporte: TStringField;
    ADOSacadoOptanteSimples: TStringField;
    ADOSacadoCliDataUpdate: TDateTimeField;
    ADOSacadoCliUsuarioUpdate: TIntegerField;
    ADOSacadocliope: TIntegerField;
    ADOSacadoPatrimonio: TBCDField;
    ADOSacadoclisetoratividade: TStringField;
    HTTPRIOrecebimento: THTTPRIO;
    SP_CL01: TADOStoredProc;
    ADOPreliminarPROTXTEO: TFloatField;
    ADOPreliminarPROVRTEO: TFloatField;
    ADOItensITENUME: TStringField;
    ADOFACTBCKPCKPNUME: TStringField;
    ADODUPDUPNUME: TStringField;
    qryADOPostgree: TADOQuery;
    AdoCondicoes: TADOQuery;
    ADOBuscaUsuariosVISAO_GERENTE: TStringField;
    ADOBuscaUsuariosDescricao: TStringField;
    ADOBuscaUsuariosRecebeMensagemPagamentoPortal: TStringField;
    ADOSacadoCLISEXO: TStringField;
    ADOIDCLIENTE: TADOCommand;
    ADOSacadoCODTELA: TStringField;
    ADOIDPROPOSTA: TADOCommand;
    ADOPreliminarTELA: TStringField;
    ADOBORTELA: TStringField;

    function Hoje: TDateTime;
    function DigitoCedenteSacado(Numero: Cardinal): Byte;
    function AutoIncremento(Tabela, Campo: String;
      Criterio: String = ''): Int64;
    function Sequencias(Carteira, Campo: String): Int64;
    function SequenciaCliSac(CS: String): Int64;
    function DiaUtil(Data: TDateTime): Boolean;
    function SomaDiaUtil(Data: TDateTime; Dias: Cardinal; Mais: Boolean = True)
      : TDateTime;
    function ValidaTitulo(auxNUME, auxSERI, auxCedente: String): Boolean;
    function SaldoSacadoCedente(SacCed, Cedente, Carteira: String;
      NovoValor: Double): Boolean;
    function CalculaUltimo(Principal: Double; Qtd: integer;
      Arredonda: Boolean = True): Double;
    procedure ApagaItensITE;
    procedure ApagaItensDUP;
    procedure MsgValidaTitulo;
    procedure RecalculoBOR;
    procedure RecalculoDUP;
    procedure ExecutaSQL(iSQL: String);
    procedure AtualizaDataSet(iDataSet: TDataSet);
    procedure DataModuleCreate(Sender: TObject);
    procedure ADOPreliminarBeforePost(DataSet: TDataSet);
    procedure ADOItensBeforePost(DataSet: TDataSet);
    procedure Pesquisarregistro1Click(Sender: TObject);
    procedure ADODUPAfterScroll(DataSet: TDataSet);
    procedure ADODUPBeforePost(DataSet: TDataSet);
    procedure ADODUPAfterInsert(DataSet: TDataSet);
    procedure ADODUPAfterClose(DataSet: TDataSet);
    procedure ADODUPAfterPost(DataSet: TDataSet);
    procedure ADOFACTBHISBeforePost(DataSet: TDataSet);
    procedure ADOFACTBSCIBeforeClose(DataSet: TDataSet);
    procedure ADOBORAfterOpen(DataSet: TDataSet);
    procedure ADOBORBeforeClose(DataSet: TDataSet);
    procedure ADOBORBeforePost(DataSet: TDataSet);
    procedure ADOSacadoBeforePost(DataSet: TDataSet);
    procedure ADOSacadoBeforeClose(DataSet: TDataSet);
    procedure ADOFACTBCTCAfterInsert(DataSet: TDataSet);
    procedure ADOFACTBCTCAfterScroll(DataSet: TDataSet);
    procedure ADOFACTBCKPAfterEdit(DataSet: TDataSet);
    procedure ADOFACTBCKPAfterInsert(DataSet: TDataSet);
    procedure ADOBORAfterInsert(DataSet: TDataSet);
    procedure ADOBORAfterEdit(DataSet: TDataSet);
    procedure HTTPRIOrecebimentoHTTPWebNode1BeforePost(const HTTPReqResp
      : THTTPReqResp; Data: Pointer);
  private
    RecalculandoDUP: Boolean;

    procedure CalculosITE;
    procedure CalculosDUP;
    procedure AplicaDUP_BOR;
    procedure ZeraBOR;
    procedure PROP_ValoresAnterior;
    procedure IniciaDUP(ItemAtual, TotaItem: integer);
    procedure ValidarTamanhoNumeroTitulo;

  public
    GuardaDUPDOCU, GuardaDUPTPCO, GuardaITEDOCU: String[1];
    AtualizaBOR, RecalculandoITE: Boolean;
    PrazoBruto, PrazoBrutoEfetivo: Double;
    Valida_Ord: Boolean;

    procedure ListaProdutoSCCI(Tabela, produtos: string);
    
    procedure InserirDadosCtrlPagamentoAutbank(cpaClass: String; cpaProposta: Integer;
      cpaDataOperacao: TDateTime; cpaValorTitulo: Currency;  cpaCedente: Integer;
      cpaStatus: Integer; cpaUsuarioInsert: Integer; cpaBIUsuario: String);

    procedure UpdateDadosCtrlPagamentoAutbank(cpaClass: String; cpaProposta: Integer ; cpaStatus: Integer);

    function VerificaQuebraOrdParcela(pCon: TADOConnection; pSql: string; pDtVcto: TDateTime): Boolean; 
    Function ValidaEnvioCompletoArquivo(PROPOSTA : STRING ): Boolean;
    Function ValidaCondicoesEspeciais (CLICOD : STRING) : Boolean;
    Function BuscarNomeArquivoCCB(PROPOSTA : string) :string;
    function UtilizaAgrupamento(Produto : String): Boolean;

    Function GERAIDCLIENTE  ( CNPJ : STRING ; ORIGEM : STRING ) : Integer;
    Function GERAIDPROPOSTA ( CARTEIRA : STRING ; COD_CEDENTE : STRING ; ORIGEM : STRING ) : Integer;

    function ValidaAutorizacaoCedente(CodigoCedente: Integer; Carteira: string; Proposta: Integer): Boolean;

  end;

var
  DMDados: TDMDados;
  Ususario: TUsuario;
  Empresa: TEmpresa;

const
  SQLDate = 'mm/dd/yyyy';
  SQLDataHora = 'mm/dd/yyyy HH:mm:ss';


const
  LocalRede: string = 'p:\Intercredpj';
  web_Servidor = 'PRODUCAO';


implementation

uses UDMConecta, UFrmPrincipal, UFrmLogIn, UCriptografa, UFrmApresentacao,
  UFrmOperacao, UFrmCompraAtivo, UFrmDigitaCC, UUTIL, UControleAcessoTela,
  UFrmAcessos;

{$R *.dfm}

function TDMDados.AutoIncremento(Tabela, Campo, Criterio: String): Int64;
begin
  with (ADOExecuta) do
  begin
    Close;

    SQL.Clear;
    SQL.Add('SELECT MAX(' + Campo + ') FROM ' + Tabela);
    if (Criterio <> '') then
      SQL.Add(Criterio);
    Open;
    if (Fields[0].AsString = '') then
      Result := 1
    else
      Result := Fields[0].AsInteger + 1;
    Close;
  end;
end;

function TDMDados.BuscarNomeArquivoCCB(PROPOSTA: string): string;
begin
  ADOExecuta.close;
  ADOExecuta.sql.Text:=' SELECT T00_ARQUIVOCCBWEB ' +
                       ' FROM KG_ARQCED_TIPO00 WITH (NOLOCK)    '+
                       ' WHERE t00_controle=( SELECT CodigoControleArquivo  ' +
                       '							        FROM   FACTBPRO WITH (NOLOCK)	' +
                       '							        WHERE  proprop='+''''+PROPOSTA+''''+' and PROclas=PROCLAS) ' ;
  ADOExecuta.Open;

  Result := ADOExecuta.Fields[0].AsString;
end;

function TDMDados.DigitoCedenteSacado(Numero: Cardinal): Byte;
var
  Soma, i, Multiplicador, auxI: integer;
  auxNumero: String;
begin
  Soma := 0;
  Multiplicador := 2;
  auxNumero := IntToStr(Numero);
  auxI := Length(auxNumero);

  for i := auxI downto 1 do
  begin
    Soma := Soma + (StrToInt(auxNumero[i]) * Multiplicador);
    Inc(Multiplicador);
    if (Multiplicador > 9) then
      Multiplicador := 2;
  end;

  auxI := (Soma mod 11);

  case auxI of
    0: Result := 1;
    1: Result := 0;
  else
    Result := 11 - auxI;
  end;
end;

procedure TDMDados.DataModuleCreate(Sender: TObject);
var
  lista: TStringList;
  perfil: String;
begin
  LocalRede := procuradiretorio('DMDados', 1);
  GuardaITEDOCU := '';
  GuardaDUPTPCO := '';

  Self.Valida_Ord := False;

  ADOBuscaUsuarios.Close;
  ADOBuscaUsuarios.SQL.Strings[7] :=
    'WHERE 1=1 AND SENSTATUS = ''ATIVO'' AND COD_AD = ' +
    QuotedStr(UpperCase(UsuarioLogado));
  ADOBuscaUsuarios.Open;

  if Assigned(FrmApresentacao) then
    FrmApresentacao.Mensagem('Aguardando LogIn...');

  if not(ADOBuscaUsuarios.IsEmpty) then
  begin
    if Assigned(FrmApresentacao) then
      FrmApresentacao.Mensagem('Aplicando configurações...');

    Ususario := TUsuario.Create;
    Empresa := TEmpresa.Create;

    if ADOBuscaUsuarios.RecordCount > 1 then
    begin
      lista := TStringList.Create;
      while not ADOBuscaUsuarios.Eof do
      begin
        lista.Add(CompletaString(ADOBuscaUsuariosSENUSU.AsString, '0', 6, True)
          + ' - ' + ADOBuscaUsuariosSENNOM.AsString);
        ADOBuscaUsuarios.Next;
      end;

      perfil := Copy(TFrmAcessos.OpcaoAcesso(lista), 1, 6);

      if perfil = EmptyStr then
      begin
        ShowMessage('Processo de Login cancelado.');
        Application.Terminate;
      end;

      ADOBuscaUsuarios.Close;
      ADOBuscaUsuarios.SQL.Strings[7] := 'WHERE 1=1 AND SENUSU = ' + QuotedStr(UpperCase(perfil));
      ADOBuscaUsuarios.Open;
    end;

    with (Ususario) do
    begin
      Nivel := ADOBuscaUsuariosSENNIV.AsInteger;
      Tipo := ADOBuscaUsuariosSENTPUSU.AsString;
      Codigo := ADOBuscaUsuariosSENUSU.AsInteger;
      Senha := Descriptografa(ADOBuscaUsuariosSENSEN.AsString);
      Usuario := ADOBuscaUsuariosSENNOM.AsString;
      Nome := ADOBuscaUsuariosSENNOM.AsString;
      Grupo := ADOBuscaUsuariosCodigoGrupo.AsInteger;
      Cargo := ADOBuscaUsuariosId_cargo.AsInteger;
      Regiao := ADOBuscaUsuariosSENREGIAO.AsInteger;
      NivelAcessoArea := ADOBuscaUsuariosNivelAcessoArea.AsInteger;
      CodigoMacrorregiao := ADOBuscaUsuariosCodigoMacrorregiao.AsInteger;
      CodigoInterCaixa := ADOBuscaUsuariosCodInterCaixa.AsInteger;
      Setor := ADOBuscaUsuariosCodigoSetor.AsInteger;
      RedeAD := ADOBuscaUsuariosCod_Ad.AsString;
      visaogerente :=ADOBuscaUsuariosVISAO_GERENTE.asstring;

      if (Trim(ADOBuscaUsuariosSenRegiaoSuplementar.AsString) <> '') then
        RegiaoSuplementar := ADOBuscaUsuariosSenRegiaoSuplementar.AsString;

      if not ADOBuscaUsuariosASSINATURA.IsNull then
        Assinatura.LoadFromStream(ADOBuscaUsuarios.CreateBlobStream(ADOBuscaUsuariosASSINATURA, bmRead));

      with Alertas do
      begin
        ChegadaArquivoCedente := (ADOBuscaUsuariosRecebeMensagemChegadaArquivo.AsString = 'SIM');
        ChegadaArquivoPagamentoPortal := (ADOBuscaUsuariosRecebeMensagemPagamentoPortal.AsString = 'SIM');
      end;

      with Alertas do
      begin
        ChegadaArquivoRetornoDDA := (ADOBuscaUsuariosRecebeMensagemChegadaRetornoDDA.AsString = 'SIM');
      end;

    end;
    Empresa.Codigo := 002;

    Ususario.DataAscesso := Now;
    ControleTela.ControleAcessoSistema(DMDados.SP_ControleAcessoSistema,
                                       Ususario.Codigo, Ususario.Setor, Ususario.Grupo,
                                       0, Ususario.DataAscesso,
                                       Ususario.Nome, Ususario.RedeAD, 'InterCredPJ');
  end
  else
  begin
    ShowMessage('Usuario ' + UsuarioLogado + ' não cadastrado ou bloqueado!');
    Application.Terminate;
  end;

  RecalculandoITE := False;
  RecalculandoDUP := False;
  AtualizaBOR := False;
end;

procedure TDMDados.ADOPreliminarBeforePost(DataSet: TDataSet);
begin
  if ((ADOPreliminarPRODOCUMEN.value <> 41) and (ADOPreliminarPRODOCUMEN.value <> 43) and
      (ADOPreliminarPRODOCUMEN.value <> 45) and (ADOPreliminarPRODOCUMEN.value <> 46) and
      (ADOPreliminarPRODOCUMEN.value <> 44) and (ADOPreliminarPRODOCUMEN.value <> 48) and
      (ADOPreliminarPRODOCUMEN.value <> 51) and (ADOPreliminarPRODOCUMEN.value <> 49) and
      (ADOPreliminarPRODOCUMEN.value <> 54) and (ADOPreliminarPRODOCUMEN.value <> 56) and
      (ADOPreliminarPRODOCUMEN.value <> 58) and (ADOPreliminarPRODOCUMEN.value <> 61) and
      (ADOPreliminarPRODOCUMEN.value <> 62) and (ADOPreliminarPRODOCUMEN.value <> 63) and
      (ADOPreliminarPRODOCUMEN.value <> 68) and (ADOPreliminarPRODOCUMEN.value <> 69) and
      (ADOPreliminarPRODOCUMEN.value <> 73) and (ADOPreliminarPRODOCUMEN.value <> 74) and
      (ADOPreliminarPRODOCUMEN.value <> 81) and (ADOPreliminarPRODOCUMEN.value <> 82) and
      (ADOPreliminarPRODOCUMEN.value <> 83) and (ADOPreliminarPRODOCUMEN.value <> 84) and
      (ADOPreliminarPRODOCUMEN.value <> 85) and (ADOPreliminarPRODOCUMEN.value <> 86) and
      (ADOPreliminarPRODOCUMEN.value <> 91))
  then
  begin

    if (Copy(ADOPreliminarPROCLAS.AsString, 1, 1) <> 'A') and
      not(SaldoSacadoCedente('C', ADOPreliminarPROCLIE.AsString,
      ADOPreliminarPROCLAS.AsString, ADOPreliminarPROVRINFOR.AsFloat)) then
      Raise Exception.Create('Saldo insuficiente !');

    IF (ADOPreliminarPROPROP.AsVariant = null) THEN
    BEGIN
      IF ((ADOPreliminarPROCLAS.AsString <> '') and (ADOPreliminarTELA.asString <> '' ) and (ADOPreliminarPROCLIE.asString <> '' ))THEN
      BEGIN

        ADOPreliminarPROPROP.AsInteger := DMDados.GERAIDPROPOSTA( ADOPreliminarPROCLAS.AsString , ADOPreliminarPROCLIE.AsString, 'ICPJ - TELA : ' + ADOPreliminarTELA.AsString + ' - USUÁRIO : ' + IntToStr(Ususario.Codigo));

        IF ADOPreliminarPROPROP.AsInteger = -1 THEN
        BEGIN
          ShowMessage('Erro ao gerar idendificador para a proposta !');
          EXIT;
        END;

        PROP_ValoresAnterior;
      END;
    END;
  end;

end;

procedure TDMDados.ADOItensBeforePost(DataSet: TDataSet);
var sql: string;
begin
  if (not(ADOItensITECLAS.IsNull) and (Copy(ADOItensITECLAS.AsString, 1, 1) <>
    'A')) then
  begin
    if ((ADOItensITEDOCU.AsInteger <> 29) and (ADOItensITEDOCU.AsInteger <> 30) and
        (ADOItensITEDOCU.AsInteger <> 31) and (ADOItensITEDOCU.AsInteger <> 33) and
        (ADOItensITEDOCU.AsInteger <> 34) and (ADOItensITEDOCU.AsInteger <> 37) and
        (ADOItensITEDOCU.AsInteger <> 45) and (ADOItensITEDOCU.AsInteger <> 38) and
        (ADOItensITEDOCU.AsInteger <> 39) and (ADOItensITEDOCU.AsInteger <> 40) and
        (ADOItensITEDOCU.AsInteger <> 44) and (ADOItensITEDOCU.AsInteger <> 46) and
        (ADOItensITEDOCU.AsInteger <> 48) and (ADOItensITEDOCU.AsInteger <> 49) and
        (ADOItensITEDOCU.AsInteger <> 47) and (ADOItensITEDOCU.AsInteger <> 41) and
        (ADOItensITEDOCU.AsInteger <> 50) and (ADOItensITEDOCU.AsInteger <> 51) and
        (ADOItensITEDOCU.AsInteger <> 52) and (ADOItensITEDOCU.AsInteger <> 53) and
        (ADOItensITEDOCU.AsInteger <> 54) and (ADOItensITEDOCU.AsInteger <> 55) and
        (ADOItensITEDOCU.AsInteger <> 56) and (ADOItensITEDOCU.AsInteger <> 58) and
        (ADOItensITEDOCU.AsInteger <> 59) and (ADOItensITEDOCU.AsInteger <> 60) and
        (ADOItensITEDOCU.AsInteger <> 61) and (ADOItensITEDOCU.AsInteger <> 62) and
        (ADOItensITEDOCU.AsInteger <> 63) and (ADOItensITEDOCU.AsInteger <> 68) and
        (ADOItensITEDOCU.AsInteger <> 69) and (ADOItensITEDOCU.AsInteger <> 73) and
        (ADOItensITEDOCU.AsInteger <> 74) and (ADOItensITEDOCU.AsInteger <> 81) and
        (ADOItensITEDOCU.AsInteger <> 82) and (ADOItensITEDOCU.AsInteger <> 83) and
        (ADOItensITEDOCU.AsInteger <> 84) and (ADOItensITEDOCU.AsInteger <> 85) and
        (ADOItensITEDOCU.AsInteger <> 86) and (ADOItensITEDOCU.AsInteger <> 91))
    then
    begin
      if (not(RecalculandoITE) and not(SaldoSacadoCedente('S',
        ADOItensITESACCNPJ.AsString, ADOPreliminarPROCLAS.AsString,
        ADOItensITEVRTI.AsFloat)))
      then
        Raise Exception.Create('Limite do Sacado insuficiente !');

      if not(RecalculandoITE) then
        MsgValidaTitulo;

      CalculosITE;
    end;
  end;
  ValidarTamanhoNumeroTitulo;

  if (ADOItens.RecordCount > 1) and (self.Valida_Ord) then
  begin
    sql := '';
    sql := sql + 'declare @proposta int = ' + adoitensITEPROP.asstring;
	  sql := sql + ' ,@iteclas varchar(2) = ' + adoitensiteclas.asstring;
    sql := sql + ' ,@dt_vcto datetime = :dt_vcto';
    sql := sql + ' ,@parcela int = ' + adoitensITEORDE.AsString;
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

    if DMDados.VerificaQuebraOrdParcela(ADOItens.Connection, sql, dataset.fieldbyname('ITEDTVE').asdatetime) then
    begin
      raise Exception.Create('');
    end;
  end;
end;

procedure TDMDados.CalculosITE;
var
  CustoEfetivo, Custo: Double;
  PrazoIOF: integer;
begin

  FrmPrincipal.Mensagem('Executando calculos...');
  ADOItensITEPRAZ.AsInteger := Trunc(D_maisRegional(ADOItensITEDTVE.AsDateTime,
    ADOItensITEFLOA.AsInteger, ADOPreliminarCodigoRegiao.AsInteger) -
    ADOPreliminarPRODTOP.AsDateTime);
  ADOItensITETXPE.AsFloat :=
    StrToFloat(FloatToStrF(((ADOPreliminarPROTXME.AsFloat / 30) *
    ADOItensITEPRAZ.AsInteger), ffFixed, 15, 2));
  ADOItensITEFOME.AsFloat :=
    StrToFloat(FloatToStrF(((ADOItensITEVRTI.AsFloat *
    ADOPreliminarPROTXME.AsFloat / 30) * ADOItensITEPRAZ.AsInteger / 100),
    ffFixed, 15, 2));
  ADOItensITEVRRISCO.AsFloat :=
    StrToFloat(FloatToStrF(((ADOItensITEVRTI.AsFloat *
    ADOItensITETXRISCO.AsFloat) / 100), ffFixed, 15, 2));
  ADOItensIteTaxaTMF.AsFloat := 0;

  if (ADOItensITEPRAZ.AsInteger < 31) then
  begin
    ADOItensITETXCAC.AsFloat := ADOPreliminarPROTXCAC.AsFloat;
    if (ADOPreliminarPRODTOP.AsDateTime < StrToDate('01/11/2005')) then
      ADOItensIteTaxaTMF.AsFloat := ADOPreliminarProTaxaTMF.AsFloat;

  end
  else
  begin
    ADOItensITETXCAC.AsFloat :=
      (ADOPreliminarPROTXCAC.AsFloat / 30 * ADOItensITEPRAZ.AsInteger);
    if (ADOPreliminarPRODTOP.AsDateTime < StrToDate('01/11/2005')) then
      ADOItensIteTaxaTMF.AsFloat :=
        (ADOPreliminarProTaxaTMF.AsFloat / 30 * ADOItensITEPRAZ.AsInteger);

  end;

  ADOItensITEVRCAC.AsFloat :=
    StrToFloat(FloatToStrF((ADOItensITEVRTI.AsFloat * ADOItensITETXCAC.AsFloat /
    100), ffFixed, 15, 2));

  ADOItensIteValorTMF.AsFloat := 0;

  Custo := ADOItensITEFOME.AsFloat + ADOItensITECCOB.AsFloat +
    ADOItensITETXCA.AsFloat + ADOItensITEVRDC.AsFloat + ADOItensITETXRE.AsFloat
    + ADOItensITEDESP.AsFloat + ADOItensITEVRRISCO.AsFloat +
    ADOItensITEVRCAC.AsFloat + ADOItensIteTaxaAdministrativa.AsFloat +
    ADOItensTAXAABERTURACREDITO.AsFloat + ADOItensIteValorTMF.AsFloat +
    ADOItensITETARIFADIGITACAO.AsFloat;

  PrazoIOF := Min(Trunc(ADOItensITEDTVE.AsDateTime -
    ADOPreliminarPRODTOP.AsDateTime), 365);

  ADOItensITEVRIO.AsFloat :=
    StrToFloat(FloatToStrF((((ADOItensITEVRTI.AsFloat - ADOItensITEFOME.AsFloat)
    * ADOPreliminarPROTXIO.AsFloat / 100) * PrazoIOF), ffFixed, 15, 2));
  ADOItensITEVRIOFC.AsFloat :=
    StrToFloat(FloatToStrF((ADOItensITEVRTI.AsFloat - ADOItensITEFOME.AsFloat) *
    ADOPreliminarPROTXIOFC.AsFloat / 100, ffFixed, 15, 2));

  Custo := Custo + ADOItensITEVRIO.AsFloat + ADOItensITEVRIOFC.AsFloat;

  ADOItensITEVRSA.AsFloat :=
    StrToFloat(FloatToStrF(((ADOItensITEVRTI.AsFloat - Custo) *
    ADOItensITETXSA.AsFloat / 100), ffFixed, 15, 2));

  Custo := Custo + ADOItensITEVRSA.AsFloat;
  ADOItensITEVRIP.AsFloat :=
    StrToFloat(FloatToStrF(((ADOItensITEVRTI.AsFloat - Custo) *
    ADOItensITETXIP.AsFloat / 100), ffFixed, 15, 2));
  Custo := Custo + ADOItensITEVRIP.AsFloat;

  ADOItensITELIQU.AsFloat := (ADOItensITEVRTI.AsFloat - Custo);

  ADOItensITEPMEF.AsFloat := D_maisRegional(ADOItensITEDTVE.AsDateTime, 1,
    ADOPreliminarCodigoRegiao.AsInteger) - ADOPreliminarPRODTOP.AsDateTime;

  CustoEfetivo := ADOItensITELIQU.AsFloat + ADOItensITECCOB.AsFloat +
    ADOItensITEVRDC.AsFloat + ADOItensITETARIFADIGITACAO.AsFloat +
    ADOItensITEVRIO.AsFloat + ADOItensITEVRIOFC.AsFloat +
    ADOItensITETXRE.AsFloat;

  ADOItensITETXEF.AsFloat :=
    StrToFloat
    (FloatToStrF(((Power((Power((ADOItensITEVRTI.AsFloat / CustoEfetivo),
    (1 / ADOItensITEPMEF.AsFloat))), 30) - 1) * 100), ffFixed, 20, 7));

  Try
    if (ADOItensITEVRTI.AsFloat > 0) then

  Except
    ShowMessage('Não foi possível calcular a taxa efetiva do título.' +
      ADOItensITEORDE.AsString);

    ADOItens.Cancel;
  end;
  FrmPrincipal.Mensagem;
end;

function TDMDados.DiaUtil(Data: TDateTime): Boolean;
begin
  Result := not(DayOfWeek(Data) in [1, 7]);

  if Result then
    with (ADOExecuta) do
    begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT COUNT(INDDATA) FROM FACTBIND');
      SQL.Add('WHERE INDDATA = ''' + FormatDateTime(SQLDate, Data) + '''');
      SQL.Add('AND INDUTIL = ''N''');
      Open;
      Result := (Fields[0].AsInteger = 0);
      Close;
      SQL.Clear;
    end;
end;

function TDMDados.SomaDiaUtil(Data: TDateTime; Dias: Cardinal; Mais: Boolean)
  : TDateTime;
  procedure ParaNoDiaUtil;
  begin
    while not(DiaUtil(Result)) do
      if Mais then
        Result := Result + 1
      else
        Result := Result - 1;
  end;

begin
  Result := Data;
  ParaNoDiaUtil;

  while Dias > 0 do
  begin
    if Mais then
      Result := Result + 1
    else
      Result := Result - 1;

    Dec(Dias);

    ParaNoDiaUtil;
  end;

end;

procedure TDMDados.ApagaItensITE;
begin
  ADOItens.Close;
  with (ADOExecuta) do
  begin
    Close;
    SQL.Clear;
    SQL.Add('DELETE FROM FACTBITE');
    SQL.Add('WHERE ITEPROP = ''' + ADOPreliminarPROPROP.AsString + '''');
    SQL.Add('AND ITECLAS = ''' + ADOPreliminarPROCLAS.AsString + '''');
    ExecSQL;
    SQL.Clear;
  end;
end;

function TDMDados.ValidaAutorizacaoCedente(CodigoCedente: Integer; Carteira: string; Proposta: Integer): Boolean;
begin
  Result := False;
  if CodigoCedente <> 0 then
  begin
    AdoCondicoes.close;
    try
      AdoCondicoes.sql.Text:=  ' SELECT top 1 1 ' +
                               ' FROM Kg_Autorizacao_Cedente a with(nolock) ' +
                               ' where a.codigocedente = ' + inttostr(CodigoCedente) +
                               '   and a.Carteira = ' + QuotedStr(Carteira) +
                               '   and a.Proposta = ' + inttostr(Proposta) +
                               '   and a.Autorizacao_Vale_Ate > getdate()';
      AdoCondicoes.Open;
      Result := AdoCondicoes.RecordCount > 0;
      AdoCondicoes.Close;
    except
      on E: Exception do
      begin
        ShowMessage('Erro ao consultar condições autorização do cedente.' + E.Message );
      end;
    end;
  end;
end;

function TDMDados.ValidaCondicoesEspeciais(CLICOD: STRING): Boolean;
begin
  Result := False;
  if CLICOD <> EmptyStr then
  begin
    AdoCondicoes.close;

    try
      AdoCondicoes.sql.Text:=  '  SELECT	TOP 1 *                                     ' +
                               '  FROM	CONDICOES_ESPECIAIS_CLIENTE WITH ( NOLOCK )   ' +
                               '  WHERE	ID_CLIENTE  = ' + CLICOD                        +
                               '  AND		INATIVO		= 0                                 ' +
                               '  AND		CONVERT ( DATE ,  DATA_VIGENCIA , 103 ) >=  CONVERT ( DATE ,  SYSDATETIME() , 103 ) ';
      AdoCondicoes.Open;
    except
      on E: Exception do
      begin
        ShowMessage('Erro ao consultar condições especiais do cedente.' + E.Message );
      end;
    end;

    if AdoCondicoes.RecordCount > 0 then
      Result := True;

    AdoCondicoes.Close;
  end;
end;

function TDMDados.ValidaEnvioCompletoArquivo(PROPOSTA: STRING): Boolean;
var
  CodigoArqCCB : String;
  ArquivoCCB: String;
begin
  ArquivoCCB   := BuscarNomeArquivoCCB(PROPOSTA);
  CodigoArqCCB := Copy ( ArquivoCCB , 0 ,  Pos('-', ArquivoCCB ) - 1 );

  ADOExecuta.close;
  ADOExecuta.sql.Text:=' SELECT	COUNT ( ISNULL ( PROPROP , 0 ) ) AS QTD_INTERCRED  ,     ' +
		                   ' ( SELECT	COUNT(T00_CONTROLE) FROM	KG_ARQCED_TIPO00 WITH (NOLOCK) WHERE T00_ARQUIVOCCBWEB = ''' + ArquivoCCB + ''' ) AS QTD_CCB  ' +
                       ' FROM	FACTBPRO WITH  (NOLOCK)	  ' +
                       ' WHERE	CODIGOCONTROLEARQUIVO IN (	SELECT	T00_CONTROLE ' +
								                                        	' FROM	KG_ARQCED_TIPO00 WITH (NOLOCK) ' +
									                                        ' WHERE	T00_ARQUIVOCCBWEB = ''' + ArquivoCCB + ''' ) ' ;

  ADOExecuta.Open;

  if DMConecta.ADOCcweb.connected = false then
    DMConecta.ADOCcweb.connected := True;

  try
    qryADOPostgree.Close;
    qryADOPostgree.sql.text :=  ' select distinct 1 as result from tb_solicitacao_pai tsp ' +
                                ' where tsp.status = ''FINALIZADA'' ' +
                                ' and id_arquivo_importacao_titulo = ' + CodigoArqCCB ;
    qryADOPostgree.Open;
  except
    on E: Exception do
    begin
      ShowMessage('Erro ao consultar CCB.' + E.Message );
    end;
  end;

  if ((qryADOPostgree.FieldByName('RESULT').AsInteger = 1) AND (ADOExecuta.Fields[0].AsInteger = ADOExecuta.Fields[1].AsInteger )) then
    Result := True
  else
    Result := False;

end;

procedure TDMDados.ValidarTamanhoNumeroTitulo;
var
  LTamInvalido: Boolean;
begin
  LTamInvalido := False;
  if not ADOItensITENUME.IsNull then
  begin
    if (ADOItensITESERI.IsNull) or (Trim(ADOItensITESERI.AsString) = '') then
    begin
      if Length(ADOItensITENUME.AsString) > 10 then
      begin
        LTamInvalido := True;
      end;
    end
    else
    begin
      if Length(ADOItensITENUME.AsString) + Length(ADOItensITESERI.AsString) > 13
      then
        LTamInvalido := True;
    end;
  end;
  if LTamInvalido then
  begin
    ShowMessage('Tamanho do Número + Série do título não pode ser superior a 13 dígitos. Favor verificar!');
    raise Exception.Create('Tamanho do Número + Série do título não pode ser superior a 13 dígitos. Favor verificar!');
  end;
end;

function TDMDados.ValidaTitulo(auxNUME, auxSERI, auxCedente: String): Boolean;
begin
  if auxNUME <> '' then
  begin
    FrmPrincipal.Mensagem('Validando título...');
    with (ADOExecuta) do
    begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT TOP 1 DUPNUME FROM FACTBDUP');
      SQL.Add('WHERE (DUPNUME = ' + auxNUME + ')');

      if (auxSERI <> '') then
        SQL.Add('AND (DUPSERI = ''' + auxSERI + ''')')
      else
        SQL.Add('AND (DUPSERI IS NULL)');

      SQL.Add('AND (DUPCLIE = ' + auxCedente + ')');

      Open;
      Result := (Fields[0].AsVariant = null);
      Close;
      SQL.Clear;
    end;
    FrmPrincipal.Mensagem;
  end
  else
    Result := True;
end;

function TDMDados.VerificaQuebraOrdParcela(pCon: TADOConnection; pSql: string; pDtVcto: TDateTime): Boolean;
var qry: TADODataSet;
    sql: string;
begin
  Result := false;
  qry := TADODataSet.Create(nil);
  try
    sql := pSql;
    sql := sql + ' select @vcto_invalido = ''S'''+
                 ' Where not @dt_vcto between @min_dt_vcto and @max_dt_vcto'+
                 ' select vcto_invalido = @vcto_invalido';

    qry.Connection := pCon;
    qry.CommandText := sql;
    qry.Parameters[0].Value := pDtVcto;
    qry.Open;
    Result:= qry.FieldByName('vcto_invalido').AsString = 'S';
    if result then
      MessageDlg('Vencimento de parcela inferior a parcela anterior - Gentileza ajustar a ordem dos vencimentos.', mtError, [mbOK], 0);
  finally
    qry.close;
    FreeAndNil(qry);
  end;
end;

procedure TDMDados.MsgValidaTitulo;
begin
  if (ADOItens.State = dsInsert) then
  begin
    if ((ADOItensITENUME.OldValue <> ADOItensITENUME.AsVariant) or
      (ADOItensITESERI.OldValue <> ADOItensITESERI.AsVariant)) and
      (not(ValidaTitulo(ADOItensITENUME.AsString, ADOItensITESERI.AsString,
      ADOPreliminarPROCLIE.AsString))) then
    begin
      if Assigned(FrmOperacao) then
        FrmOperacao.DBEdit35.SetFocus;
      FrmOperacao.DBEdit35.SelectAll;

      Raise Exception.Create('O título ' + ADOItensITENUME.AsString + '-' +
        ADOItensITESERI.AsString + ' já esta cadastrado.');
    end;
  end
  else if (ADOItens.State = dsbrowse) then
  begin

    if ((ADOItensITENUME.OldValue <> ADOItensITENUME.AsVariant) or
      (ADOItensITESERI.OldValue <> ADOItensITESERI.AsVariant)) and
      (not(ValidaTitulo(ADOItensITENUME.AsString, ADOItensITESERI.AsString,
      ADOPreliminarPROCLIE.AsString))) then
    begin
      if Assigned(FrmOperacao) then
        FrmOperacao.DBEdit35.SetFocus;
      FrmOperacao.DBEdit35.SelectAll;

      Raise Exception.Create('O título ' + ADOItensITENUME.AsString + '-' +
        ADOItensITESERI.AsString + ' já esta cadastrado.');
    end;
  end;
end;

procedure TDMDados.PROP_ValoresAnterior;
begin
  with (ADOExecuta) do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT TOP 1 BORTXME, BORDTOP, BORTXEF FROM FACTBBOR');
    SQL.Add('WHERE BORCLIE = ''' + ADOPreliminarPROCLIE.AsString + '''');
    SQL.Add('ORDER BY BORDTOP DESC');
    Open;

    if (RecordCount = 1) then
    begin
      ADOPreliminarPROTXANTE.AsFloat := Fields[0].AsFloat;
      ADOPreliminarPRODTOPAN.AsDateTime := Fields[1].AsDateTime;
      ADOPreliminarPROTXEFAN.AsFloat := Fields[2].AsFloat;
    end;

    Close;
    SQL.Clear;
  end;
end;

function TDMDados.SaldoSacadoCedente(SacCed, Cedente, Carteira: String;
  NovoValor: Double): Boolean;
var
  CredL: Boolean;
  Limite: Double;
  GrupoEconomico: String;
begin
  FrmPrincipal.Mensagem('Verificando limite...');
  if (SacCed = 'C') then
  begin
    with (ADOExecuta) do
    begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT TOP 1 CLICRE, CLILIBSAL, CLILIM, CLICOD, CLIEMPTITU FROM FACTBCLI');
      SQL.Add('WHERE CLITIP = ''' + SacCed + '''');
      SQL.Add('AND CLICOD = ' + Cedente);
      Open;
      Result := (Trim(Fields[0].AsString) <> 'N');

      CredL := (Fields[1].AsString <> 'N');
      Limite := Fields[2].AsFloat;
      GrupoEconomico := Fields[4].AsString;
      Close;
      SQL.Clear;
    end;

    if Result then
    begin
      Result := CredL;

      if not(Result) then
        with (ADOExecuta) do
        begin
          Close;
          SQL.Clear;
          SQL.Add('SELECT SUM(ISNULL(DUPVRTI,0) - ISNULL(DUPRECANTE,0)) FROM FACTBDUP');
          SQL.Add('WHERE DUPSTAT IN (''A'',''J'')');
          SQL.Add('AND DUPCLAS = ''' + Carteira + '''');
          SQL.Add('AND DUPCLIE = ' + Cedente);
          Open;

          Result := ((Limite - (Fields[0].AsFloat + NovoValor)) >= 0);

          Close;
          SQL.Clear;
        end;

    end;

  end
  else
  begin
    with (ADOExecuta) do
    begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT TOP 1 CLICRE, CLILIBSAL, CLILIM, CLICOD FROM FACTBCLI');
      SQL.Add('WHERE CLITIP = ''' + SacCed + '''');

      if SacCed = 'C' then
        SQL.Add('AND CLICOD = ' + Cedente)
      else
        SQL.Add('AND isnull(CLICGC,'''')+isnull(CLICGCFILI,'''')+isnull(CLICGCDV,'''') = '
          + #39 + Cedente + #39);

      Open;

      Result := (Fields[0].AsString <> 'N');
      CredL := (Fields[1].AsString <> 'N');
      Limite := Fields[2].AsFloat;

      if SacCed = 'S' then
        Cedente := Fields[3].AsString;

      Close;
      SQL.Clear;
    end;

    if Result then
    begin
      Result := CredL;

      if not(Result) then
        with (ADOExecuta) do
        begin
          Close;
          SQL.Clear;
          SQL.Add('SELECT SUM(ISNULL(DUPVRTI,0) - ISNULL(DUPRECANTE,0)) FROM FACTBDUP');
          SQL.Add('WHERE DUPSTAT IN (''A'',''J'')');
          SQL.Add('AND DUPCLAS = ''' + Carteira + '''');
          if SacCed = 'C' then

            SQL.Add('AND DUPCLIE = ' + Cedente)

          else
            SQL.Add('AND DUPSACA = ' + Cedente);

          Open;

          Result := ((Limite - (Fields[0].AsFloat + NovoValor)) >= 0);

          Close;
          SQL.Clear;
        end;
    end;
  end;

  FrmPrincipal.Mensagem;
end;

procedure TDMDados.Pesquisarregistro1Click(Sender: TObject);
begin
  if (PopupMenu.PopupComponent is TForm) then
    PesquisaRegistro(PopupMenu.PopupComponent as TForm)
  else
    PesquisaRegistro(PopupMenu.PopupComponent.Owner as TForm);
end;

procedure TDMDados.ADODUPAfterScroll(DataSet: TDataSet);
begin
  if Assigned(FrmCompraAtivo) then
    with (FrmCompraAtivo) do
      if (PageControl1.ActivePage = TabSheet2) then
      begin
        ADOSacado.Close;
        ADOSacado.Open;
      end;
end;

procedure TDMDados.ADODUPBeforePost(DataSet: TDataSet);
begin

  if ((ADODUPDUPDTVE.AsDateTime > 0) and (ADODUPDUPVRTI.AsFloat > 0)) then
  begin
    if (ADODUPDUPORDE.IsNull) then
    begin
      ADODUPDUPCLAS.AsString := ADOBORBORCLAS.AsString;
      ADODUPDUPBORD.AsString := ADOBORBORBORD.AsString;
      ADODUPDUPRECANTE.AsFloat := 0;
      ADODUPDUPORDE.AsInteger := AutoIncremento('factbdup', 'DUPORDE',
        'where (DUPCLAS = ' + #39 + ADOBORBORCLAS.AsString + #39 +
        ') AND (DUPBORD = ' + ADOBORBORBORD.AsString + ')');
    end;
    CalculosDUP;

  end
  else
  begin
    ADODUP.CancelUpdates;
    ADODUP.Cancel;
  end;

end;

procedure TDMDados.ADODUPAfterInsert(DataSet: TDataSet);
begin
  IniciaDUP(ADOBORBORORDE.AsInteger, (ADOBORBORITEM.AsInteger - 1));
  ADODUPDUPDOCU.AsString := GuardaDUPDOCU;
  ADODUPDUPTPCO.AsString := GuardaDUPTPCO;

  AtualizaBOR := True;
end;

procedure TDMDados.CalculosDUP;
var
  Custo: Double;
  PrazoIOF: integer;
begin
  if (ADODUPDUPDTVE.AsDateTime > 0) and (ADODUPDUPDTVE.AsFloat > 0) then
  begin
    try
      if (Trim(ADOBORBORFLOA.AsString) <> 'N') then
        ADODUPDUPFLOA.AsInteger := ADOBORBORFLOA.AsInteger
      else if (ADODUPDUPFLOA.IsNull) then
        ADODUPDUPFLOA.AsInteger := 0;

    except
      ADODUPDUPFLOA.AsInteger := 0;
    end;
    ADODUPDUPDTOP.AsDateTime := ADOBORBORDTOP.AsDateTime;
    ADODUPDUPCLIE.AsString := ADOBORBORCLIE.AsString;
    ADODUPDUPOPER.AsString := ADOBORBOROPER.AsString;
    ADODUPDUPCMAE.AsString := ADOBORBORCMAE.AsString;
    ADODUPDUPCONT.AsString := ADOBORBORCONT.AsString;
    ADODUPDUPAGE.AsString := ADOBORBORAGE.AsString;

    ADODUPDUPTXIO.AsFloat := ADOBORBORTXIO.AsFloat;
    ADODUPDUPTXIP.AsFloat := ADOBORBORTXIP.AsFloat;
    ADODUPDUPTXSA.AsFloat := ADOBORBORTXSA.AsFloat;
    ADODUPDUPTXRISCO.AsFloat := ADOBORBORTXRISCO.AsFloat;

    ADODUPDUPPRAZ.AsInteger := Trunc(D_maisRegional(ADODUPDUPDTVE.AsDateTime,
      ADODUPDUPFLOA.AsInteger, ADOBORCodigoRegiao.AsInteger) -
      ADODUPDUPDTOP.AsDateTime);
    ADODUPDUPTXPE.AsFloat :=
      StrToFloat(FloatToStrF(((ADOBORBORTXME.AsFloat / 30) *
      ADODUPDUPPRAZ.AsInteger), ffFixed, 15, 2));
    ADODUPDUPFOME.AsFloat :=
      StrToFloat(FloatToStrF(((ADODUPDUPVRTI.AsFloat * ADOBORBORTXME.AsFloat /
      30) * ADODUPDUPPRAZ.AsInteger / 100), ffFixed, 15, 2));
    ADODUPDUPVRRISCO.AsFloat :=
      StrToFloat
      (FloatToStrF(((ADODUPDUPVRTI.AsFloat * ADODUPDUPTXRISCO.AsFloat) / 100),
      ffFixed, 15, 2));

    ADODUPDupTaxaTMF.AsFloat := 0;

    ADODUPDUPTXCAC.AsFloat := ADOBORBORTXCAC.AsFloat;

    PrazoIOF :=
      Min(Trunc(ADODUPDUPDTVE.AsDateTime - ADOBORBORDTOP.AsDateTime), 365);
    ADODUPDUPVRIO.AsFloat :=
      StrToFloat(FloatToStrF((((ADODUPDUPVRTI.AsFloat - ADODUPDUPFOME.AsFloat)
      * ADOBORBORTXIO.AsFloat / 100) * PrazoIOF), ffFixed, 15, 2));
    ADODUPDUPVRIOFC.AsFloat :=
      StrToFloat(FloatToStrF((ADODUPDUPVRTI.AsFloat - ADODUPDUPFOME.AsFloat) *
      ADOBORBORTXIOFC.AsFloat / 100, ffFixed, 15, 2));

    if ADOBORBORTXCAC.AsFloat > 0 then
      ADODUPDUPVRCAC.AsFloat :=
        StrToFloat(FloatToStrF(ADODUPDUPVRTI.AsFloat * ADODUPDUPTXCAC.AsFloat
        / 100, ffFixed, 15, 2))
    else
      ADODUPDUPVRCAC.AsFloat :=
        StrToFloat(FloatToStrF(ADOBORBORVRCAC.AsFloat / ADOBORBORORDE.AsFloat,
        ffFixed, 15, 2));

    if (ADODUPDUPORDE.AsFloat <> 1) then
    begin
      ADODUPDUPTXRE.AsFloat :=
        StrToFloat(FloatToStrF(ADOBORBORTXRE.AsFloat /
        ADOBORBORITEM.AsInteger, ffFixed, 15, 2));
      ADODUPDUPVRDC.AsFloat :=
        StrToFloat(FloatToStrF(ADOBORBORVRDC.AsFloat /
        ADOBORBORITEM.AsInteger, ffFixed, 15, 2));
      ADODUPDUPTXCA.AsFloat :=
        StrToFloat(FloatToStrF(ADOBORBORTXCA.AsFloat /
        ADOBORBORITEM.AsInteger, ffFixed, 15, 2));
      ADODUPDUPDESP.AsFloat :=
        StrToFloat(FloatToStrF(ADOBORBORDESP.AsFloat /
        ADOBORBORITEM.AsInteger, ffFixed, 15, 2));
      ADODUPDuptarifadigitacao.AsFloat :=
        StrToFloat(FloatToStrF(ADOBORBortarifadigitacao.AsFloat /
        ADOBORBORITEM.AsInteger, ffFixed, 15, 2));
      if ((ADOBORCodigoTabelaTarifa.AsInteger > 1) and
        (ADODUPDUPVRTI.AsFloat > 0)) then
        ADODUPDUPCCOB.AsFloat :=
          ProcuraNome('select ValorTarifa from Kg_TarifaCobrancaItem' +
          ' where CodigoTabelaTarifa = ' + ADOBORCodigoTabelaTarifa.AsString +
          ' and ' + StringReplace(ADODUPDUPVRTI.AsString, ',', '.', []) +
          ' between FaixaInicial and FaixaFinal')
      else
        ADODUPDUPCCOB.AsFloat :=
          StrToFloat(FloatToStrF(ADOBORBORCCOB.AsFloat /
          ADOBORBORITEM.AsInteger, ffFixed, 15, 2));

      if ((ADOBORBORDOCUMEN.AsInteger = 41) or (ADOBORBORDOCUMEN.AsInteger = 44) or
          (ADOBORBORDOCUMEN.AsInteger = 40) or (ADOBORBORDOCUMEN.AsInteger = 29) or
          (ADOBORBORDOCUMEN.AsInteger = 45) or (ADOBORBORDOCUMEN.AsInteger = 30) or
          (ADOBORBORDOCUMEN.AsInteger = 46) or (ADOBORBORDOCUMEN.AsInteger = 47) or
          (ADOBORBORDOCUMEN.AsInteger = 31) or (ADOBORBORDOCUMEN.AsInteger = 37) or
          (ADOBORBORDOCUMEN.AsInteger = 48) or (ADOBORBORDOCUMEN.AsInteger = 49) or
          (ADOBORBORDOCUMEN.AsInteger = 38) or (ADOBORBORDOCUMEN.AsInteger = 50) or
          (ADOBORBORDOCUMEN.AsInteger = 52) or (ADOBORBORDOCUMEN.AsInteger = 53) or
          (ADOBORBORDOCUMEN.AsInteger = 51) or (ADOBORBORDOCUMEN.AsInteger = 54) or
          (ADOBORBORDOCUMEN.AsInteger = 55) or (ADOBORBORDOCUMEN.AsInteger = 56) or
          (ADOBORBORDOCUMEN.AsInteger = 58) or (ADOBORBORDOCUMEN.AsInteger = 60) or
          (ADOBORBORDOCUMEN.AsInteger = 61) or (ADOBORBORDOCUMEN.AsInteger = 62) or
          (ADOBORBORDOCUMEN.AsInteger = 63) or (ADOBORBORDOCUMEN.AsInteger = 68) or
          (ADOBORBORDOCUMEN.AsInteger = 69) or (ADOBORBORDOCUMEN.AsInteger = 73) or
          (ADOBORBORDOCUMEN.AsInteger = 74) or (ADOBORBORDOCUMEN.AsInteger = 81) or
          (ADOBORBORDOCUMEN.AsInteger = 82) or (ADOBORBORDOCUMEN.AsInteger = 83) or
          (ADOBORBORDOCUMEN.AsInteger = 84) or (ADOBORBORDOCUMEN.AsInteger = 85) or
          (ADOBORBORDOCUMEN.AsInteger = 86) or (ADOBORBORDOCUMEN.AsInteger = 91))
      then
        ADODUPDUPCCOB.AsFloat := 0;

      ADODUPdupTaxaAdministrativa.AsFloat :=
        StrToFloat(FloatToStrF(ADOBORBorTaxaAdministrativa.AsFloat /
        ADOBORBORITEM.AsInteger, ffFixed, 15, 2));

      ADODUPTaxaAberturaCredito.AsFloat :=
        StrToFloat(FloatToStrF(ADOBORTaxaAberturaCredito.AsFloat /
        ADOBORBORITEM.AsInteger, ffFixed, 15, 2));

    end
    else
    begin
      ADODUPDUPTXRE.AsFloat := CalculaUltimo(ADOBORBORTXRE.AsFloat,
        ADOBORBORITEM.AsInteger);

      ADODUPDUPVRDC.AsFloat := CalculaUltimo(ADOBORBORVRDC.AsFloat,
        ADOBORBORITEM.AsInteger);

      ADODUPDUPTXCA.AsFloat := CalculaUltimo(ADOBORBORTXCA.AsFloat,
        ADOBORBORITEM.AsInteger);
      ADODUPDUPDESP.AsFloat := CalculaUltimo(ADOBORBORDESP.AsFloat,
        ADOBORBORITEM.AsInteger);
      if ((ADOBORCodigoTabelaTarifa.AsInteger > 1) and
        (ADODUPDUPVRTI.AsFloat > 0)) then
        ADODUPDUPCCOB.AsFloat :=
          ProcuraNome('select ValorTarifa from Kg_TarifaCobrancaItem' +
          ' where CodigoTabelaTarifa = ' + ADOBORCodigoTabelaTarifa.AsString +
          ' and ' + StringReplace(ADODUPDUPVRTI.AsString, ',', '.', []) +
          ' between FaixaInicial and FaixaFinal')
      else
        ADODUPDUPCCOB.AsFloat := CalculaUltimo(ADOBORBORCCOB.AsFloat,
          ADOBORBORITEM.AsInteger);

      if ((ADOBORBORDOCUMEN.AsInteger = 41) or (ADOBORBORDOCUMEN.AsInteger = 44) or
          (ADOBORBORDOCUMEN.AsInteger = 40) or (ADOBORBORDOCUMEN.AsInteger = 29) or
          (ADOBORBORDOCUMEN.AsInteger = 45) or (ADOBORBORDOCUMEN.AsInteger = 30) or
          (ADOBORBORDOCUMEN.AsInteger = 46) or (ADOBORBORDOCUMEN.AsInteger = 47) or
          (ADOBORBORDOCUMEN.AsInteger = 31) or (ADOBORBORDOCUMEN.AsInteger = 37) or
          (ADOBORBORDOCUMEN.AsInteger = 48) or (ADOBORBORDOCUMEN.AsInteger = 49) or
          (ADOBORBORDOCUMEN.AsInteger = 38) or (ADOBORBORDOCUMEN.AsInteger = 50) or
          (ADOBORBORDOCUMEN.AsInteger = 52) or (ADOBORBORDOCUMEN.AsInteger = 53) or
          (ADOBORBORDOCUMEN.AsInteger = 51) or (ADOBORBORDOCUMEN.AsInteger = 54) or
          (ADOBORBORDOCUMEN.AsInteger = 55) or (ADOBORBORDOCUMEN.AsInteger = 56) or
          (ADOBORBORDOCUMEN.AsInteger = 58) or (ADOBORBORDOCUMEN.AsInteger = 60) or
          (ADOBORBORDOCUMEN.AsInteger = 61) or (ADOBORBORDOCUMEN.AsInteger = 62) or
          (ADOBORBORDOCUMEN.AsInteger = 63) or (ADOBORBORDOCUMEN.AsInteger = 68) or
          (ADOBORBORDOCUMEN.AsInteger = 69) or (ADOBORBORDOCUMEN.AsInteger = 73) or
          (ADOBORBORDOCUMEN.AsInteger = 74) or (ADOBORBORDOCUMEN.AsInteger = 81) or
          (ADOBORBORDOCUMEN.AsInteger = 82) or (ADOBORBORDOCUMEN.AsInteger = 83) or
          (ADOBORBORDOCUMEN.AsInteger = 84) or (ADOBORBORDOCUMEN.AsInteger = 85) or
          (ADOBORBORDOCUMEN.AsInteger = 86) or (ADOBORBORDOCUMEN.AsInteger = 91))
      then
        ADODUPDUPCCOB.AsFloat := 0;

      ADODUPdupTaxaAdministrativa.AsFloat :=
        CalculaUltimo(ADOBORBorTaxaAdministrativa.AsFloat,
        ADOBORBORITEM.AsInteger);
      ADODUPTaxaAberturaCredito.AsFloat :=
        CalculaUltimo(ADOBORTaxaAberturaCredito.AsFloat,
        ADOBORBORITEM.AsInteger);

    end;

    Custo := ADODUPDUPFOME.AsFloat + ADODUPDUPCCOB.AsFloat +
      ADODUPDUPTXCA.AsFloat + ADODUPDUPVRDC.AsFloat + ADODUPDUPTXRE.AsFloat +
      ADODUPDUPDESP.AsFloat + ADODUPDUPVRRISCO.AsFloat +
      ADODUPDUPVRCAC.AsFloat + ADODUPdupTaxaAdministrativa.AsFloat +
      ADODUPTaxaAberturaCredito.AsFloat + ADODUPDupValorTMF.AsFloat +
      ADODUPDuptarifadigitacao.AsFloat + ADODUPDUPVRIO.AsFloat +
      ADODUPDUPVRIOFC.AsFloat;

    ADODUPDUPVRSA.AsFloat :=
      StrToFloat(FloatToStrF(((ADODUPDUPVRTI.AsFloat - Custo) *
      ADODUPDUPTXSA.AsFloat / 100), ffFixed, 15, 2));

    Custo := Custo + ADODUPDUPVRSA.AsFloat;

    ADODUPDUPVRIP.AsFloat :=
      StrToFloat(FloatToStrF((ADODUPDUPVRTI.AsFloat - Custo) *
      ADODUPDUPTXIP.AsFloat / 100, ffFixed, 15, 2));
    Custo := Custo + ADODUPDUPVRIP.AsFloat;

    ADODUPDUPLIQU.AsFloat := (ADODUPDUPVRTI.AsFloat - Custo);

    ADODUPDUPPZEF.AsInteger := Trunc(D_maisRegional(ADODUPDUPDTVE.AsDateTime,
      1, ADOBORCodigoRegiao.AsInteger) - ADODUPDUPDTOP.AsDateTime);
    ADODUPDUPTXEF.AsFloat :=
      StrToFloat
      (FloatToStrF
      (((Power((Power((ADODUPDUPVRTI.AsFloat / (ADODUPDUPLIQU.AsFloat +
      ADODUPDUPCCOB.AsFloat + ADODUPDUPVRDC.AsFloat +
      ADODUPDuptarifadigitacao.AsFloat + ADODUPDUPVRIO.AsFloat +
      ADODUPDUPVRIOFC.AsFloat + ADODUPDUPTXRE.AsFloat)),
      (1 / ADODUPDUPPZEF.AsFloat))), 30) - 1) * 100), ffFixed, 20, 7));

    ADODUPDUPDOCU.AsInteger := ADOBORBORDOCUMEN.AsInteger;

    with (DMDados.ADOBuscaTPDocumento) do
    begin
      if (FieldByName('BOLETA').AsString = 'N') then
      begin
        DMDados.ADODUPDUPBOLETA.AsString := 'N';
        DMDados.ADODUPDUPBCOB.AsInteger := 000;
      end;
      if (FieldByName('CARTA').AsString = 'N') then
        DMDados.ADODUPDUPCARTA.AsString := 'N';
    end;

  end;

  FrmPrincipal.Mensagem;

end;

Procedure TDMDados.AplicaDUP_BOR;
var
  auxMantemItem: String;
begin
  if (AtualizaBOR) then
  begin
    FrmPrincipal.Mensagem('Aplicando calculos ao bordero...');

    auxMantemItem := ADODUPDUPORDE.AsString;

    ADOBOR.Edit;

    if not(ADODUP.Locate('DUPORDE', auxMantemItem, [])) then
      Raise Exception.Create
        ('O item não pode ser localizado para ser atualizado.');

    ADOBOR.Post;

    FrmPrincipal.Mensagem;

    AtualizaBOR := False;
  end;

end;

procedure TDMDados.ADODUPAfterClose(DataSet: TDataSet);
begin
  AtualizaBOR := False;
end;

procedure TDMDados.ADODUPAfterPost(DataSet: TDataSet);
begin

  if ADODUPDUPCLAS.AsString <> 'IF' then
  begin
    GuardaDUPDOCU := ADODUPDUPDOCU.AsString;
    GuardaDUPTPCO := ADODUPDUPTPCO.AsString;

    PrazoBruto := PrazoBruto +
      (ADODUPDUPVRTI.NewValue * ADODUPDUPPRAZ.NewValue);
    PrazoBrutoEfetivo := PrazoBrutoEfetivo +
      (ADODUPDUPVRTI.NewValue * ADODUPDUPPZEF.NewValue);

    AplicaDUP_BOR;

    if ((not RecalculandoDUP) and
      (ADOBORBORITEM.AsInteger = ADOBORBORORDE.AsInteger) and
      (MessageDlg('É necessário recalcurar os itens.' + #13 + #10 +
      '    Deseja fazer isso agora ?', mtInformation, [mbYes, mbNo],
      0) = mrYes)) then
    Begin
      RecalculoDUP;
    end;
  end;
end;

function TDMDados.CalculaUltimo(Principal: Double; Qtd: integer;
  Arredonda: Boolean): Double;
Var
  Auxs: String;
begin
  with (ADOExecuta) do
  begin
    if Arredonda then
      Auxs := 'select convert( numeric(14,2),' +
        StringReplace(FormatFloat('##0.00', Principal), ',', '.', []) + ' / '
        + IntToStr(Qtd) + ') ' + ' + (' +
        StringReplace(FormatFloat('##0.00', Principal), ',', '.', []) +
        '  - (convert( numeric(14,2), ' +
        StringReplace(FormatFloat('##0.00', Principal), ',', '.', []) + ' / '
        + IntToStr(Qtd) + ' ) * ' + IntToStr(Qtd) + ' ) )'
    else
      Auxs := '';
    Close;
    SQL.Clear;
    SQL.Add(Auxs);
    Open;
    Result := Fields[0].AsFloat;
  end;
end;

procedure TDMDados.RecalculoBOR;
var
  auxItens: integer;
begin

  FrmPrincipal.Mensagem('Recalculando bordero...');

  if not(DMConecta.ADOCapitalDeGiro.InTransaction) then
    DMConecta.ADOCapitalDeGiro.BeginTrans;

  try
    RecalculandoDUP := True;
    auxItens := 1;
    ADODUP.First;
    while not(ADODUP.Eof) do
    begin
      ADODUP.Edit;

      if (ADODUPDUPORDE.AsInteger <> auxItens) then
        ADODUPDUPORDE.AsInteger := auxItens;

      if ((Copy(ADODUPDUPCLAS.AsString, 1, 1) <> 'A') and
        (ADODUPDUPDTVEORI.AsDateTime <> 0) and
        (ADOBuscaTPDocumentoVencimentoUtil.AsString = 'SIM') and
        (D_maisRegional(ADODUPDUPDTVEORI.AsDateTime, 0,
        ADOBORCodigoRegiao.AsInteger) <> ADODUPDUPDTVEORI.AsDateTime)) then
        if Assigned(FrmCompraAtivo) then
          FrmCompraAtivo.ErroConsistencia := 'O vencimento do item ' +
            ADODUPDUPORDE.AsString + ' não é dia útil ';

      ADODUP.Post;

      ADODUP.Next;

      Inc(auxItens);
    end;

    DMConecta.ADOCapitalDeGiro.CommitTrans;

  except
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
  FrmPrincipal.Mensagem;

end;

procedure TDMDados.RecalculoDUP;
begin

  FrmPrincipal.Mensagem('Recalculando item(ns)...');

  if not(DMConecta.ADOCapitalDeGiro.InTransaction) then
    DMConecta.ADOCapitalDeGiro.BeginTrans;

  try
    RecalculandoDUP := True;
    ADOBOR.Edit;
    ZeraBOR;

    ADODUP.First;
    while not(ADODUP.Eof) do
    begin
      ADODUP.Edit;
      CalculosDUP;
      ADODUP.Next;
    end;

    ADOBOR.Post;

    RecalculandoDUP := False;
    FrmPrincipal.Mensagem('Aplicando alterações...');

    DMConecta.ADOCapitalDeGiro.CommitTrans;

  except
    on E: Exception do
    begin
      RecalculandoDUP := False;
      DMConecta.ADOCapitalDeGiro.RollbackTrans;
      Raise E;
    end;
  end;
  FrmPrincipal.Mensagem;
end;

procedure TDMDados.IniciaDUP(ItemAtual, TotaItem: integer);
begin
  try
    if (Trim(ADOBORBORFLOA.AsString) <> 'N') then
      ADODUPDUPFLOA.AsInteger := ADOBORBORFLOA.AsInteger
    else if (ADODUPDUPFLOA.IsNull) then
      ADODUPDUPFLOA.AsInteger := 0;
  except
    ADODUPDUPFLOA.AsInteger := 0;
  end;
  ADODUPDUPDTOP.AsDateTime := ADOBORBORDTOP.AsDateTime;
  ADODUPDUPCLIE.AsString := ADOBORBORCLIE.AsString;
  ADODUPDUPOPER.AsString := ADOBORBOROPER.AsString;
  ADODUPDUPTXIO.AsFloat := ADOBORBORTXIO.AsFloat;
  ADODUPDUPTXIP.AsFloat := ADOBORBORTXIP.AsFloat;
  ADODUPDUPCMAE.AsString := ADOBORBORCMAE.AsString;
  ADODUPDUPCONT.AsString := ADOBORBORCONT.AsString;
  ADODUPDUPAGE.AsString := ADOBORBORAGE.AsString;
  ADODUPDUPTXSA.AsFloat := ADOBORBORTXSA.AsFloat;
  ADODUPDUPTXRISCO.AsFloat := ADOBORBORTXRISCO.AsFloat;

  if (ItemAtual <> 1) then
  begin
    ADODUPDUPTXRE.AsFloat := ArredondaValor(ADOBORBORTXRE.AsFloat /
      ADOBORBORITEM.AsInteger);
    ADODUPDUPVRDC.AsFloat := ArredondaValor(ADOBORBORVRDC.AsFloat /
      ADOBORBORITEM.AsInteger);
    ADODUPDUPTXCA.AsFloat := ArredondaValor(ADOBORBORTXCA.AsFloat /
      ADOBORBORITEM.AsInteger);
    ADODUPDUPDESP.AsFloat := ArredondaValor(ADOBORBORDESP.AsFloat /
      ADOBORBORITEM.AsInteger);
    ADODUPDUPVRCAC.AsFloat := ArredondaValor(ADOBORBORVRCAC.AsFloat /
      ADOBORBORITEM.AsInteger);
    if ((ADOBORCodigoTabelaTarifa.AsInteger > 1) and
      (ADODUPDUPVRTI.AsFloat > 0)) then
      ADODUPDUPCCOB.AsFloat :=
        ProcuraNome('select ValorTarifa from Kg_TarifaCobrancaItem' +
        ' where CodigoTabelaTarifa = ' + ADOBORCodigoTabelaTarifa.AsString +
        ' and ' + StringReplace(ADODUPDUPVRTI.AsString, ',', '.', []) +
        ' between FaixaInicial and FaixaFinal')
    else
      ADODUPDUPCCOB.AsFloat :=
        ArredondaValor(ADOBORBORCCOB.AsFloat / ADOBORBORITEM.AsInteger);

    if ((ADOBORBORDOCUMEN.AsInteger = 40) or (ADOBORBORDOCUMEN.AsInteger = 29) or
        (ADOBORBORDOCUMEN.AsInteger = 30) or (ADOBORBORDOCUMEN.AsInteger = 45) or
        (ADOBORBORDOCUMEN.AsInteger = 31) or (ADOBORBORDOCUMEN.AsInteger = 37) or
        (ADOBORBORDOCUMEN.AsInteger = 46) or (ADOBORBORDOCUMEN.AsInteger = 47) or
        (ADOBORBORDOCUMEN.AsInteger = 38) or (ADOBORBORDOCUMEN.AsInteger = 44) or
        (ADOBORBORDOCUMEN.AsInteger = 48) or (ADOBORBORDOCUMEN.AsInteger = 49) or
        (ADOBORBORDOCUMEN.AsInteger = 41) or (ADOBORBORDOCUMEN.AsInteger = 50) or
        (ADOBORBORDOCUMEN.AsInteger = 52) or (ADOBORBORDOCUMEN.AsInteger = 53) or
        (ADOBORBORDOCUMEN.AsInteger = 51) or (ADOBORBORDOCUMEN.AsInteger = 54) or
        (ADOBORBORDOCUMEN.AsInteger = 55) or (ADOBORBORDOCUMEN.AsInteger = 56) or
        (ADOBORBORDOCUMEN.AsInteger = 58) or (ADOBORBORDOCUMEN.AsInteger = 60) or
        (ADOBORBORDOCUMEN.AsInteger = 61) or (ADOBORBORDOCUMEN.AsInteger = 62) or
        (ADOBORBORDOCUMEN.AsInteger = 63) or (ADOBORBORDOCUMEN.AsInteger = 68) or
        (ADOBORBORDOCUMEN.AsInteger = 69) or (ADOBORBORDOCUMEN.AsInteger = 73) or
        (ADOBORBORDOCUMEN.AsInteger = 74) or (ADOBORBORDOCUMEN.AsInteger = 81) or
        (ADOBORBORDOCUMEN.AsInteger = 82) or (ADOBORBORDOCUMEN.AsInteger = 83) or
        (ADOBORBORDOCUMEN.AsInteger = 84) or (ADOBORBORDOCUMEN.AsInteger = 85) or
        (ADOBORBORDOCUMEN.AsInteger = 86) or (ADOBORBORDOCUMEN.AsInteger = 91))
    then
      ADODUPDUPCCOB.AsFloat := 0;

    ADODUPdupTaxaAdministrativa.AsFloat :=
      ArredondaValor(ADOBORBorTaxaAdministrativa.AsFloat /
      ADOBORBORITEM.AsInteger);

    ADODUPTaxaAberturaCredito.AsFloat :=
      ArredondaValor(ADOBORTaxaAberturaCredito.AsFloat /
      ADOBORBORITEM.AsInteger);
  end
  else
  begin
    ADODUPDUPTXRE.AsFloat := CalculaUltimo(ADOBORBORTXRE.AsFloat,
      ADOBORBORITEM.AsInteger);
    ADODUPDUPVRDC.AsFloat := CalculaUltimo(ADOBORBORVRDC.AsFloat,
      ADOBORBORITEM.AsInteger);
    ADODUPDUPTXCA.AsFloat := CalculaUltimo(ADOBORBORTXCA.AsFloat,
      ADOBORBORITEM.AsInteger);
    ADODUPDUPDESP.AsFloat := CalculaUltimo(ADOBORBORDESP.AsFloat,
      ADOBORBORITEM.AsInteger);
    ADODUPDUPVRCAC.AsFloat := CalculaUltimo(ADOBORBORVRCAC.AsFloat,
      ADOBORBORITEM.AsInteger);
    if ((ADOBORCodigoTabelaTarifa.AsInteger > 1) and
      (ADODUPDUPVRTI.AsFloat > 0)) then
      ADODUPDUPCCOB.AsFloat :=
        ProcuraNome('select ValorTarifa from Kg_TarifaCobrancaItem' +
        ' where CodigoTabelaTarifa = ' + ADOBORCodigoTabelaTarifa.AsString +
        ' and ' + StringReplace(ADODUPDUPVRTI.AsString, ',', '.', []) +
        ' between FaixaInicial and FaixaFinal')
    else
      ADODUPDUPCCOB.AsFloat := CalculaUltimo(ADOBORBORCCOB.AsFloat,
        ADOBORBORITEM.AsInteger);

    if ((ADOBORBORDOCUMEN.AsInteger = 40) or (ADOBORBORDOCUMEN.AsInteger = 29) or
        (ADOBORBORDOCUMEN.AsInteger = 30) or (ADOBORBORDOCUMEN.AsInteger = 45) or
        (ADOBORBORDOCUMEN.AsInteger = 31) or (ADOBORBORDOCUMEN.AsInteger = 37) or
        (ADOBORBORDOCUMEN.AsInteger = 46) or (ADOBORBORDOCUMEN.AsInteger = 47) or
        (ADOBORBORDOCUMEN.AsInteger = 38) or (ADOBORBORDOCUMEN.AsInteger = 44) or
        (ADOBORBORDOCUMEN.AsInteger = 48) or (ADOBORBORDOCUMEN.AsInteger = 49) or
        (ADOBORBORDOCUMEN.AsInteger = 41) or (ADOBORBORDOCUMEN.AsInteger = 50) or
        (ADOBORBORDOCUMEN.AsInteger = 52) or (ADOBORBORDOCUMEN.AsInteger = 53) or
        (ADOBORBORDOCUMEN.AsInteger = 51) or (ADOBORBORDOCUMEN.AsInteger = 54) or
        (ADOBORBORDOCUMEN.AsInteger = 55) or (ADOBORBORDOCUMEN.AsInteger = 56) or
        (ADOBORBORDOCUMEN.AsInteger = 58) or (ADOBORBORDOCUMEN.AsInteger = 60) or
        (ADOBORBORDOCUMEN.AsInteger = 61) or (ADOBORBORDOCUMEN.AsInteger = 62) or
        (ADOBORBORDOCUMEN.AsInteger = 63) or (ADOBORBORDOCUMEN.AsInteger = 68) or
        (ADOBORBORDOCUMEN.AsInteger = 69) or (ADOBORBORDOCUMEN.AsInteger = 73) or
        (ADOBORBORDOCUMEN.AsInteger = 74) or (ADOBORBORDOCUMEN.AsInteger = 81) or
        (ADOBORBORDOCUMEN.AsInteger = 82) or (ADOBORBORDOCUMEN.AsInteger = 83) or
        (ADOBORBORDOCUMEN.AsInteger = 84) or (ADOBORBORDOCUMEN.AsInteger = 85) or
        (ADOBORBORDOCUMEN.AsInteger = 86) or (ADOBORBORDOCUMEN.AsInteger = 91))
    then
      ADODUPDUPCCOB.AsFloat := 0;

    ADODUPdupTaxaAdministrativa.AsFloat :=
      CalculaUltimo(ADOBORBorTaxaAdministrativa.AsFloat,
      ADOBORBORITEM.AsInteger);
    ADODUPTaxaAberturaCredito.AsFloat :=
      CalculaUltimo(ADOBORTaxaAberturaCredito.AsFloat,
      ADOBORBORITEM.AsInteger);

  end;
end;

procedure TDMDados.InserirDadosCtrlPagamentoAutbank(cpaClass: String;
  cpaProposta: Integer; cpaDataOperacao: TDateTime; cpaValorTitulo: Currency;
  cpaCedente, cpaStatus, cpaUsuarioInsert: Integer; cpaBIUsuario: String);
Var
  sqlInsertCtrlPagamentoAutbank: String;
  valorTitulo: String;
begin
  valorTitulo := StringReplace(CurrToStr(cpaValorTitulo), ',',  '.', [ rfReplaceAll, rfIgnoreCase ]);


  sqlInsertCtrlPagamentoAutbank :=
    'insert into ctrl_pagamento_autbank('    + #13 +
    'cpa_class,'                             + #13 +
    'cpa_proposta, '                         + #13 +
    'cpa_dataoperacao, '                     + #13 +
    'cpa_valortitulo, '                      + #13 +
    'cpa_cedente, '                          + #13 +
    'cpa_status, '                           + #13 +
    'cpa_usuarioinsert, '                    + #13 +
    'cpa_biusuarioinsert)'                   + #13 +
    'Values('+ QuotedStr(cpaClass)+ ', '     + #13 +
    IntToStr(cpaProposta) + ', '             + #13 +
    QuotedStr(FormatDateTime(SQLDataHora, cpaDataOperacao)) + ', ' + #13 +
    valorTitulo + ', '                       + #13 +
    IntToStr(cpaCedente) + ', '              + #13 +
    IntToStr(cpaStatus) + ', '               + #13 +
    IntToStr(cpaUsuarioInsert) + ', '        + #13 +
    QuotedStr(cpaBIUsuario) + ')';

    ADOExecuta.Close;
    ADOExecuta.SQL.Clear;
    ADOExecuta.SQL.Add(sqlInsertCtrlPagamentoAutbank);
    ADOExecuta.ExecSQL;
end;

procedure TDMDados.UpdateDadosCtrlPagamentoAutbank(cpaClass: String;
  cpaProposta, cpaStatus: Integer);
var
  sqlUpdateCtrlPagamentoAutbank: STring;
begin
  sqlUpdateCtrlPagamentoAutbank :=
    ' update ctrl_pagamento_autbank set cpa_status = ' + IntToStr(cpaStatus) +
    ' where cpa_class = ' + QuotedStr(cpaClass) +
    '   and cpa_proposta = '+ IntToStr(cpaProposta) +
    '   and cpa_status in (0, 4) ' +
    '   and cpa_statusFinal is null ';

  DMDados.ADOExecuta.Close;
  DMDados.ADOExecuta.SQL.Clear;
  DMDados.ADOExecuta.SQL.Add(sqlUpdateCtrlPagamentoAutbank);
  DMDados.ADOExecuta.ExecSQL;
end;


function TDMDados.UtilizaAgrupamento(Produto: String): Boolean;
begin
  ADOExecuta.close;
  ADOExecuta.sql.Text:= ' SELECT AgruparPagamento FROM Kg_Produto WITH  (NOLOCK) WHERE CodigoProduto =  ' + Produto;
  ADOExecuta.Open;

  if (ADOExecuta.Fields[0].AsString = 'S' ) then
    Result := True
  else
    Result := False;
end;

procedure TDMDados.ListaProdutoSCCI(Tabela, produtos: string);
var
  lsql: string;
begin
  lsql := ' IF EXISTS(SELECT * FROM [TEMPDB].DBO.SYSOBJECTS WHERE NAME LIKE ''%##SCCI'')'
    + ' 	DROP TABLE ##SCCI                                                         '
    + '                                                                             '
    + ' create table ##SCCI(produto int)                                            '
    + ' declare @Prod table(id varchar(30))                                         '
    + '                                                                             '
    + ' declare                                                                     '
    + ' 	 @cod varchar(30)                                                         '
    + ' 	,@produto varchar(30)                                                     '
    + '                                                                             '
    + ' Set @produto = ''##produto''                                                '
    + '                                                                             '
    + ' if LEN(@produto) > 0                                                        '
    + ' 	insert into @Prod(id)                                                     '
    + ' 	select CodProdSCCI                                                        '
    + ' 	from Kg_Produto with(nolock) where 1=1                                    '
    + ' 	and CodigoProduto in(select * from dbo.GERA_ARRAY_INT(@produto))          '
    + ' else                                                                        '
    + ' begin                                                                       '
    + ' 	insert into @Prod(id)                                                     '
    + ' 	select CodProdSCCI                                                        '
    + ' 	from Kg_Produto with(nolock) where 1=1                                    '
    + ' 	AND CodProdSCCI is not null                                               '
    + ' end                                                                         '
    + '                                                                             '
    + ' DECLARE SCCI CURSOR  FAST_FORWARD                                           '
    + ' FOR                                                                         '
    + ' 	select * from @Prod                                                       '
    + '                                                                             '
    + ' OPEN SCCI                                                                   '
    + ' FETCH NEXT FROM SCCI INTO @cod                                              '
    + ' WHILE @@FETCH_STATUS = 0                                                    '
    + ' BEGIN                                                                       '
    + ' 	insert into ##SCCI                                                        '
    + ' 	select * from dbo.GERA_ARRAY_INT(@cod)                                    '
    + '                                                                             '
    + '   FETCH NEXT FROM SCCI INTO @cod                                            '
    + ' END                                                                         '
    + ' CLOSE SCCI;                                                                 '
    + ' DEALLOCATE SCCI;                                                            ';

  lsql := StringReplace(lsql, '##SCCI', Tabela, [rfReplaceAll]);
  lsql := StringReplace(lsql, '##produto',
    IfThen((Length(Trim(produtos)) = 0), EmptyStr, Trim(produtos)),
    [rfReplaceAll]);
  try
    DMConecta.ADOCapitalDeGiro.Execute(lsql);
  except
    on E: Exception do
    begin
      MessageDlg(' Mensagem: Produto SCCI Erro: ' + E.Message, mtConfirmation,
        [mbOK], 0);
    end
    else
      ShowMessage('Foi encontrado um parametro inesperado.');
  end;

end;

procedure TDMDados.ZeraBOR;
begin
  ADOBORBORORDE.AsInteger := 0;
  ADOBORBORVRBO.AsFloat := 0;
  ADOBORBORFOME.AsFloat := 0;
  ADOBORBORLIQU.AsFloat := 0;
  ADOBORBORVRIP.AsFloat := 0;
  ADOBORBORVRSA.AsFloat := 0;
  ADOBORBORVRRISCO.AsFloat := 0;
  ADOBORBORVRCAC.AsFloat := 0;
  ADOBORBorValorTMF.AsFloat := 0;
  if (ADOBORCodigoTabelaTarifa.AsInteger > 1) then
    ADOBORBORCCOB.AsFloat := 0;
  ADOBORBORVRIO.AsFloat := 0;
  ADOBORBORVRIOFC.AsFloat := 0;
  ADOBORBORPZEF.AsFloat := 0;
  ADOBORBORTXPE.AsFloat := 0;
  ADOBORBORPMED.AsFloat := 0;

end;

procedure TDMDados.ExecutaSQL(iSQL: String);
begin
  with (ADOExecuta) do
  begin
    Close;
    SQL.Clear;
    SQL.Add(iSQL);
    ExecSQL;
    SQL.Clear;
  end;
end;

function TDMDados.GERAIDCLIENTE(CNPJ, ORIGEM: STRING): Integer;
begin
  Try
    ADOIDCLIENTE.Parameters[0].Value := CNPJ    ;
    ADOIDCLIENTE.Parameters[1].Value := ORIGEM  ;
    ADOIDCLIENTE.Execute;
    IF (ADOIDCLIENTE.Parameters[3].Value <> NULL) THEN
    BEGIN
      Result := -1;
      EXIT;
    END;
  except
    on E: Exception do
    begin
      MessageDlg('Não foi possivel gerar o Identificador do cliente. ' + E.Message,  mtError, [mbOK], 0);
      Result := -1;
      EXIT;
    end
  end;
  Result := ADOIDCLIENTE.Parameters[2].Value;
end;

function TDMDados.GERAIDPROPOSTA(CARTEIRA, COD_CEDENTE, ORIGEM: STRING): Integer;
VAR
  CNPJ : STRING;
begin
  Try
    WITH (ADOExecuta) DO
    BEGIN

      Close;
      SQL.Clear;
      SQL.Add(' SELECT  TOP 1  CLICGC + ISNULL(CLICGCFILI ,'''') + CLICGCDV ');
      SQL.Add(' FROM    FACTBCLI WITH (NOLOCK)                              ');
      SQL.Add(' WHERE   CLICOD = ' + COD_CEDENTE                             );
      SQL.Add(' AND     CLITIP = ''C''                                      ');
      Open;

      IF ((Fields[0].AsString = '') or (Fields[0].AsString = NULL)) THEN
      BEGIN
        MessageDlg('Não foi possivel gerar o Identificador da proposta, Código do cedente ( '+ COD_CEDENTE + ' ) não encontrado !' + COD_CEDENTE , mtError,[mbOK], 0);
        Result := -1;
        EXIT;
      END
      ELSE
      BEGIN
        CNPJ := Fields[0].AsString;
      END;
    END;

    ADOIDPROPOSTA.Parameters[0].Value := CARTEIRA     ;
    ADOIDPROPOSTA.Parameters[1].Value := CNPJ         ;
    ADOIDPROPOSTA.Parameters[2].Value := ORIGEM       ;
    ADOIDPROPOSTA.Execute;

    IF (ADOIDPROPOSTA.Parameters[4].Value <> NULL) THEN
    BEGIN
      Result := -1;
      EXIT;
    END;
  except
    on E: Exception do
    begin
      MessageDlg('Não foi possivel gerar o Identificador da Proposta. ' + E.Message,  mtError, [mbOK], 0);
      Result := -1;
      EXIT;
    end
  end;
  Result := ADOIDPROPOSTA.Parameters[3].Value;
end;

procedure TDMDados.AtualizaDataSet(iDataSet: TDataSet);
begin
  iDataSet.Close;
  iDataSet.Open;
end;

procedure TDMDados.ADOFACTBHISBeforePost(DataSet: TDataSet);
begin
  if ADOFACTBHISHISCOD.IsNull then
    ADOFACTBHISHISCOD.AsInteger := AutoIncremento('factbhis', 'HISCOD')
end;

function TDMDados.Sequencias(Carteira, Campo: String): Int64;
Var
  Auxs: String;
begin
  Auxs := '0';
  Result := 0;

  if (Auxs = '0') then
  begin
    with (ADOExecuta) do
    begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT ' + Campo + ' FROM FACTBCLA');
      SQL.Add('WHERE CLACOD = ''IF'' ');
      Open;

      if (Fields[0].AsString = '') then
        Result := 1
      else
        Result := Fields[0].AsInteger + 1;

      Close;
      SQL.Clear;
      SQL.Add('UPDATE FACTBCLA');
      SQL.Add('SET ' + Campo + ' = ' + IntToStr(Result));
      ExecSQL;
      Close;
      SQL.Clear;

    end;

  end;

end;

procedure TDMDados.ApagaItensDUP;
begin
  ADOItens.Close;
  with (ADOExecuta) do
  begin
    Close;
    SQL.Clear;
    SQL.Add('DELETE FROM FACTBDUP');
    SQL.Add('WHERE DUPBORD = ''' + ADOBORBORBORD.AsString + '''');
    SQL.Add('AND DUPCLAS = ''' + ADOBORBORCLAS.AsString + '''');
    ExecSQL;
    SQL.Clear;

  end;
end;

function TDMDados.SequenciaCliSac(CS: String): Int64;
var
  Tipo, Auxs: String;
  AtualizandoSeq: Boolean;
begin
  Tipo := CS;
  if CS = 'C' then
    CS := 'PARCLI'
  else
    CS := 'PARSAC';

  AtualizandoSeq := True;
  while (AtualizandoSeq) do
  begin

    with (ADOExecuta) do
    begin

      Close;
      SQL.Clear;
      SQL.Add('SELECT ' + CS + ' FROM factbpar where PARCOD = ' +
        IntToStr(Empresa.Codigo));
      Open;

      if (Fields[0].AsString = '') then
        Result := 1
      else
        Result := Fields[0].AsInteger + 1;

      Close;

      SQL.Clear;
      SQL.Add('UPDATE factbpar');
      SQL.Add('SET ' + CS + ' = ' + IntToStr(Result) + ' where PARCOD = ' +
        IntToStr(Empresa.Codigo));
      ExecSQL;

      Auxs := ' select CLICOD from factbcli with (nolock) where clicod = ' +
        IntToStr(Result) + ' and clitip = ' + #39 + Tipo + #39;
      Close;
      SQL.Clear;
      SQL.Add('select CLICOD from factbcli with (nolock) where clicod = ' +
        IntToStr(Result) + ' and clitip = ' + #39 + Tipo + #39);
      Open;
      AtualizandoSeq := (ADOExecuta.RecordCount > 0);

      Close;
      SQL.Clear;

    end;
  end;
end;

function TDMDados.Hoje: TDateTime;
begin
  with (DMDados.ADOExecuta) do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT GETDATE()');
    Open;
    Result := Fields[0].AsDateTime;
    Close;
    SQL.Clear;
  end;
end;

procedure TDMDados.HTTPRIOrecebimentoHTTPWebNode1BeforePost(const HTTPReqResp
  : THTTPReqResp; Data: Pointer);
var
  auth: string;
begin
  InternetSetOption(0, INTERNET_OPTION_END_BROWSER_SESSION, nil, 0);
  auth := 'Authorization: Basic ' +
    EncodeString('' +
    Cfg_WS_LANCAMENTO_DEBITO_CREDITO.Usuario
    + ':' +
    Cfg_WS_LANCAMENTO_DEBITO_CREDITO.Senha
    + '');
  HttpAddRequestHeaders(Data, PChar(auth), Length(auth),
    HTTP_ADDREQ_FLAG_ADD);

end;

procedure TDMDados.ADOFACTBSCIBeforeClose(DataSet: TDataSet);
begin
  if not(DataSet.State = dsbrowse) then
    case MessageDlg('Existem alterações do cadastro SCI que não foram salvas.'
      + #13 + #10 + '                   Deseja salva-las', mtWarning,
      mbYesNoCancel, 0) of
      mrYes: DataSet.Post;
      mrNo: DataSet.Cancel;
      mrCancel: Abort;
    end;

end;

procedure TDMDados.ADOBORAfterOpen(DataSet: TDataSet);
begin
  ADODUP.Open;
end;

procedure TDMDados.ADOBORBeforeClose(DataSet: TDataSet);
begin
  ADODUP.Close;
end;

procedure TDMDados.ADOBORBeforePost(DataSet: TDataSet);
begin
  IF (ADOBORBORBORD.IsNull) THEN
  BEGIN
    IF ((ADOBORBORCLAS.AsString <> '') and (ADOBORTELA.asString <> '' ) and (ADOBORBORCLIE.asString <> '' ))THEN
    BEGIN
      ADOBORBORBORD.AsInteger := DMDados.GERAIDPROPOSTA( ADOBORBORCLAS.AsString , ADOBORBORCLIE.AsString, 'ICPJ - TELA : ' + ADOBORTELA.AsString + ' - USUÁRIO : ' + IntToStr(Ususario.Codigo));
      IF ADOPreliminarPROPROP.AsInteger = -1 THEN
      BEGIN
        ShowMessage('Erro ao gerar idendificador para a proposta !');
        EXIT;
      END;
    END;
  END;
end;

procedure TDMDados.ADOSacadoBeforePost(DataSet: TDataSet);
VAR
  CNPJ: string;
begin
  if ((ADOSacadoclitip.IsNull) or (ADOSacadoclitip.AsString = '')) then
    ADOSacadoclitip.AsString := 'S';

  if (ADOSacadoclicgcfili.IsNull) then
    ADOSacadoclicgcfili.AsString := '';

  if ((AdoSacadoCODTELA.IsNull) or (AdoSacadoCODTELA.AsString = '' ))  then
    AdoSacadoCODTELA.AsString := 'TELA NAO INFORMADA';


  Try
    if (ADOSacadoclicod.IsNull) then
    begin
      CNPJ := Trim(ADOSacadoclicgc.AsString) + Trim(ADOSacadoclicgcfili.AsString) + Trim(ADOSacadoclicgcdv.AsString);
      ADOSacadoclicod.AsInteger := DMDados.GERAIDCLIENTE(CNPJ , 'ICPJ - TELA : ' + AdoSacadoCODTELA.AsString +' - USUÁRIO : ' + IntToStr(Ususario.Codigo));
      if  ADOSacadoclicod.AsInteger = -1 then
      begin
        ShowMessage('Erro ao gerar idendificador para o sacado !');
        exit;
      end;
    end;
  Except
    on E: Exception do
    begin
      MessageDlg(' Mensagem: ' + E.Message, mtError, [mbOK], 0);
    end
  else
    ShowMessage('Erro para gravar o cadastro de cedente.');
  end;

  if (ADOSacadocliemptitu.IsNull) then
    ADOSacadocliemptitu.AsInteger := ADOSacadoclicod.AsInteger;
end;

procedure TDMDados.ADOSacadoBeforeClose(DataSet: TDataSet);
begin
  if not(DataSet.State = dsbrowse) then
    case MessageDlg('Existem alterações que não foram salvas.' + #13 + #10 +
      '                   Deseja salva-las', mtWarning, mbYesNoCancel, 0) of
      mrYes: DataSet.Post;
      mrNo: DataSet.Cancel;
      mrCancel: Abort;
    end;
end;

constructor TUsuario.Create;
begin
  Self.Assinatura := TBitmap.Create;
  Self.Alertas := TAlerta.Create;
end;

destructor TUsuario.Free;
begin
  Self.Assinatura.Free;
  Self.Alertas.Free;
end;

procedure TDMDados.ADOFACTBCTCAfterInsert(DataSet: TDataSet);
begin
  ADOFACTBCTCCTCUsuarioInsert.AsInteger := Ususario.Codigo;
end;

procedure TDMDados.ADOFACTBCTCAfterScroll(DataSet: TDataSet);
begin
  if Assigned(FrmDigitaCC) then
    with (FrmDigitaCC) do
    begin
      ADOCliente.Close;
      ADOCliente.Open;
      ADOGerente.Close;
      ADOGerente.Open;
      ADOHistorico.Close;
      ADOHistorico.Open;
    end;
end;

procedure TDMDados.ADOFACTBCKPAfterEdit(DataSet: TDataSet);
begin
  ADOFACTBCKPUsuarioUpdate.AsInteger := Ususario.Codigo;
  ADOFACTBCKPDataUpdate.AsDateTime := PesquisaDataBanco();
end;

procedure TDMDados.ADOFACTBCKPAfterInsert(DataSet: TDataSet);
begin
  ADOFACTBCKPUsuarioInsert.AsInteger := Ususario.Codigo;
end;

procedure TDMDados.ADOBORAfterInsert(DataSet: TDataSet);
begin
  ADOBORBORUSUARIO.AsInteger := Ususario.Codigo;
end;

procedure TDMDados.ADOBORAfterEdit(DataSet: TDataSet);
begin
  ADOBORBORUSUARIOUpdate.AsInteger := Ususario.Codigo;
end;

end.
