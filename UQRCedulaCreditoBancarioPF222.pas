{$A8,B-,C+,D+,E-,F-,G+,H+,I+,J-,K-,L+,M-,N+,O+,P+,Q-,R-,S-,T-,U-,V+,W-,X+,Y+,Z1}
{$MINSTACKSIZE $00004000}
{$MAXSTACKSIZE $00100000}
{$IMAGEBASE $00400000}
{$APPTYPE GUI}
{$WARN SYMBOL_DEPRECATED ON}
{$WARN SYMBOL_LIBRARY ON}
{$WARN SYMBOL_PLATFORM ON}
{$WARN SYMBOL_EXPERIMENTAL ON}
{$WARN UNIT_LIBRARY ON}
{$WARN UNIT_PLATFORM ON}
{$WARN UNIT_DEPRECATED ON}
{$WARN UNIT_EXPERIMENTAL ON}
{$WARN HRESULT_COMPAT ON}
{$WARN HIDING_MEMBER ON}
{$WARN HIDDEN_VIRTUAL ON}
{$WARN GARBAGE ON}
{$WARN BOUNDS_ERROR ON}
{$WARN ZERO_NIL_COMPAT ON}
{$WARN STRING_CONST_TRUNCED ON}
{$WARN FOR_LOOP_VAR_VARPAR ON}
{$WARN TYPED_CONST_VARPAR ON}
{$WARN ASG_TO_TYPED_CONST ON}
{$WARN CASE_LABEL_RANGE ON}
{$WARN FOR_VARIABLE ON}
{$WARN CONSTRUCTING_ABSTRACT ON}
{$WARN COMPARISON_FALSE ON}
{$WARN COMPARISON_TRUE ON}
{$WARN COMPARING_SIGNED_UNSIGNED ON}
{$WARN COMBINING_SIGNED_UNSIGNED ON}
{$WARN UNSUPPORTED_CONSTRUCT ON}
{$WARN FILE_OPEN ON}
{$WARN FILE_OPEN_UNITSRC ON}
{$WARN BAD_GLOBAL_SYMBOL ON}
{$WARN DUPLICATE_CTOR_DTOR ON}
{$WARN INVALID_DIRECTIVE ON}
{$WARN PACKAGE_NO_LINK ON}
{$WARN PACKAGED_THREADVAR ON}
{$WARN IMPLICIT_IMPORT ON}
{$WARN HPPEMIT_IGNORED ON}
{$WARN NO_RETVAL ON}
{$WARN USE_BEFORE_DEF ON}
{$WARN FOR_LOOP_VAR_UNDEF ON}
{$WARN UNIT_NAME_MISMATCH ON}
{$WARN NO_CFG_FILE_FOUND ON}
{$WARN IMPLICIT_VARIANTS ON}
{$WARN UNICODE_TO_LOCALE ON}
{$WARN LOCALE_TO_UNICODE ON}
{$WARN IMAGEBASE_MULTIPLE ON}
{$WARN SUSPICIOUS_TYPECAST ON}
{$WARN PRIVATE_PROPACCESSOR ON}
{$WARN UNSAFE_TYPE OFF}
{$WARN UNSAFE_CODE OFF}
{$WARN UNSAFE_CAST OFF}
{$WARN OPTION_TRUNCATED ON}
{$WARN WIDECHAR_REDUCED ON}
{$WARN DUPLICATES_IGNORED ON}
{$WARN UNIT_INIT_SEQ ON}
{$WARN LOCAL_PINVOKE ON}
{$WARN MESSAGE_DIRECTIVE ON}
{$WARN TYPEINFO_IMPLICITLY_ADDED ON}
{$WARN XML_WHITESPACE_NOT_ALLOWED ON}
{$WARN XML_UNKNOWN_ENTITY ON}
{$WARN XML_INVALID_NAME_START ON}
{$WARN XML_INVALID_NAME ON}
{$WARN XML_EXPECTED_CHARACTER ON}
{$WARN XML_CREF_NO_RESOLVE ON}
{$WARN XML_NO_PARM ON}
{$WARN XML_NO_MATCHING_PARM ON}
unit UQRCedulaCreditoBancarioPF222;

interface

uses SysUtils, QuickRpt, QRCtrls, DB, DBTables, QRExport, Classes, Graphics,
  Controls, ExtCtrls, jpeg, ADODB, UFrmmaster;

type
  TQRCedulaCreditoBancarioPF222 = class(TQuickRep)
    QRBand1: TQRBand;
    QRShape2: TQRShape;
    QRRichText3: TQRRichText;
    QRShape6: TQRShape;
    QRLabelQuadro1Razao: TQRLabel;
    QRLabelQuadro1Inscricao: TQRLabel;
    QRLabelQuadro1Endereco: TQRLabel;
    QRLabelQuadro1Bairro: TQRLabel;
    QRLabelQuadro1Cidade: TQRLabel;
    QRLabelQuadro1Estado: TQRLabel;
    QRLabelQuadro1Cep: TQRLabel;
    QRLabel1: TQRLabel;
    QRShape7: TQRShape;
    QRShape8: TQRShape;
    quire: TQRShape;
    QRShape11: TQRShape;
    QRShape12: TQRShape;
    QRShape13: TQRShape;
    QRShape14: TQRShape;
    QRShape15: TQRShape;
    QRLabel24: TQRLabel;
    QRShape16: TQRShape;
    QRLabel25: TQRLabel;
    QRLabel26: TQRLabel;
    QRLabel27: TQRLabel;
    QRLabel28: TQRLabel;
    QRLabel29: TQRLabel;
    QRRichText8: TQRRichText;
    QRLabel30: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel14: TQRLabel;
    QRLabel15: TQRLabel;
    QRLabel16: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel32: TQRLabel;
    QRLabel33: TQRLabel;
    QRLabel49: TQRLabel;
    QRLabel50: TQRLabel;
    QRLabel51: TQRLabel;
    QRShape9: TQRShape;
    QRBand2: TQRBand;
    QRDBText26: TQRDBText;
    QRDBTextValor1: TQRDBText;
    QRDBTextVenc1: TQRDBText;
    QRDBText29: TQRDBText;
    QRDBTextValor2: TQRDBText;
    QRDBTextVenc2: TQRDBText;
    QRShape20: TQRShape;
    QRShape19: TQRShape;
    QRShape28: TQRShape;
    QRShape29: TQRShape;
    QRShape30: TQRShape;
    QRBand3: TQRBand;
    QRLblNome: TQRLabel;
    QRLblEndereco: TQRLabel;
    QRLblTelefone: TQRLabel;
    QRLblCidade: TQRLabel;
    QRLblUF: TQRLabel;
    QRLblCNPJ: TQRLabel;
    QRLblBairro: TQRLabel;
    QRLblCEP: TQRLabel;
    QRLabel62: TQRLabel;
    QRLabel63: TQRLabel;
    QRLabel64: TQRLabel;
    QRLabel65: TQRLabel;
    QRLabel66: TQRLabel;
    QRLabel67: TQRLabel;
    QRLabel68: TQRLabel;
    QRLabel69: TQRLabel;
    QRLabel70: TQRLabel;
    QRLabel71: TQRLabel;
    QRLabel72: TQRLabel;
    QRLabel73: TQRLabel;
    QRLabel74: TQRLabel;
    QRLabel75: TQRLabel;
    QRLabel76: TQRLabel;
    QRLabel77: TQRLabel;
    QRLabel79: TQRLabel;
    QRLabel80: TQRLabel;
    QRLabel81: TQRLabel;
    QRLabel82: TQRLabel;
    QRLabel83: TQRLabel;
    QRLabel84: TQRLabel;
    QRLabel85: TQRLabel;
    QRLabel86: TQRLabel;
    QRLabel88: TQRLabel;
    QRLabel89: TQRLabel;
    QRLabel90: TQRLabel;
    QRLabel91: TQRLabel;
    QRLabel92: TQRLabel;
    QRLabel93: TQRLabel;
    QRLabel94: TQRLabel;
    ChildBand1: TQRChildBand;
    QRLabel36: TQRLabel;
    QRLabel37: TQRLabel;
    QRLabel38: TQRLabel;
    QRLabel39: TQRLabel;
    QRLabel40: TQRLabel;
    QRLabel47: TQRLabel;
    QRShape17: TQRShape;
    QRShape24: TQRShape;
    QRShape25: TQRShape;
    QRShape26: TQRShape;
    QRShape27: TQRShape;
    QRLabel42: TQRLabel;
    QRLabel43: TQRLabel;
    QRBand4: TQRBand;
    QRShape1: TQRShape;
    QRLabel41: TQRLabel;
    QRLabel35: TQRLabel;
    QRShape3: TQRShape;
    QRShape4: TQRShape;
    QRLabel52: TQRLabel;
    QRLabel48: TQRLabel;
    QRTextFilter1: TQRTextFilter;
    QRLabel138: TQRLabel;
    QRLabel34: TQRLabel;
    QRLabel140: TQRLabel;
    ChildBand17: TQRChildBand;
    ChildBand18: TQRChildBand;
    DSPrimeiroAvalista: TDataSource;
    ADOPrimeiroAvalista: TADODataSet;
    ADOPrimeiroAvalistaCodigoAvalista: TAutoIncField;
    ADOPrimeiroAvalistaInscricaoAvalista: TStringField;
    ADOPrimeiroAvalistaNome: TStringField;
    ADOPrimeiroAvalistaEndereco: TStringField;
    ADOPrimeiroAvalistaEnderecoNumero: TStringField;
    ADOPrimeiroAvalistaNacionalidade: TStringField;
    ADOPrimeiroAvalistaNaturalidade: TStringField;
    ADOPrimeiroAvalistaEstadoCivil: TStringField;
    ADOPrimeiroAvalistaIdentidade: TStringField;
    ADOPrimeiroAvalistaProfissao: TStringField;
    ADOSegundoAvalista: TADODataSet;
    ADOSegundoAvalistaCodigoAvalista: TAutoIncField;
    ADOSegundoAvalistaInscricaoAvalista: TStringField;
    ADOSegundoAvalistaNome: TStringField;
    ADOSegundoAvalistaEndereco: TStringField;
    ADOSegundoAvalistaEnderecoNumero: TStringField;
    ADOSegundoAvalistaNacionalidade: TStringField;
    ADOSegundoAvalistaNaturalidade: TStringField;
    ADOSegundoAvalistaEstadoCivil: TStringField;
    ADOSegundoAvalistaIdentidade: TStringField;
    ADOSegundoAvalistaProfissao: TStringField;
    DSSegundoAvalista: TDataSource;
    QRDBText3: TQRDBText;
    QRDBTextValor3: TQRDBText;
    QRDBTextVenc3: TQRDBText;
    QRShape21: TQRShape;
    QRShape22: TQRShape;
    QRShape33: TQRShape;
    QRLabel95: TQRLabel;
    QRLabel109: TQRLabel;
    QRLabel112: TQRLabel;
    QRShape35: TQRShape;
    QRShape36: TQRShape;
    QRShape37: TQRShape;
    ADOPrimeiroAvalistaBairro: TStringField;
    ADOSegundoAvalistaBairro: TStringField;
    ADOPrimeiroAvalistaCidade: TStringField;
    ADOPrimeiroAvalistaCep: TStringField;
    ADOPrimeiroAvalistaEstado: TStringField;
    ADOSegundoAvalistaCidade: TStringField;
    ADOSegundoAvalistaCep: TStringField;
    ADOSegundoAvalistaEstado: TStringField;
    ADOSegundoAvalistaDDD: TStringField;
    ADOSegundoAvalistaTelefone: TStringField;
    ADOPrimeiroAvalistaDDD: TStringField;
    ADOPrimeiroAvalistaTelefone: TStringField;
    QRLabel145: TQRLabel;
    QRLabel146: TQRLabel;
    QRLabel148: TQRLabel;
    QRLabel55: TQRLabel;
    QRLblDataContrato: TQRLabel;
    QRLblDataVenc: TQRLabel;
    QRLabel149: TQRLabel;
    QRDBTxtTaxaMes: TQRLabel;
    QRDBTxtAno: TQRLabel;
    QRDBTxtPosAno: TQRLabel;
    QRLabel139: TQRLabel;
    QRLblValor: TQRLabel;
    QRLblPracaPag: TQRLabel;
    QRLblValorExtenso: TQRLabel;
    ChildBand3: TQRChildBand;
    ChildBand2: TQRChildBand;
    QRLabel01: TQRLabel;
    QRDBTxtPosMes: TQRLabel;
    QRLabel02: TQRLabel;
    QRLabel03: TQRLabel;
    QRLabel04: TQRLabel;
    QRLbliof: TQRLabel;
    QRLblValoriof: TQRLabel;
    QRLblCrontato: TQRLabel;
    QRRichTexto: TQRRichText;
    QRLblA: TQRLabel;
    QRLabel58: TQRLabel;
    QRLabel45: TQRLabel;
    QRLblI: TQRLabel;
    QRLabel59: TQRLabel;
    QRLblC: TQRLabel;
    QRLabel61: TQRLabel;
    QRLblD: TQRLabel;
    QRLabel137: TQRLabel;
    QRLblE: TQRLabel;
    QRLblF: TQRLabel;
    QRLabel151: TQRLabel;
    QRLabel152: TQRLabel;
    QRLblL: TQRLabel;
    QRLabel154: TQRLabel;
    QRLblH: TQRLabel;
    QRLabel156: TQRLabel;
    QRLblB: TQRLabel;
    QRLabel158: TQRLabel;
    QRLblJ: TQRLabel;
    QRLblOutras: TQRLabel;
    ADOPrimeiroConjuge: TADODataSet;
    ADOPrimeiroConjugeCodigoAvalista: TIntegerField;
    ADOPrimeiroConjugeCpfConjuge: TStringField;
    ADOPrimeiroConjugeNome: TStringField;
    ADOSegundoConjuge: TADODataSet;
    ADOSegundoConjugeCodigoAvalista: TIntegerField;
    ADOSegundoConjugeCpfConjuge: TStringField;
    ADOSegundoConjugeNome: TStringField;
    DSSegundoConjuge: TDataSource;
    DSPrimeiroConjuge: TDataSource;
    ADOContratoCedula: TADODataSet;
    DSContratoCedula: TDataSource;
    ADOContratoCedulaId_Linha: TIntegerField;
    ADOContratoCedulaParcela1: TIntegerField;
    ADOContratoCedulaParcela2: TIntegerField;
    ADOContratoCedulaParcela3: TIntegerField;
    ADOContratoCedulavenc1: TDateTimeField;
    ADOContratoCedulavenc2: TDateTimeField;
    ADOContratoCedulavenc3: TDateTimeField;
    ADOContratoCedulaValor1: TBCDField;
    ADOContratoCedulaValor2: TBCDField;
    ADOContratoCedulaValor3: TBCDField;
    ADOPrimeiroAvalistaEnderecoComplemento: TStringField;
    ADOSegundoAvalistaEnderecoComplemento: TStringField;
    ChildBand19: TQRChildBand;
    ChildBand20: TQRChildBand;
    QRShape39: TQRShape;
    ADOTerceiroAvalista: TADODataSet;
    DSTerceiroAvalista: TDataSource;
    ADOQuartoAvalista: TADODataSet;
    DSQuartoAvalista: TDataSource;
    ADOQuartoConjuge: TADODataSet;
    ADOTerceiroConjuge: TADODataSet;
    DSTerceiroConjuge: TDataSource;
    DSQuartoConjuge: TDataSource;
    ADOTerceiroAvalistaCodigoAvalista: TAutoIncField;
    ADOTerceiroAvalistaInscricaoAvalista: TStringField;
    ADOTerceiroAvalistaNome: TStringField;
    ADOTerceiroAvalistaEndereco: TStringField;
    ADOTerceiroAvalistaBairro: TStringField;
    ADOTerceiroAvalistaCidade: TStringField;
    ADOTerceiroAvalistaCep: TStringField;
    ADOTerceiroAvalistaEstado: TStringField;
    ADOTerceiroAvalistaDDD: TStringField;
    ADOTerceiroAvalistaTelefone: TStringField;
    ADOTerceiroAvalistaEnderecoNumero: TStringField;
    ADOTerceiroAvalistaEnderecoComplemento: TStringField;
    ADOTerceiroAvalistaNacionalidade: TStringField;
    ADOTerceiroAvalistaNaturalidade: TStringField;
    ADOTerceiroAvalistaEstadoCivil: TStringField;
    ADOTerceiroAvalistaIdentidade: TStringField;
    ADOTerceiroAvalistaProfissao: TStringField;
    ADOQuartoAvalistaCodigoAvalista: TAutoIncField;
    ADOQuartoAvalistaInscricaoAvalista: TStringField;
    ADOQuartoAvalistaNome: TStringField;
    ADOQuartoAvalistaEndereco: TStringField;
    ADOQuartoAvalistaBairro: TStringField;
    ADOQuartoAvalistaCidade: TStringField;
    ADOQuartoAvalistaCep: TStringField;
    ADOQuartoAvalistaEstado: TStringField;
    ADOQuartoAvalistaDDD: TStringField;
    ADOQuartoAvalistaTelefone: TStringField;
    ADOQuartoAvalistaEnderecoNumero: TStringField;
    ADOQuartoAvalistaEnderecoComplemento: TStringField;
    ADOQuartoAvalistaNacionalidade: TStringField;
    ADOQuartoAvalistaNaturalidade: TStringField;
    ADOQuartoAvalistaEstadoCivil: TStringField;
    ADOQuartoAvalistaIdentidade: TStringField;
    ADOQuartoAvalistaProfissao: TStringField;
    ADOTerceiroConjugeCodigoAvalista: TIntegerField;
    ADOTerceiroConjugeCpfConjuge: TStringField;
    ADOTerceiroConjugeNome: TStringField;
    ADOQuartoConjugeCodigoAvalista: TIntegerField;
    ADOQuartoConjugeCpfConjuge: TStringField;
    ADOQuartoConjugeNome: TStringField;
    QRRichText21: TQRRichText;
    QRImage1: TQRImage;
    QRShape38: TQRShape;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel23: TQRLabel;
    QRLabel20: TQRLabel;
    QRLabel21: TQRLabel;
    QRLabel18: TQRLabel;
    QRLabel31: TQRLabel;
    QRShape46: TQRShape;
    QRRichText1: TQRRichText;
    QRLblCET: TQRLabel;
    QRLabel7: TQRLabel;
    ADOQuery1: TADOQuery;
    QRBand5: TQRBand;
    QRShape45: TQRShape;
    QRShape47: TQRShape;
    QRShape48: TQRShape;
    QRShape49: TQRShape;
    QRShape50: TQRShape;
    QRLabel56: TQRLabel;
    QRLabel57: TQRLabel;
    QRLabel87: TQRLabel;
    QRLabel97: TQRLabel;
    QRLabel98: TQRLabel;
    QRLabel103: TQRLabel;
    QRLabel106: TQRLabel;
    QRLabel111: TQRLabel;
    QRLabel113: TQRLabel;
    QRLabel115: TQRLabel;
    QRLabel117: TQRLabel;
    QRLabel119: TQRLabel;
    QRLabel121: TQRLabel;
    QRLabel123: TQRLabel;
    QRLabel125: TQRLabel;
    QRLblG: TQRLabel;
    QRLblVia: TQRLabel;
    QRLabel99: TQRLabel;
    QRLbMora: TQRLabel;
    ChildBand4: TQRChildBand;
    QRLabel108: TQRLabel;
    QRShape34: TQRShape;
    QRLabel110: TQRLabel;
    QRDBText19: TQRDBText;
    QRLabel116: TQRLabel;
    QRLabel54: TQRLabel;
    QRLabel118: TQRLabel;
    QRLabel53: TQRLabel;
    QRShape43: TQRShape;
    QRLabel200: TQRLabel;
    QRLabel201: TQRLabel;
    QRDBText5: TQRDBText;
    QRLabel202: TQRLabel;
    QRLabel210: TQRLabel;
    QRLabel203: TQRLabel;
    QRLabel209: TQRLabel;
    QRShape31: TQRShape;
    QRLabel78: TQRLabel;
    QRLabel96: TQRLabel;
    QRDBText7: TQRDBText;
    QRLabel102: TQRLabel;
    QRLabel60: TQRLabel;
    QRLabel104: TQRLabel;
    QRLabel44: TQRLabel;
    QRShape44: TQRShape;
    QRLabel204: TQRLabel;
    QRLabel205: TQRLabel;
    QRDBText6: TQRDBText;
    QRLabel206: TQRLabel;
    QRLabel211: TQRLabel;
    QRLabel207: TQRLabel;
    QRLabel208: TQRLabel;
    QRShape32: TQRShape;
    QRShape23: TQRShape;
    QRLabel46: TQRLabel;
    QRDBText1: TQRDBText;
    QRDBText13: TQRDBText;
    QRLabel107: TQRLabel;
    QRShape41: TQRShape;
    QRShape42: TQRShape;
    QRLabel199: TQRLabel;
    QRDBText4: TQRDBText;
    QRDBText2: TQRDBText;
    QRLabel198: TQRLabel;
    QRShape18: TQRShape;
    QRLabel19: TQRLabel;
    QRLblRemetente: TQRLabel;
    QRLabel105: TQRLabel;
    QRLblDia: TQRLabel;
    QRLblMes: TQRLabel;
    QRLblAno: TQRLabel;
    QRLabel101: TQRLabel;
    QRLabel122: TQRLabel;
    QRLabel124: TQRLabel;
    QRLabel126: TQRLabel;
    QRLabel127: TQRLabel;
    QRLabel128: TQRLabel;
    QRLabel129: TQRLabel;
    QRLabel130: TQRLabel;
    QRLabel131: TQRLabel;
    QRLabel132: TQRLabel;
    QRShape5: TQRShape;
    QRLabel22: TQRLabel;
    procedure QRDBTextValor3Print(sender: TObject; var Value: String);
    procedure QRLabel62Print(sender: TObject; var Value: String);
    procedure QRLabel63Print(sender: TObject; var Value: String);
    procedure QRLabel64Print(sender: TObject; var Value: String);
    procedure QRLabel65Print(sender: TObject; var Value: String);
    procedure QRLabel66Print(sender: TObject; var Value: String);
    procedure QRLabel67Print(sender: TObject; var Value: String);
    procedure QRLabel68Print(sender: TObject; var Value: String);
    procedure QRLabel69Print(sender: TObject; var Value: String);
    procedure QRLabel70Print(sender: TObject; var Value: String);
    procedure QRLabel71Print(sender: TObject; var Value: String);
    procedure QRLabel72Print(sender: TObject; var Value: String);
    procedure QRLabel73Print(sender: TObject; var Value: String);
    procedure QRLabel74Print(sender: TObject; var Value: String);
    procedure QRLabel75Print(sender: TObject; var Value: String);
    procedure QRLabel76Print(sender: TObject; var Value: String);
    procedure QRLabel77Print(sender: TObject; var Value: String);
    procedure QRLabel83Print(sender: TObject; var Value: String);
    procedure QRLabel88Print(sender: TObject; var Value: String);
    procedure QRLabel90Print(sender: TObject; var Value: String);
    procedure QRLabel92Print(sender: TObject; var Value: String);
    procedure QRLabel94Print(sender: TObject; var Value: String);
    procedure QRLabel84Print(sender: TObject; var Value: String);
    procedure QRLabel85Print(sender: TObject; var Value: String);
    procedure QRLabel86Print(sender: TObject; var Value: String);
    procedure QRDBTextValor1Print(sender: TObject; var Value: String);
    procedure QRDBTextValor2Print(sender: TObject; var Value: String);
    procedure QRDBText18Print(sender: TObject; var Value: String);
    procedure QRDBText16Print(sender: TObject; var Value: String);
    procedure QRDBText17Print(sender: TObject; var Value: String);
    procedure QRSysData1Print(sender: TObject; var Value: String);
    procedure QRDBTextVenc1Print(sender: TObject; var Value: String);
    procedure QRDBTextVenc2Print(sender: TObject; var Value: String);
    procedure QRDBText14Print(sender: TObject; var Value: String);
    procedure QRDBTextVenc3Print(sender: TObject; var Value: String);
    procedure QRDBText29Print(sender: TObject; var Value: String);
    procedure QRDBText26Print(sender: TObject; var Value: String);
    procedure QRDBText3Print(sender: TObject; var Value: String);
    procedure QRLabel44Print(sender: TObject; var Value: String);
    procedure QRLabel53Print(sender: TObject; var Value: String);
    procedure QRLabel54Print(sender: TObject; var Value: String);
    procedure QRLabel60Print(sender: TObject; var Value: String);
    procedure QRLabel157Print(sender: TObject; var Value: String);
    procedure QRLabel159Print(sender: TObject; var Value: String);
    procedure QRLabel170Print(sender: TObject; var Value: String);
    procedure QRLabel164Print(sender: TObject; var Value: String);
    procedure QRLabel173Print(sender: TObject; var Value: String);
    procedure QRLabel160Print(sender: TObject; var Value: String);
    procedure QRLabel171Print(sender: TObject; var Value: String);
    procedure QRLabel161Print(sender: TObject; var Value: String);
    procedure QRLabel187Print(sender: TObject; var Value: String);
    procedure QRLabel172Print(sender: TObject; var Value: String);
    procedure QRLabel162Print(sender: TObject; var Value: String);
    procedure QRLabel165Print(sender: TObject; var Value: String);
    procedure QRLabel182Print(sender: TObject; var Value: String);
    procedure QRLabel183Print(sender: TObject; var Value: String);
    procedure QRLabel194Print(sender: TObject; var Value: String);
    procedure QRLabel188Print(sender: TObject; var Value: String);
    procedure QRLabel184Print(sender: TObject; var Value: String);
    procedure QRLabel195Print(sender: TObject; var Value: String);
    procedure QRLabel185Print(sender: TObject; var Value: String);
    procedure QRLabel163Print(sender: TObject; var Value: String);
    procedure QRLabel196Print(sender: TObject; var Value: String);
    procedure QRLabel186Print(sender: TObject; var Value: String);
    procedure QRLabel189Print(sender: TObject; var Value: String);
    procedure QRLabel210Print(sender: TObject; var Value: String);
    procedure QRLabel209Print(sender: TObject; var Value: String);
    procedure QRLabel211Print(sender: TObject; var Value: String);
    procedure QRLabel208Print(sender: TObject; var Value: String);
    procedure QRLabel197Print(sender: TObject; var Value: String);
    procedure ChildBand2AfterPrint(sender: TQRCustomBand; BandPrinted: Boolean);
    procedure QuickRepStartPage(sender: TCustomQuickRep);
    procedure QuickRepBeforePrint(sender: TCustomQuickRep;
      var PrintReport: Boolean);
    constructor Create(AOwner: TComponent; Origem: Integer = 0);
    procedure QRBand5BeforePrint(sender: TQRCustomBand; var PrintBand: Boolean);
    procedure QRBand2BeforePrint(sender: TQRCustomBand; var PrintBand: Boolean);

  private
    visualizou: Boolean;
    frmOrigem: Integer;
    procedure Contrato;
  public

  end;

