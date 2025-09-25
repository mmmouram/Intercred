unit UQRCedulaCreditoBancarioPJnovo222;

interface

uses SysUtils, QuickRpt, QRCtrls, DB, DBTables, QRExport, Classes, Graphics,
     Controls, ExtCtrls, jpeg, ADODB, UFrmmaster;

type
  TQRCedulaCreditoBancarioPJnovo222 = class(TQuickRep)
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
    QRLabel52: TQRLabel;
    QRLabel48: TQRLabel;
    QRTextFilter1: TQRTextFilter;
    QRLabel138: TQRLabel;
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
    QRLblComissao: TQRLabel;
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
    QRLabel100: TQRLabel;
    QRLabel114: TQRLabel;
    QRLabel120: TQRLabel;
    QRLabel136: TQRLabel;
    QRLabel147: TQRLabel;
    QRLabel150: TQRLabel;
    QRLabel153: TQRLabel;
    QRLabel155: TQRLabel;
    QRLabel157: TQRLabel;
    QRLabel159: TQRLabel;
    QRLabel160: TQRLabel;
    QRLabel161: TQRLabel;
    QRLabel162: TQRLabel;
    QRLabel163: TQRLabel;
    QRLabel164: TQRLabel;
    QRLabel165: TQRLabel;
    QRLabel166: TQRLabel;
    QRLabel167: TQRLabel;
    QRLabel168: TQRLabel;
    QRLabel169: TQRLabel;
    QRLabel170: TQRLabel;
    QRLabel171: TQRLabel;
    QRLabel172: TQRLabel;
    QRLabel173: TQRLabel;
    QRShape40: TQRShape;
    QRLabel174: TQRLabel;
    QRLabel175: TQRLabel;
    QRLabel176: TQRLabel;
    QRLabel177: TQRLabel;
    QRLabel178: TQRLabel;
    QRLabel179: TQRLabel;
    QRLabel180: TQRLabel;
    QRLabel181: TQRLabel;
    QRLabel182: TQRLabel;
    QRLabel183: TQRLabel;
    QRLabel184: TQRLabel;
    QRLabel185: TQRLabel;
    QRLabel186: TQRLabel;
    QRLabel187: TQRLabel;
    QRLabel188: TQRLabel;
    QRLabel189: TQRLabel;
    QRLabel190: TQRLabel;
    QRLabel191: TQRLabel;
    QRLabel192: TQRLabel;
    QRLabel193: TQRLabel;
    QRLabel194: TQRLabel;
    QRLabel195: TQRLabel;
    QRLabel196: TQRLabel;
    QRLabel197: TQRLabel;
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
    QRLabel22: TQRLabel;
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
    QRLabel34: TQRLabel;
    QRShape5: TQRShape;
    qrlCredor: TQRLabel;
    qrlEmitente: TQRLabel;
    QRLabel133: TQRLabel;
    QRLabel134: TQRLabel;
    QRLblDia: TQRLabel;
    QRLblMes: TQRLabel;
    QRLblAno: TQRLabel;
    QRLabel101: TQRLabel;
    QRLabel122: TQRLabel;
    QRLabel127: TQRLabel;
    QRLabel126: TQRLabel;
    QRLabel131: TQRLabel;
    QRLabel132: TQRLabel;
    QRLabel129: TQRLabel;
    QRLabel128: TQRLabel;
    QRLabel130: TQRLabel;
    QRLabel124: TQRLabel;
    QRLabel24: TQRLabel;
    QRShape4: TQRShape;
    QRLabel105: TQRLabel;
    QRLabel135: TQRLabel;
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
    procedure ChildBand2AfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
    procedure QuickRepStartPage(Sender: TCustomQuickRep);
    procedure QuickRepBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    constructor Create(AOwner : TComponent; Origem: Integer = 0);
    procedure QRBand5BeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
    procedure QRBand2BeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);


  private
     visualizou : Boolean;
     frmOrigem : Integer;
     procedure Contrato;
  public

  end;

var
  QRCedulaCreditoBancarioPJnovo222: TQRCedulaCreditoBancarioPJnovo222;
  auxiliar2,auxiliar1 : string;
  cont:integer;
implementation

 Uses UUtil, UExtenso, UFrmCadEmprestimoSimulacao, UDMDados,
      Dialogs, Windows, Forms, UQRCedulaCreditoBancarioPJ222;
{$R *.DFM}

procedure TQRCedulaCreditoBancarioPJnovo222.QRDBTextValor3Print(sender: TObject; var Value: String);
begin
 if (ADOContratoCedulaValor3.AsFloat = 0) Then
    value := '';
end;

procedure TQRCedulaCreditoBancarioPJnovo222.QRLabel62Print(sender: TObject;
  var Value: String);
begin
    if (ADOPrimeiroAvalista.Active) then
    Value := ADOPrimeiroAvalistaNome.AsString
    else Value := '';
end;

procedure TQRCedulaCreditoBancarioPJnovo222.QRLabel63Print(sender: TObject;
  var Value: String);
begin
    if (ADOPrimeiroAvalista.Active) then
      Value := ADOPrimeiroAvalistaEndereco.AsString +' '+ADOPrimeiroAvalistaEnderecoNumero.AsString +' '+ ADOPrimeiroAvalistaEnderecoComplemento.AsString
    else Value := '';
end;

procedure TQRCedulaCreditoBancarioPJnovo222.QRLabel64Print(sender: TObject;
  var Value: String);
begin
    if (ADOPrimeiroAvalista.Active) then
    Value := FormataCPFCNPJ(ADOPrimeiroAvalistaInscricaoAvalista.AsString)
    else Value := '';
end;

procedure TQRCedulaCreditoBancarioPJnovo222.QRLabel65Print(sender: TObject;
  var Value: String);
begin
    if (ADOPrimeiroAvalista.Active) then
    Value := ADOPrimeiroAvalistaEstadoCivil.AsString
    else Value := '';
end;

procedure TQRCedulaCreditoBancarioPJnovo222.QRLabel66Print(sender: TObject;
  var Value: String);
begin
    if (ADOPrimeiroAvalista.Active) then
    Value := ADOPrimeiroAvalistaNacionalidade.AsString
    else Value := '';
end;

procedure TQRCedulaCreditoBancarioPJnovo222.QRLabel67Print(sender: TObject;
  var Value: String);
begin
    if (ADOPrimeiroAvalista.Active) then
    Value := ADOPrimeiroAvalistaIdentidade.AsString
    else Value := '';
end;

procedure TQRCedulaCreditoBancarioPJnovo222.QRLabel68Print(sender: TObject;
  var Value: String);
begin
    if (ADOPrimeiroAvalista.Active) then
    Value := ADOPrimeiroAvalistaNaturalidade.AsString
    else Value := '';
end;

procedure TQRCedulaCreditoBancarioPJnovo222.QRLabel69Print(sender: TObject;
  var Value: String);
begin
    if (ADOPrimeiroAvalista.Active) then
    Value := ADOPrimeiroAvalistaProfissao.AsString
    else Value := '';
end;

procedure TQRCedulaCreditoBancarioPJnovo222.QRLabel70Print(sender: TObject;
  var Value: String);