var
  QRCedulaCreditoBancarioPF222: TQRCedulaCreditoBancarioPF222;
  auxiliar2, auxiliar1: string;
  cont: Integer;

implementation

Uses UUtil, UExtenso, UFrmCadEmprestimoSimulacao, UDMDados,
  Dialogs, Windows, Forms;
{$R *.DFM}

procedure TQRCedulaCreditoBancarioPF222.QRDBTextValor3Print(sender: TObject;
  var Value: String);
begin
  if (ADOContratoCedulaValor3.AsFloat = 0) Then
    Value := '';
end;

procedure TQRCedulaCreditoBancarioPF222.QRLabel62Print(sender: TObject;
  var Value: String);
begin
  if (ADOPrimeiroAvalista.Active) then
    Value := ADOPrimeiroAvalistaNome.AsString
  else
    Value := '';
end;

procedure TQRCedulaCreditoBancarioPF222.QRLabel63Print(sender: TObject;
  var Value: String);
begin
  if (ADOPrimeiroAvalista.Active) then
    Value := ADOPrimeiroAvalistaEndereco.AsString + ' ' +
      ADOPrimeiroAvalistaEnderecoNumero.AsString + ' ' +
      ADOPrimeiroAvalistaEnderecoComplemento.AsString
  else
    Value := '';
end;

procedure TQRCedulaCreditoBancarioPF222.QRLabel64Print(sender: TObject;
  var Value: String);
begin
  if (ADOPrimeiroAvalista.Active) then
    Value := FormataCPFCNPJ(ADOPrimeiroAvalistaInscricaoAvalista.AsString)
  else
    Value := '';
end;

procedure TQRCedulaCreditoBancarioPF222.QRLabel65Print(sender: TObject;
  var Value: String);
begin
  if (ADOPrimeiroAvalista.Active) then
    Value := ADOPrimeiroAvalistaEstadoCivil.AsString
  else
    Value := '';
end;

procedure TQRCedulaCreditoBancarioPF222.QRLabel66Print(sender: TObject;
  var Value: String);
begin
  if (ADOPrimeiroAvalista.Active) then
    Value := ADOPrimeiroAvalistaNacionalidade.AsString
  else
    Value := '';
end;

procedure TQRCedulaCreditoBancarioPF222.QRLabel67Print(sender: TObject;
  var Value: String);
begin
  if (ADOPrimeiroAvalista.Active) then
    Value := ADOPrimeiroAvalistaIdentidade.AsString
  else
    Value := '';
end;

procedure TQRCedulaCreditoBancarioPF222.QRLabel68Print(sender: TObject;
  var Value: String);
begin
  if (ADOPrimeiroAvalista.Active) then
    Value := ADOPrimeiroAvalistaNaturalidade.AsString
  else
    Value := '';
end;

procedure TQRCedulaCreditoBancarioPF222.QRLabel69Print(sender: TObject;
  var Value: String);
begin
  if (ADOPrimeiroAvalista.Active) then
    Value := ADOPrimeiroAvalistaProfissao.AsString
  else
    Value := '';
end;

procedure TQRCedulaCreditoBancarioPF222.QRLabel70Print(sender: TObject;
  var Value: String);
begin
  if (ADOSegundoAvalista.Active) then
    Value := ADOSegundoAvalistaNome.AsString
  else
    Value := '';
end;

procedure TQRCedulaCreditoBancarioPF222.QRLabel71Print(sender: TObject;
  var Value: String);
begin
  if (ADOSegundoAvalista.Active) then
    Value := ADOSegundoAvalistaEndereco.AsString + ' ' +
      ADOSegundoAvalistaEnderecoNumero.AsString + ' ' +
      ADOSegundoAvalistaEnderecoComplemento.AsString
  else
    Value := '';
end;

procedure TQRCedulaCreditoBancarioPF222.QRLabel72Print(sender: TObject;
  var Value: String);
begin
  if (ADOSegundoAvalista.Active) then
    Value := FormataCPFCNPJ(ADOSegundoAvalistaInscricaoAvalista.AsString)
  else
    Value := '';
end;

procedure TQRCedulaCreditoBancarioPF222.QRLabel73Print(sender: TObject;
  var Value: String);
begin
  if (ADOSegundoAvalista.Active) then
    Value := ADOSegundoAvalistaEstadoCivil.AsString
  else
    Value := '';
end;

procedure TQRCedulaCreditoBancarioPF222.QRLabel74Print(sender: TObject;
  var Value: String);
begin
  if (ADOSegundoAvalista.Active) then
    Value := ADOSegundoAvalistaNacionalidade.AsString
  else
    Value := '';
end;

procedure TQRCedulaCreditoBancarioPF222.QRLabel75Print(sender: TObject;
  var Value: String);
begin
  if (ADOSegundoAvalista.Active) then
    Value := ADOSegundoAvalistaIdentidade.AsString
  else
    Value := '';
end;

procedure TQRCedulaCreditoBancarioPF222.QRLabel76Print(sender: TObject;
  var Value: String);
begin
  if (ADOSegundoAvalista.Active) then
    Value := ADOSegundoAvalistaNaturalidade.AsString
  else
    Value := '';
end;

procedure TQRCedulaCreditoBancarioPF222.QRLabel77Print(sender: TObject;
  var Value: String);
begin
  if (ADOSegundoAvalista.Active) then
    Value := ADOSegundoAvalistaProfissao.AsString
  else
    Value := '';
end;

procedure TQRCedulaCreditoBancarioPF222.QRLabel83Print(sender: TObject;
  var Value: String);
begin
  if (ADOSegundoAvalista.Active) then
  begin
    if (ADOSegundoAvalistaCep.AsString <> '') Then
      Value := FormatFloat('00000-000',
        StrToInt64(ADOSegundoAvalistaCep.AsString))
    else
      Value := '';
  end
  else
    Value := '';
end;

procedure TQRCedulaCreditoBancarioPF222.QRLabel88Print(sender: TObject;
  var Value: String);
begin
  if (ADOPrimeiroAvalista.Active) then
  begin
    if (ADOPrimeiroAvalistaCep.AsString <> '') then
      Value := FormatFloat('00000-000',
        StrToInt64(ADOPrimeiroAvalistaCep.AsString))
    else
      Value := '';
  end
  else
    Value := '';
end;

procedure TQRCedulaCreditoBancarioPF222.QRLabel90Print(sender: TObject;
  var Value: String);
begin
  if (ADOPrimeiroAvalista.Active) then
    Value := ADOPrimeiroAvalistaBairro.AsString
  else
    Value := '';
end;

procedure TQRCedulaCreditoBancarioPF222.QRLabel92Print(sender: TObject;
  var Value: String);
begin
  if (ADOPrimeiroAvalista.Active) then
    Value := ADOPrimeiroAvalistaCidade.AsString
  else
    Value := '';
end;

procedure TQRCedulaCreditoBancarioPF222.QRLabel94Print(sender: TObject;
  var Value: String);
begin
  if (ADOPrimeiroAvalista.Active) then
    Value := ADOPrimeiroAvalistaEstado.AsString
  else
    Value := '';
end;

procedure TQRCedulaCreditoBancarioPF222.QRLabel84Print(sender: TObject;
  var Value: String);
begin
  if (ADOSegundoAvalista.Active) then
    Value := ADOSegundoAvalistaBairro.AsString
  else
    Value := '';
end;

procedure TQRCedulaCreditoBancarioPF222.QRLabel85Print(sender: TObject;
  var Value: String);
begin
  if (ADOSegundoAvalista.Active) then
    Value := ADOSegundoAvalistaCidade.AsString
  else
    Value := '';
end;

procedure TQRCedulaCreditoBancarioPF222.QRLabel86Print(sender: TObject;
  var Value: String);
begin
  if (ADOSegundoAvalista.Active) then
    Value := ADOSegundoAvalistaEstado.AsString
  else
    Value := '';
end;

procedure TQRCedulaCreditoBancarioPF222.QRDBTextValor1Print(sender: TObject;
  var Value: String);
begin
  if (ADOContratoCedulaValor1.AsFloat = 0) Then
    Value := '';
end;

procedure TQRCedulaCreditoBancarioPF222.QRDBTextValor2Print(sender: TObject;
  var Value: String);
begin
  if (ADOContratoCedulaValor2.AsFloat = 0) Then
    Value := '';
end;

procedure TQRCedulaCreditoBancarioPF222.QRDBText18Print(sender: TObject;
  var Value: String);
begin
  if (ADOPrimeiroAvalista.Active) then
  begin
    If (ADOPrimeiroAvalistaTelefone.AsString <> '') Then
    Begin
      Value := '( ' + ADOPrimeiroAvalistaDDD.AsString + ' )-';
      Value := Value + ' ' + ADOPrimeiroAvalistaTelefone.AsString;
    end;
  end
  else
    Value := '';

end;

procedure TQRCedulaCreditoBancarioPF222.QRDBText16Print(sender: TObject;
  var Value: String);
begin
  if (ADOPrimeiroAvalista.Active) then
  begin
    if (ADOPrimeiroAvalistaInscricaoAvalista.AsString = 'CPF') then
      Value := FormataCPFCNPJ(ADOPrimeiroAvalistaInscricaoAvalista.AsString)
    else
      Value := FormataCPFCNPJ(ADOPrimeiroAvalistaInscricaoAvalista.AsString);
  end
  else
    Value := '';
end;

procedure TQRCedulaCreditoBancarioPF222.QRDBText17Print(sender: TObject;
  var Value: String);
begin
  if (ADOPrimeiroAvalista.Active) then
  begin
    Value := ADOPrimeiroAvalistaEndereco.AsString;
    if (ADOPrimeiroAvalistaBairro.AsString <> '') then
      Value := Value + '  ' + ADOPrimeiroAvalistaBairro.AsString;

    if (ADOPrimeiroAvalistaCidade.AsString <> '') Then
      Value := Value + '  ' + ADOPrimeiroAvalistaCidade.AsString;
    if (ADOPrimeiroAvalistaCep.AsString <> '') Then
      Value := Value + '  ' + FormatFloat('00000-000',
        StrToInt64(ADOPrimeiroAvalistaCep.AsString));
    Value := Value + '  ' + ADOPrimeiroAvalistaEstado.AsString;
  end
  else
    Value := '';
end;

procedure TQRCedulaCreditoBancarioPF222.QRSysData1Print(sender: TObject;
  var Value: String);
begin
  Value := Format('%2.2d', [StrToInt64(Value)]);
end;

procedure TQRCedulaCreditoBancarioPF222.QuickRepBeforePrint
  (sender: TCustomQuickRep; var PrintReport: Boolean);
begin
  cont := 0;
  if frmOrigem = 222 then
  begin

    if (visualizou) And (not(Ususario.Grupo in [39, 42, 43, 4])) then
    begin
      PrintReport := false;
      MessageBox(Application.Handle,
        PChar('Você não tem permissão para imprimir este relatório.'),
        'Cédula de Crédito', MB_OK + MB_ICONERROR);
    end;
    visualizou := True;
  end;
end;

procedure TQRCedulaCreditoBancarioPF222.QuickRepStartPage
  (sender: TCustomQuickRep);
begin
  if frmOrigem = 222 then
  begin
    if not(Ususario.Grupo in [39, 42, 43, 4]) then
      QRCedulaCreditoBancarioPF222.ShowProgress := false;
  end;
end;

procedure TQRCedulaCreditoBancarioPF222.QRDBTextVenc1Print(sender: TObject;
  var Value: String);
begin
  if (ADOContratoCedulavenc1.AsString = '') Then
    Value := '';
end;

procedure TQRCedulaCreditoBancarioPF222.QRDBTextVenc2Print(sender: TObject;
  var Value: String);
begin
  if (ADOContratoCedulavenc2.AsString = '01/01/1900') Then
    Value := '';
end;

procedure TQRCedulaCreditoBancarioPF222.QRBand2BeforePrint
  (sender: TQRCustomBand; var PrintBand: Boolean);
begin
  if (ADOContratoCedulavenc1.AsString = '') then
    QRShape19.Frame.Style := psClear;

end;

procedure TQRCedulaCreditoBancarioPF222.QRBand5BeforePrint
  (sender: TQRCustomBand; var PrintBand: Boolean);
begin
  cont := cont + 1;
  QRLabel123.caption := inttostr(cont);
end;

procedure TQRCedulaCreditoBancarioPF222.QRDBText14Print(sender: TObject;
  var Value: String);
begin
  Value := FormataCPFCNPJ(ADOSegundoAvalistaInscricaoAvalista.AsString);
end;

procedure TQRCedulaCreditoBancarioPF222.QRDBTextVenc3Print(sender: TObject;
  var Value: String);
begin
  if (ADOContratoCedulavenc3.AsString = '01/01/1900') Then
    Value := '';
end;

procedure TQRCedulaCreditoBancarioPF222.QRDBText29Print(sender: TObject;
  var Value: String);
begin
  if (ADOContratoCedulaParcela2.AsFloat = 0) Then
    Value := '';
end;

procedure TQRCedulaCreditoBancarioPF222.QRDBText26Print(sender: TObject;
  var Value: String);
begin
  if (ADOContratoCedulaParcela1.AsFloat = 0) Then
    Value := '';
end;

procedure TQRCedulaCreditoBancarioPF222.QRDBText3Print(sender: TObject;
  var Value: String);
begin
  if (ADOContratoCedulaParcela3.AsFloat = 0) Then
    Value := '';
end;

procedure TQRCedulaCreditoBancarioPF222.QRLabel44Print(sender: TObject;
  var Value: String);
begin
  if (ADOSegundoAvalista.Active) then
    Value := ADOSegundoAvalistaEstadoCivil.AsString
  else
    Value := '';
end;

procedure TQRCedulaCreditoBancarioPF222.QRLabel53Print(sender: TObject;
  var Value: String);
begin
  if (ADOPrimeiroAvalista.Active) then
    Value := ADOPrimeiroAvalistaEstadoCivil.AsString
  else
    Value := '';
end;

procedure TQRCedulaCreditoBancarioPF222.QRLabel54Print(sender: TObject;
  var Value: String);
begin
  if (ADOPrimeiroConjugeCpfConjuge.AsString <> '') then
    Value := FormataCPFCNPJ(ADOPrimeiroConjugeCpfConjuge.AsString)
  else
    Value := '';
end;

procedure TQRCedulaCreditoBancarioPF222.QRLabel60Print(sender: TObject;
  var Value: String);
begin
  if (ADOSegundoConjugeCpfConjuge.AsString <> '') then
    Value := FormataCPFCNPJ(ADOSegundoConjugeCpfConjuge.AsString)
  else
    Value := '';
end;

procedure TQRCedulaCreditoBancarioPF222.QRLabel157Print(sender: TObject;
  var Value: String);
begin
  if (ADOTerceiroAvalista.Active) then
    Value := ADOTerceiroAvalistaNome.AsString
  else
    Value := '';
end;

procedure TQRCedulaCreditoBancarioPF222.QRLabel159Print(sender: TObject;
  var Value: String);
begin
  if (ADOTerceiroAvalista.Active) then
    Value := ADOTerceiroAvalistaEndereco.AsString + ' ' +
      ADOTerceiroAvalistaEnderecoNumero.AsString + ' ' +
      ADOTerceiroAvalistaEnderecoComplemento.AsString
  else
    Value := '';
end;

procedure TQRCedulaCreditoBancarioPF222.QRLabel170Print(sender: TObject;
  var Value: String);
begin
  if (ADOTerceiroAvalista.Active) then
  begin
    if (ADOTerceiroAvalistaCep.AsString <> '') Then
      Value := FormatFloat('00000-000',
        StrToInt64(ADOTerceiroAvalistaCep.AsString))
    else
      Value := '';
  end
  else
    Value := '';
end;

procedure TQRCedulaCreditoBancarioPF222.QRLabel164Print(sender: TObject;
  var Value: String);
begin
  if (ADOTerceiroAvalista.Active) then
    Value := ADOTerceiroAvalistaNaturalidade.AsString
  else
    Value := '';
end;

procedure TQRCedulaCreditoBancarioPF222.QRLabel173Print(sender: TObject;
  var Value: String);
begin
  if (ADOTerceiroAvalista.Active) then
    Value := ADOTerceiroAvalistaEstado.AsString
  else
    Value := '';
end;

procedure TQRCedulaCreditoBancarioPF222.QRLabel160Print(sender: TObject;
  var Value: String);
begin
  if (ADOTerceiroAvalista.Active) then
    Value := FormataCPFCNPJ(ADOTerceiroAvalistaInscricaoAvalista.AsString)
  else
    Value := '';
end;

procedure TQRCedulaCreditoBancarioPF222.QRLabel171Print(sender: TObject;
  var Value: String);
begin
  if (ADOTerceiroAvalista.Active) then
    Value := ADOTerceiroAvalistaBairro.AsString
  else
    Value := '';
end;

procedure TQRCedulaCreditoBancarioPF222.QRLabel161Print(sender: TObject;
  var Value: String);
begin
  if (ADOTerceiroAvalista.Active) then
    Value := ADOTerceiroAvalistaEstadoCivil.AsString
  else
    Value := '';
end;

procedure TQRCedulaCreditoBancarioPF222.QRLabel187Print(sender: TObject;
  var Value: String);
begin
  if (ADOQuartoAvalista.Active) then
    Value := ADOQuartoAvalistaIdentidade.AsString
  else
    Value := '';
end;

procedure TQRCedulaCreditoBancarioPF222.QRLabel172Print(sender: TObject;
  var Value: String);
begin
  if (ADOTerceiroAvalista.Active) then
    Value := ADOTerceiroAvalistaCidade.AsString
  else
    Value := '';
end;

procedure TQRCedulaCreditoBancarioPF222.QRLabel162Print(sender: TObject;
  var Value: String);
begin
  if (ADOTerceiroAvalista.Active) then
    Value := ADOTerceiroAvalistaNacionalidade.AsString
  else
    Value := '';
end;

procedure TQRCedulaCreditoBancarioPF222.QRLabel165Print(sender: TObject;
  var Value: String);
begin
  if (ADOTerceiroAvalista.Active) then
    Value := ADOTerceiroAvalistaProfissao.AsString
  else
    Value := '';
end;

procedure TQRCedulaCreditoBancarioPF222.QRLabel182Print(sender: TObject;
  var Value: String);
begin
  if (ADOQuartoAvalista.Active) then
    Value := ADOQuartoAvalistaNome.AsString
  else
    Value := '';
end;

procedure TQRCedulaCreditoBancarioPF222.QRLabel183Print(sender: TObject;
  var Value: String);
begin
  if (ADOQuartoAvalista.Active) then
    Value := ADOQuartoAvalistaEndereco.AsString + ' ' +
      ADOQuartoAvalistaEnderecoNumero.AsString + ' ' +
      ADOQuartoAvalistaEnderecoComplemento.AsString
  else
    Value := '';
end;

procedure TQRCedulaCreditoBancarioPF222.QRLabel194Print(sender: TObject;
  var Value: String);
begin
  if (ADOQuartoAvalista.Active) then
  begin
    if (ADOQuartoAvalistaCep.AsString <> '') Then
      Value := FormatFloat('00000-000',
        StrToInt64(ADOQuartoAvalistaCep.AsString))
    else
      Value := '';
  end
  else
    Value := '';
end;

procedure TQRCedulaCreditoBancarioPF222.QRLabel188Print(sender: TObject;
  var Value: String);
begin
  if (ADOQuartoAvalista.Active) then
    Value := ADOQuartoAvalistaNaturalidade.AsString
  else
    Value := '';
end;

procedure TQRCedulaCreditoBancarioPF222.QRLabel184Print(sender: TObject;
  var Value: String);
begin
  if (ADOQuartoAvalista.Active) then
    Value := FormataCPFCNPJ(ADOQuartoAvalistaInscricaoAvalista.AsString)
  else
    Value := '';
end;

procedure TQRCedulaCreditoBancarioPF222.QRLabel195Print(sender: TObject;
  var Value: String);
begin
  if (ADOQuartoAvalista.Active) then
    Value := ADOQuartoAvalistaBairro.AsString
  else
    Value := '';
end;

procedure TQRCedulaCreditoBancarioPF222.QRLabel185Print(sender: TObject;
  var Value: String);
begin
  if (ADOQuartoAvalista.Active) then
    Value := ADOQuartoAvalistaEstadoCivil.AsString
  else
    Value := '';
end;

procedure TQRCedulaCreditoBancarioPF222.QRLabel163Print(sender: TObject;
  var Value: String);
begin
  if (ADOTerceiroAvalista.Active) then
    Value := ADOTerceiroAvalistaIdentidade.AsString
  else
    Value := '';
end;

procedure TQRCedulaCreditoBancarioPF222.QRLabel196Print(sender: TObject;
  var Value: String);
begin
  if (ADOQuartoAvalista.Active) then
    Value := ADOQuartoAvalistaCidade.AsString
  else
    Value := '';
end;

procedure TQRCedulaCreditoBancarioPF222.QRLabel186Print(sender: TObject;
  var Value: String);
begin
  if (ADOQuartoAvalista.Active) then
    Value := ADOQuartoAvalistaNacionalidade.AsString
  else
    Value := '';
end;

procedure TQRCedulaCreditoBancarioPF222.QRLabel189Print(sender: TObject;
  var Value: String);
begin
  if (ADOQuartoAvalista.Active) then
    Value := ADOQuartoAvalistaProfissao.AsString
  else
    Value := '';
end;

procedure TQRCedulaCreditoBancarioPF222.QRLabel210Print(sender: TObject;
  var Value: String);
begin
  if (ADOTerceiroConjugeCpfConjuge.AsString <> '') then
    Value := FormataCPFCNPJ(ADOTerceiroConjugeCpfConjuge.AsString)
  else
    Value := '';
end;

procedure TQRCedulaCreditoBancarioPF222.QRLabel209Print(sender: TObject;
  var Value: String);
begin
  if (ADOTerceiroAvalista.Active) then
    Value := ADOTerceiroAvalistaEstadoCivil.AsString
  else
    Value := '';
end;

procedure TQRCedulaCreditoBancarioPF222.QRLabel211Print(sender: TObject;
  var Value: String);
begin
  if (ADOQuartoConjugeCpfConjuge.AsString <> '') then
    Value := FormataCPFCNPJ(ADOQuartoConjugeCpfConjuge.AsString)
  else
    Value := '';
end;

procedure TQRCedulaCreditoBancarioPF222.QRLabel208Print(sender: TObject;
  var Value: String);
begin
  if (ADOQuartoAvalista.Active) then
    Value := ADOQuartoAvalistaEstadoCivil.AsString
  else
    Value := '';
end;

procedure TQRCedulaCreditoBancarioPF222.QRLabel197Print(sender: TObject;
  var Value: String);
begin
  if (ADOQuartoAvalista.Active) then
    Value := ADOQuartoAvalistaEstado.AsString
  else
    Value := '';
end;

procedure TQRCedulaCreditoBancarioPF222.ChildBand2AfterPrint
  (sender: TQRCustomBand; BandPrinted: Boolean);
var
  AuxLinha: String;
  AuxStream: TStringStream;