begin
    if (ADOSegundoAvalista.Active) then
    Value := ADOSegundoAvalistaNome.AsString
    else Value := '';
end;

procedure TQRCedulaCreditoBancarioPJnovo222.QRLabel71Print(sender: TObject;
  var Value: String);
begin
    if (ADOSegundoAvalista.Active) then
      Value := ADOSegundoAvalistaEndereco.AsString +' '+ ADOSegundoAvalistaEnderecoNumero.AsString +' '+ ADOSegundoAvalistaEnderecoComplemento.AsString
    else Value := '';
end;

procedure TQRCedulaCreditoBancarioPJnovo222.QRLabel72Print(sender: TObject;
  var Value: String);
begin
    if (ADOSegundoAvalista.Active) then
    Value := FormataCPFCNPJ(ADOSegundoAvalistaInscricaoAvalista.AsString)
    else Value := '';
end;

procedure TQRCedulaCreditoBancarioPJnovo222.QRLabel73Print(sender: TObject;
  var Value: String);
begin
    if (ADOSegundoAvalista.Active) then
    Value := ADOSegundoAvalistaEstadoCivil.AsString
    else Value := '';
end;

procedure TQRCedulaCreditoBancarioPJnovo222.QRLabel74Print(sender: TObject;
  var Value: String);
begin
    if (ADOSegundoAvalista.Active) then
    Value := ADOSegundoAvalistaNacionalidade.AsString
    else Value := '';
end;

procedure TQRCedulaCreditoBancarioPJnovo222.QRLabel75Print(sender: TObject;
  var Value: String);
begin
    if (ADOSegundoAvalista.Active) then
    Value := ADOSegundoAvalistaIdentidade.AsString
    else Value := '';
end;

procedure TQRCedulaCreditoBancarioPJnovo222.QRLabel76Print(sender: TObject;
  var Value: String);
begin
    if (ADOSegundoAvalista.Active) then
    Value := ADOSegundoAvalistaNaturalidade.AsString
    else Value := '';
end;

procedure TQRCedulaCreditoBancarioPJnovo222.QRLabel77Print(sender: TObject;
  var Value: String);
begin
    if (ADOSegundoAvalista.Active) then
    Value := ADOSegundoAvalistaProfissao.AsString
    else Value := '';
end;

procedure TQRCedulaCreditoBancarioPJnovo222.QRLabel83Print(sender: TObject;
  var Value: String);
begin
  if (ADOSegundoAvalista.Active) then
  begin
    if (ADOSegundoAvalistaCep.AsString <> '') Then
      Value := FormatFloat('00000-000',StrToInt64(ADOSegundoAvalistaCep.AsString))
    else
    Value := '';
  end else
  Value := '';
end;

procedure TQRCedulaCreditoBancarioPJnovo222.QRLabel88Print(sender: TObject;
  var Value: String);
begin
  if (ADOPrimeiroAvalista.Active) then
  begin
    if (ADOPrimeiroAvalistaCep.AsString <> '') then
      Value := FormatFloat('00000-000',StrToInt64(ADOPrimeiroAvalistaCep.AsString))
    else
    Value := '';
  end else
  Value := '';
end;

procedure TQRCedulaCreditoBancarioPJnovo222.QRLabel90Print(sender: TObject;
  var Value: String);
begin
    if (ADOPrimeiroAvalista.Active) then
    Value := ADOPrimeiroAvalistaBairro.AsString
    else Value := '';
end;

procedure TQRCedulaCreditoBancarioPJnovo222.QRLabel92Print(sender: TObject;
  var Value: String);
begin
    if (ADOPrimeiroAvalista.Active) then
    Value :=  ADOPrimeiroAvalistaCidade.AsString
    else Value := '';
end;

procedure TQRCedulaCreditoBancarioPJnovo222.QRLabel94Print(sender: TObject;
  var Value: String);
begin
    if (ADOPrimeiroAvalista.Active) then
    Value := ADOPrimeiroAvalistaEstado.AsString
    else Value := '';
end;

procedure TQRCedulaCreditoBancarioPJnovo222.QRLabel84Print(sender: TObject;
  var Value: String);
begin
    if (ADOSegundoAvalista.Active) then
    Value := ADOSegundoAvalistaBairro.AsString
    else Value := '';
end;

procedure TQRCedulaCreditoBancarioPJnovo222.QRLabel85Print(sender: TObject;
  var Value: String);
begin
    if (ADOSegundoAvalista.Active) then
    Value := ADOSegundoAvalistaCidade.AsString
    else Value := '';
end;

procedure TQRCedulaCreditoBancarioPJnovo222.QRLabel86Print(sender: TObject;
  var Value: String);
begin
    if (ADOSegundoAvalista.Active) then
    Value := ADOSegundoAvalistaEstado.AsString
    else Value := '';
end;

procedure TQRCedulaCreditoBancarioPJnovo222.QRDBTextValor1Print(sender: TObject;
  var Value: String);
begin
  if (ADOContratoCedulaValor1.AsFloat = 0) Then
    value := '';
end;

procedure TQRCedulaCreditoBancarioPJnovo222.QRDBTextValor2Print(sender: TObject;
  var Value: String);
begin
 if (ADOContratoCedulaValor2.AsFloat = 0) Then
    value := '';
end;

procedure TQRCedulaCreditoBancarioPJnovo222.QRDBText18Print(sender: TObject;
  var Value: String);
begin
  if (ADOPrimeiroAvalista.Active) then
  begin
    If (ADOPrimeiroAvalistaTelefone.AsString <> '') Then
    Begin
      Value := '( '+ADOPrimeiroAvalistaDDD.AsString+' )-';
      Value := Value+' '+ADOPrimeiroAvalistaTelefone.AsString;
    end;
  end else
  value := '';

end;

procedure TQRCedulaCreditoBancarioPJnovo222.QRDBText16Print(sender: TObject;
  var Value: String);
begin
  if (ADOPrimeiroAvalista.Active) then
  begin
    if (ADOPrimeiroAvalistaInscricaoAvalista.AsString = 'CPF') then
      Value := FormataCPFCNPJ(ADOPrimeiroAvalistaInscricaoAvalista.AsString)
    else
      Value := FormataCPFCNPJ(ADOPrimeiroAvalistaInscricaoAvalista.AsString);
  end else
  value := '';
end;

procedure TQRCedulaCreditoBancarioPJnovo222.QRDBText17Print(sender: TObject;
  var Value: String);
begin
  if (ADOPrimeiroAvalista.Active) then
  begin
    Value := ADOPrimeiroAvalistaEndereco.AsString;
    if (ADOPrimeiroAvalistaBairro.AsString <> '') then
      Value := Value+'  '+ADOPrimeiroAvalistaBairro.AsString;

    if (ADOPrimeiroAvalistaCidade.AsString <> '') Then
       Value := Value+'  '+ADOPrimeiroAvalistaCidade.AsString;
    if (ADOPrimeiroAvalistaCep.AsString <> '') Then
      Value := Value+'  '+FormatFloat('00000-000',StrToInt64(ADOPrimeiroAvalistaCep.AsString));
    Value := Value+'  '+ADOPrimeiroAvalistaEstado.AsString;
  end else
  value := '';
end;