begin

  AuxLinha :=
    '{\rtf1\adeflang1025\ansi\ansicpg1252\uc1\adeff0\deff0\stshfdbch31506\stshfloch31506\stshfhich31506\stshfbi31507\deflang1046\deflangfe1046\themelang1046\themelangfe0\themelangcs0{\fonttbl'
    + '{\f0\fbidi \froman\fcharset0\fprq2{\*\panose 02020603050405020304}Times New Roman;}{\f1\fbidi \fswiss\fcharset0\fprq2{\*\panose 020b0604020202020204}Arial;}'
    + '{\f1\fbidi \fswiss\fcharset0\fprq2{\*\panose 020b0604020202020204}Arial;}{\flomajor\f31500\fbidi \froman\fcharset0\fprq2{\*\panose 02020603050405020304}Times New Roman;}'
    + '{\fdbmajor\f31501\fbidi \froman\fcharset0\fprq2{\*\panose 02020603050405020304}Times New Roman;}{\fhimajor\f31502\fbidi \froman\fcharset0\fprq2{\*\panose 02040503050406030204}Cambria;}'
    + '{\fbimajor\f31503\fbidi \froman\fcharset0\fprq2{\*\panose 02020603050405020304}Times New Roman;}{\flominor\f31504\fbidi \froman\fcharset0\fprq2{\*\panose 02020603050405020304}Times New Roman;}'
    + '{\fdbminor\f31505\fbidi \froman\fcharset0\fprq2{\*\panose 02020603050405020304}Times New Roman;}{\fhiminor\f31506\fbidi \fswiss\fcharset0\fprq2{\*\panose 020f0502020204030204}Calibri;}'
    + '{\fbiminor\f31507\fbidi \froman\fcharset0\fprq2{\*\panose 02020603050405020304}Times New Roman;}{\f41\fbidi \froman\fcharset238\fprq2 Times New Roman CE;}{\f42\fbidi \froman\fcharset204\fprq2 Times New Roman Cyr;}'
    + '{\f44\fbidi \froman\fcharset161\fprq2 Times New Roman Greek;}{\f45\fbidi \froman\fcharset162\fprq2 Times New Roman Tur;}{\f46\fbidi \froman\fcharset177\fprq2 Times New Roman (Hebrew);}{\f47\fbidi \froman\fcharset178\fprq2 Times New Roman (Arabic);}'
    + '{\f48\fbidi \froman\fcharset186\fprq2 Times New Roman Baltic;}{\f49\fbidi \froman\fcharset163\fprq2 Times New Roman (Vietnamese);}{\f51\fbidi \fswiss\fcharset238\fprq2 Arial CE;}{\f52\fbidi \fswiss\fcharset204\fprq2 Arial Cyr;}'
    + '{\f54\fbidi \fswiss\fcharset161\fprq2 Arial Greek;}{\f55\fbidi \fswiss\fcharset162\fprq2 Arial Tur;}{\f56\fbidi \fswiss\fcharset177\fprq2 Arial (Hebrew);}{\f57\fbidi \fswiss\fcharset178\fprq2 Arial (Arabic);}'
    + '{\f58\fbidi \fswiss\fcharset186\fprq2 Arial Baltic;}{\f59\fbidi \fswiss\fcharset163\fprq2 Arial (Vietnamese);}{\f51\fbidi \fswiss\fcharset238\fprq2 Arial CE;}{\f52\fbidi \fswiss\fcharset204\fprq2 Arial Cyr;}'
    + '{\f54\fbidi \fswiss\fcharset161\fprq2 Arial Greek;}{\f55\fbidi \fswiss\fcharset162\fprq2 Arial Tur;}{\f56\fbidi \fswiss\fcharset177\fprq2 Arial (Hebrew);}{\f57\fbidi \fswiss\fcharset178\fprq2 Arial (Arabic);}'
    + '{\f58\fbidi \fswiss\fcharset186\fprq2 Arial Baltic;}{\f59\fbidi \fswiss\fcharset163\fprq2 Arial (Vietnamese);}{\flomajor\f31508\fbidi \froman\fcharset238\fprq2 Times New Roman CE;}{\flomajor\f31509\fbidi \froman\fcharset204\fprq2 Times New Roman Cyr;}'
    + '{\flomajor\f31511\fbidi \froman\fcharset161\fprq2 Times New Roman Greek;}{\flomajor\f31512\fbidi \froman\fcharset162\fprq2 Times New Roman Tur;}{\flomajor\f31513\fbidi \froman\fcharset177\fprq2 Times New Roman (Hebrew);}'
    + '{\flomajor\f31514\fbidi \froman\fcharset178\fprq2 Times New Roman (Arabic);}{\flomajor\f31515\fbidi \froman\fcharset186\fprq2 Times New Roman Baltic;}{\flomajor\f31516\fbidi \froman\fcharset163\fprq2 Times New Roman (Vietnamese);}'
    + '{\fdbmajor\f31518\fbidi \froman\fcharset238\fprq2 Times New Roman CE;}{\fdbmajor\f31519\fbidi \froman\fcharset204\fprq2 Times New Roman Cyr;}{\fdbmajor\f31521\fbidi \froman\fcharset161\fprq2 Times New Roman Greek;}'
    + '{\fdbmajor\f31522\fbidi \froman\fcharset162\fprq2 Times New Roman Tur;}{\fdbmajor\f31523\fbidi \froman\fcharset177\fprq2 Times New Roman (Hebrew);}{\fdbmajor\f31524\fbidi \froman\fcharset178\fprq2 Times New Roman (Arabic);}'
    + '{\fdbmajor\f31525\fbidi \froman\fcharset186\fprq2 Times New Roman Baltic;}{\fdbmajor\f31526\fbidi \froman\fcharset163\fprq2 Times New Roman (Vietnamese);}{\fhimajor\f31528\fbidi \froman\fcharset238\fprq2 Cambria CE;}'
    + '{\fhimajor\f31529\fbidi \froman\fcharset204\fprq2 Cambria Cyr;}{\fhimajor\f31531\fbidi \froman\fcharset161\fprq2 Cambria Greek;}{\fhimajor\f31532\fbidi \froman\fcharset162\fprq2 Cambria Tur;}'
    + '{\fhimajor\f31535\fbidi \froman\fcharset186\fprq2 Cambria Baltic;}{\fhimajor\f31536\fbidi \froman\fcharset163\fprq2 Cambria (Vietnamese);}{\fbimajor\f31538\fbidi \froman\fcharset238\fprq2 Times New Roman CE;}'
    + '{\fbimajor\f31539\fbidi \froman\fcharset204\fprq2 Times New Roman Cyr;}{\fbimajor\f31541\fbidi \froman\fcharset161\fprq2 Times New Roman Greek;}{\fbimajor\f31542\fbidi \froman\fcharset162\fprq2 Times New Roman Tur;}'
    + '{\fbimajor\f31543\fbidi \froman\fcharset177\fprq2 Times New Roman (Hebrew);}{\fbimajor\f31544\fbidi \froman\fcharset178\fprq2 Times New Roman (Arabic);}{\fbimajor\f31545\fbidi \froman\fcharset186\fprq2 Times New Roman Baltic;}'
    + '{\fbimajor\f31546\fbidi \froman\fcharset163\fprq2 Times New Roman (Vietnamese);}{\flominor\f31548\fbidi \froman\fcharset238\fprq2 Times New Roman CE;}{\flominor\f31549\fbidi \froman\fcharset204\fprq2 Times New Roman Cyr;}'
    + '{\flominor\f31551\fbidi \froman\fcharset161\fprq2 Times New Roman Greek;}{\flominor\f31552\fbidi \froman\fcharset162\fprq2 Times New Roman Tur;}{\flominor\f31553\fbidi \froman\fcharset177\fprq2 Times New Roman (Hebrew);}'
    + '{\flominor\f31554\fbidi \froman\fcharset178\fprq2 Times New Roman (Arabic);}{\flominor\f31555\fbidi \froman\fcharset186\fprq2 Times New Roman Baltic;}{\flominor\f31556\fbidi \froman\fcharset163\fprq2 Times New Roman (Vietnamese);}'
    + '{\fdbminor\f31558\fbidi \froman\fcharset238\fprq2 Times New Roman CE;}{\fdbminor\f31559\fbidi \froman\fcharset204\fprq2 Times New Roman Cyr;}{\fdbminor\f31561\fbidi \froman\fcharset161\fprq2 Times New Roman Greek;}'
    + '{\fdbminor\f31562\fbidi \froman\fcharset162\fprq2 Times New Roman Tur;}{\fdbminor\f31563\fbidi \froman\fcharset177\fprq2 Times New Roman (Hebrew);}{\fdbminor\f31564\fbidi \froman\fcharset178\fprq2 Times New Roman (Arabic);}'
    + '{\fdbminor\f31565\fbidi \froman\fcharset186\fprq2 Times New Roman Baltic;}{\fdbminor\f31566\fbidi \froman\fcharset163\fprq2 Times New Roman (Vietnamese);}{\fhiminor\f31568\fbidi \fswiss\fcharset238\fprq2 Calibri CE;}'
    + '{\fhiminor\f31569\fbidi \fswiss\fcharset204\fprq2 Calibri Cyr;}{\fhiminor\f31571\fbidi \fswiss\fcharset161\fprq2 Calibri Greek;}{\fhiminor\f31572\fbidi \fswiss\fcharset162\fprq2 Calibri Tur;}'
    + '{\fhiminor\f31575\fbidi \fswiss\fcharset186\fprq2 Calibri Baltic;}{\fhiminor\f31576\fbidi \fswiss\fcharset163\fprq2 Calibri (Vietnamese);}{\fbiminor\f31578\fbidi \froman\fcharset238\fprq2 Times New Roman CE;}'
    + '{\fbiminor\f31579\fbidi \froman\fcharset204\fprq2 Times New Roman Cyr;}{\fbiminor\f31581\fbidi \froman\fcharset161\fprq2 Times New Roman Greek;}{\fbiminor\f31582\fbidi \froman\fcharset162\fprq2 Times New Roman Tur;}'
    + '{\fbiminor\f31583\fbidi \froman\fcharset177\fprq2 Times New Roman (Hebrew);}{\fbiminor\f31584\fbidi \froman\fcharset178\fprq2 Times New Roman (Arabic);}{\fbiminor\f31585\fbidi \froman\fcharset186\fprq2 Times New Roman Baltic;}'
    + '{\fbiminor\f31586\fbidi \froman\fcharset163\fprq2 Times New Roman (Vietnamese);}}{\colortbl;\red0\green0\blue0;\red0\green0\blue255;\red0\green255\blue255;\red0\green255\blue0;\red255\green0\blue255;\red255\green0\blue0;\red255\green255\blue0;'
    + '\red255\green255\blue255;\red0\green0\blue128;\red0\green128\blue128;\red0\green128\blue0;\red128\green0\blue128;\red128\green0\blue0;\red128\green128\blue0;\red128\green128\blue128;\red192\green192\blue192;}{\*\defchp '
    + '\f31506\fs22\lang1046\langfe1033\langfenp1033 }{\*\defpap \ql \li0\ri0\sa200\sl276\slmult1\widctlpar\wrapdefault\aspalpha\aspnum\faauto\adjustright\rin0\lin0\itap0 }\noqfpromote {\stylesheet{'
    + '\ql \li0\ri0\widctlpar\wrapdefault\aspalpha\aspnum\faauto\adjustright\rin0\lin0\itap0 \rtlch\fcs1 \af0\afs24\alang1025 \ltrch\fcs0 \fs24\lang1046\langfe1046\cgrid\langnp1046\langfenp1046 \snext0 \sqformat \spriority0 \styrsid4095597 Normal;}{\*\cs10 '
    + '\additive \ssemihidden \sunhideused \spriority1 Default Paragraph Font;}{\*'
    + '\ts11\tsrowd\trftsWidthB3\trpaddl108\trpaddr108\trpaddfl3\trpaddft3\trpaddfb3\trpaddfr3\tblind0\tblindtype3\tsvertalt\tsbrdrt\tsbrdrl\tsbrdrb\tsbrdrr\tsbrdrdgl\tsbrdrdgr\tsbrdrh\tsbrdrv \ql \li0\ri0\sa200\sl276\slmult1'
    + '\widctlpar\wrapdefault\aspalpha\aspnum\faauto\adjustright\rin0\lin0\itap0 \rtlch\fcs1 \af31507\afs22\alang1025 \ltrch\fcs0 \f31506\fs22\lang1046\langfe1033\cgrid\langnp1046\langfenp1033 \snext11 \ssemihidden \sunhideused Normal Table;}{'
    + '\s15\ql \li0\ri0\widctlpar\wrapdefault\faauto\rin0\lin0\itap0 \rtlch\fcs1 \af1\afs24\alang1025 \ltrch\fcs0 \f1\fs24\cf1\lang1046\langfe1046\cgrid\langnp1046\langfenp1046 \snext15 \spriority0 \styrsid4095597 Default;}}{\*\rsidtbl \rsid3028979\rsid4095597}'
    + '{\mmathPr\mmathFont34\mbrkBin0\mbrkBinSub0\msmallFrac0\mdispDef1\mlMargin0\mrMargin0\mdefJc1\mwrapIndent1440\mintLim0\mnaryLim1}{\info{\author Intermedium}{\operator Intermedium}{\creatim\yr2016\mo10\dy28\hr14\min55}{\revtim\yr2016\mo10\dy28\hr14\min56}'
    + '{\version1}{\edmins1}{\nofpages5}{\nofwords2496}{\nofchars13484}{\*\company Hewlett-Packard Company}{\nofcharsws15949}{\vern49167}}{\*\xmlnstbl {\xmlns1 http://schemas.microsoft.com/office/word/2003/wordml}{\xmlns2 urn:schemas-microsoft-com:office:smartta'
    + 'gs}}\paperw11906\paperh16838\margl1701\margr1701\margt1417\margb1417\gutter0\ltrsect'
    + '\deftab708\widowctrl\ftnbj\aenddoc\hyphhotz425\trackmoves0\trackformatting1\donotembedsysfont1\relyonvml0\donotembedlingdata0\grfdocevents0\validatexml1\showplaceholdtext0\ignoremixedcontent0\saveinvalidxml0'
    + '\showxmlerrors1\noxlattoyen\expshrtn\noultrlspc\dntblnsbdb\nospaceforul\formshade\horzdoc\dgmargin\dghspace180\dgvspace180\dghorigin1701\dgvorigin1417\dghshow1\dgvshow1'
    + '\jexpand\viewkind1\viewscale100\pgbrdrhead\pgbrdrfoot\splytwnine\ftnlytwnine\htmautsp\nolnhtadjtbl\useltbaln\alntblind\lytcalctblwd\lyttblrtgr\lnbrkrule\nobrkwrptbl\snaptogridincell\allowfieldendsel\wrppunct'
    + '\asianbrkrule\rsidroot4095597\newtblstyruls\nogrowautofit\usenormstyforlist\noindnmbrts\felnbrelev\nocxsptable\indrlsweleven\noafcnsttbl\afelev\utinl\hwelev\spltpgpar\notcvasp\notbrkcnstfrctbl\notvatxbx\krnprsnet\cachedcolbal \nouicompat \fet0'
    + '{\*\wgrffmtfilter 2450}\nofeaturethrottle1\ilfomacatclnup0\ltrpar \sectd \ltrsect\linex0\headery708\footery708\colsx708\endnhere\sectlinegrid360\sectdefaultcl\sftnbj {\*\pnseclvl1\pnucrm\pnstart1\pnindent720\pnhang {\pntxta .}}{\*\pnseclvl2'
    + '\pnucltr\pnstart1\pnindent720\pnhang {\pntxta .}}{\*\pnseclvl3\pndec\pnstart1\pnindent720\pnhang {\pntxta .}}{\*\pnseclvl4\pnlcltr\pnstart1\pnindent720\pnhang {\pntxta )}}{\*\pnseclvl5\pndec\pnstart1\pnindent720\pnhang {\pntxtb (}{\pntxta )}}{\*\pnseclvl6'
    + '\pnlcltr\pnstart1\pnindent720\pnhang {\pntxtb (}{\pntxta )}}{\*\pnseclvl7\pnlcrm\pnstart1\pnindent720\pnhang {\pntxtb (}{\pntxta )}}{\*\pnseclvl8\pnlcltr\pnstart1\pnindent720\pnhang {\pntxtb (}{\pntxta )}}{\*\pnseclvl9\pnlcrm\pnstart1\pnindent720\pnhang '
    + '{\pntxtb (}{\pntxta )}}\pard\plain \ltrpar\s15\ql \li0\ri0\widctlpar\wrapdefault\faauto\rin0\lin0\itap0\pararsid4095597 \rtlch\fcs1 \af1\afs24\alang1025 \ltrch\fcs0 \f1\fs24\cf1\lang1046\langfe1046\cgrid\langnp1046\langfenp1046 {\rtlch\fcs1 \ab\af0 '
    + '\ltrch\fcs0 \b\f0\cf0\insrsid4095597\charrsid14777924 V \endash  DA PROMESSA DE PAGAMENTO DO(A) EMITENTE'
    + '\par }\pard\plain \ltrpar\qj \li0\ri0\widctlpar\wrapdefault\faauto\rin0\lin0\itap0\pararsid4095597 \rtlch\fcs1 \af0\afs24\alang1025 \ltrch\fcs0 \fs24\lang1046\langfe1046\cgrid\langnp1046\langfenp1046 {\rtlch\fcs1 \af0 \ltrch\fcs0 '
    + '\insrsid4095597\charrsid12326255 Pagarei em dinheiro por esta via de }{\rtlch\fcs1 \af0 \ltrch\fcs0 \b\insrsid4095597\charrsid14777924 C\''e9dula de Cr\''e9dito Banc\''e1rio}{\rtlch\fcs1 \af0 \ltrch\fcs0 \insrsid4095597\charrsid12326255  na pra\''e7'
    + 'a de pagamento acima definida, ao }{\rtlch\fcs1 \af0 \ltrch\fcs0 \b\insrsid4095597\charrsid14777924 CREDOR }{\rtlch\fcs1 \af0 \ltrch\fcs0 \insrsid4095597\charrsid12326255 ou \''e0 sua ordem e na exata forma convenciona da no item 1.1}{\rtlch\fcs1 \af0'
    + '\ltrch\fcs0 \insrsid4095597 1}{\rtlch\fcs1 \af0 \ltrch\fcs0 \insrsid4095597\charrsid12326255  do Quadro III, o valor l\''edquido, certo e exig\''edvel do m\''fatuo concedido pelo }{\rtlch\fcs1 \af0 \ltrch\fcs0 \b\insrsid4095597\charrsid14777924 CREDOR}{'
    + '\rtlch\fcs1 \af0 \ltrch\fcs0 \insrsid4095597\charrsid12326255  em meu favor, cujo montante original encontra-se definido no item 1.1 do Quadro III, acrescido da taxa de juros convencionada e demais encargos expressamente previstos nesta c\''e9'
    + 'dula, mais o IOF, }{\rtlch\fcs1 \af0 \ltrch\fcs0 \insrsid4095597 conforme previs\''e3o legal}{\rtlch\fcs1 \af0 \ltrch\fcs0 \insrsid4095597\charrsid12326255 .'
    + '\par }{\rtlch\fcs1 \ab\af0 \ltrch\fcs0 \b\insrsid4095597\charrsid14777924 VI \endash  DOS ENCARGOS FINANCEIROS'
    + '\par }{\rtlch\fcs1 \af0 \ltrch\fcs0 \insrsid4095597\charrsid12326255 O principal mutuado descrito no item 1.1 do Quadro III dever\''e1 ser pago pelo }{\rtlch\fcs1 \af0 \ltrch\fcs0 \b\insrsid4095597\charrsid14777924 EMITENTE/AVALISTA(S),}{\rtlch\fcs1 \af0'
    + '\ltrch\fcs0 \insrsid4095597\charrsid12326255  e demais }{\rtlch\fcs1 \af0 \ltrch\fcs0 \b\insrsid4095597\charrsid14777924 GARANTIDORES}{\rtlch\fcs1 \af0 \ltrch\fcs0 \insrsid4095597\charrsid12326255  ao }{\rtlch\fcs1 \af0 \ltrch\fcs0 '
    + '\b\insrsid4095597\charrsid14777924 CREDOR}{\rtlch\fcs1 \af0 \ltrch\fcs0 \insrsid4095597\charrsid12326255 , na forma estabelecida no item 1.1}{\rtlch\fcs1 \af0 \ltrch\fcs0 \insrsid4095597 1}{\rtlch\fcs1 \af0 \ltrch\fcs0 \insrsid4095597\charrsid12326255 '
    + ' do Quadro }{\rtlch\fcs1 \af0 \ltrch\fcs0 \insrsid4095597 III, acrescido do valor do IOF}{\rtlch\fcs1 \af0 \ltrch\fcs0 \insrsid4095597\charrsid12326255 , com a incid\''eancia, sobre todas as parcelas em quest\''e3o, da taxa de juros prevista no item 1.}{'
    + '\rtlch\fcs1 \af0 \ltrch\fcs0 \insrsid4095597 4}{\rtlch\fcs1 \af0 \ltrch\fcs0 \insrsid4095597\charrsid12326255  do Quadro III, calculada no per\''edodo compreendido entre a data de emiss\''e3o desta c\''e9dula at\''e9 o vencimento da mesma ou, }{\rtlch\fcs1 '
    + '\af0 \ltrch\fcs0 \insrsid4095597\charrsid7742761 em caso de mora, at\''e9 o dia do efetivo pagamento de todo o saldo devedor.}{\rtlch\fcs1 \af0 \ltrch\fcs0 \insrsid4095597\charrsid12326255  Caso seja convencionado o pagamento do princ'
    + 'ipal e dos encargos em parcelas, os juros incidir\''e3o sobre o valor do saldo devedor, desde a data da emiss\''e3o desta C\''e9dula at\''e9 a data do vencimento de cada presta\''e7\''e3o.'
    + '\par Caso seja pactuada a cobran\''e7a de juros capitalizados, estes ser\''e3o calculados ao fim de cada per\''edodo estipulado para a capitaliza\''e7\''e3o e ser\''e3o incorporados ao montante mutuado para fins de nova incid\''eancia de juros no per\''ed'
    + 'odo seguinte, conforme permitido por lei.' +
    '\par }{\rtlch\fcs1 \ab\af0 \ltrch\fcs0 \b\insrsid4095597\charrsid14777924 VII \endash  DOS DEMAIS ENCARGOS INCIDENTES'
    + '\par }{\rtlch\fcs1 \af0 \ltrch\fcs0 \insrsid4095597\charrsid12326255 O(a) }{\rtlch\fcs1 \af0 \ltrch\fcs0 \b\insrsid4095597\charrsid14777924 EMITENTE}{\rtlch\fcs1 \af0 \ltrch\fcs0 \insrsid4095597\charrsid12326255  e demais GARANTIDOR(ES) prometem ain'
    + 'da, de forma solid\''e1ria, pagar(em) ao }{\rtlch\fcs1 \af0 \ltrch\fcs0 \b\insrsid4095597\charrsid14777924 CREDOR}{\rtlch\fcs1 \af0 \ltrch\fcs0 \insrsid4095597\charrsid12326255 , todas as despesas necess\''e1rias \''e0 formaliza\''e7\''e3o da presente C\''e9'
    + 'dula de Cr\''e9dito Banc\''e1rio e \''e0 constitui\''e7\''e3o de eventuais garanti}{\rtlch\fcs1 \af0 \ltrch\fcs0 \insrsid4095597 as mediante instrumentos anexos;}{\rtlch\fcs1 \af0 \ltrch\fcs0 \insrsid4095597\charrsid12326255  bem como todas as despesas necess'
    + '\''e1rias ao registro, }{\rtlch\fcs1 \af0 \ltrch\fcs0 \insrsid4095597 observada a Tabela de Custas e Emolumentos do Estado; eventuais despesas de }{\rtlch\fcs1 \af0 \ltrch\fcs0 \insrsid4095597\charrsid12326255 conserva\''e7\''e3o e exig\''eancia do m\''fa'
    + 'tuo e das garantias ofertadas, tais como honor\''e1rios de cobran\''e7a administrativa desde j\''e1 fixados em 10% (dez por cento) do valor do saldo devedor, custas de protesto, taxas e emolumentos cartoriais, despesas com escrituras p\''fa'
    + 'blicas e tributos incidentes sobre a opera\''e7\''e3o de m\''fatuo e sobre a constitui\''e7\''e3o e conserva\''e7\''e3o das garantias.'
    + '\par }{\rtlch\fcs1 \ab\af0 \ltrch\fcs0 \b\insrsid4095597\charrsid14777924 VIII \endash  DO VENCIMENTO ANTECIPADO'
    + '\par }{\rtlch\fcs1 \af0 \ltrch\fcs0 \insrsid4095597\charrsid12326255 O atraso no pagamento, '
    + 'pelo }{\rtlch\fcs1 \af0 \ltrch\fcs0 \b\insrsid4095597\charrsid14777924 EMITENTE}{\rtlch\fcs1 \af0 \ltrch\fcs0 \insrsid4095597\charrsid12326255  ou demais }{\rtlch\fcs1 '
    + '\af0 \ltrch\fcs0 \b\insrsid4095597\charrsid14777924 GARANTIDOR(ES)}{\rtlch\fcs1 \af0 \ltrch\fcs0 \insrsid4095597\charrsid12326255  e }{\rtlch\fcs1 \af0 \ltrch\fcs0 \b\insrsid4095597\charrsid14777924 AVALISTA(S)}{\rtlch\fcs1 \af0 \ltrch\fcs0 '
    + '\insrsid4095597\charrsid12326255 , do valor integral de quaisquer das parcelas convencionadas para quita\''e7\''e3o do m\''fatuo ou a n\''e3o efetiva\''e7\''e3o de qualquer amortiza\''e7\''e3o do saldo devedor prevista, importar\''e1'
    + ' no vencimento antecipado das obriga\''e7\''f5es desta C\''e9dula de pleno direito, tornando-se imediatamente exig\''edveis todas as parcelas em aberto e demais encargos ou o saldo devedor com seus acess\''f3rios a ser apurado nos termos das cl\''e1'
    + 'usulas da presente C\''e9dula de Cr\''e9dito Banc\''e1rio, tudo isso independentemente de qualquer aviso, notifica\''e7\''e3o ou interpela\''e7\''e3o judicial ou extrajudicial. '
    + '\par Al\''e9m da hip\''f3tese acima, poder\''e1 o }{\rtlch\fcs1 \af0 \ltrch\fcs0 \b\insrsid4095597\charrsid14777924 CREDOR}'
    + '{\rtlch\fcs1 \af0 \ltrch\fcs0 \insrsid4095597\charrsid12326255  considerar antecipadamente vencida a presente C\''e9dula de Cr\''e9dito Banc'
    + '\''e1rio caso configuradas as seguintes situa\''e7\''f5es:' +
    '\par }{\rtlch\fcs1 \af0 \ltrch\fcs0 \b\insrsid4095597\charrsid14777924 a)}{\rtlch\fcs1 \af0 \ltrch\fcs0 \insrsid4095597\charrsid12326255  Caso seja intentado em face '
    + 'do(a) }{\rtlch\fcs1 \af0 \ltrch\fcs0 \b\insrsid4095597\charrsid14777924 EMITENTE}{\rtlch\fcs1 '
    + '\af0 \ltrch\fcs0 \insrsid4095597\charrsid12326255  ou quaisquer do(s) seu(s) }{\rtlch\fcs1 \af0 \ltrch\fcs0 \b\insrsid4095597\charrsid14777924 AVALISTA(S),}{\rtlch\fcs1 \af0 \ltrch\fcs0 \insrsid4095597\charrsid12326255 '
    + ' medida judicial que possa afetar os direitos do }{\rtlch\fcs1 \af0 \ltrch\fcs0 \b\insrsid4095597\charrsid14777924 CREDOR}{\rtlch\fcs1 \af0 \ltrch\fcs0 \insrsid4095597 .}{\rtlch\fcs1 \af0 \ltrch\fcs0 \insrsid4095597\charrsid12326255 '
    + '\par }{\rtlch\fcs1 \af0 \ltrch\fcs0 \b\insrsid4095597\charrsid14777924 b)}{\rtlch\fcs1 \af0 \ltrch\fcs0 \insrsid4095597\charrsid12326255  Caso o(a) ou seu(s) }{\rtlch\fcs1 \af0 \ltrch\fcs0 \b\insrsid4095597\charrsid14777924 AVALISTA(S)}{\rtlch\fcs1 \af0 '
    + '\ltrch\fcs0 \insrsid4095597\charrsid10300019 \''b8se for o caso,}{\rtlch\fcs1 \af0 \ltrch\fcs0 \insrsid4095597\charrsid12326255  impetrar(em) pedido de recupera\''e7\''e3o judicial, falir(em), se tornar(em) insolvente(s), entrar(em) em liquida\''e7\''e3o, su'
    + 'spender(em) suas atividades por mais de 45 (quarenta e cinco) dias ou sofrer(em) protesto(s) de qualquer}{\rtlch\fcs1 \af0 \ltrch\fcs0 \insrsid4095597  t\''edtulo de sua responsabilidade e n\''e3o houver a substitui\''e7\''e3o do(s) mesmo(s), pelo }{'
    + '\rtlch\fcs1 \af0 \ltrch\fcs0 \b\insrsid4095597\charrsid14777924 EMITENTE, }{\rtlch\fcs1 \af0 \ltrch\fcs0 \insrsid4095597 no prazo de 15 (quinze) dias da ocorr\''eancia do ato.}{\rtlch\fcs1 \af0 \ltrch\fcs0 \insrsid4095597\charrsid287838 '
    + '\par }{\rtlch\fcs1 \af0 \ltrch\fcs0 \b\insrsid4095597\charrsid14777924 c)}{\rtlch\fcs1 \af0 \ltrch\fcs0 \insrsid4095597\charrsid12326255  Caso o }{\rtlch\fcs1 \af0 \ltrch\fcs0 \b\insrsid4095597\charrsid14777924 EMITENTE}{\rtlch\fcs1 \af0 \ltrch\fcs0 '
    + '\insrsid4095597\charrsid12326255  e/ou seu(s) }{\rtlch\fcs1 \af0 \ltrch\fcs0 \b\insrsid4095597\charrsid14777924 AVALISTA(S)}{\rtlch\fcs1 \af0 \ltrch\fcs0 \insrsid4095597\charrsid12326255  der(em) causa ao encerramento de sua (s) conta(s) banc\''e1'
    + 'ria(s), em qualquer institui\''e7\''e3o financeira, por viola\''e7\''f5es de normas ou instru\''e7\''f5es do Banco Central do Brasil ou do Conselho Monet\''e1rio Nacional.'
    + '\par }{\rtlch\fcs1 \af0 \ltrch\fcs0 \b\insrsid4095597\charrsid14777924 d)}{\rtlch\fcs1 \af0 \ltrch\fcs0 \insrsid4095597\charrsid12326255  '
    + 'Caso caracterizada a mora do(a) }{\rtlch\fcs1 \af0 \ltrch\fcs0 \b\insrsid4095597\charrsid14777924 EMITENTE}{\rtlch\fcs1 '
    + '\af0 \ltrch\fcs0 \insrsid4095597\charrsid12326255  ou seu(s) }{\rtlch\fcs1 \af0 \ltrch\fcs0 \b\insrsid4095597\charrsid14777924 AVALISTA(S)}{\rtlch\fcs1 \af0 \ltrch\fcs0 \insrsid4095597\charrsid12326255  em opera\''e7\''e3o de cr\''e9'
    + 'dito tratada junto a qualquer outra institui\''e7\''e3o integrante do Sistema Financeiro Nacional.}{\rtlch\fcs1 \af0 \ltrch\fcs0 \insrsid4095597 '
    + '\par }{\rtlch\fcs1 \ab\af0 \ltrch\fcs0 \b\insrsid4095597\charrsid14777924 IX \endash  DOS ENCARGOS MORAT\''d3RIOS'
    + '\par }\pard \ltrpar\qj \li0\ri0\sl-280\slmult0\widctlpar\wrapdefault\aspalpha\aspnum\faauto\adjustright\rin0\lin0\itap0\pararsid4095597 {\rtlch\fcs1 \af0 \ltrch\fcs0 \insrsid4095597\charrsid3546021 '
    + 'Em caso de mora relativa ao pagamento de qualquer parcela, encargo ou amortiza\''e7\''e3o convencionados, bem como em todas as hip\''f3teses de vencimento antecipado desta C\''e9dula de Cr\''e9dito Banc\''e1rio, incidir\''e3o sobre o saldo devedor do m\''fa'
    + 'tuo, da data da ocorr\''eancia do vencimento das obriga\''e7\''f5es at\''e9 o dia do efetivo pagamento da integralidade do d\''e9bito, juros remunerat\''f3rios nos moldes convencionados, juros de mora previsto no item 1.}{\rtlch\fcs1 \af0 \ltrch\fcs0 '
    + '\insrsid4095597 8}{\rtlch\fcs1 \af0 \ltrch\fcs0 \insrsid4095597\charrsid3546021  do Quadro III desta C\''e9dula de Cr\''e9dito Banc\''e1rio e multa de 2% sobre a d\''edvida. Conforme crit\''e9rio do }{\rtlch\fcs1 \af0 \ltrch\fcs0 '
    + '\b\insrsid4095597\charrsid14777924 CREDOR}{\rtlch\fcs1 \af0 \ltrch\fcs0 \insrsid4095597\charrsid3546021 , em caso de mora, desde que n\''e3o seja cobrado juros remunerat\''f3rios, morat\''f3rios e multa contratual, poder\''e1 ser cobrada a Comiss\''e3'
    + 'o de Perman\''eancia, cujo valor se limitar\''e1 \''e0 soma dos encargos previstos no contrato.'
    + '\par }\pard \ltrpar\qj \li0\ri0\widctlpar\wrapdefault\faauto\rin0\lin0\itap0\pararsid4095597 {\rtlch\fcs1 \ab\af0 \ltrch\fcs0 \b\insrsid4095597\charrsid14777924 X \endash  DAS GARANTIAS'
    + '\par }{\rtlch\fcs1 \af0 \ltrch\fcs0 \insrsid4095597\charrsid12326255 Em garantia do pagamento do valor'
    + ' do m\''fatuo e seus acess\''f3rios e demais encargos ou penalidades morat\''f3rias, despesas de cobran\''e7a, custas, honor\''e1rios decorrentes de cobran\''e7'
    + 'a extrajudicial ou judicial e todas as demais obriga\''e7\''f5es decorrentes desta C\''e9dula de Cr\''e9dito Banc\''e1rio, o(a) }{\rtlch\fcs1 \af0 \ltrch\fcs0 \b\insrsid4095597\charrsid14777924 EMITENTE}{\rtlch\fcs1 \af0 \ltrch\fcs0 '
    + '\insrsid4095597\charrsid12326255  e/ou o(s) }{\rtlch\fcs1 \af0 \ltrch\fcs0 \b\insrsid4095597\charrsid14777924 GARANTIDOR(ES)}{\rtlch\fcs1 \af0 \ltrch\fcs0 \insrsid4095597\charrsid12326255  formalizam e constituem atrav\''e9s d'
    + 'e instrumento(s) anexo(s) que passar\''e3o a integrar a presente C\''e9dula de Cr\''e9dito Banc\''e1rio a(s) garantias assinalada(s) no Quadro IV acima.}{\rtlch\fcs1 \af0 \ltrch\fcs0 \insrsid4095597 '
    + '\par }\pard \ltrpar\qj \li0\ri0\sl-300\slmult0\widctlpar\tx10524\wrapdefault\faauto\rin0\lin0\itap0\pararsid4095597 {\rtlch\fcs1 \af0 \ltrch\fcs0 \b\insrsid4095597\charrsid3637058 Par\''e1grafo primeiro: }{\rtlch\fcs1 \af0 \ltrch\fcs0 '
    + '\insrsid4095597\charrsid3637058 Na hip\''f3tese de aditivo(s)}{\rtlch\fcs1 \af0 \ltrch\fcs0 \cf1\insrsid4095597\charrsid3637058  para prorroga\''e7\''e3o desta C\''e9dula de Cr\''e9dito Banc\''e1rio, fica ajustado, desde j\''e1, que todas as cl\''e1'
    + 'usulas, garantias, declara\''e7\''f5es e autoriza\''e7\''f5es outorgadas pelas partes permanecer\''e3o v\''e1lidas e eficazes durante todo o prazo de vig\''eancia desta C\''e9dula e de seus aditivos.'
    + '\par }{\rtlch\fcs1 \af0 \ltrch\fcs0 \b\cf1\insrsid4095597\charrsid3637058 Par\''e1grafo segundo: }{\rtlch\fcs1 \af0 \ltrch\fcs0 \cf1\insrsid4095597\charrsid3637058 Existindo uma ou mais opera\''e7\''f5es de cr\''e9dito ou empr\''e9stimo concedidas pelo }{'
    + '\rtlch\fcs1 \af0 \ltrch\fcs0 \b\cf1\insrsid4095597\charrsid3637058 CREDOR }{\rtlch\fcs1 \af0 \ltrch\fcs0 \cf1\insrsid4095597\charrsid3637058 ao }{\rtlch\fcs1 \af0 \ltrch\fcs0 \b\cf1\insrsid4095597\charrsid3637058 EMITENTE}{\rtlch\fcs1 \af0 \ltrch\fcs0 '
    + '\cf1\insrsid4095597\charrsid3637058  e/ou }{\rtlch\fcs1 \af0 \ltrch\fcs0 \b\cf1\insrsid4095597\charrsid3637058 AVALISTA }{\rtlch\fcs1 \af0 \ltrch\fcs0 \cf1\insrsid4095597\charrsid3637058 e/ou a quaisquer de suas afiliadas, as garantias prestadas nesta C'
    + '\''e9dula de Cr\''e9dito e nas demais opera\''e7\''f5es de empr\''e9stimo estendem-se a todas as opera\''e7\''f5es de modo a compor uma s\''f3 garantia, comum ao total das d\''edvidas, podendo o }{\rtlch\fcs1 \af0 \ltrch\fcs0 \b\cf1\insrsid4095597\charrsid3637058 '
    + 'CREDOR }{\rtlch\fcs1 \af0 \ltrch\fcs0 \cf1\insrsid4095597\charrsid3637058 delas utilizar-se indistintamente na cobertura, na amortiza\''e7\''e3o ou na liquida\''e7\''e3o de qualquer das d\''edvidas. A libera\''e7\''e3o das garantias somente ser\''e1'
    + ' aprovada pelo }{\rtlch\fcs1 \af0 \ltrch\fcs0 \b\cf1\insrsid4095597\charrsid3637058 CREDOR}{\rtlch\fcs1 \af0 \ltrch\fcs0 \cf1\insrsid4095597\charrsid3637058  ap\''f3s a liquida\''e7\''e3o de todos os d\''e9bitos do}{\rtlch\fcs1 \af0 \ltrch\fcs0 '
    + '\b\cf1\insrsid4095597\charrsid3637058  EMITENTE}{\rtlch\fcs1 \af0 \ltrch\fcs0 \cf1\insrsid4095597\charrsid3637058 , seus }{\rtlch\fcs1 \af0 \ltrch\fcs0 \b\cf1\insrsid4095597\charrsid3637058 AVALISTAS}{\rtlch\fcs1 \af0 \ltrch\fcs0 '
    + '\cf1\insrsid4095597\charrsid3637058  e afiliadas perante o }{\rtlch\fcs1 \af0 \ltrch\fcs0 \b\cf1\insrsid4095597\charrsid3637058 CREDOR}{\rtlch\fcs1 \af0 \ltrch\fcs0 \cf1\insrsid4095597\charrsid3637058 .'
    + '\par }{\rtlch\fcs1 \af0 \ltrch\fcs0 \b\cf1\insrsid4095597\charrsid3637058 Par\''e1grafo terceiro: }{\rtlch\fcs1 \af0 \ltrch\fcs0 \cf1\insrsid4095597\charrsid3637058 O(s)}{\rtlch\fcs1 \af0 \ltrch\fcs0 \b\cf1\insrsid4095597\charrsid3637058  AVALISTA(S)}{'
    + '\rtlch\fcs1 \af0 \ltrch\fcs0 \cf1\insrsid4095597\charrsid3637058  e o(s) }{\rtlch\fcs1 \af0 \ltrch\fcs0 \b\cf1\insrsid4095597\charrsid3637058 GARANTIDOR(ES)}{\rtlch\fcs1 \af0 \ltrch\fcs0 \cf1\insrsid4095597\charrsid3637058  se declaram devedores solid\''e1'
    + 'rios do }{\rtlch\fcs1 \af0 \ltrch\fcs0 \b\cf1\insrsid4095597\charrsid3637058 EMITENTE}{\rtlch\fcs1 \af0 \ltrch\fcs0 \cf1\insrsid4095597\charrsid3637058  responsabilizando-se em igualdade de condi\''e7\''f5es pelo exato e fiel cumprimento de todas as obriga'
    + '\''e7\''f5es assumidas pelo }{\rtlch\fcs1 \af0 \ltrch\fcs0 \b\cf1\insrsid4095597\charrsid3637058 EMITENTE}{\rtlch\fcs1 \af0 \ltrch\fcs0 \cf1\insrsid4095597\charrsid3637058 , anuindo expressamente com todos os termos e condi\''e7\''f5es aqui pactuados.}{'
    + '\rtlch\fcs1 \af0 \ltrch\fcs0 \cf1\insrsid4095597\charrsid14777924 ' +
    '\par }\pard \ltrpar\qj \li0\ri0\widctlpar\wrapdefault\faauto\rin0\lin0\itap0\pararsid4095597 {\rtlch\fcs1 \ab\af0 \ltrch\fcs0 \b\insrsid4095597\charrsid14777924 XI \endash  DA POSSIBILIDADE DE PAGAMENTO MEDIANTE DESCONTO DE T\''cdTULOS '
    + '{\*\xmlopen\xmlns2{\factoidname PersonName}{\xmlattr\xmlattrns0{\xmlattrname ProductID}{\xmlattrvalue EM ENDOSSO PLENO}}}EM ENDOSSO PLENO{\*\xmlclose}'
    + '\par }{\rtlch\fcs1 \af0 \ltrch\fcs0 \insrsid4095597\charrsid12326255 Fica convencionado'
    + ' que o pagamento do m\''fatuo}{\rtlch\fcs1 \af0 \ltrch\fcs0 \insrsid4095597 , na forma prevista no item 1.11}{\rtlch\fcs1 \af0 \ltrch\fcs0 \insrsid4095597\charrsid12326255 '
    + ' do Quadro III, poder\''e1 ser ajustado, na totalidade ou em parte, caso assim concorde o }{\rtlch\fcs1 \af0 \ltrch\fcs0 \b\insrsid4095597\charrsid14777924 CREDOR}{\rtlch\fcs1 \af0 \ltrch\fcs0 \insrsid4095597\charrsid12326255 , atrav\''e9'
    + 's do produto obtido com o desconto, via endosso pleno, de t\''edtulos de cr\''e9ditos vincendos do(a) }{\rtlch\fcs1 \af0 \ltrch\fcs0 \b\insrsid4095597\charrsid14777924 EMITENTE}{\rtlch\fcs1 \af0 \ltrch\fcs0 \insrsid4095597\charrsid12326255  desta C\''e9'
    + 'dula ou de terceiro interessado no pagamento da d\''edvida a serem relacionados em instrumento(s) anexo(s). A opera\''e7\''e3o de desconto de t\''edtulos de cr\''e9dito poder\''e1 ser tratada concomitantemente a emiss\''e3o desta C\''e9dula de Cr\''e9dito Banc\''e1'
    + 'rio ou posteriormente. Na hip\''f3tese de aceita\''e7\''e3o, pelo }{\rtlch\fcs1 \af0 \ltrch\fcs0 \b\insrsid4095597\charrsid14777924 CREDOR}{\rtlch\fcs1 \af0 \ltrch\fcs0 \insrsid4095597\charrsid12326255 , de opera\''e7\''e3o de desconto de t\''edtulos de cr\''e9'
    + 'ditos vincendos MANT\''caM INALTERADAS TODAS AS OBRIGA\''c7\''d5ES DO(A) }{\rtlch\fcs1 \af0 \ltrch\fcs0 \b\insrsid4095597\charrsid14777924 EMITENTE}{\rtlch\fcs1 \af0 \ltrch\fcs0 \insrsid4095597\charrsid12326255  e seu(s) }{\rtlch\fcs1 \af0 \ltrch\fcs0 '
    + '\b\insrsid4095597\charrsid14777924 AVALISTA(S)}{\rtlch\fcs1 \af0 \ltrch\fcs0 \insrsid4095597\charrsid12326255  previstas nesta C\''e9dula, notadamente a de promoverem diretamente e em dinheiro o pagamento do m\''fatuo, acess\''f3rios e acr\''e9'
    + 'scimos na exata forma estipulada do item 1.1}{\rtlch\fcs1 \af0 \ltrch\fcs0 \insrsid4095597 1}{\rtlch\fcs1 \af0 \ltrch\fcs0 \insrsid4095597\charrsid12326255  do Quadro III, responsabilizando-se o(a) }{\rtlch\fcs1 \af0 \ltrch\fcs0 '
    + '\b\insrsid4095597\charrsid14777924 EMITENTE}{\rtlch\fcs1 \af0 \ltrch\fcs0 \insrsid4095597\charrsid12326255  e seu(s) }{\rtlch\fcs1 \af0 \ltrch\fcs0 \b\insrsid4095597\charrsid14777924 AVALISTA(S)}{\rtlch\fcs1 \af0 \ltrch\fcs0 '
    + '\insrsid4095597\charrsid12326255  pela salvabilidade dos t\''edtulos descontados.}{\rtlch\fcs1 \af0 \ltrch\fcs0 \v\insrsid4095597\charrsid14777924\spv '
    + '\par }{\rtlch\fcs1 \af0 \ltrch\fcs0 \insrsid4095597\charrsid12326255  }{\rtlch\fcs1 \af0 \ltrch\fcs0 \insrsid4095597 '
    + '\par }{\rtlch\fcs1 \ab\af0 \ltrch\fcs0 \b\insrsid4095597\charrsid14777924 XII \endash  DA UTILIZA\''c7\''c3O DO PRODUTO DA COBRAN\''c7A'
    + '\par }{\rtlch\fcs1 \af0 \ltrch\fcs0 \insrsid4095597\charrsid12326255 Caso o produto obtido com a cobran\''e7a dos t\''edtulos endossados em desconto seja superior a quantia necess\''e1ria para cobrir todo o saldo devedor, acr\''e9scimos, acess\''f3'
    + 'rios e despesas previstos nesta C\''e9dula de Cr\''e9dito Banc\''e1rio ou caso o EMITENTE ou seu(s) AVALISTA(S) efetuem diretamente pagamentos que somados ao produto obtido da cobran\''e7a, importem na liquida\''e7\''e3o do saldo devedor do m\''fa'
    + 'tuo com seus acess\''f3rios, o CREDOR, ap\''f3s apurada a integral quita\''e7\''e3o das obriga\''e7\''f5es previstas nesta C\''e9dula, devolver\''e1 ao EMITEMTE ou ao TERCEIRO endossante a diferen\''e7a que sobejar advinda do produto dos t\''edtulos descontados ou '
    + 'os pr\''f3prios t\''edtulos em esp\''e9cie ainda n\''e3o liquidados.' +
    '\par }{\rtlch\fcs1 \ab\af0 \ltrch\fcs0 \b\insrsid4095597\charrsid14777924 XIII \endash  COMPENSA\''c7\''c3O DE CR\''c9DITO'
    + '\par }{\rtlch\fcs1 \ab\af0 \ltrch\fcs0 \insrsid4095597\charrsid14777924 Vencida a divida e'
    + ' n\''e3o liquidada ou na ocorr\''eancia de vencimento antecipado, o (a) }{\rtlch\fcs1 \ab\af0 \ltrch\fcs0 \b\insrsid4095597\charrsid14777924 EMITENTE}{\rtlch\fcs1 \ab\af0 '
    + '\ltrch\fcs0 \insrsid4095597\charrsid14777924  e }{\rtlch\fcs1 \ab\af0 \ltrch\fcs0 \b\insrsid4095597\charrsid14777924 AVALISTA(S)}{\rtlch\fcs1 \ab\af0 \ltrch\fcs0 \insrsid4095597\charrsid14777924  autorizam, desde j\''e1, o }{\rtlch\fcs1 \ab\af0 '
    + '\ltrch\fcs0 \b\insrsid4095597\charrsid14777924 CREDOR}{\rtlch\fcs1 \ab\af0 \ltrch\fcs0 \insrsid4095597\charrsid14777924 , em car\''e1ter irrevog\''e1vel e irretrat\''e1vel, a promover a compensa\''e7\''e3o da contra\''edda, nos termos desta C\''e9dula de Cr\''e9'
    + 'dito, com eventuais cr\''e9ditos que os mesmos tenham ou venham a ter, junto ao }{\rtlch\fcs1 \ab\af0 \ltrch\fcs0 \b\insrsid4095597\charrsid14777924 CREDOR}{\rtlch\fcs1 \ab\af0 \ltrch\fcs0 \insrsid4095597\charrsid14777924 , inclusive cr\''e9'
    + 'ditos em conta-corrente e aplica\''e7\''f5es financeiras, bem com aqueles decorrentes de excesso de garantias de outros ajustes, por eles firmados com o }{\rtlch\fcs1 \ab\af0 \ltrch\fcs0 \b\insrsid4095597\charrsid14777924 CREDOR}{\rtlch\fcs1 \ab\af0 '
    + '\ltrch\fcs0 \insrsid4095597\charrsid14777924 , conferindo a este, neste ato, os necess\''e1rios poderes para proceder ao resgate ou negocia\''e7\''e3o de t\''edtulos, em valor suficiente para a liquida\''e7\''e3o do saldo devedor da divida existente, junto ao }'
    + '{\rtlch\fcs1 \ab\af0 \ltrch\fcs0 \b\insrsid4095597\charrsid14777924 CREDOR}{\rtlch\fcs1 \ab\af0 \ltrch\fcs0 \insrsid4095597\charrsid14777924 .'
    + '\par }{\rtlch\fcs1 \ab\af0 \ltrch\fcs0 \b\insrsid4095597\charrsid14777924 XIV \endash  CERTEZA E LIQUIDEZ DA D\''cdVIDA'
    + '\par }{\rtlch\fcs1 \af0 \ltrch\fcs0 \insrsid4095597\charrsid12326255 Eu, o(a) }{\rtlch\fcs1 \af0 \ltrch\fcs0 \b\insrsid4095597\charrsid14777924 EMITENTE}{\rtlch\fcs1 \af0 \ltrch\fcs0 \insrsid4095597\charrsid12326255 , e eu(n\''f3s) o(s) }{\rtlch\fcs1 \af0 '
    + '\ltrch\fcs0 \b\insrsid4095597\charrsid14777924 AVALISTA(S)}{\rtlch\fcs1 \af0 \ltrch\fcs0 \insrsid4095597\charrsid12326255  e }{\rtlch\fcs1 \af0 \ltrch\fcs0 \b\insrsid4095597\charrsid14777924 GARANTIDOR(ES)}{\rtlch\fcs1 \af0 \ltrch\fcs0 '
    + '\insrsid4095597\charrsid12326255  reconhecemos que a presente C\''e9dula de Cr\''e9dito Banc\''e1rio representa t\''edtulo l\''edquido certo e exig\''edvel pelo valor do saldo apurado em conformidade com suas cl\''e1usulas e condi\''e7\''f5'
    + 'es reconhecendo ainda a for\''e7a executiva da presente C\''e9dula seja pelo seu pr\''f3prio teor, seja pela sua integra\''e7\''e3o atrav\''e9s de planilhas elaboradas pelo }{\rtlch\fcs1 \af0 \ltrch\fcs0 \b\insrsid4095597\charrsid14777924 CREDOR}{\rtlch\fcs1 '
    + '\af0 \ltrch\fcs0 \insrsid4095597\charrsid12326255 , que demonstrem os lan\''e7amentos de d\''e9bitos computados e a atualiza\''e7\''e3o do saldo devedor segundo os crit\''e9rios convencionados.'
    + '\par }{\rtlch\fcs1 \ab\af0 \ltrch\fcs0 \b\insrsid4095597\charrsid14777924 XV \endash  DA CESS\''c3O DOS CR\''c9DITOS'
    + '\par }{\rtlch\fcs1 \af0 \ltrch\fcs0 \insrsid4095597\charrsid12326255 Em se tratando de um t\''edtulo de cr\''e9dito, a teor do art. 26 caput, da Lei 10.931/2004, o }{\rtlch\fcs1 \af0 \ltrch\fcs0 \b\insrsid4095597\charrsid14777924 CREDOR}{\rtlch\fcs1 \af0 '
    + '\ltrch\fcs0 \insrsid4095597\charrsid12326255  poder\''e1 endossar, ceder, vender, transferir ou entregar em penhor todos os direitos e garantias decorrentes da presente C\''e9dula de Cr\''e9dito Banc\''e1rio, sub-rogando-se o(s) cession\''e1'
    + 'rio(s) em todos os direitos e garantias decorrentes da presente C\''e9dula de Cr\''e9dito Banc\''e1rio, sub-rogando-se o(s) cession\''e1rio(s) em todos os direitos, interesses, prerrogativas e garantias decorrentes do endosso, cess\''e3o, venda, transfer\''ea'
    + 'ncia ou penhor, sem que haja necessidade de autoriza\''e7\''e3o pr\''e9via do(a) }{\rtlch\fcs1 \af0 \ltrch\fcs0 \b\insrsid4095597\charrsid14777924 EMITENTE}{\rtlch\fcs1 \af0 \ltrch\fcs0 \insrsid4095597\charrsid12326255  e seu(s) }{\rtlch\fcs1 \af0 '
    + '\ltrch\fcs0 \b\insrsid4095597\charrsid14777924 AVALISTA(S).}{\rtlch\fcs1 \af0 \ltrch\fcs0 \insrsid4095597\charrsid12326255 '
    + '\par }{\rtlch\fcs1 \ab\af0 \ltrch\fcs0 \b\insrsid4095597\charrsid14777924 XVI \endash  DO DIREITO \''c0 DIVULGA\''c7\''c3O DA MORA OU INADIMPL\''caNCIA E AO PROTESTO DA C\''c9DULA'
    + '\par }{\rtlch\fcs1 \af0 \ltrch\fcs0 \insrsid4095597\charrsid12326255 Caso ocorra'
    + ' mora e/ou inadimplemento no cumprimento de quaisquer das obriga\''e7\''f5es previstas nesta C\''e9dula, estar\''e1 o }{\rtlch\fcs1 \af0 \ltrch\fcs0 \b\insrsid4095597\charrsid14777924 '
    + 'CREDOR}{\rtlch\fcs1 \af0 \ltrch\fcs0 \insrsid4095597\charrsid12326255 , de pleno direito autorizada pelo(a) }{\rtlch\fcs1 \af0 \ltrch\fcs0 \b\insrsid4095597\charrsid14777924 EMITENTE}{\rtlch\fcs1 \af0 \ltrch\fcs0 \insrsid4095597\charrsid12326255 '
    + ' e seu(s) }{\rtlch\fcs1 \af0 \ltrch\fcs0 \b\insrsid4095597\charrsid14777924 AVALISTA(S)}{\rtlch\fcs1 \af0 \ltrch\fcs0 \insrsid4095597\charrsid12326255  a dar publicidade do fato nos cadastros de prote\''e7\''e3o ao cr\''e9dito e registro de inadimpl\''ea'
    + 'ncia, atrav\''e9s do registro dos seus nomes nos cadastros em refer\''eancia, tais como o SERASA, SPC, etc., bem como na Central de Risco do Banco Central do Brasil. O(A) }{\rtlch\fcs1 \af0 \ltrch\fcs0 \b\insrsid4095597\charrsid14777924 EMITENTE }{'
    + '\rtlch\fcs1 \af0 \ltrch\fcs0 \insrsid4095597\charrsid12326255 e seu(s) }{\rtlch\fcs1 \af0 \ltrch\fcs0 \b\insrsid4095597\charrsid14777924 AVALISTA(S)}{\rtlch\fcs1 \af0 \ltrch\fcs0 \insrsid4095597\charrsid12326255 '
    + ' declaram ainda concordarem e estarem cientes de que o atraso ou o inadimplemento das obriga\''e7\''f5es previstas nesta C\''e9dula dar\''e1 ao }{\rtlch\fcs1 \af0 \ltrch\fcs0 \b\insrsid4095597\charrsid14777924 CREDOR}{\rtlch\fcs1 \af0 \ltrch\fcs0 '
    + '\insrsid4095597\charrsid12326255 , de pleno direito, a prerrogativa de determinar o protesto desta C\''e9dula. O }{\rtlch\fcs1 \af0 \ltrch\fcs0 \b\insrsid4095597\charrsid14777924 EMITENTE}{\rtlch\fcs1 \af0 \ltrch\fcs0 \insrsid4095597\charrsid12326255 '
    + ' e seu(s) }{\rtlch\fcs1 \af0 \ltrch\fcs0 \b\insrsid4095597\charrsid14777924 AVALISTA(S)}{\rtlch\fcs1 \af0 \ltrch\fcs0 \insrsid4095597\charrsid12326255  autoriza(m) expressamente o }{\rtlch\fcs1 \af0 \ltrch\fcs0 \b\insrsid4095597\charrsid14777924 CREDOR}{'
    + '\rtlch\fcs1 \af0 \ltrch\fcs0 \insrsid4095597\charrsid12326255 , em car\''e1ter irrevog\''e1vel e irretrat\''e1vel a fornecer ao Banco Central do Brasil informa\''e7\''f5es sobre o montante dos d\''e9bitos e responsabilidades constitu\''eddos nesta C\''e9'
    + 'dula, a teor do disposto na Resolu\''e7\''e3o n\''ba 3658 de 17/12/2008, do Banco Central do Brasil, disponibilizar e intercambiar com as institui\''e7\''f5es citadas no inciso anterior as informa\''e7\''f5es sobre obriga\''e7\''f5es, decorrentes desta }{'
    + '\rtlch\fcs1 \af0 \ltrch\fcs0 \b\insrsid4095597\charrsid14777924 C\''c9DULA.}{\rtlch\fcs1 \af0 \ltrch\fcs0 \insrsid4095597\charrsid12326255 (  ) O(A)}{\rtlch\fcs1 \af0 \ltrch\fcs0 \b\insrsid4095597\charrsid14777924  EMITENTE}{\rtlch\fcs1 \af0 \ltrch\fcs0 '
    + '\insrsid4095597\charrsid12326255  N\''c3O CONCORDA COM O TEOR DESTE PAR\''c1GRAFO.'
    + '\par }{\rtlch\fcs1 \ab\af0 \ltrch\fcs0 \b\insrsid4095597\charrsid14777924 XVII \endash  DO REGISTRO/ACESSO DE DADOS NO SISTEMA DE INFORMA\''c7\''d5ES DE CR\''c9DITO (SCR) DO BANCO CENTRAL DO BRASIL (BACEN)'
    + '\par }{\rtlch\fcs1 \af0 \ltrch\fcs0 \insrsid4095597\charrsid12326255 O }{\rtlch\fcs1 \af0 \ltrch\fcs0 \b\insrsid4095597\charrsid14777924 CREDOR'
    + ' }{\rtlch\fcs1 \af0 \ltrch\fcs0 \insrsid4095597\charrsid12326255 informa ao EMITENTE e AVALISTA que as informa\''e7'
    + '\''f5es sobre o montante dos d\''e9bitos e responsabilidades constitu\''eddos nesta C\''e9dula, a teor do disposto na Resolu\''e7\''e3o n\''ba 3.658 de 2008 e Circular 3.445 de 2008 do Banco Central do Brasil (BACEN), ser\''e3o registradas no Sistema de informa'
    + '\''e7\''f5es de Cr\''e9dito gerido pelo BACEN, que tem por finalidade propiciar o interc\''e2mbio entre as institui\''e7\''f5es obrigadas a prestar informa\''e7\''f5es ao SCR das opera\''e7\''f5es referentes a d\''e9bitos e responsabilidades, o}{\rtlch\fcs1 \af0 '
    + '\ltrch\fcs0 \b\insrsid4095597\charrsid14777924  EMITENTE}{\rtlch\fcs1 \af0 \ltrch\fcs0 \insrsid4095597\charrsid12326255  e }{\rtlch\fcs1 \af0 \ltrch\fcs0 \b\insrsid4095597\charrsid14777924 AVALISTA(S) }{\rtlch\fcs1 \af0 \ltrch\fcs0 '
    + '\insrsid4095597\charrsid12326255 poder\''e3o ter acesso aos dados do SCR por meio da Central de Atendimento do }{\rtlch\fcs1 \af0 \ltrch\fcs0 \b\insrsid4095597\charrsid14777924 BACEN; }{\rtlch\fcs1 \af0 \ltrch\fcs0 \insrsid4095597\charrsid12326255 '
    + 'as manifesta\''e7\''f5es de discord\''e2ncia e os pedidos de corre\''e7\''e3o, exclus\''e3o e registro de medidas judiciais no SCR dever\''e3o ser dirigidas \''e0 SCR por meio de requerimento escrito, quando for o caso acompanhado da respectiva decis\''e3'
    + 'o judicial. Ressalta-se que a consulta de qualquer informa\''e7\''e3o constante no SCR depender\''e1 de pr\''e9via autoriza\''e7\''e3o do }{\rtlch\fcs1 \af0 \ltrch\fcs0 \b\insrsid4095597\charrsid14777924 EMITENTE/AVALISTA.'
    + '\par Par\''e1grafo \''fanico }{\rtlch\fcs1 \af0 \ltrch\fcs0 \insrsid4095597\charrsid12326255 \endash  Declarando-se ciente do comunicado feito no \''93caput\''94 dessa cl\''e1usula, o }{\rtlch\fcs1 \af0 \ltrch\fcs0 \b\insrsid4095597\charrsid14777924 '
    + 'EMITENTE/AVALISTAS}{\rtlch\fcs1 \af0 \ltrch\fcs0 \insrsid4095597\charrsid12326255 , neste ato, autoriza o }{\rtlch\fcs1 \af0 \ltrch\fcs0 \b\insrsid4095597\charrsid14777924 CREDOR}{\rtlch\fcs1 \af0 \ltrch\fcs0 \insrsid4095597\charrsid12326255 '
    + ', bem como seus sucessores, a consultar e registrar os d\''e9bitos e responsabilidades decorrentes de opera\''e7\''f5es de cr\''e9dito que constem ou venham a contar {\*\xmlopen\xmlns2{\factoidname PersonName}{\xmlattr\xmlattrns0{\xmlattrname ProductID}'
    + '{\xmlattrvalue em nome do EMITENTE}}}em nome do }{\rtlch\fcs1 \af0 \ltrch\fcs0 \b\insrsid4095597\charrsid14777924 EMITENTE{\*\xmlclose}/AVALISTAS }{\rtlch\fcs1 \af0 \ltrch\fcs0 \insrsid4095597\charrsid12326255 devedor no SCR ou nos s'
    + 'istemas que venham a complementar ou a substituir o SCR.' +
    '\par }{\rtlch\fcs1 \ab\af0 \ltrch\fcs0 \b\insrsid4095597\charrsid14777924 XVIII \endash  DAS OBRIGA\''c7\''d5ES DO CREDOR'
    + '\par }{\rtlch\fcs1 \af0 \ltrch\fcs0 \insrsid4095597\charrsid12326255 O }{\rtlch\fcs1 \af0 \ltrch\fcs0 \b\insrsid4095597\charrsid14777924 CREDOR}'
    + '{\rtlch\fcs1 \af0 \ltrch\fcs0 \insrsid4095597\charrsid12326255  obriga-se a disponibilizar mensalmente ao(\''e0) }{'
    + '\rtlch\fcs1 \af0 \ltrch\fcs0 \b\insrsid4095597\charrsid14777924 EMITEMTE(S)}{\rtlch\fcs1 \af0 \ltrch\fcs0 \insrsid4095597\charrsid12326255  e seu(s) }{\rtlch\fcs1 \af0 \ltrch\fcs0 \b\insrsid4095597\charrsid14777924 AVALISTA(S)}{\rtlch\fcs1 \af0 '
    + '\ltrch\fcs0 \insrsid4095597\charrsid12326255  extratos ou planilhas que demonstrem o valor atualizado do saldo devedor desta C\''e9dula com os lan\''e7amentos efetuados a t\''edtulo de encargos e demais acr\''e9scimos previstos neste documento.'
    + '\par O(a) }{\rtlch\fcs1 \af0 \ltrch\fcs0 \b\insrsid4095597\charrsid14777924 EMITENTE}{\rtlch\fcs1 \af0 \ltrch\fcs0 \insrsid4095597\charrsid12326255  ter\''e1'
    + ' o prazo de 15 (quinze) dias para reclamar contra qualquer parcela ou valor que considere indevido e o mesmo prazo para notificar formalmente ao }{\rtlch\fcs1 \af0 \ltrch\fcs0 \b\insrsid4095597\charrsid14777924 CREDOR}{\rtlch\fcs1 \af0 \ltrch\fcs0 '
    + '\insrsid4095597\charrsid12326255  caso n\''e3o obtenha os extratos ou informa\''e7\''f5es do d\''e9bito e sua atualiza\''e7\''e3o importando o seu sil\''eancio ou a aus\''eancia de notifica\''e7\''e3'
    + 'o formal no reconhecimento da regularidade do recebimento das informa\''e7\''f5es e concord\''e2ncia quanto aos valores lan\''e7ados.'
    + '\par }{\rtlch\fcs1 \ab\af0 \ltrch\fcs0 \b\insrsid4095597\charrsid14777924 XIX \endash  DA TOLER\''c2NCIA'
    + '\par }{\rtlch\fcs1 \af0 \ltrch\fcs0 \insrsid4095597\charrsid12326255 Eventuais toler\''e2ncias do }{\rtlch\fcs1 \af0 \ltrch\fcs0 \b\insrsid4095597\charrsid14777924 CREDOR}'
    + '{\rtlch\fcs1 \af0 \ltrch\fcs0 \insrsid4095597\charrsid12326255  com rela\''e7\''e3o ao n\''e3'
    + 'o cumprimento ou mora no cumprimento das obriga\''e7\''f5es e prazos desta C\''e9dula, n\''e3o importar\''e3o em nova\''e7\''e3o ou desist\''eancia, n\''e3o podendo ser invocadas, sob hip\''f3tese alguma, nem pelo(a) }{\rtlch\fcs1 \af0 \ltrch\fcs0 '
    + '\b\insrsid4095597\charrsid14777924 EMITENTE}{\rtlch\fcs1 \af0 \ltrch\fcs0 \insrsid4095597\charrsid12326255 , nem pelo(s) seu(s) }{\rtlch\fcs1 \af0 \ltrch\fcs0 \b\insrsid4095597\charrsid14777924 AVALISTA(S)}{\rtlch\fcs1 \af0 \ltrch\fcs0 '
    + '\insrsid4095597\charrsid12326255  ou }{\rtlch\fcs1 \af0 \ltrch\fcs0 \b\insrsid4095597\charrsid14777924 GARANTIDOR(ES)}{\rtlch\fcs1 \af0 \ltrch\fcs0 \insrsid4095597\charrsid12326255 , ficando assegurado ao }{\rtlch\fcs1 \af0 \ltrch\fcs0 '
    + '\b\insrsid4095597\charrsid14777924 CREDOR}{\rtlch\fcs1 \af0 \ltrch\fcs0 \insrsid4095597\charrsid12326255 , dentro dos prazos prescricionais previstos em lei tomar as medidas cab\''edveis, judicial ou extrajudicialmente.}{\rtlch\fcs1 \af0 \ltrch\fcs0 '
    + '\insrsid4095597 ' +
    '\par }{\rtlch\fcs1 \ab\af0 \ltrch\fcs0 \b\insrsid4095597\charrsid3637058 XX \endash  DA LIQUIDA\''c7\''c3O ANTECIPADA'
    + '\par }\pard \ltrpar\qj \li0\ri0\widctlpar\wrapdefault\aspalpha\aspnum\faauto\adjustright\rin0\lin0\itap0\pararsid4095597 {\rtlch\fcs1 \af0 \ltrch\fcs0 \insrsid4095597\charrsid3637058 Fica assegurado ao (\''e0) }{\rtlch\fcs1 \af0 \ltrch\fcs0 '
    + '\b\insrsid4095597\charrsid3637058 EMITENTE/AVALISTA}{\rtlch\fcs1 \af0 \ltrch\fcs0 \insrsid4095597\charrsid3637058  o direito de liquidar antecipadamente o d\''e9bito contra\''eddo junto ao }{\rtlch\fcs1 \af0 \ltrch\fcs0 \b\insrsid4095597\charrsid3637058 '
    + 'CREDOR}{\rtlch\fcs1 \af0 \ltrch\fcs0 \insrsid4095597\charrsid3637058 , devendo o valor presente dos pagamentos previstos para fins de amortiza\''e7\''e3o ou liquida\''e7\''e3o antecipada das opera\''e7\''f5'
    + 'es contratadas ser determinado observando-se os termos da Resolu\''e7\''e3o BACEN 3.516/2007, observada as altera\''e7\''f5es dadas pela Resolu\''e7\''e3o 4.320/2014, como a seguir: a) o valor presente dos pagamentos previstos para fins de amortiza\''e7\''e3'
    + 'o ou liquida\''e7\''e3o antecipada da presente opera\''e7\''e3o, contratada a taxa prefixada, conforme item 1.4, dever\''e1 ser calculado com a utiliza\''e7\''e3o da referida taxa de juros.}{\rtlch\fcs1 \af0 \ltrch\fcs0 \insrsid4095597 '
    + '\par }\pard \ltrpar\qj \li0\ri0\widctlpar\wrapdefault\faauto\rin0\lin0\itap0\pararsid4095597 {\rtlch\fcs1 \ab\af0 \ltrch\fcs0 \b\insrsid4095597\charrsid14777924 XXI \endash  DAS DECLARA\''c7\''d5ES FINAIS DO EMITENTE E AVALISTA(S)'
    + '\par }\pard \ltrpar\qj \li0\ri0\sl-280\slmult0\widctlpar\wrapdefault\aspalpha\aspnum\faauto\adjustright\rin0\lin0\itap0\pararsid4095597 {\rtlch\fcs1 \ab\af0 \ltrch\fcs0 \b\insrsid4095597\charrsid14777924 '
    + 'O EMITENTE e o(s) AVALISTAS(S) declaram que: a) tomaram ci\''eancia e anu\''edram, previamente \''e0 emiss\''e3o desta C\''c9DULA, quanto \''e0 demonstra\''e7\''e3o do Custo Efetivo Total (CET) do financiamento/cr\''e9dito, veiculado pela C\''c9DULA, sendo que o c'
    + '\''e1lculo do CET, como demonstrado, tomou em considera\''e7\''e3o a libera\''e7\''e3o do cr\''e9dito e o fluxo dos pagamentos previstos, incluindo a taxa anual e efetiva de juros, tribut'
    + 'os, tarifas e despesas, b) compreenderam integralmente todo o significado e conte\''fado  da C\''c9DULA e que receberam suas vias da presente c\''e9dula para confer\''eancia e guarda, c) que}{\rtlch\fcs1 \af0 \ltrch\fcs0 \b\insrsid4095597\charrsid14777924 '
    + ' o presente neg\''f3cio se adequa plenamente \''e0s suas necessidades, interesses e objetivos; d) que o banco prestou-lhes todas as informa\''e7\''f5es necess\''e1rias para a(s) sua(s) livre escolha e tomada(s) de decis\''f5'
    + 'es, explicitando, inclusive, os seus direitos, deveres, responsabilidades, custos ou \''f4nus, penalidades e riscos existentes na execu\''e7\''e3o das opera\''e7\''f5es; e) que se comprometem a, sempre que houver altera\''e7\''f5'
    + 'es, informar ao CREDOR as atualiza\''e7\''f5es  dos seus dados cadastrais; f)  que se comprometem, a cada seis meses ou sempre que solicitado pelo CREDOR,  a atualizar os seus dados cadastrais, na sede da institui\''e7\''e3o ou perante o Correspondente Banc'
    + '\''e1rio.' +
    '\par }\pard \ltrpar\ql \li0\ri0\widctlpar\wrapdefault\aspalpha\aspnum\faauto\adjustright\rin0\lin0\itap0 {\rtlch\fcs1 \af0 \ltrch\fcs0 \insrsid3028979 '
    + '\par }';
  Contrato;
  AuxLinha := AuxLinha + auxiliar2;
  AuxStream := TStringStream.Create(AuxLinha);
  try
    QRRichText21.Lines.LoadFromStream(AuxStream);
  finally
    AuxStream.Free;
    AuxStream := nil;
  end;
end;

procedure TQRCedulaCreditoBancarioPF222.Contrato;
begin
  auxiliar2 :=
    '{\*\themedata 504b030414000600080000002100e9de0fbfff0000001c020000130000005b436f6e74656e745f54797065735d2e786d6cac91cb4ec3301045f748fc83e52d4a'
    + '9cb2400825e982c78ec7a27cc0c8992416c9d8b2a755fbf74cd25442a820166c2cd933f79e3be372bd1f07b5c3989ca74aaff2422b24eb1b475da5df374fd9ad'
    + '5689811a183c61a50f98f4babebc2837878049899a52a57be670674cb23d8e90721f90a4d2fa3802cb35762680fd800ecd7551dc18eb899138e3c943d7e503b6'
    + 'b01d583deee5f99824e290b4ba3f364eac4a430883b3c092d4eca8f946c916422ecab927f52ea42b89a1cd59c254f919b0e85e6535d135a8de20f20b8c12c3b0'
    + '0c895fcf6720192de6bf3b9e89ecdbd6596cbcdd8eb28e7c365ecc4ec1ff1460f53fe813d3cc7f5b7f020000ffff0300504b030414000600080000002100a5d6'
    + 'a7e7c0000000360100000b0000005f72656c732f2e72656c73848fcf6ac3300c87ef85bd83d17d51d2c31825762fa590432fa37d00e1287f68221bdb1bebdb4f'
    + 'c7060abb0884a4eff7a93dfeae8bf9e194e720169aaa06c3e2433fcb68e1763dbf7f82c985a4a725085b787086a37bdbb55fbc50d1a33ccd311ba548b6309512'
    + '0f88d94fbc52ae4264d1c910d24a45db3462247fa791715fd71f989e19e0364cd3f51652d73760ae8fa8c9ffb3c330cc9e4fc17faf2ce545046e37944c69e462'
    + 'a1a82fe353bd90a865aad41ed0b5b8f9d6fd010000ffff0300504b0304140006000800000021006b799616830000008a0000001c0000007468656d652f746865'
    + '6d652f7468656d654d616e616765722e786d6c0ccc4d0ac3201040e17da17790d93763bb284562b2cbaebbf600439c1a41c7a0d29fdbd7e5e38337cedf14d59b'
    + '4b0d592c9c070d8a65cd2e88b7f07c2ca71ba8da481cc52c6ce1c715e6e97818c9b48d13df49c873517d23d59085adb5dd20d6b52bd521ef2cdd5eb9246a3d8b'
    + '4757e8d3f729e245eb2b260a0238fd010000ffff0300504b0304140006000800000021003bce2a59b3060000b51b0000160000007468656d652f7468656d652f'
    + '7468656d65312e786d6cec594d6f1b4518be23f11f467b6f6d27761a4775aad8b11b68d346b15bd4e37877bc3bcdecce6a669cd437d41e9190100571a012370e'
    + '08a8d44a5cca899f12288222f52ff0ceccee7a27de34491b4105cda1f5ce3eeff7c7bc337bf9cabd98a17d2224e549c76b5cac7b88243e0f681276bc5ba3c185'
    + '550f49859300339e908e3723d2bbb2fefe7b97f19a8a484c10d027720d77bc48a974ad56933e2c637991a7248177132e62ace05184b540e003e01bb3da52bdbe'
    + '528b314d3c94e018d88e8006051cdd9c4ca84fbcf59c7d9f818c4449bde03331d4cc4946d397bea0ea972782724310ec35344cce648f09b48f59c70371013f18'
    + '917bca430c4b052f3a5eddfc79b5f5cb35bc961131750c6d896e60fe32ba8c20d85b323245382e843606cdf6a5cd82bf0130b588ebf7fbbd7ea3e06700d8f7c1'
    + '5cab4b996773b0dae8e63c4b20fb739177afdeaa375d7c89fff282ceed6eb7db6a67ba58a606647f3617f0abf595e6c6928337208b6f2de09bdd8d5e6fc5c11b'
    + '90c5af2ce00797da2b4d176f4011a3c9de025a077430c8b8179009675b95f05580afd633f81c05d950a4981631e1897a65c2c5f82e1703406934c38a2648cd52'
    + '32c13e64740fc76341b19682d7082ebdb14bbe5c58d202914eea5475bc0f530cd531e7f7f2d9f72f9f3d4187f79f1edeffe9f0c183c3fb3f5a460ed5164ec232'
    + 'd58b6f3ffbebd1c7e8cf27dfbc78f845355e96f1bffdf0c9af3f7f5e0d841a9aabf3fccbc7bf3f7dfcfcab4ffff8ee61057c43e071193ea23191e8063940bb3c'
    + '06c38c575ccdc9589c8d6214615aa6d848428913aca554f0efabc841df98619645c7d1a34b5c0fde16d043aa8057a7771d858791982a5a21f95a143bc06dce59'
    + '978b4a2f5cd3b24a6e1e4d93b05ab8989671bb18ef57c9eee1c4896f7f9a4207cdd3d231bc171147cd1d86138543921085f43bbe47488575772875fcba4d7dc1'
    + '259f287487a22ea6952e19d1b1934d73a22d1a435c66553643bc1ddf6cdf465dceaaacde24fb2e12aa02b30ae54784396ebc8aa70ac7552c47386665875fc72a'
    + 'aa527238137e19d7970a221d12c6513f205256d1dc14606f29e8d730b4adcab06fb359ec2285a27b553caf63cecbc84dbed78b709c5661873489cad80fe41ea4'
    + '28463b5c55c1b7b95b21fa19e2809363c37d9b1227dc2777835b3474549a27887e331515b1bc4ab893bfc3199b60625a0d7476a757c7347955e366143ab79570'
    + '7e8d1b5ae5f3af1f55e8fdb6b6ec0dd8bdaa6a66eb48a33e0e77b43df7b808e8dbdf9d37f134d92150108b5bd4bbe6fcae397bfff9e67c5c3d9f7f4b9e776168'
    + 'd07a16b1d3b699bde3578fde13cad850cd18b92ecdf42d61030a06b0a889cd119414e7b134829fba9c418a830b0536344870f51155d130c2294cee0d4f330965'
    + 'c63a9428e5128e8d66b992b7c6c3f4afeca1b3a58f23b67d48acb679609797f5727eea28d818ad4273becd052d6b06a715b67c29630ab6bd8eb08656ead4d21a'
    + '4635d3191d6985c9dac5e68c0e2e2f4c83c5c29b30d9209887c0cb2b7009a045c38907331268bfdb18e561315138cf10c90807248b91b67b31460d13a43c5716'
    + '0cd176d864d047c813bc5692d6d66cdf40da69825416d73c465c1ebd3789529ec1f32801b7a3e5c8927271b2041d74bc766ba9e5211fa71d6f028765f819a710'
    + '75a98749cc42b87df295b0697f62319b2a9f47b39d1be61641032e41acdf170c76fa402aa4dac432b2a9615e6529c0122dc9eabfd402b79e970115dde8745a2c'
    + 'af4232fc6b5a801fddd092c984f8aa1cecd28af69d7dcc5a299f2a2286517080c66c2a7631845fa72ad8135009771ea623e807b8a5d3de36afdce69c155df96e'
    + 'cce0ec3a666984b376ab4b34af640b370da9d0c13c95d403db2a7537c69ddd1453f2e7644a398dff67a6e8fd04ae2096031d011fee8a0546ba523a1e172ae2d0'
    + '85d288fa0301d383e91d902d70d30baf21a9e0c6dafc2fc8befedfd69ce561ca1a4e926a97864850d88f542408d981b664b2ef04668d6cefb22c59c6c8645449'
    + '5d995ab5c7649fb091ee812b7a6ff75004a96eba49d6060cee68feb9cf59058d433de494ebcde964c5de6b6be09f9e7c6c3183516e1f36034deeff42c5623c98'
    + 'efaa96de90e77b6fd910fd623e6635f3aa0061a5ada09d95fd6baa70c6add676ac058b975ab97210c5458b61b1188852b84842fa1fd8ffa8f099fdf8a137d411'
    + 'df85de8ae0338666066903597dc10e1e483748bb3886c1c92eda64d2acac6bb3d1497b2ddfaccf79d22de41e71b6d6ec34f13ea3b38be1cc15e7d4e2793a3bf3'
    + 'b0e36bbb76acab21b2474b149626f969c604c67c372b7fd8e2e3bb10e84df87030654a9a64822f5602c30c3d347500c56f251ad2f5bf010000ffff0300504b03'
    + '04140006000800000021000dd1909fb60000001b010000270000007468656d652f7468656d652f5f72656c732f7468656d654d616e616765722e786d6c2e7265'
    + '6c73848f4d0ac2301484f78277086f6fd3ba109126dd88d0add40384e4350d363f2451eced0dae2c082e8761be9969bb979dc9136332de3168aa1a083ae99571'
    + '9ac16db8ec8e4052164e89d93b64b060828e6f37ed1567914b284d262452282e3198720e274a939cd08a54f980ae38a38f56e422a3a641c8bbd048f7757da0f1'
    + '9b017cc524bd62107bd5001996509affb3fd381a89672f1f165dfe514173d9850528a2c6cce0239baa4c04ca5bbabac4df000000ffff0300504b01022d001400'
    + '0600080000002100e9de0fbfff0000001c0200001300000000000000000000000000000000005b436f6e74656e745f54797065735d2e786d6c504b01022d0014'
    + '000600080000002100a5d6a7e7c0000000360100000b00000000000000000000000000300100005f72656c732f2e72656c73504b01022d001400060008000000'
    + '21006b799616830000008a0000001c00000000000000000000000000190200007468656d652f7468656d652f7468656d654d616e616765722e786d6c504b0102'
    + '2d00140006000800000021003bce2a59b3060000b51b00001600000000000000000000000000d60200007468656d652f7468656d652f7468656d65312e786d6c'
    + '504b01022d00140006000800000021000dd1909fb60000001b0100002700000000000000000000000000bd0900007468656d652f7468656d652f5f72656c732f7468656d654d616e616765722e786d6c2e72656c73504b050600000000050005005d010000b80a00000000}'
    + '{\*\colorschememapping 3c3f786d6c2076657273696f6e3d22312e302220656e636f64696e673d225554462d3822207374616e64616c6f6e653d22796573223f3e0d0a3c613a636c724d'
    + '617020786d6c6e733a613d22687474703a2f2f736368656d61732e6f70656e786d6c666f726d6174732e6f72672f64726177696e676d6c2f323030362f6d6169'
    + '6e22206267313d226c743122207478313d22646b3122206267323d226c743222207478323d22646b322220616363656e74313d22616363656e74312220616363'
    + '656e74323d22616363656e74322220616363656e74333d22616363656e74332220616363656e74343d22616363656e74342220616363656e74353d22616363656e74352220616363656e74363d22616363656e74362220686c696e6b3d22686c696e6b2220666f6c486c696e6b3d22666f6c486c696e6b222f3e}'
    + '{\*\latentstyles\lsdstimax267\lsdlockeddef0\lsdsemihiddendef1\lsdunhideuseddef1\lsdqformatdef0\lsdprioritydef99{\lsdlockedexcept \lsdsemihidden0 \lsdunhideused0 \lsdqformat1 \lsdpriority0 \lsdlocked0 Normal;'
    + '\lsdsemihidden0 \lsdunhideused0 \lsdqformat1 \lsdpriority9 \lsdlocked0 heading 1;\lsdqformat1 \lsdpriority9 \lsdlocked0 heading 2;\lsdqformat1 \lsdpriority9 \lsdlocked0 heading 3;\lsdqformat1 \lsdpriority9 \lsdlocked0 heading 4;'
    + '\lsdqformat1 \lsdpriority9 \lsdlocked0 heading 5;\lsdqformat1 \lsdpriority9 \lsdlocked0 heading 6;\lsdqformat1 \lsdpriority9 \lsdlocked0 heading 7;\lsdqformat1 \lsdpriority9 \lsdlocked0 heading 8;\lsdqformat1 \lsdpriority9 \lsdlocked0 heading 9;'
    + '\lsdpriority39 \lsdlocked0 toc 1;\lsdpriority39 \lsdlocked0 toc 2;\lsdpriority39 \lsdlocked0 toc 3;\lsdpriority39 \lsdlocked0 toc 4;\lsdpriority39 \lsdlocked0 toc 5;\lsdpriority39 \lsdlocked0 toc 6;\lsdpriority39 \lsdlocked0 toc 7;'
    + '\lsdpriority39 \lsdlocked0 toc 8;\lsdpriority39 \lsdlocked0 toc 9;\lsdqformat1 \lsdpriority35 \lsdlocked0 caption;\lsdsemihidden0 \lsdunhideused0 \lsdqformat1 \lsdpriority10 \lsdlocked0 Title;\lsdpriority1 \lsdlocked0 Default Paragraph Font;'
    + '\lsdsemihidden0 \lsdunhideused0 \lsdqformat1 \lsdpriority11 \lsdlocked0 Subtitle;\lsdsemihidden0 \lsdunhideused0 \lsdqformat1 \lsdpriority22 \lsdlocked0 Strong;\lsdsemihidden0 \lsdunhideused0 \lsdqformat1 \lsdpriority20 \lsdlocked0 Emphasis;'
    + '\lsdsemihidden0 \lsdunhideused0 \lsdpriority59 \lsdlocked0 Table Grid;\lsdunhideused0 \lsdlocked0 Placeholder Text;\lsdsemihidden0 \lsdunhideused0 \lsdqformat1 \lsdpriority1 \lsdlocked0 No Spacing;'
    + '\lsdsemihidden0 \lsdunhideused0 \lsdpriority60 \lsdlocked0 Light Shading;\lsdsemihidden0 \lsdunhideused0 \lsdpriority61 \lsdlocked0 Light List;\lsdsemihidden0 \lsdunhideused0 \lsdpriority62 \lsdlocked0 Light Grid;'
    + '\lsdsemihidden0 \lsdunhideused0 \lsdpriority63 \lsdlocked0 Medium Shading 1;\lsdsemihidden0 \lsdunhideused0 \lsdpriority64 \lsdlocked0 Medium Shading 2;\lsdsemihidden0 \lsdunhideused0 \lsdpriority65 \lsdlocked0 Medium List 1;'
    + '\lsdsemihidden0 \lsdunhideused0 \lsdpriority66 \lsdlocked0 Medium List 2;\lsdsemihidden0 \lsdunhideused0 \lsdpriority67 \lsdlocked0 Medium Grid 1;\lsdsemihidden0 \lsdunhideused0 \lsdpriority68 \lsdlocked0 Medium Grid 2;'
    + '\lsdsemihidden0 \lsdunhideused0 \lsdpriority69 \lsdlocked0 Medium Grid 3;\lsdsemihidden0 \lsdunhideused0 \lsdpriority70 \lsdlocked0 Dark List;\lsdsemihidden0 \lsdunhideused0 \lsdpriority71 \lsdlocked0 Colorful Shading;'
    + '\lsdsemihidden0 \lsdunhideused0 \lsdpriority72 \lsdlocked0 Colorful List;\lsdsemihidden0 \lsdunhideused0 \lsdpriority73 \lsdlocked0 Colorful Grid;\lsdsemihidden0 \lsdunhideused0 \lsdpriority60 \lsdlocked0 Light Shading Accent 1;'
    + '\lsdsemihidden0 \lsdunhideused0 \lsdpriority61 \lsdlocked0 Light List Accent 1;\lsdsemihidden0 \lsdunhideused0 \lsdpriority62 \lsdlocked0 Light Grid Accent 1;\lsdsemihidden0 \lsdunhideused0 \lsdpriority63 \lsdlocked0 Medium Shading 1 Accent 1;'
    + '\lsdsemihidden0 \lsdunhideused0 \lsdpriority64 \lsdlocked0 Medium Shading 2 Accent 1;\lsdsemihidden0 \lsdunhideused0 \lsdpriority65 \lsdlocked0 Medium List 1 Accent 1;\lsdunhideused0 \lsdlocked0 Revision;'
    + '\lsdsemihidden0 \lsdunhideused0 \lsdqformat1 \lsdpriority34 \lsdlocked0 List Paragraph;\lsdsemihidden0 \lsdunhideused0 \lsdqformat1 \lsdpriority29 \lsdlocked0 Quote;\lsdsemihidden0 \lsdunhideused0 \lsdqformat1 \lsdpriority30 \lsdlocked0 Intense Quote;'
    + '\lsdsemihidden0 \lsdunhideused0 \lsdpriority66 \lsdlocked0 Medium List 2 Accent 1;\lsdsemihidden0 \lsdunhideused0 \lsdpriority67 \lsdlocked0 Medium Grid 1 Accent 1;\lsdsemihidden0 \lsdunhideused0 \lsdpriority68 \lsdlocked0 Medium Grid 2 Accent 1;'
    + '\lsdsemihidden0 \lsdunhideused0 \lsdpriority69 \lsdlocked0 Medium Grid 3 Accent 1;\lsdsemihidden0 \lsdunhideused0 \lsdpriority70 \lsdlocked0 Dark List Accent 1;\lsdsemihidden0 \lsdunhideused0 \lsdpriority71 \lsdlocked0 Colorful Shading Accent 1;'
    + '\lsdsemihidden0 \lsdunhideused0 \lsdpriority72 \lsdlocked0 Colorful List Accent 1;\lsdsemihidden0 \lsdunhideused0 \lsdpriority73 \lsdlocked0 Colorful Grid Accent 1;\lsdsemihidden0 \lsdunhideused0 \lsdpriority60 \lsdlocked0 Light Shading Accent 2;'
    + '\lsdsemihidden0 \lsdunhideused0 \lsdpriority61 \lsdlocked0 Light List Accent 2;\lsdsemihidden0 \lsdunhideused0 \lsdpriority62 \lsdlocked0 Light Grid Accent 2;\lsdsemihidden0 \lsdunhideused0 \lsdpriority63 \lsdlocked0 Medium Shading 1 Accent 2;'
    + '\lsdsemihidden0 \lsdunhideused0 \lsdpriority64 \lsdlocked0 Medium Shading 2 Accent 2;\lsdsemihidden0 \lsdunhideused0 \lsdpriority65 \lsdlocked0 Medium List 1 Accent 2;\lsdsemihidden0 \lsdunhideused0 \lsdpriority66 \lsdlocked0 Medium List 2 Accent 2;'
    + '\lsdsemihidden0 \lsdunhideused0 \lsdpriority67 \lsdlocked0 Medium Grid 1 Accent 2;\lsdsemihidden0 \lsdunhideused0 \lsdpriority68 \lsdlocked0 Medium Grid 2 Accent 2;\lsdsemihidden0 \lsdunhideused0 \lsdpriority69 \lsdlocked0 Medium Grid 3 Accent 2;'
    + '\lsdsemihidden0 \lsdunhideused0 \lsdpriority70 \lsdlocked0 Dark List Accent 2;\lsdsemihidden0 \lsdunhideused0 \lsdpriority71 \lsdlocked0 Colorful Shading Accent 2;\lsdsemihidden0 \lsdunhideused0 \lsdpriority72 \lsdlocked0 Colorful List Accent 2;'
    + '\lsdsemihidden0 \lsdunhideused0 \lsdpriority73 \lsdlocked0 Colorful Grid Accent 2;\lsdsemihidden0 \lsdunhideused0 \lsdpriority60 \lsdlocked0 Light Shading Accent 3;\lsdsemihidden0 \lsdunhideused0 \lsdpriority61 \lsdlocked0 Light List Accent 3;'
    + '\lsdsemihidden0 \lsdunhideused0 \lsdpriority62 \lsdlocked0 Light Grid Accent 3;\lsdsemihidden0 \lsdunhideused0 \lsdpriority63 \lsdlocked0 Medium Shading 1 Accent 3;\lsdsemihidden0 \lsdunhideused0 \lsdpriority64 \lsdlocked0 Medium Shading 2 Accent 3;'
    + '\lsdsemihidden0 \lsdunhideused0 \lsdpriority65 \lsdlocked0 Medium List 1 Accent 3;\lsdsemihidden0 \lsdunhideused0 \lsdpriority66 \lsdlocked0 Medium List 2 Accent 3;\lsdsemihidden0 \lsdunhideused0 \lsdpriority67 \lsdlocked0 Medium Grid 1 Accent 3;'
    + '\lsdsemihidden0 \lsdunhideused0 \lsdpriority68 \lsdlocked0 Medium Grid 2 Accent 3;\lsdsemihidden0 \lsdunhideused0 \lsdpriority69 \lsdlocked0 Medium Grid 3 Accent 3;\lsdsemihidden0 \lsdunhideused0 \lsdpriority70 \lsdlocked0 Dark List Accent 3;'
    + '\lsdsemihidden0 \lsdunhideused0 \lsdpriority71 \lsdlocked0 Colorful Shading Accent 3;\lsdsemihidden0 \lsdunhideused0 \lsdpriority72 \lsdlocked0 Colorful List Accent 3;\lsdsemihidden0 \lsdunhideused0 \lsdpriority73 \lsdlocked0 Colorful Grid Accent 3;'
    + '\lsdsemihidden0 \lsdunhideused0 \lsdpriority60 \lsdlocked0 Light Shading Accent 4;\lsdsemihidden0 \lsdunhideused0 \lsdpriority61 \lsdlocked0 Light List Accent 4;\lsdsemihidden0 \lsdunhideused0 \lsdpriority62 \lsdlocked0 Light Grid Accent 4;'
    + '\lsdsemihidden0 \lsdunhideused0 \lsdpriority63 \lsdlocked0 Medium Shading 1 Accent 4;\lsdsemihidden0 \lsdunhideused0 \lsdpriority64 \lsdlocked0 Medium Shading 2 Accent 4;\lsdsemihidden0 \lsdunhideused0 \lsdpriority65 \lsdlocked0 Medium List 1 Accent 4;'
    + '\lsdsemihidden0 \lsdunhideused0 \lsdpriority66 \lsdlocked0 Medium List 2 Accent 4;\lsdsemihidden0 \lsdunhideused0 \lsdpriority67 \lsdlocked0 Medium Grid 1 Accent 4;\lsdsemihidden0 \lsdunhideused0 \lsdpriority68 \lsdlocked0 Medium Grid 2 Accent 4;'
    + '\lsdsemihidden0 \lsdunhideused0 \lsdpriority69 \lsdlocked0 Medium Grid 3 Accent 4;\lsdsemihidden0 \lsdunhideused0 \lsdpriority70 \lsdlocked0 Dark List Accent 4;\lsdsemihidden0 \lsdunhideused0 \lsdpriority71 \lsdlocked0 Colorful Shading Accent 4;'
    + '\lsdsemihidden0 \lsdunhideused0 \lsdpriority72 \lsdlocked0 Colorful List Accent 4;\lsdsemihidden0 \lsdunhideused0 \lsdpriority73 \lsdlocked0 Colorful Grid Accent 4;\lsdsemihidden0 \lsdunhideused0 \lsdpriority60 \lsdlocked0 Light Shading Accent 5;'
    + '\lsdsemihidden0 \lsdunhideused0 \lsdpriority61 \lsdlocked0 Light List Accent 5;\lsdsemihidden0 \lsdunhideused0 \lsdpriority62 \lsdlocked0 Light Grid Accent 5;\lsdsemihidden0 \lsdunhideused0 \lsdpriority63 \lsdlocked0 Medium Shading 1 Accent 5;'
    + '\lsdsemihidden0 \lsdunhideused0 \lsdpriority64 \lsdlocked0 Medium Shading 2 Accent 5;\lsdsemihidden0 \lsdunhideused0 \lsdpriority65 \lsdlocked0 Medium List 1 Accent 5;\lsdsemihidden0 \lsdunhideused0 \lsdpriority66 \lsdlocked0 Medium List 2 Accent 5;'
    + '\lsdsemihidden0 \lsdunhideused0 \lsdpriority67 \lsdlocked0 Medium Grid 1 Accent 5;\lsdsemihidden0 \lsdunhideused0 \lsdpriority68 \lsdlocked0 Medium Grid 2 Accent 5;\lsdsemihidden0 \lsdunhideused0 \lsdpriority69 \lsdlocked0 Medium Grid 3 Accent 5;'
    + '\lsdsemihidden0 \lsdunhideused0 \lsdpriority70 \lsdlocked0 Dark List Accent 5;\lsdsemihidden0 \lsdunhideused0 \lsdpriority71 \lsdlocked0 Colorful Shading Accent 5;\lsdsemihidden0 \lsdunhideused0 \lsdpriority72 \lsdlocked0 Colorful List Accent 5;'
    + '\lsdsemihidden0 \lsdunhideused0 \lsdpriority73 \lsdlocked0 Colorful Grid Accent 5;\lsdsemihidden0 \lsdunhideused0 \lsdpriority60 \lsdlocked0 Light Shading Accent 6;\lsdsemihidden0 \lsdunhideused0 \lsdpriority61 \lsdlocked0 Light List Accent 6;'
    + '\lsdsemihidden0 \lsdunhideused0 \lsdpriority62 \lsdlocked0 Light Grid Accent 6;\lsdsemihidden0 \lsdunhideused0 \lsdpriority63 \lsdlocked0 Medium Shading 1 Accent 6;\lsdsemihidden0 \lsdunhideused0 \lsdpriority64 \lsdlocked0 Medium Shading 2 Accent 6;'
    + '\lsdsemihidden0 \lsdunhideused0 \lsdpriority65 \lsdlocked0 Medium List 1 Accent 6;\lsdsemihidden0 \lsdunhideused0 \lsdpriority66 \lsdlocked0 Medium List 2 Accent 6;\lsdsemihidden0 \lsdunhideused0 \lsdpriority67 \lsdlocked0 Medium Grid 1 Accent 6;'
    + '\lsdsemihidden0 \lsdunhideused0 \lsdpriority68 \lsdlocked0 Medium Grid 2 Accent 6;\lsdsemihidden0 \lsdunhideused0 \lsdpriority69 \lsdlocked0 Medium Grid 3 Accent 6;\lsdsemihidden0 \lsdunhideused0 \lsdpriority70 \lsdlocked0 Dark List Accent 6;'
    + '\lsdsemihidden0 \lsdunhideused0 \lsdpriority71 \lsdlocked0 Colorful Shading Accent 6;\lsdsemihidden0 \lsdunhideused0 \lsdpriority72 \lsdlocked0 Colorful List Accent 6;\lsdsemihidden0 \lsdunhideused0 \lsdpriority73 \lsdlocked0 Colorful Grid Accent 6;'
    + '\lsdsemihidden0 \lsdunhideused0 \lsdqformat1 \lsdpriority19 \lsdlocked0 Subtle Emphasis;\lsdsemihidden0 \lsdunhideused0 \lsdqformat1 \lsdpriority21 \lsdlocked0 Intense Emphasis;'
    + '\lsdsemihidden0 \lsdunhideused0 \lsdqformat1 \lsdpriority31 \lsdlocked0 Subtle Reference;\lsdsemihidden0 \lsdunhideused0 \lsdqformat1 \lsdpriority32 \lsdlocked0 Intense Reference;'
    + '\lsdsemihidden0 \lsdunhideused0 \lsdqformat1 \lsdpriority33 \lsdlocked0 Book Title;\lsdpriority37 \lsdlocked0 Bibliography;\lsdqformat1 \lsdpriority39 \lsdlocked0 TOC Heading;}}{\*\datastore 010500000200000018000000'
    + '4d73786d6c322e534158584d4c5265616465722e362e3000000000000000000000060000'
    + 'd0cf11e0a1b11ae1000000000000000000000000000000003e000300feff090006000000000000000000000001000000010000000000000000100000feffffff00000000feffffff0000000000000000ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff'
    + 'ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff'
    + 'ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff'
    + 'ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff'
    + 'fffffffffffffffffdfffffffeffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff'
    + 'ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff'
    + 'ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff'
    + 'ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff'
    + 'ffffffffffffffffffffffffffffffff52006f006f007400200045006e00740072007900000000000000000000000000000000000000000000000000000000000000000000000000000000000000000016000500ffffffffffffffffffffffff0c6ad98892f1d411a65f0040963251e5000000000000000000000000d033'
    + '7ba638ccce01feffffff00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ffffffffffffffffffffffff00000000000000000000000000000000000000000000000000000000'
    + '00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ffffffffffffffffffffffff0000000000000000000000000000000000000000000000000000'
    + '000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ffffffffffffffffffffffff000000000000000000000000000000000000000000000000'
    + '0000000000000000000000000000000000000000000000000105000000000000}}';
end;

constructor TQRCedulaCreditoBancarioPF222.Create(AOwner: TComponent;
  Origem: Integer = 0);
begin
  CreateNew(AOwner);
  if (ClassType <> TCustomQuickRep) and not(csDesigning in ComponentState) then
    InitInheritedComponent(Self, TCustomQuickRep);
  frmOrigem := Origem;
end;

end.