procedure TQRCedulaCreditoBancarioPJnovo222.QRSysData1Print(sender: TObject;
  var Value: String);
begin
  Value := Format('%2.2d',[StrToInt64(Value)]);
end;

procedure TQRCedulaCreditoBancarioPJnovo222.QuickRepBeforePrint(
  Sender: TCustomQuickRep; var PrintReport: Boolean);
begin
 cont:=0;
   if frmOrigem = 222 then
   begin

    if (visualizou) And (not(Ususario.Grupo in [39,42,43,4])) then
    begin
      PrintReport := false;
     MessageBox(Application.Handle, PChar('Você não tem permissão para imprimir este relatório.'), 'Cédula de Crédito', MB_OK + MB_ICONERROR);
    end;
    visualizou := True;
   end;
end;

procedure TQRCedulaCreditoBancarioPJnovo222.QuickRepStartPage(Sender: TCustomQuickRep);
begin
  if frmOrigem = 222 then
  begin
    if not (Ususario.Grupo in [39,42,43,4]) then
      QRCedulaCreditoBancarioPJ222.ShowProgress := False;
  end;
end;

procedure TQRCedulaCreditoBancarioPJnovo222.QRDBTextVenc1Print(sender: TObject;
  var Value: String);
begin
  if (ADOContratoCedulavenc1.AsString = '' ) Then
    value := '';
end;

procedure TQRCedulaCreditoBancarioPJnovo222.QRDBTextVenc2Print(sender: TObject;
  var Value: String);
begin
  if (ADOContratoCedulavenc2.AsString = '01/01/1900' ) Then
    value := '';
end;


procedure TQRCedulaCreditoBancarioPJnovo222.QRBand2BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
 if (ADOContratoCedulavenc1.AsString = '' ) then
  QRShape19.Frame.Style:=psClear;

 end;

procedure TQRCedulaCreditoBancarioPJnovo222.QRBand5BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
   cont:=cont+1;
   QRLabel123.caption:=inttostr(cont);
end;

procedure TQRCedulaCreditoBancarioPJnovo222.QRDBText14Print(sender: TObject;
  var Value: String);
begin
    Value := FormataCPFCNPJ(ADOSegundoAvalistaInscricaoAvalista.AsString);
end;

procedure TQRCedulaCreditoBancarioPJnovo222.QRDBTextVenc3Print(sender: TObject;
  var Value: String);
begin
  if (ADOContratoCedulavenc3.AsString = '01/01/1900') Then
    value := '';
end;

procedure TQRCedulaCreditoBancarioPJnovo222.QRDBText29Print(sender: TObject;
  var Value: String);
begin
  if (ADOContratoCedulaParcela2.AsFloat = 0) Then
    value := '';
end;

procedure TQRCedulaCreditoBancarioPJnovo222.QRDBText26Print(sender: TObject;
  var Value: String);
begin
  if (ADOContratoCedulaParcela1.AsFloat = 0) Then
    value := '';
end;

procedure TQRCedulaCreditoBancarioPJnovo222.QRDBText3Print(sender: TObject;
  var Value: String);
begin
  if (ADOContratoCedulaParcela3.AsFloat = 0) Then
    value := '';
end;

procedure TQRCedulaCreditoBancarioPJnovo222.QRLabel44Print(sender: TObject;
  var Value: String);
begin
    if (ADOSegundoAvalista.Active) then
    Value := ADOSegundoAvalistaEstadoCivil.AsString
    else Value := '';
end;

procedure TQRCedulaCreditoBancarioPJnovo222.QRLabel53Print(sender: TObject;
  var Value: String);
begin
    if (ADOPrimeiroAvalista.Active) then
    Value := ADOPrimeiroAvalistaEstadoCivil.AsString
    else Value := '';
end;

procedure TQRCedulaCreditoBancarioPJnovo222.QRLabel54Print(sender: TObject;
  var Value: String);
begin
  if (ADOPrimeiroConjugeCpfConjuge.AsString <> '') then
    Value := FormataCPFCNPJ(ADOPrimeiroConjugeCpfConjuge.AsString)
  else
  Value := '';
end;

procedure TQRCedulaCreditoBancarioPJnovo222.QRLabel60Print(sender: TObject;
  var Value: String);
begin
  if (ADOSegundoConjugeCpfConjuge.AsString <> '') then
    Value := FormataCPFCNPJ(ADOSegundoConjugeCpfConjuge.AsString)
  else
  Value := '';
end;

procedure TQRCedulaCreditoBancarioPJnovo222.QRLabel157Print(sender: TObject;
  var Value: String);
begin
    if (ADOTerceiroAvalista.Active) then
    Value := ADOTerceiroAvalistaNome.AsString
    else Value := '';
end;

procedure TQRCedulaCreditoBancarioPJnovo222.QRLabel159Print(sender: TObject;
  var Value: String);
begin
    if (ADOTerceiroAvalista.Active) then
      Value := ADOTerceiroAvalistaEndereco.AsString +' '+ ADOTerceiroAvalistaEnderecoNumero.AsString +' '+ ADOTerceiroAvalistaEnderecoComplemento.AsString
    else Value := '';
end;

procedure TQRCedulaCreditoBancarioPJnovo222.QRLabel170Print(sender: TObject;
  var Value: String);
begin
  if (ADOTerceiroAvalista.Active) then
  begin
    if (ADOTerceiroAvalistaCep.AsString <> '') Then
      Value := FormatFloat('00000-000',StrToInt64(ADOTerceiroAvalistaCep.AsString))
    else
    Value := '';
  end else
  Value := '';
end;

procedure TQRCedulaCreditoBancarioPJnovo222.QRLabel164Print(sender: TObject;
  var Value: String);
begin
    if (ADOTerceiroAvalista.Active) then
    Value := ADOTerceiroAvalistaNaturalidade.AsString
    else Value := '';
end;

procedure TQRCedulaCreditoBancarioPJnovo222.QRLabel173Print(sender: TObject;
  var Value: String);
begin
    if (ADOTerceiroAvalista.Active) then
    Value := ADOTerceiroAvalistaEstado.AsString
    else Value := '';
end;

procedure TQRCedulaCreditoBancarioPJnovo222.QRLabel160Print(sender: TObject;
  var Value: String);
begin
    if (ADOTerceiroAvalista.Active) then
    Value := FormataCPFCNPJ(ADOTerceiroAvalistaInscricaoAvalista.AsString)
    else Value := '';
end;

procedure TQRCedulaCreditoBancarioPJnovo222.QRLabel171Print(sender: TObject;
  var Value: String);
begin
    if (ADOTerceiroAvalista.Active) then
    Value := ADOTerceiroAvalistaBairro.AsString
    else Value := '';
end;

procedure TQRCedulaCreditoBancarioPJnovo222.QRLabel161Print(sender: TObject;
  var Value: String);
begin
    if (ADOTerceiroAvalista.Active) then
    Value := ADOTerceiroAvalistaEstadoCivil.AsString
    else Value := '';
end;

procedure TQRCedulaCreditoBancarioPJnovo222.QRLabel187Print(sender: TObject;
  var Value: String);
begin
    if (ADOQuartoAvalista.Active) then
    Value := ADOQuartoAvalistaIdentidade.AsString
    else Value := '';
end;

procedure TQRCedulaCreditoBancarioPJnovo222.QRLabel172Print(sender: TObject;
  var Value: String);
begin
    if (ADOTerceiroAvalista.Active) then
    Value := ADOTerceiroAvalistaCidade.AsString
    else Value := '';
end;

procedure TQRCedulaCreditoBancarioPJnovo222.QRLabel162Print(sender: TObject;
  var Value: String);
begin
    if (ADOTerceiroAvalista.Active) then
    Value := ADOTerceiroAvalistaNacionalidade.AsString
    else Value := '';
end;

procedure TQRCedulaCreditoBancarioPJnovo222.QRLabel165Print(sender: TObject;
  var Value: String);
begin
    if (ADOTerceiroAvalista.Active) then
    Value := ADOTerceiroAvalistaProfissao.AsString
    else Value := '';
end;

procedure TQRCedulaCreditoBancarioPJnovo222.QRLabel182Print(sender: TObject;
  var Value: String);
begin
    if (ADOQuartoAvalista.Active) then
    Value := ADOQuartoAvalistaNome.AsString
    else Value := '';
end;

procedure TQRCedulaCreditoBancarioPJnovo222.QRLabel183Print(sender: TObject;
  var Value: String);
begin
    if (ADOQuartoAvalista.Active) then
      Value := ADOQuartoAvalistaEndereco.AsString +' '+ ADOQuartoAvalistaEnderecoNumero.AsString +' '+ ADOQuartoAvalistaEnderecoComplemento.AsString
    else Value := '';
end;

procedure TQRCedulaCreditoBancarioPJnovo222.QRLabel194Print(sender: TObject;
  var Value: String);
begin
  if (ADOQuartoAvalista.Active) then
  begin
    if (ADOQuartoAvalistaCep.AsString <> '') Then
      Value := FormatFloat('00000-000',StrToInt64(ADOQuartoAvalistaCep.AsString))
    else
    Value := '';
  end else
  Value := '';
end;

procedure TQRCedulaCreditoBancarioPJnovo222.QRLabel188Print(sender: TObject;
  var Value: String);
begin
    if (ADOQuartoAvalista.Active) then
    Value := ADOQuartoAvalistaNaturalidade.AsString
    else Value := '';
end;

procedure TQRCedulaCreditoBancarioPJnovo222.QRLabel184Print(sender: TObject;
  var Value: String);
begin
    if (ADOQuartoAvalista.Active) then
    Value := FormataCPFCNPJ(ADOQuartoAvalistaInscricaoAvalista.AsString)
    else Value := '';
end;

procedure TQRCedulaCreditoBancarioPJnovo222.QRLabel195Print(sender: TObject;
  var Value: String);
begin
    if (ADOQuartoAvalista.Active) then
    Value := ADOQuartoAvalistaBairro.AsString
    else Value := '';
end;

procedure TQRCedulaCreditoBancarioPJnovo222.QRLabel185Print(sender: TObject;
  var Value: String);
begin
    if (ADOQuartoAvalista.Active) then
    Value := ADOQuartoAvalistaEstadoCivil.AsString
    else Value := '';
end;

procedure TQRCedulaCreditoBancarioPJnovo222.QRLabel163Print(sender: TObject;
  var Value: String);
begin
    if (ADOTerceiroAvalista.Active) then
    Value := ADOTerceiroAvalistaIdentidade.AsString
    else Value := '';
end;

procedure TQRCedulaCreditoBancarioPJnovo222.QRLabel196Print(sender: TObject;
  var Value: String);
begin
    if (ADOQuartoAvalista.Active) then
    Value := ADOQuartoAvalistaCidade.AsString
    else Value := '';
end;

procedure TQRCedulaCreditoBancarioPJnovo222.QRLabel186Print(sender: TObject;
  var Value: String);
begin
    if (ADOQuartoAvalista.Active) then
    Value := ADOQuartoAvalistaNacionalidade.AsString
    else Value := '';
end;

procedure TQRCedulaCreditoBancarioPJnovo222.QRLabel189Print(sender: TObject;
  var Value: String);
begin
    if (ADOQuartoAvalista.Active) then
    Value := ADOQuartoAvalistaProfissao.AsString
    else Value := '';
end;

procedure TQRCedulaCreditoBancarioPJnovo222.QRLabel210Print(sender: TObject;
  var Value: String);
begin
  if (ADOTerceiroConjugeCpfConjuge.AsString <> '') then
    Value := FormataCPFCNPJ(ADOTerceiroConjugeCpfConjuge.AsString)
  else
  Value := '';
end;

procedure TQRCedulaCreditoBancarioPJnovo222.QRLabel209Print(sender: TObject;
  var Value: String);
begin
    if (ADOTerceiroAvalista.Active) then
    Value := ADOTerceiroAvalistaEstadoCivil.AsString
    else Value := '';
end;

procedure TQRCedulaCreditoBancarioPJnovo222.QRLabel211Print(sender: TObject;
  var Value: String);
begin
  if (ADOQuartoConjugeCpfConjuge.AsString <> '') then
    Value := FormataCPFCNPJ(ADOQuartoConjugeCpfConjuge.AsString)
  else
  Value := '';
end;

procedure TQRCedulaCreditoBancarioPJnovo222.QRLabel208Print(sender: TObject;
  var Value: String);
begin
    if (ADOQuartoAvalista.Active) then
    Value := ADOQuartoAvalistaEstadoCivil.AsString
    else Value := '';
end;

procedure TQRCedulaCreditoBancarioPJnovo222.QRLabel197Print(sender: TObject;
  var Value: String);
begin
    if (ADOQuartoAvalista.Active) then
    Value := ADOQuartoAvalistaEstado.AsString
    else Value := '';
end;

procedure TQRCedulaCreditoBancarioPJnovo222.ChildBand2AfterPrint(
  Sender: TQRCustomBand; BandPrinted: Boolean);
var
    pCaminhoArqModelo: string;
    AuxLinha: TStringList;
    AuxStream : TStringStream;
begin
  AuxLinha := TStringList.Create;
  pCaminhoArqModelo := procuradiretorio('FrmCadEmprestimoSimulacao', 3);
  
  AuxLinha.LoadFromFile(pCaminhoArqModelo);
  Contrato;
  AuxStream := TStringStream.Create(AuxLinha.Text);
  try
    QRRichText21.Lines.LoadFromStream(AuxStream);
  finally
    AuxStream.Free;
    AuxStream := nil;
  end;
end;

procedure TQRCedulaCreditoBancarioPJnovo222.Contrato;
begin
 auxiliar2 := '{\*\themedata 504b030414000600080000002100e9de0fbfff0000001c020000130000005b436f6e74656e745f54797065735d2e786d6cac91cb4ec3301045f748fc83e52d4a'
  +'9cb2400825e982c78ec7a27cc0c8992416c9d8b2a755fbf74cd25442a820166c2cd933f79e3be372bd1f07b5c3989ca74aaff2422b24eb1b475da5df374fd9ad'
  +'5689811a183c61a50f98f4babebc2837878049899a52a57be670674cb23d8e90721f90a4d2fa3802cb35762680fd800ecd7551dc18eb899138e3c943d7e503b6'
  +'b01d583deee5f99824e290b4ba3f364eac4a430883b3c092d4eca8f946c916422ecab927f52ea42b89a1cd59c254f919b0e85e6535d135a8de20f20b8c12c3b0'
  +'0c895fcf6720192de6bf3b9e89ecdbd6596cbcdd8eb28e7c365ecc4ec1ff1460f53fe813d3cc7f5b7f020000ffff0300504b030414000600080000002100a5d6'
  +'a7e7c0000000360100000b0000005f72656c732f2e72656c73848fcf6ac3300c87ef85bd83d17d51d2c31825762fa590432fa37d00e1287f68221bdb1bebdb4f'
  +'c7060abb0884a4eff7a93dfeae8bf9e194e720169aaa06c3e2433fcb68e1763dbf7f82c985a4a725085b787086a37bdbb55fbc50d1a33ccd311ba548b6309512'
  +'0f88d94fbc52ae4264d1c910d24a45db3462247fa791715fd71f989e19e0364cd3f51652d73760ae8fa8c9ffb3c330cc9e4fc17faf2ce545046e37944c69e462'
  +'a1a82fe353bd90a865aad41ed0b5b8f9d6fd010000ffff0300504b0304140006000800000021006b799616830000008a0000001c0000007468656d652f746865'
  +'6d652f7468656d654d616e616765722e786d6c0ccc4d0ac3201040e17da17790d93763bb284562b2cbaebbf600439c1a41c7a0d29fdbd7e5e38337cedf14d59b'
  +'4b0d592c9c070d8a65cd2e88b7f07c2ca71ba8da481cc52c6ce1c715e6e97818c9b48d13df49c873517d23d59085adb5dd20d6b52bd521ef2cdd5eb9246a3d8b'
  +'4757e8d3f729e245eb2b260a0238fd010000ffff0300504b0304140006000800000021003bce2a59b3060000b51b0000160000007468656d652f7468656d652f'
  +'7468656d65312e786d6cec594d6f1b4518be23f11f467b6f6d27761a4775aad8b11b68d346b15bd4e37877bc3bcdecce6a669cd437d41e9190100571a012370e'
  +'08a8d44a5cca899f12288222f52ff0ceccee7a27de34491b4105cda1f5ce3eeff7c7bc337bf9cabd98a17d2224e549c76b5cac7b88243e0f681276bc5ba3c185'
  +'550f49859300339e908e3723d2bbb2fefe7b97f19a8a484c10d027720d77bc48a974ad56933e2c637991a7248177132e62ace05184b540e003e01bb3da52bdbe'
  +'528b314d3c94e018d88e8006051cdd9c4ca84fbcf59c7d9f818c4449bde03331d4cc4946d397bea0ea972782724310ec35344cce648f09b48f59c70371013f18'
  +'917bca430c4b052f3a5eddfc79b5f5cb35bc961131750c6d896e60fe32ba8c20d85b323245382e843606cdf6a5cd82bf0130b588ebf7fbbd7ea3e06700d8f7c1'
  +'5cab4b996773b0dae8e63c4b20fb739177afdeaa375d7c89fff282ceed6eb7db6a67ba58a606647f3617f0abf595e6c6928337208b6f2de09bdd8d5e6fc5c11b'
  +'90c5af2ce00797da2b4d176f4011a3c9de025a077430c8b8179009675b95f05580afd633f81c05d950a4981631e1897a65c2c5f82e1703406934c38a2648cd52'
  +'32c13e64740fc76341b19682d7082ebdb14bbe5c58d202914eea5475bc0f530cd531e7f7f2d9f72f9f3d4187f79f1edeffe9f0c183c3fb3f5a460ed5164ec232'
  +'d58b6f3ffbebd1c7e8cf27dfbc78f845355e96f1bffdf0c9af3f7f5e0d841a9aabf3fccbc7bf3f7dfcfcab4ffff8ee61057c43e071193ea23191e8063940bb3c'
  +'06c38c575ccdc9589c8d6214615aa6d848428913aca554f0efabc841df98619645c7d1a34b5c0fde16d043aa8057a7771d858791982a5a21f95a143bc06dce59'
  +'978b4a2f5cd3b24a6e1e4d93b05ab8989671bb18ef57c9eee1c4896f7f9a4207cdd3d231bc171147cd1d86138543921085f43bbe47488575772875fcba4d7dc1'
  +'259f287487a22ea6952e19d1b1934d73a22d1a435c66553643bc1ddf6cdf465dceaaacde24fb2e12aa02b30ae54784396ebc8aa70ac7552c47386665875fc72a'
  +'aa527238137e19d7970a221d12c6513f205256d1dc14606f29e8d730b4adcab06fb359ec2285a27b553caf63cecbc84dbed78b709c5661873489cad80fe41ea4'
  +'28463b5c55c1b7b95b21fa19e2809363c37d9b1227dc2777835b3474549a27887e331515b1bc4ab893bfc3199b60625a0d7476a757c7347955e366143ab79570'
  +'7e8d1b5ae5f3af1f55e8fdb6b6ec0dd8bdaa6a66eb48a33e0e77b43df7b808e8dbdf9d37f134d92150108b5bd4bbe6fcae397bfff9e67c5c3d9f7f4b9e776168'
  +'d07a16b1d3b699bde3578fde13cad850cd18b92ecdf42d61030a06b0a889cd119414e7b134829fba9c418a830b0536344870f51155d130c2294cee0d4f330965'
  +'c63a9428e5128e8d66b992b7c6c3f4afeca1b3a58f23b67d48acb679609797f5727eea28d818ad4273becd052d6b06a715b67c29630ab6bd8eb08656ead4d21a'
  +'4635d3191d6985c9dac5e68c0e2e2f4c83c5c29b30d9209887c0cb2b7009a045c38907331268bfdb18e561315138cf10c90807248b91b67b31460d13a43c5716'
  +'0cd176d864d047c813bc5692d6d66cdf40da69825416d73c465c1ebd3789529ec1f32801b7a3e5c8927271b2041d74bc766ba9e5211fa71d6f028765f819a710'
  +'75a98749cc42b87df295b0697f62319b2a9f47b39d1be61641032e41acdf170c76fa402aa4dac432b2a9615e6529c0122dc9eabfd402b79e970115dde8745a2c'
  +'af4232fc6b5a801fddd092c984f8aa1cecd28af69d7dcc5a299f2a2286517080c66c2a7631845fa72ad8135009771ea623e807b8a5d3de36afdce69c155df96e'
  +'cce0ec3a666984b376ab4b34af640b370da9d0c13c95d403db2a7537c69ddd1453f2e7644a398dff67a6e8fd04ae2096031d011fee8a0546ba523a1e172ae2d0'
  +'85d288fa0301d383e91d902d70d30baf21a9e0c6dafc2fc8befedfd69ce561ca1a4e926a97864850d88f542408d981b664b2ef04668d6cefb22c59c6c8645449'
  +'5d995ab5c7649fb091ee812b7a6ff75004a96eba49d6060cee68feb9cf59058d433de494ebcde964c5de6b6be09f9e7c6c3183516e1f36034deeff42c5623c98'
  +'efaa96de90e77b6fd910fd623e6635f3aa0061a5ada09d95fd6baa70c6add676ac058b975ab97210c5458b61b1188852b84842fa1fd8ffa8f099fdf8a137d411'
  +'df85de8ae0338666066903597dc10e1e483748bb3886c1c92eda64d2acac6bb3d1497b2ddfaccf79d22de41e71b6d6ec34f13ea3b38be1cc15e7d4e2793a3bf3'
  +'b0e36bbb76acab21b2474b149626f969c604c67c372b7fd8e2e3bb10e84df87030654a9a64822f5602c30c3d347500c56f251ad2f5bf010000ffff0300504b03'
  +'04140006000800000021000dd1909fb60000001b010000270000007468656d652f7468656d652f5f72656c732f7468656d654d616e616765722e786d6c2e7265'
  +'6c73848f4d0ac2301484f78277086f6fd3ba109126dd88d0add40384e4350d363f2451eced0dae2c082e8761be9969bb979dc9136332de3168aa1a083ae99571'
  +'9ac16db8ec8e4052164e89d93b64b060828e6f37ed1567914b284d262452282e3198720e274a939cd08a54f980ae38a38f56e422a3a641c8bbd048f7757da0f1'
  +'9b017cc524bd62107bd5001996509affb3fd381a89672f1f165dfe514173d9850528a2c6cce0239baa4c04ca5bbabac4df000000ffff0300504b01022d001400'
  +'0600080000002100e9de0fbfff0000001c0200001300000000000000000000000000000000005b436f6e74656e745f54797065735d2e786d6c504b01022d0014'
  +'000600080000002100a5d6a7e7c0000000360100000b00000000000000000000000000300100005f72656c732f2e72656c73504b01022d001400060008000000'
  +'21006b799616830000008a0000001c00000000000000000000000000190200007468656d652f7468656d652f7468656d654d616e616765722e786d6c504b0102'
  +'2d00140006000800000021003bce2a59b3060000b51b00001600000000000000000000000000d60200007468656d652f7468656d652f7468656d65312e786d6c'
  +'504b01022d00140006000800000021000dd1909fb60000001b0100002700000000000000000000000000bd0900007468656d652f7468656d652f5f72656c732f7468656d654d616e616765722e786d6c2e72656c73504b050600000000050005005d010000b80a00000000}'
  +'{\*\colorschememapping 3c3f786d6c2076657273696f6e3d22312e302220656e636f64696e673d225554462d3822207374616e64616c6f6e653d22796573223f3e0d0a3c613a636c724d'
  +'617020786d6c6e733a613d22687474703a2f2f736368656d61732e6f70656e786d6c666f726d6174732e6f72672f64726177696e676d6c2f323030362f6d6169'
  +'6e22206267313d226c743122207478313d22646b3122206267323d226c743222207478323d22646b322220616363656e74313d22616363656e74312220616363'
  +'656e74323d22616363656e74322220616363656e74333d22616363656e74332220616363656e74343d22616363656e74342220616363656e74353d22616363656e74352220616363656e74363d22616363656e74362220686c696e6b3d22686c696e6b2220666f6c486c696e6b3d22666f6c486c696e6b222f3e}'
  +'{\*\latentstyles\lsdstimax267\lsdlockeddef0\lsdsemihiddendef1\lsdunhideuseddef1\lsdqformatdef0\lsdprioritydef99{\lsdlockedexcept \lsdsemihidden0 \lsdunhideused0 \lsdqformat1 \lsdpriority0 \lsdlocked0 Normal;'
  +'\lsdsemihidden0 \lsdunhideused0 \lsdqformat1 \lsdpriority9 \lsdlocked0 heading 1;\lsdqformat1 \lsdpriority9 \lsdlocked0 heading 2;\lsdqformat1 \lsdpriority9 \lsdlocked0 heading 3;\lsdqformat1 \lsdpriority9 \lsdlocked0 heading 4;'
  +'\lsdqformat1 \lsdpriority9 \lsdlocked0 heading 5;\lsdqformat1 \lsdpriority9 \lsdlocked0 heading 6;\lsdqformat1 \lsdpriority9 \lsdlocked0 heading 7;\lsdqformat1 \lsdpriority9 \lsdlocked0 heading 8;\lsdqformat1 \lsdpriority9 \lsdlocked0 heading 9;'
  +'\lsdpriority39 \lsdlocked0 toc 1;\lsdpriority39 \lsdlocked0 toc 2;\lsdpriority39 \lsdlocked0 toc 3;\lsdpriority39 \lsdlocked0 toc 4;\lsdpriority39 \lsdlocked0 toc 5;\lsdpriority39 \lsdlocked0 toc 6;\lsdpriority39 \lsdlocked0 toc 7;'
  +'\lsdpriority39 \lsdlocked0 toc 8;\lsdpriority39 \lsdlocked0 toc 9;\lsdqformat1 \lsdpriority35 \lsdlocked0 caption;\lsdsemihidden0 \lsdunhideused0 \lsdqformat1 \lsdpriority10 \lsdlocked0 Title;\lsdpriority1 \lsdlocked0 Default Paragraph Font;'
  +'\lsdsemihidden0 \lsdunhideused0 \lsdqformat1 \lsdpriority11 \lsdlocked0 Subtitle;\lsdsemihidden0 \lsdunhideused0 \lsdqformat1 \lsdpriority22 \lsdlocked0 Strong;\lsdsemihidden0 \lsdunhideused0 \lsdqformat1 \lsdpriority20 \lsdlocked0 Emphasis;'
  +'\lsdsemihidden0 \lsdunhideused0 \lsdpriority59 \lsdlocked0 Table Grid;\lsdunhideused0 \lsdlocked0 Placeholder Text;\lsdsemihidden0 \lsdunhideused0 \lsdqformat1 \lsdpriority1 \lsdlocked0 No Spacing;'
  +'\lsdsemihidden0 \lsdunhideused0 \lsdpriority60 \lsdlocked0 Light Shading;\lsdsemihidden0 \lsdunhideused0 \lsdpriority61 \lsdlocked0 Light List;\lsdsemihidden0 \lsdunhideused0 \lsdpriority62 \lsdlocked0 Light Grid;'
  +'\lsdsemihidden0 \lsdunhideused0 \lsdpriority63 \lsdlocked0 Medium Shading 1;\lsdsemihidden0 \lsdunhideused0 \lsdpriority64 \lsdlocked0 Medium Shading 2;\lsdsemihidden0 \lsdunhideused0 \lsdpriority65 \lsdlocked0 Medium List 1;'
  +'\lsdsemihidden0 \lsdunhideused0 \lsdpriority66 \lsdlocked0 Medium List 2;\lsdsemihidden0 \lsdunhideused0 \lsdpriority67 \lsdlocked0 Medium Grid 1;\lsdsemihidden0 \lsdunhideused0 \lsdpriority68 \lsdlocked0 Medium Grid 2;'
  +'\lsdsemihidden0 \lsdunhideused0 \lsdpriority69 \lsdlocked0 Medium Grid 3;\lsdsemihidden0 \lsdunhideused0 \lsdpriority70 \lsdlocked0 Dark List;\lsdsemihidden0 \lsdunhideused0 \lsdpriority71 \lsdlocked0 Colorful Shading;'
  +'\lsdsemihidden0 \lsdunhideused0 \lsdpriority72 \lsdlocked0 Colorful List;\lsdsemihidden0 \lsdunhideused0 \lsdpriority73 \lsdlocked0 Colorful Grid;\lsdsemihidden0 \lsdunhideused0 \lsdpriority60 \lsdlocked0 Light Shading Accent 1;'
  +'\lsdsemihidden0 \lsdunhideused0 \lsdpriority61 \lsdlocked0 Light List Accent 1;\lsdsemihidden0 \lsdunhideused0 \lsdpriority62 \lsdlocked0 Light Grid Accent 1;\lsdsemihidden0 \lsdunhideused0 \lsdpriority63 \lsdlocked0 Medium Shading 1 Accent 1;'
  +'\lsdsemihidden0 \lsdunhideused0 \lsdpriority64 \lsdlocked0 Medium Shading 2 Accent 1;\lsdsemihidden0 \lsdunhideused0 \lsdpriority65 \lsdlocked0 Medium List 1 Accent 1;\lsdunhideused0 \lsdlocked0 Revision;'
  +'\lsdsemihidden0 \lsdunhideused0 \lsdqformat1 \lsdpriority34 \lsdlocked0 List Paragraph;\lsdsemihidden0 \lsdunhideused0 \lsdqformat1 \lsdpriority29 \lsdlocked0 Quote;\lsdsemihidden0 \lsdunhideused0 \lsdqformat1 \lsdpriority30 \lsdlocked0 Intense Quote;'
  +'\lsdsemihidden0 \lsdunhideused0 \lsdpriority66 \lsdlocked0 Medium List 2 Accent 1;\lsdsemihidden0 \lsdunhideused0 \lsdpriority67 \lsdlocked0 Medium Grid 1 Accent 1;\lsdsemihidden0 \lsdunhideused0 \lsdpriority68 \lsdlocked0 Medium Grid 2 Accent 1;'
  +'\lsdsemihidden0 \lsdunhideused0 \lsdpriority69 \lsdlocked0 Medium Grid 3 Accent 1;\lsdsemihidden0 \lsdunhideused0 \lsdpriority70 \lsdlocked0 Dark List Accent 1;\lsdsemihidden0 \lsdunhideused0 \lsdpriority71 \lsdlocked0 Colorful Shading Accent 1;'
  +'\lsdsemihidden0 \lsdunhideused0 \lsdpriority72 \lsdlocked0 Colorful List Accent 1;\lsdsemihidden0 \lsdunhideused0 \lsdpriority73 \lsdlocked0 Colorful Grid Accent 1;\lsdsemihidden0 \lsdunhideused0 \lsdpriority60 \lsdlocked0 Light Shading Accent 2;'
  +'\lsdsemihidden0 \lsdunhideused0 \lsdpriority61 \lsdlocked0 Light List Accent 2;\lsdsemihidden0 \lsdunhideused0 \lsdpriority62 \lsdlocked0 Light Grid Accent 2;\lsdsemihidden0 \lsdunhideused0 \lsdpriority63 \lsdlocked0 Medium Shading 1 Accent 2;'
  +'\lsdsemihidden0 \lsdunhideused0 \lsdpriority64 \lsdlocked0 Medium Shading 2 Accent 2;\lsdsemihidden0 \lsdunhideused0 \lsdpriority65 \lsdlocked0 Medium List 1 Accent 2;\lsdsemihidden0 \lsdunhideused0 \lsdpriority66 \lsdlocked0 Medium List 2 Accent 2;'
  +'\lsdsemihidden0 \lsdunhideused0 \lsdpriority67 \lsdlocked0 Medium Grid 1 Accent 2;\lsdsemihidden0 \lsdunhideused0 \lsdpriority68 \lsdlocked0 Medium Grid 2 Accent 2;\lsdsemihidden0 \lsdunhideused0 \lsdpriority69 \lsdlocked0 Medium Grid 3 Accent 2;'
  +'\lsdsemihidden0 \lsdunhideused0 \lsdpriority70 \lsdlocked0 Dark List Accent 2;\lsdsemihidden0 \lsdunhideused0 \lsdpriority71 \lsdlocked0 Colorful Shading Accent 2;\lsdsemihidden0 \lsdunhideused0 \lsdpriority72 \lsdlocked0 Colorful List Accent 2;'
  +'\lsdsemihidden0 \lsdunhideused0 \lsdpriority73 \lsdlocked0 Colorful Grid Accent 2;\lsdsemihidden0 \lsdunhideused0 \lsdpriority60 \lsdlocked0 Light Shading Accent 3;\lsdsemihidden0 \lsdunhideused0 \lsdpriority61 \lsdlocked0 Light List Accent 3;'
  +'\lsdsemihidden0 \lsdunhideused0 \lsdpriority62 \lsdlocked0 Light Grid Accent 3;\lsdsemihidden0 \lsdunhideused0 \lsdpriority63 \lsdlocked0 Medium Shading 1 Accent 3;\lsdsemihidden0 \lsdunhideused0 \lsdpriority64 \lsdlocked0 Medium Shading 2 Accent 3;'
  +'\lsdsemihidden0 \lsdunhideused0 \lsdpriority65 \lsdlocked0 Medium List 1 Accent 3;\lsdsemihidden0 \lsdunhideused0 \lsdpriority66 \lsdlocked0 Medium List 2 Accent 3;\lsdsemihidden0 \lsdunhideused0 \lsdpriority67 \lsdlocked0 Medium Grid 1 Accent 3;'
  +'\lsdsemihidden0 \lsdunhideused0 \lsdpriority68 \lsdlocked0 Medium Grid 2 Accent 3;\lsdsemihidden0 \lsdunhideused0 \lsdpriority69 \lsdlocked0 Medium Grid 3 Accent 3;\lsdsemihidden0 \lsdunhideused0 \lsdpriority70 \lsdlocked0 Dark List Accent 3;'
  +'\lsdsemihidden0 \lsdunhideused0 \lsdpriority71 \lsdlocked0 Colorful Shading Accent 3;\lsdsemihidden0 \lsdunhideused0 \lsdpriority72 \lsdlocked0 Colorful List Accent 3;\lsdsemihidden0 \lsdunhideused0 \lsdpriority73 \lsdlocked0 Colorful Grid Accent 3;'
  +'\lsdsemihidden0 \lsdunhideused0 \lsdpriority60 \lsdlocked0 Light Shading Accent 4;\lsdsemihidden0 \lsdunhideused0 \lsdpriority61 \lsdlocked0 Light List Accent 4;\lsdsemihidden0 \lsdunhideused0 \lsdpriority62 \lsdlocked0 Light Grid Accent 4;'
  +'\lsdsemihidden0 \lsdunhideused0 \lsdpriority63 \lsdlocked0 Medium Shading 1 Accent 4;\lsdsemihidden0 \lsdunhideused0 \lsdpriority64 \lsdlocked0 Medium Shading 2 Accent 4;\lsdsemihidden0 \lsdunhideused0 \lsdpriority65 \lsdlocked0 Medium List 1 Accent 4;'
  +'\lsdsemihidden0 \lsdunhideused0 \lsdpriority66 \lsdlocked0 Medium List 2 Accent 4;\lsdsemihidden0 \lsdunhideused0 \lsdpriority67 \lsdlocked0 Medium Grid 1 Accent 4;\lsdsemihidden0 \lsdunhideused0 \lsdpriority68 \lsdlocked0 Medium Grid 2 Accent 4;'
  +'\lsdsemihidden0 \lsdunhideused0 \lsdpriority69 \lsdlocked0 Medium Grid 3 Accent 4;\lsdsemihidden0 \lsdunhideused0 \lsdpriority70 \lsdlocked0 Dark List Accent 4;\lsdsemihidden0 \lsdunhideused0 \lsdpriority71 \lsdlocked0 Colorful Shading Accent 4;'
  +'\lsdsemihidden0 \lsdunhideused0 \lsdpriority72 \lsdlocked0 Colorful List Accent 4;\lsdsemihidden0 \lsdunhideused0 \lsdpriority73 \lsdlocked0 Colorful Grid Accent 4;\lsdsemihidden0 \lsdunhideused0 \lsdpriority60 \lsdlocked0 Light Shading Accent 5;'
  +'\lsdsemihidden0 \lsdunhideused0 \lsdpriority61 \lsdlocked0 Light List Accent 5;\lsdsemihidden0 \lsdunhideused0 \lsdpriority62 \lsdlocked0 Light Grid Accent 5;\lsdsemihidden0 \lsdunhideused0 \lsdpriority63 \lsdlocked0 Medium Shading 1 Accent 5;'
  +'\lsdsemihidden0 \lsdunhideused0 \lsdpriority64 \lsdlocked0 Medium Shading 2 Accent 5;\lsdsemihidden0 \lsdunhideused0 \lsdpriority65 \lsdlocked0 Medium List 1 Accent 5;\lsdsemihidden0 \lsdunhideused0 \lsdpriority66 \lsdlocked0 Medium List 2 Accent 5;'
  +'\lsdsemihidden0 \lsdunhideused0 \lsdpriority67 \lsdlocked0 Medium Grid 1 Accent 5;\lsdsemihidden0 \lsdunhideused0 \lsdpriority68 \lsdlocked0 Medium Grid 2 Accent 5;\lsdsemihidden0 \lsdunhideused0 \lsdpriority69 \lsdlocked0 Medium Grid 3 Accent 5;'
  +'\lsdsemihidden0 \lsdunhideused0 \lsdpriority70 \lsdlocked0 Dark List Accent 5;\lsdsemihidden0 \lsdunhideused0 \lsdpriority71 \lsdlocked0 Colorful Shading Accent 5;\lsdsemihidden0 \lsdunhideused0 \lsdpriority72 \lsdlocked0 Colorful List Accent 5;'
  +'\lsdsemihidden0 \lsdunhideused0 \lsdpriority73 \lsdlocked0 Colorful Grid Accent 5;\lsdsemihidden0 \lsdunhideused0 \lsdpriority60 \lsdlocked0 Light Shading Accent 6;\lsdsemihidden0 \lsdunhideused0 \lsdpriority61 \lsdlocked0 Light List Accent 6;'
  +'\lsdsemihidden0 \lsdunhideused0 \lsdpriority62 \lsdlocked0 Light Grid Accent 6;\lsdsemihidden0 \lsdunhideused0 \lsdpriority63 \lsdlocked0 Medium Shading 1 Accent 6;\lsdsemihidden0 \lsdunhideused0 \lsdpriority64 \lsdlocked0 Medium Shading 2 Accent 6;'
  +'\lsdsemihidden0 \lsdunhideused0 \lsdpriority65 \lsdlocked0 Medium List 1 Accent 6;\lsdsemihidden0 \lsdunhideused0 \lsdpriority66 \lsdlocked0 Medium List 2 Accent 6;\lsdsemihidden0 \lsdunhideused0 \lsdpriority67 \lsdlocked0 Medium Grid 1 Accent 6;'
  +'\lsdsemihidden0 \lsdunhideused0 \lsdpriority68 \lsdlocked0 Medium Grid 2 Accent 6;\lsdsemihidden0 \lsdunhideused0 \lsdpriority69 \lsdlocked0 Medium Grid 3 Accent 6;\lsdsemihidden0 \lsdunhideused0 \lsdpriority70 \lsdlocked0 Dark List Accent 6;'
  +'\lsdsemihidden0 \lsdunhideused0 \lsdpriority71 \lsdlocked0 Colorful Shading Accent 6;\lsdsemihidden0 \lsdunhideused0 \lsdpriority72 \lsdlocked0 Colorful List Accent 6;\lsdsemihidden0 \lsdunhideused0 \lsdpriority73 \lsdlocked0 Colorful Grid Accent 6;'
  +'\lsdsemihidden0 \lsdunhideused0 \lsdqformat1 \lsdpriority19 \lsdlocked0 Subtle Emphasis;\lsdsemihidden0 \lsdunhideused0 \lsdqformat1 \lsdpriority21 \lsdlocked0 Intense Emphasis;'
  +'\lsdsemihidden0 \lsdunhideused0 \lsdqformat1 \lsdpriority31 \lsdlocked0 Subtle Reference;\lsdsemihidden0 \lsdunhideused0 \lsdqformat1 \lsdpriority32 \lsdlocked0 Intense Reference;'
  +'\lsdsemihidden0 \lsdunhideused0 \lsdqformat1 \lsdpriority33 \lsdlocked0 Book Title;\lsdpriority37 \lsdlocked0 Bibliography;\lsdqformat1 \lsdpriority39 \lsdlocked0 TOC Heading;}}{\*\datastore 010500000200000018000000'
  +'4d73786d6c322e534158584d4c5265616465722e362e3000000000000000000000060000'
  +'d0cf11e0a1b11ae1000000000000000000000000000000003e000300feff090006000000000000000000000001000000010000000000000000100000feffffff00000000feffffff0000000000000000ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff'
  +'ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff'
  +'ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff'
  +'ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff'
  +'fffffffffffffffffdfffffffeffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff'
  +'ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff'
  +'ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff'
  +'ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff'
  +'ffffffffffffffffffffffffffffffff52006f006f007400200045006e00740072007900000000000000000000000000000000000000000000000000000000000000000000000000000000000000000016000500ffffffffffffffffffffffff0c6ad98892f1d411a65f0040963251e5000000000000000000000000d033'
  +'7ba638ccce01feffffff00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ffffffffffffffffffffffff00000000000000000000000000000000000000000000000000000000'
  +'00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ffffffffffffffffffffffff0000000000000000000000000000000000000000000000000000'
  +'000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ffffffffffffffffffffffff000000000000000000000000000000000000000000000000'
  +'0000000000000000000000000000000000000000000000000105000000000000}}';
end;

constructor TQRCedulaCreditoBancarioPJnovo222.Create(AOwner : TComponent; Origem: Integer = 0);
begin
  CreateNew(AOwner);
  if (ClassType <> TCustomQuickRep) and not (csDesigning in ComponentState) then
    InitInheritedComponent(Self, TCustomQuickRep);
  frmOrigem:= Origem;
end;

end.
