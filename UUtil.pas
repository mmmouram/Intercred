unit UUtil;

interface

uses
  UDMDados, DateUtils, StrUtils, ShellApi, ADODB,
  Winsock, Forms, Db, dbctrls, Dialogs, SysUtils, Windows, dbgrids,
  Classes, QuickRpt, ComObj, Variants, ComCtrls, Excel2000, Math,
  StdCtrls, XSBuiltIns, Types, Controls, Graphics, WSMovimentoCC,UDMConecta;

type

  TRelClass = class of TQuickRep;
  TTXSDecimal = class helper for TXSDecimal
    function asCurr: Double;
    function asStr:  String;
  end;
function ConvertFloatFormat(const AValue: string): string;

function LPad(AValor: string; ATam: integer): string;

function MascaraCPFCNPJ(Tipo, CPFCNPJ: Byte): String;
function CompletaString(xString: String; CompletaCom: Char; Tamanho: Cardinal;
  Antes: Boolean = False): String;
function RetornaNumero(Texto: String): String;
function FormataCPFCNPJ(CPFCNPJ: String): String;
function PesquisaRegistro(iForm: TForm): Boolean;
function ArredondaValor(iNumero: Double; Casas: Byte = 2): Double;
function ArredondaPraCima(iNumero: Double): Int64;
function DV_CPF(Dado: String): String;
function Valida_CPF(Dado: String): Boolean;
function DV_CGC(Dado: String): String;

function Valida_CGC(Dado: String): Boolean;
function DV_EAN(Dado: String): String;
function Valida_EAN(Dado: String): Boolean;
function NumSerioHD(fDrive: Char): String;

function GetBytes(NomeArquivo: String): TByteDynArray;
procedure ChamaForm(var NomeForm; ClassForm: TFormClass; AOwener: TComponent;
  Modal: Boolean; Canto: Boolean; NomeString: String = '';
  CodigoRelatorio: Integer = 0; TipoFormStyle: TFormStyle = fsMDIChild);
procedure ChamaRel(var NomeRel; ClassRel: TRelClass);
function Maiusculo(Letra: Char): Char;
function PalavraMaiusculo(Palavra: String): String;

function DateTimeToXSDateTime(DataHora: TDateTime): TXSDateTime;

function UltimoDia(Const ADate: TDateTime): TDateTime;
function FirstDay(Const ADate: TDateTime): TDateTime;
function Seculo(ADate: String): TDateTime;
Function Bacen2(XNivel, XSubNivel: Integer;
  XChecagem, XOpcional: String): String;
function TrocaVirgulax(XValor: String): String;
function ValidaData(XValor: String): Boolean;

function CorrigeData(XValor: String): String;

Function D_menos(xData: TDateTime; xNumDias: Integer): TDateTime;

Function D_menosBancario(xData: TDateTime; xNumDias: Integer;
  XTipoFeriado: String = 'NORMAL'): TDateTime;

Function D_mais(xData: TDateTime; xNumDias: Integer): TDateTime;


Function D_maisBancario(xData: TDateTime; xNumDias: Integer;
  XTipoFeriado: String = 'NORMAL'): TDateTime;

Function D_maisRegional(xData: TDateTime; xNumDias, xRegiao: Integer)
  : TDateTime;

Function ProcuraNome(xString: String): Variant;
Function Procuradiretorio(formulario: String; seq: Integer): Variant;

function ExtensoMes(xMes: Integer): String;
Function TiraApostrofe(XTexto: String): String;
Function Apostrofo(Texto: String): String;
Function PesquisaDataBanco(Completa: Boolean = True): TDateTime;
function FormataCEP(const CEP: string): string;

Function DigitoModulo10(Numero: string): Integer;
Function DigitoModulo11(Numero: string): Integer;

function SHCopyFiles(source, destn: string): Boolean;

Function CalculaC3(Numero: string): String;
function Valida_CMC7(Entrada: String): Boolean;
function IP: String;
function UsuarioLogado: String;
Function ProcuraDataFechamento(xString: String): TDateTime;
Procedure Registra_Componentes(V_Form: TForm);
Function CriterioParaPesquisa: String;
function AnsiToAscii(str: String): String;
function TruncaValor(iNumero: Double; Casas: Byte = 2): Double;

Function BuscaNivelPermissao(iForm: TForm): Integer;

function calculaIof(Baseiof: Double; numerodeparcelas: Integer;
  taxa, dias, iofTxAno: Double; TipoPgtoIOF: String; DataContrato: TDateTime)
  : Double;

function calculaIofComplementar(ValorPMT, ValorAmortizacao, TaxaIofComplementar
  : Double; TipoPgtoIOF: String; DataContrato: TDateTime): Double;

function calculaPmt(i: Double; n: Integer; vp, vf: Double; endofperiod: Boolean)
  : Double;
function calculaCarencia(vp, i: Double; n, DiaCarencia, t: Integer): Double;
function calculaJuros(i: Double; n: Integer; vp: Double; t: Integer): Double;
function calculaAmortizacao(i: Double; n: Integer; vp: Double;
  t: Integer): Double;

procedure DataSetToExcel(DataSet: TDataSet; Arquivo: String;
  ModoTexto: Boolean = True; VisualizaCriacao: Boolean = False;
  Distinto: Boolean = False; Pasta: Integer = 1; NomePasta: String = '');

procedure DataSetToTXT(DataSet: TDataSet; Arquivo: String;
  Separador: Char = ';');

function AcessoArea(CampoTabela, CampoRegiao, CampoMacrorregiao: String;
  AliasCampoPromotorProcudor: String = ''): String;

function ForceForegroundWindow(wnd: THandle): Boolean;

function InteiroInsert(Inteiro: String): String;
function ValorInsert(Valor: String): String;

function TextoInsert(Texto: String): String;

function DataInsert(Data: String): String;
function ComboBoxInsert(Combo: TComboBox): String;

function CriterioString(Campo, LocalPesquisa, Ligacao,
  TextoPadrao: String): String;
function CriterioData(Campo, Ligacao, DataInicial, DataFinal,
  TextoPadrao: String): String;
function CriterioInteiro(Campo, LocalPesquisa, Ligacao, TextoPadrao: String;
  Exclusao: String = ''): String;

Function Pontuacao(CodigoGrupo, Nivel, Nota: Integer): Integer;
function SomenteDigitos(valor : string): string;
Function PontuacaoCedente(CodigoGrupo, Nivel, Nota, Perfil: Integer): Integer;
Function PontuacaoOperacao(CodigoGrupo, Nivel, Nota: Integer): Integer;
Function Kg_Bacen(XNivel, XSubNivel: Integer; XChecagem, XOpcional: String)
  : String;
Function BuscaLancamentos(V_CodigoCreditoCC, V_CodigoDebitoCC,
  V_CodigoCreditoCV, V_CodigoDebitoCV: Integer; Bordero, BorderoItem, Carteira,
  Parcela: String): String;
function Split(StrinCompleta, Separador: String): TStringList;
Function GetLongFileName(Const FileName: String): String;
procedure TraduzException(Msg: String; DataSet: TDataSet);
function TransformaTXSSecimal(Valor: Double): TXSDecimal;
function TXSDecimalToFloat(Valor: TXSDecimal): Double;
Procedure OrdenaGrid(Query: TComponent; var Campo: TColumn;
  var UltimoCampo: TColumn; var OrdemAscDesc: String; OrdemTotal: String = '');
Function Tern(condicao: Boolean; vTrue: Variant; vFalse: Variant): Variant;
Function LancaCcCv_Ident(conta: string; dataL: string; transacao: string;
  sinal: string; Valor: Double; documento: Integer; historico: string;
  identificacao: string): string;
procedure DataSetToExcelVariasAbas(DataSet: array of TDataSet;
  cnt_i, cnt_f: Integer; Arquivo: String; ModoTexto, VisualizaCriacao,
  Distinto: Boolean);

function bd_WSDL(url, serv: String; id, col: Integer): String;

procedure LimpaBufferTeclado;
procedure LimpaBufferMouse;
procedure LimpaInputBuffer;
function PossuiLetrasOuCaracteresEspeciais(valor : string): boolean;
procedure CopiarGridClipBoard(grd: TDBGrid; flg_exibe_msg: Boolean = true);
procedure CopiarDataSetClipBoard(dts: TDataSet; flg_exibe_msg: Boolean = true);
function ExportaGridClipBoardExcel(grd: TDBGrid; Arquivo: String; VisualizaCriacao: Boolean = False): Boolean;
function ExportaDataSetClipBoardExcel(dts: TDataSet; Arquivo: String; VisualizaCriacao: Boolean = False): Boolean;
function ExportaDataSetClipBoardCSV(dts: TDataSet; Arquivo: String): Boolean;

function ValidaPreenchimentoTaxaEfetiva(pVrTaxa: Double): Boolean;
function DetectaCaracteresEspeciais(const Texto: string): Boolean;
function RemoverCaracteresEspeciais(Texto: string; RemoverPontos: Boolean): string;
function RemoveCaracteresValoresCurrency(valor : string): string;
function CorrigeDataNula(Valor : String): String;

procedure Adverte(texto: string);
procedure Informa(texto: string);
procedure Erro(texto: string);
function Confirma(texto: string) : Boolean;

var
  erroinsautbank: Integer;
  nroMovimentoautbank, codErroautbank, transacautbank: Integer;
  mensagemErroautbank: string;

const
  QuebraLinha = #13 + #10;
  SQLDate = 'mm/dd/yyyy';
  web_Servidor = 'PRODUCAO';

implementation

uses
  Messages, ClipBrd;

function MascaraCPFCNPJ(Tipo, CPFCNPJ: Byte): String;
var
  iMask: array [1 .. 2, 1 .. 2] of String;
begin
  iMask[1, 1] := '000"."000"."000"-"00';
  iMask[1, 2] := '00"."000"."000"/"0000"-"00';
  iMask[2, 1] := '>CCC.CCC.CCC-CC;0;_';
  iMask[2, 2] := '>CC.CCC.CCC/CCCC-CC;0;_';
  if ((Tipo + CPFCNPJ) <= 4) then
    Result := iMask[Tipo, CPFCNPJ]
  else
    Result := '';
end;

function CompletaString(xString: String; CompletaCom: Char; Tamanho: Cardinal;
  Antes: Boolean): String;
var
  TamanhoAtual, i: Cardinal;
  aux: String;
begin
  TamanhoAtual := Length(xString);
  if (TamanhoAtual < Tamanho) then
  begin
    aux := '';
    for i := 1 to (Tamanho - TamanhoAtual) do
      aux := aux + CompletaCom;
    if Antes then
      Result := aux + xString
    else
      Result := xString + aux;
  end
  else
    Result := Copy(xString, 1, Tamanho);
end;

function RetornaNumero(Texto: String): String;
var
  i: Cardinal;
begin
  Result := '';
  for i := 1 to Length(Texto) do
    if (Texto[i] in ['0' .. '9']) then
      Result := Result + Texto[i];
end;

function FormataCPFCNPJ(CPFCNPJ: String): String;
var
  auxTamanho: Byte;
begin
  CPFCNPJ := RetornaNumero(CPFCNPJ);
  auxTamanho := Length(CPFCNPJ);
  if (auxTamanho = 11) then
    Result := FormatFloat(MascaraCPFCNPJ(1, 1), StrToInt64(CPFCNPJ))
  else if (auxTamanho = 14) then
    Result := FormatFloat(MascaraCPFCNPJ(1, 2), StrToInt64(CPFCNPJ))
  else
    Result := '';
end;

function PesquisaRegistro(iForm: TForm): Boolean;
var
  i: Integer;
  Titulo, Campo, Pesquisa: String;
  iDataSet: TDataSet;
begin
  Pesquisa := '';
  Campo := '';
  Result := False;
  for i := 0 to (iForm.ComponentCount - 1) do
    if ((iForm.Components[i] is TDBEdit) and ((iForm.Components[i] as TDBEdit)
      .DataSource.DataSet.Active) and ((iForm.Components[i] as TDBEdit).Focused)
      and ((iForm.Components[i] as TDBEdit).Field.FieldKind = fkData)) then
    begin
      iDataSet := (iForm.Components[i] as TDBEdit).DataSource.DataSet;
      Campo := (iForm.Components[i] as TDBEdit).DataField;
    end
    else if ((iForm.Components[i] is TDBGrid) and
      ((iForm.Components[i] as TDBGrid).DataSource.DataSet.Active) and
      ((iForm.Components[i] as TDBGrid).Focused) and
      ((iForm.Components[i] as TDBGrid).SelectedField.FieldKind = fkData)) then
    begin
      iDataSet := (iForm.Components[i] as TDBGrid).DataSource.DataSet;
      Campo := (iForm.Components[i] as TDBGrid).Columns
        [(iForm.Components[i] as TDBGrid).SelectedIndex].FieldName;
    end
    else if ((iForm.Components[i] is TDBMemo) and
      ((iForm.Components[i] as TDBMemo).DataSource.DataSet.Active) and
      ((iForm.Components[i] as TDBMemo).Focused) and
      ((iForm.Components[i] as TDBMemo).Field.FieldKind = fkData)) then
    begin
      iDataSet := (iForm.Components[i] as TDBMemo).DataSource.DataSet;
      Campo := (iForm.Components[i] as TDBMemo).DataField;
    end;

  if (Campo <> '') then
  begin
    Titulo := 'Consulta por ' + iDataSet.FieldByName(Campo).DisplayLabel;
    if ((InputQuery(Titulo, 'Digite o valor da pesquisa:', Pesquisa)) and
      (Pesquisa <> '')) then
    begin
      Pesquisa := PalavraMaiusculo(Pesquisa);
      Result := iDataSet.Locate(Campo, Pesquisa, [loPartialKey]);
    end;
  end;

end;

function ArredondaValor(iNumero: Double; Casas: Byte): Double;
begin
  if Casas > 0 then
    Result := StrToFloat(FloatToStrF(iNumero, ffFixed, 20, Casas))
  else
    Result := iNumero;
end;

function ArredondaPraCima(iNumero: Double): Int64;
begin
  if (iNumero > 0) then
    Result := Ceil(iNumero)
  else if (iNumero < 0) then
    Result := Floor(iNumero)
  else
    Result := Trunc(iNumero);
end;

function DV_CPF(Dado: String): String;
var
  Dig: array [1 .. 9] of Byte;
  cont,
  Dif1, Dif2, Dif3,
  Resto,
  PrimeiroDig, SegundoDig: Integer;

  procedure zera;
  begin
    Dif1 := 0;
    Dif2 := 0;
    Dif3 := 0;
    Resto := 0;
    cont := 0;
  end;

begin
  if (Length(Dado) in [9 .. 11]) then
  begin
    for cont := 1 to 9 do
      if Dado[cont] in ['0' .. '9'] then
        Dig[cont] := StrToInt(Dado[cont])
      else
      begin
        Result := '';
        exit;
      end;
    zera;
    Dif1 := ((10 * Dig[1]) + (9 * Dig[2]) + (8 * Dig[3]) + (7 * Dig[4]) +
      (6 * Dig[5]) + (5 * Dig[6]) + (4 * Dig[7]) + (3 * Dig[8]) + (2 * Dig[9]));
    Dif2 := Dif1 div 11;
    Dif3 := Dif2 * 11;
    Resto := Dif1 - Dif3;
    if ((Resto = 0) or (Resto = 1)) then
      PrimeiroDig := 0
    else
      PrimeiroDig := (11 - Resto);
    zera;
    Dif1 := ((11 * Dig[1]) + (10 * Dig[2]) + (9 * Dig[3]) + (8 * Dig[4]) +
      (7 * Dig[5]) + (6 * Dig[6]) + (5 * Dig[7]) + (4 * Dig[8]) + (3 * Dig[9]) +
      (2 * PrimeiroDig));
    Dif2 := Dif1 div 11;
    Dif3 := Dif2 * 11;
    Resto := Dif1 - Dif3;
    if ((Resto = 0) or (Resto = 1)) then
      SegundoDig := 0
    else
      SegundoDig := (11 - Resto);
    Result := Copy(Dado, 1, 9) + IntToStr(PrimeiroDig) + IntToStr(SegundoDig);
  end
  else
    Result := ''
end;

function Valida_CPF(Dado: String): Boolean;
const
  N_Inv = '00000000000111111111112222222222233333333333444444444445555555555566666666666777777777778888888888899999999999';
begin
  Dado := RetornaNumero(Dado);
  Result := ((Dado <> '') and (Pos(Dado, N_Inv) = 0) and (Dado = DV_CPF(Dado)));
end;

function DV_CGC(Dado: String): String;
var
  Dig: array [1 .. 12] of Byte;
  cont,
  Dif1, Dif2, Dif3,
  Resto,
  PrimeiroDig, SegundoDig: Integer;

  procedure zera;
  begin
    Dif1 := 0;
    Dif2 := 0;
    Dif3 := 0;
    Resto := 0;
    cont := 0;
  end;

begin
  if (Length(Dado) in [12 .. 14]) then
  begin
    for cont := 1 to 12 do
      if Dado[cont] in ['0' .. '9'] then
        Dig[cont] := StrToInt(Dado[cont])
      else
      begin
        Result := '';
        exit;
      end;
    zera;
    Dif1 := ((5 * Dig[1]) + (4 * Dig[2]) + (3 * Dig[3]) + (2 * Dig[4]) +
      (9 * Dig[5]) + (8 * Dig[6]) + (7 * Dig[7]) + (6 * Dig[8]) + (5 * Dig[9]) +
      (4 * Dig[10]) + (3 * Dig[11]) + (2 * Dig[12]));
    Dif2 := Dif1 div 11;
    Dif3 := Dif2 * 11;
    Resto := Dif1 - Dif3;
    if ((Resto = 0) or (Resto = 1)) then
      PrimeiroDig := 0
    else
      PrimeiroDig := (11 - Resto);

    zera;
    Dif1 := ((6 * Dig[1]) + (5 * Dig[2]) + (4 * Dig[3]) + (3 * Dig[4]) +
      (2 * Dig[5]) + (9 * Dig[6]) + (8 * Dig[7]) + (7 * Dig[8]) + (6 * Dig[9]) +
      (5 * Dig[10]) + (4 * Dig[11]) + (3 * Dig[12]) + (2 * PrimeiroDig));
    Dif2 := Dif1 div 11;
    Dif3 := Dif2 * 11;
    Resto := Dif1 - Dif3;
    if ((Resto = 0) or (Resto = 1)) then
      SegundoDig := 0
    else
      SegundoDig := (11 - Resto);
    { calculando o segundo digito, fim }
    Result := Copy(Dado, 1, 12) + IntToStr(PrimeiroDig) + IntToStr(SegundoDig);
  end
  else
    Result := '';

end;

function Valida_CGC(Dado: String): Boolean;
const
  N_Inv = '00000000000000111111111111112222222222222233333333333333444444444444445555555555555566666666666666777777777777778888888888888899999999999999';
begin
  Dado := RetornaNumero(Dado);
  Result := ((Dado <> '') and (Pos(Dado, N_Inv) = 0) and (Dado = DV_CGC(Dado)));
end;

function DV_EAN(Dado: String): String;
var
  Tamanho, cont, mult: Byte;
  Soma, Sub: Cardinal;
begin
  Tamanho := Length(Dado);
  Soma := 0;
  Result := '';
  mult := 3;
  for cont := Tamanho downto 1 do
    if Dado[cont] in ['0' .. '9'] then
    begin
      Soma := Soma + Trunc(StrToInt(Dado[cont]) * mult);
      if mult = 3 then
        mult := 1
      else
        mult := 3;
    end
    else
      exit;

  if Soma <= 10 then
    Result := Dado + IntToStr(10 - Soma)
  else
  begin
    Sub := Soma div 10;
    if ((Soma / Sub) = 10) then
      Result := Dado + '0'
    else
      Result := Dado + IntToStr(((Sub * 10) + 10) - Soma);
  end;

end;

function Valida_EAN(Dado: String): Boolean;
begin
  Dado := RetornaNumero(Dado);
  Result := (Dado = DV_EAN(Copy(Dado, 1, (Length(Dado) - 1))))
end;

function NumSerioHD(fDrive: Char): String;
var
  Serial, DirLen, Flags: DWord;
  DLabel: array [0 .. 11] of Char;
begin
  try
    GetVolumeInformation(PChar(fDrive + ':\'), DLabel, 12, @Serial, DirLen,
      Flags, nil, 0);
    Result := IntToHex(Serial, 8);
  except
    Result := '';
  end;
end;

function GetBytes(NomeArquivo: String): TByteDynArray;
const
  BufferMax = 2047;
var
  i, Lido, TamanhoResult, TamanhoBuffer: Integer;
  Arquivo: File;
  Buffer: array [0 .. BufferMax] of Char;
begin
  SetLength(Result, 0);
  AssignFile(Arquivo, NomeArquivo);
  try
    Reset(Arquivo, 1);
    TamanhoBuffer := BufferMax + 1;

    repeat
      BlockRead(Arquivo, Buffer, TamanhoBuffer, Lido);

      if (Lido > 0) then
      begin
        TamanhoResult := Length(Result);
        SetLength(Result, TamanhoResult + Lido);
        for i := TamanhoResult to (TamanhoResult + (Lido - 1)) do
          Result[i] := Ord(Buffer[i - TamanhoResult]);
      end;
    until ((Lido = 0) or (Lido <> TamanhoBuffer));
  finally
    CloseFile(Arquivo);
  end;

end;

procedure ChamaForm(var NomeForm; ClassForm: TFormClass; AOwener: TComponent;
  Modal: Boolean; Canto: Boolean; NomeString: String; CodigoRelatorio: Integer;
  TipoFormStyle: TFormStyle);
Var
  Auxs: String;
  dataBanco: TDateTime;
begin
  dataBanco := PesquisaDataBanco(False);

  with (DMDados) do
  begin

    DMDados.ADOVirtual.Close;
    DMDados.ADOVirtual.CommandText :=
      'Select SenStatus from sistbsen with (nolock) ' + ' where Senusu = ' +
      IntToStr(Ususario.Codigo) + ' and SenStatus  = ''ATIVO'' ';
    DMDados.ADOVirtual.Open;
    if (DMDados.ADOVirtual.RecordCount < 1) then
    begin
      Application.MessageBox('Nível de acesso do usuário não foi definido.',
        'Atenção', MB_OK + MB_ICONASTERISK + MB_DEFBUTTON1 + MB_APPLMODAL);
      exit;
    end;

    ADOVirtual.Close;
    ADOVirtual.CommandText :=
      'select max(FechaData) from fechaprb where FECHAMODU = ''RECEBIMENTO'' ';
    ADOVirtual.Open;

    if (ADOVirtual.Fields[0].AsDateTime) <= dataBanco then
      Application.MessageBox('O movimento da cobrança não foi fechado.',
        'Atenção', MB_OK + MB_ICONASTERISK + MB_DEFBUTTON1 + MB_APPLMODAL);

    DMDados.ADOVirtual.Close;
    DMDados.ADOVirtual.CommandText :=
      'Select NivelPermissao from sistbper with (nolock) ' +
      ' where upper(NomeForm) = ' + #39 + UpperCase(NomeString) + #39 +
      ' and CodigoGrupo = ' + IntToStr(Ususario.Grupo);
    DMDados.ADOVirtual.Open;
  end;

  if (DMDados.ADOVirtual.RecordCount > 0) then
  begin

    if not(Assigned(TForm(NomeForm))) then
    begin
      TForm(NomeForm) := ClassForm.Create(AOwener);

      if (CodigoRelatorio > 0) then
        TForm(NomeForm).Caption := IntToStr(CodigoRelatorio) + ' - ' +
          TForm(NomeForm).Caption;

    end;

    if (TipoFormStyle <> fsMDIChild) then
    begin
      TForm(NomeForm).FormStyle := TipoFormStyle;
      TForm(NomeForm).Position := poDesktopCenter;
      TForm(NomeForm).Visible := False;
    end;

    if Canto then
    begin
      TForm(NomeForm).Top := 0;
      TForm(NomeForm).Left := 0;
    end;

    if Modal then
      TForm(NomeForm).ShowModal
    else
      TForm(NomeForm).Show;

    if not Application.Active then
      SetForegroundWindow(TForm(NomeForm).Handle);
    if not Application.Active then
      ForceForegroundWindow(TForm(NomeForm).Handle);

  end;
end;

procedure ChamaRel(var NomeRel; ClassRel: TRelClass);
begin
  if not(Assigned(TQuickRep(NomeRel))) then
  begin
    TQuickRep(NomeRel) := ClassRel.Create(nil);
    try
      TQuickRep(NomeRel).Preview;
    finally
      TQuickRep(NomeRel).Free;
      TQuickRep(NomeRel) := nil;
    end;
  end
  else
    MessageDlg('Já existe um relatório [ ' + TQuickRep(NomeRel).ReportTitle +
      ' ] aberto.', mtWarning, [mbOK], 0);
end;

function Maiusculo(Letra: Char): Char;
var
  auxMaiusculo: String;
begin
  auxMaiusculo := AnsiUpperCase(Letra);
  Result := auxMaiusculo[1];
end;

function PalavraMaiusculo(Palavra: String): String;
var
  auxPalavraMaiusculo: Integer;
begin
  Result := '';
  for auxPalavraMaiusculo := 1 to (Length(Palavra)) do
    Result := Result + Maiusculo(Palavra[auxPalavraMaiusculo]);
end;

function DateTimeToXSDateTime(DataHora: TDateTime): TXSDateTime;
begin
  Result := TXSDateTime.Create;
  Result.AsDateTime := DataHora;

end;

function UltimoDia(Const ADate: TDateTime): TDateTime;
Var
  Ano, Mes, Dia: Word;
Begin
  DecodeDate(ADate, Ano, Mes, Dia);
  inc(Mes);
  if (Mes > 12) then
  Begin
    Mes := 01;
    inc(Ano);
  end;
  Result := StrToDateTime('01/' + FloatToStr(Mes) + '/' + FloatToStr(Ano)) - 1;
end;

function FirstDay(Const ADate: TDateTime): TDateTime;
Var
  Ano, Mes, Dia: Word;
Begin
  DecodeDate(ADate, Ano, Mes, Dia);
  Result := StrToDateTime('01/' + FloatToStr(Mes) + '/' + FloatToStr(Ano));
end;

function Seculo(ADate: String): TDateTime;
Var
  Ano, Mes, Dia: String;
Begin
  Dia := Copy(ADate, 1, 2);
  Mes := Copy(ADate, 3, 2);
  Ano := Copy(ADate, 5, 2);
  Try
    if (StrToInt(Dia) > 0) and (StrToInt(Mes) > 0) Then
    begin
      Ano := '20' + Ano;
      Result := StrToDateTime(Dia + '/' + Mes + '/' + Ano);
    end
    else
      Result := 0;
  Except
    Result := 0;
  end;

end;

Function Bacen2(XNivel, XSubNivel: Integer;
  XChecagem, XOpcional: String): String;
Var
  Auxs: String;
Begin
  while Pos(',', XChecagem) > 0 do
    XChecagem[Pos(',', XChecagem)] := '.';
  Auxs := ' select Atribuicao from bacen2 bac with (nolock) ';
  Auxs := Auxs + ' where nivel = ' + IntToStr(XNivel);
  Auxs := Auxs + ' and Subnivel = ' + IntToStr(XSubNivel);
  if (Pos(XChecagem[1], '01234567890-') > 0) then
  begin
    Auxs := Auxs + '   and cast(INICIAL as numeric(15,2)) <= ' + XChecagem;
    Auxs := Auxs + '   and  cast(FINAL as numeric(15,2)) >= ' + XChecagem;
  end
  else
  Begin
    Auxs := Auxs + '   and INICIAL <= ' + #39 + XChecagem + #39;
    Auxs := Auxs + '   and  FINAL  >= ' + #39 + XChecagem + #39;
  end;
  With (DMDados.ADOExecutaUtil) do
  Begin
    Close;
    SQL.Clear;
    SQL.Add(Auxs);
    Open;
    If (DMDados.ADOExecutaUtil.RecordCount > 0) Then
    begin
      Result := FieldByName('Atribuicao').AsString;
    end
    else
      Result := '0';
  end;

end;

function TrocaVirgulax(XValor: String): String;
Begin
  while Pos(',', XValor) > 0 do
    XValor[Pos(',', XValor)] := '.';
  Result := XValor;

end;

function ValidaData(XValor: String): Boolean;
var
  t: TDateTime;
begin
  Result := False;
  if Not((XValor = '  /  /    ') or (XValor = '  /  /  ') or (XValor = ' / /  '))
  then
  begin
    Try
      t := StrToDateTime(XValor);
      Result := True;
    except
      Result := False;
    end;
  end;
end;

Function D_menos(xData: TDateTime; xNumDias: Integer): TDateTime;
var
  Auxs: String;
begin
  Auxs := 'Select dbo.d_menos(' + #39 + FormatDateTime(SQLDate, xData) + #39;
  Auxs := Auxs + ',' + IntToStr(xNumDias) + ') as DataAnterior ';
  with (DMDados.ADOExecutaUtil) do
  begin
    Close;
    SQL.Clear;
    SQL.Add(Auxs);
    Open;
    Result := FieldByName('DataAnterior').AsDateTime;
  end;

end;

Function D_menosBancario(xData: TDateTime; xNumDias: Integer;
  XTipoFeriado: String = 'NORMAL'): TDateTime;
var
  Auxs: String;
begin
  Auxs := 'Select dbo.d_menosBancario(' + #39 + FormatDateTime(SQLDate,
    xData) + #39;
  Auxs := Auxs + ',' + IntToStr(xNumDias) + ',' + #39 + XTipoFeriado + #39 +
    ') as DataAnterior ';
  with (DMDados.ADOExecutaUtil) do
  begin
    Close;
    SQL.Clear;
    SQL.Add(Auxs);
    Open;
    Result := FieldByName('DataAnterior').AsDateTime;
    Result := FieldByName('DataAnterior').AsDateTime;

  end;

end;

Function D_mais(xData: TDateTime; xNumDias: Integer): TDateTime;
begin
  with (DMDados.ADOExecutaUtil) do
  begin
    Close;
    SQL.Clear;
    SQL.Add('Select dbo.d_mais(' + #39 + FormatDateTime(SQLDate, xData) + #39 +
      ',' + IntToStr(xNumDias) + ') as NovaData ');
    Open;
    Result := Fields[0].AsDateTime;
  end;
end;

Function D_maisBancario(xData: TDateTime; xNumDias: Integer;
  XTipoFeriado: String): TDateTime;
begin
  with (DMDados.ADOExecutaUtil) do
  begin
    Close;
    SQL.Clear;
    SQL.Add('Select dbo.d_maisBancario(' + #39 + FormatDateTime(SQLDate, xData)
      + #39 + ',' + IntToStr(xNumDias) + ',' + #39 + XTipoFeriado + #39 +
      ') as NovaData ');
    Open;
    Result := Fields[0].AsDateTime;
  end;
end;

Function D_maisRegional(xData: TDateTime; xNumDias, xRegiao: Integer)
  : TDateTime;
Var
  Auxs: String;
begin
  with (DMDados.ADOExecutaUtil) do
  begin
    Close;
    Auxs := 'Select dbo.d_maisRegional(' + #39 + FormatDateTime(SQLDate, xData)
      + #39 + ',' + IntToStr(xNumDias) + ', 0' + IntToStr(xRegiao) +
      ') as NovaData ';

    SQL.Clear;
    SQL.Add(Auxs);
    Open;
    Result := Fields[0].AsDateTime;
  end;
end;

Function Procuradiretorio(formulario: String; seq: Integer): Variant;
var
  sqltext: string;
begin
  sqltext := 'select DIRETORIO from TB_Caddiretorio where FORMULARIO=' + '''' +
    formulario + '''' + ' and sequencia=' + '''' + IntToStr(seq) + '''' + '  ';
  with (DMDados.ADOExecutaUtil) do
  begin
    Close;
    SQL.Clear;
    SQL.Add(sqltext);
    Open;
    Result := DMDados.ADOExecutaUtil.Fields[0].AsString;
  end;
end;

Function ProcuraNome(xString: String): Variant;
begin
  with (DMDados.ADOExecutaUtil) do
  begin
    Close;
    SQL.Clear;
    SQL.Add(xString);
    Open;
    Result := DMDados.ADOExecutaUtil.Fields[0].AsString;
  end;
end;

Function ExtensoMes(xMes: Integer): String;
var
  MesExtenso: array [1 .. 12] of string;
begin
  MesExtenso[1] := 'Janeiro';
  MesExtenso[2] := 'Fevereiro';
  MesExtenso[3] := 'Março';
  MesExtenso[4] := 'Abril';
  MesExtenso[5] := 'Maio';
  MesExtenso[6] := 'Junho';
  MesExtenso[7] := 'Julho';
  MesExtenso[8] := 'Agosto';
  MesExtenso[9] := 'Setembro';
  MesExtenso[10] := 'Outubro';
  MesExtenso[11] := 'Novembro';
  MesExtenso[12] := 'Dezembro';
  Result := MesExtenso[xMes];
end;

Function TiraApostrofe(XTexto: String): String;
begin
  Result := ReplaceStr(XTexto, '''', ' ');
end;

Function PesquisaDataBanco(Completa: Boolean = True): TDateTime;
begin
  with (DMDados.ADOExecutaUtil) do
  begin
    Close;
    SQL.Clear;
    if (Completa) then
      SQL.Add('Select Getdate() ')
    else
      SQL.Add('Select convert(datetime,convert(varchar, Getdate() , 103),103) ');
    Open;
    Result := Fields[0].AsDateTime;
  end;
end;

function FormataCEP(const CEP: string): string;

begin
  Result := CEP;
  Result := Copy(CEP, 1, 2) + '.' + Copy(CEP, 3, 3) + '-' + Copy(CEP, 6, 3);
end;

function CorrigeData(XValor: String): String;
var
  Dia, Mes, Ano: String;
begin
  Result := XValor;
  if Not((XValor = '  /  /    ') or (XValor = '  /  /  ') or (XValor = ' / /  '))
  then
  begin
    Dia := Trim(Copy(XValor, 1, 2));
    Mes := Trim(Copy(XValor, 4, 2));
    Ano := Trim(Copy(XValor, 7, 4));

    if (Ano = '') then
      Ano := IntToStr(YearOf(Now));
    Ano := Format('%4.4d', [StrToInt64(Ano)]);

    if ((Mes = '') or (StrToInt(Mes) < 1) or (StrToInt(Mes) > 12)) then
      Mes := IntToStr(MonthOf(Now));
    Mes := Format('%2.2d', [StrToInt(Mes)]);

    if ((Dia = '') or (StrToInt(Dia) < 1) or (StrToInt(Dia) > 31)) then
      Dia := IntToStr(DayOf(Now));
    Dia := Format('%2.2d', [StrToInt(Dia)]);

    if (StrToInt(Ano) < 1000) then
      Ano := IntToStr(StrToInt64(Ano) + 2000);
    Result := Dia + '/' + Mes + '/' + Ano;
    try
      StrToDate(Result);
    except
      Result := '';
    end;
  end;
end;

Function Calc_DV_Mod11(Numero: string): Integer;
var
  n01, n02, n03, n04, n05, n06, n07, n08, n09, n10: Integer;
  r01, r02, r03, r04, r05, r06, r07, r08, r09, r10: Integer;
  totalp, restdiv, dvpn: Integer;
  cr: Integer;
  snumero: string;
begin
  snumero := Numero;
  val(Copy(Numero, 1, 1), n01, cr);
  val(Copy(Numero, 2, 1), n02, cr);
  val(Copy(Numero, 3, 1), n03, cr);
  val(Copy(Numero, 4, 1), n04, cr);
  val(Copy(Numero, 5, 1), n05, cr);
  val(Copy(Numero, 6, 1), n06, cr);
  val(Copy(Numero, 7, 1), n07, cr);
  val(Copy(Numero, 8, 1), n08, cr);
  val(Copy(Numero, 9, 1), n09, cr);
  val(Copy(Numero, 10, 1), n10, cr);
  r10 := n10 * 2;
  r09 := n09 * 3;
  r08 := n08 * 4;
  r07 := n07 * 5;
  r06 := n06 * 6;
  r05 := n05 * 7;
  r04 := n04 * 8;
  r03 := n03 * 9;
  r02 := n02 * 2;
  r01 := n01 * 3;
  totalp := r01 + r02 + r03 + r04 + r05 + r06 + r07 + r08 + r09 + r10;
  restdiv := totalp mod 11;
  if (restdiv = 0) or (restdiv = 1) then
    dvpn := 0
  else
    dvpn := 11 - restdiv;
  Result := dvpn;
end;

Function DigitoModulo10(Numero: string): Integer;
Var
  WDIG: Double;
  wdig1, WDIG2, WDIG3, WDIG4, WDIG5: Integer;
begin
  Result := -1;
  try
    wdig1 := 0;
    WDIG5 := 2;
    Numero := Trim(Numero);
    WDIG2 := Length(Numero);
    while (WDIG2 > 0) do
    begin
      WDIG3 := StrToInt(Copy(Numero, WDIG2, 1));
      WDIG4 := WDIG3 * WDIG5;
      if (WDIG5 = 2) then
        WDIG5 := 1
      else
        WDIG5 := 2;

      if (WDIG4 > 9) then
        WDIG4 := WDIG4 - 9;

      wdig1 := wdig1 + WDIG4;
      WDIG2 := WDIG2 - 1;
    end;
    WDIG := 10 - Trunc((((wdig1 / 10) - Trunc(wdig1 / 10)) + 0.001) * 10);
    if (WDIG > 9) then
      WDIG := 0;
    Result := round(WDIG);
  except
    Result := -1;
  end;
end;

Function DigitoModulo11(Numero: string): Integer;
Var
  sobram11, modulom11, digitom11, auxm11, somam11, tamm11, aux1m11,
    im11: Integer;
begin
  modulom11 := 11;
  auxm11 := 2;
  somam11 := 0;
  tamm11 := Length(Numero);
  aux1m11 := tamm11;
  im11 := 1;

  Result := -1;

  try
    while (im11 <= tamm11) do
    begin
      somam11 := ((somam11) + StrToInt(Copy(Numero, aux1m11, 1)) * auxm11);
      aux1m11 := aux1m11 - 1;
      auxm11 := auxm11 + 1;
      if (auxm11 > 9) then
        auxm11 := 2;
      im11 := im11 + 1;
    end;
    sobram11 := (somam11 mod modulom11);
    if (sobram11 = 0) then
      digitom11 := 1
    else if (sobram11 = 1) then
      digitom11 := 0
    else
      digitom11 := 11 - sobram11;
    Result := digitom11;
  except

  end;
end;

function SHCopyFiles(source, destn: string): Boolean;
var
  SHFileOpStruct: TSHFileOpStruct;
begin
  with SHFileOpStruct do
  begin
    wnd := Screen.ActiveForm.Handle;
    wFunc := FO_COPY;
    pFrom := PChar(source + chr(0));
    pTo := PChar(destn);
    fFlags := FOF_FILESONLY or FOF_NOCONFIRMATION;
    hNameMappings := nil;
    lpszProgressTitle := nil;
  end;
  if SHFileOperation(SHFileOpStruct) = 0 then
  begin
    Result := True;
  end
  else
  begin
    Result := False;
  end;
end;

function IP: String;
var
  WSAData: TWSAData;
  HostEnt: PHostEnt;
  Name: string;
begin
  WSAStartup(2, WSAData);
  SetLength(Name, 255);
  Gethostname(PChar(Name), 255);
  SetLength(Name, StrLen(PChar(Name)));
  HostEnt := gethostbyname(PChar(Name));
  with HostEnt^ do
  begin
    Result := Format('%d.%d.%d.%d', [Byte(h_addr^[0]), Byte(h_addr^[1]),
      Byte(h_addr^[2]), Byte(h_addr^[3])]);
  end;
  WSACleanup;
end;

function UsuarioLogado: String;
var
  lpBuffer: Array [0 .. 20] of Char;
  nSize: DWord;
  Achou: Boolean;
  erro: DWord;
begin
  nSize := 120;
  Achou := GetUserName(lpBuffer, nSize);
  if (Achou) then
  begin
    Result := lpBuffer;
  end
  else
  begin
    erro := GetLastError();
    Result := IntToStr(erro);
  end;
end;

Function CalculaC3(Numero: string): String;
var
  x, Resto, tam, digito: Integer;
  d, d_aux: string;
begin
  digito := 0;
  d_aux := Numero;
  tam := Length(d_aux);
  d := Copy(d_aux, 0, tam);

  for x := 1 to Length(d) do
  begin
    digito := digito + (StrToInt(d[x]) * (Length(d) + 2 - x));
  end;

  digito := digito * 10;
  Resto := digito mod 11;
  digito := Resto;
  Resto := digito mod 10;
  Result := IntToStr(Resto);
end;

function Valida_CMC7(Entrada: String): Boolean;
var
  campo1, campo2, campo3: String;
begin
  Entrada := Entrada;
  campo1 := Copy(Entrada, 1, 7);
  campo2 := Copy(Entrada, 9, 10);
  campo3 := Copy(Entrada, 20, 10);
  Result := True;
  if DigitoModulo10(campo1) <> StrToInt(Copy(Entrada, 19, 1)) then
    Result := False
  Else if DigitoModulo10(campo2) <> StrToInt(Copy(Entrada, 8, 1)) then
    Result := False
  Else if DigitoModulo10(campo3) <> StrToInt(Copy(Entrada, 30, 1)) then
    Result := False;
end;

Function ProcuraDataFechamento(xString: String): TDateTime;
begin
  with (DMDados.ADOExecutaUtil) do
  begin
    Close;
    SQL.Clear;
    SQL.Add(xString);
    Open;
    Result := Fields[0].AsDateTime;
  end;
end;

function CriterioParaPesquisa: String;
begin
  try

  except
    Result := '';
  end;


  Result := Result + AcessoArea(' and cli.cliope', 'and prt.Regiao',
    ' and prt.CodigoMacrorregiao', 'cli');

end;

function AnsiToAscii(str: String): String;
var
  i: Integer;
begin
  for i := 1 to Length(str) do
    case str[i] of
      'á':
        str[i] := 'a';
      'é':
        str[i] := 'e';
      'í':
        str[i] := 'i';
      'ó':
        str[i] := 'o';
      'ú':
        str[i] := 'u';
      'à':
        str[i] := 'a';
      'è':
        str[i] := 'e';
      'ì':
        str[i] := 'i';
      'ò':
        str[i] := 'o';
      'ù':
        str[i] := 'u';
      'â':
        str[i] := 'a';
      'ê':
        str[i] := 'e';
      'î':
        str[i] := 'i';
      'ô':
        str[i] := 'o';
      'û':
        str[i] := 'u';
      'ä':
        str[i] := 'a';
      'ë':
        str[i] := 'e';
      'ï':
        str[i] := 'i';
      'ö':
        str[i] := 'o';
      'ü':
        str[i] := 'u';
      'ã':
        str[i] := 'a';
      'õ':
        str[i] := 'o';
      'ñ':
        str[i] := 'n';
      'ç':
        str[i] := 'c';
      'Á':
        str[i] := 'A';
      'É':
        str[i] := 'E';
      'Í':
        str[i] := 'I';
      'Ó':
        str[i] := 'O';
      'Ú':
        str[i] := 'U';
      'À':
        str[i] := 'A';
      'È':
        str[i] := 'E';
      'Ì':
        str[i] := 'I';
      'Ò':
        str[i] := 'O';
      'Ù':
        str[i] := 'U';
      'Â':
        str[i] := 'A';
      'Ê':
        str[i] := 'E';
      'Î':
        str[i] := 'I';
      'Ô':
        str[i] := 'O';
      'Û':
        str[i] := 'U';
      'Ä':
        str[i] := 'A';
      'Ë':
        str[i] := 'E';
      'Ï':
        str[i] := 'I';
      'Ö':
        str[i] := 'O';
      'Ü':
        str[i] := 'U';
      'Ã':
        str[i] := 'A';
      'Õ':
        str[i] := 'O';
      'Ñ':
        str[i] := 'N';
      'Ç':
        str[i] := 'C';
      #39:
        str[i] := ' ';
      #167:
        str[i] := ' ';
      '°':
        str[i] := ' ';
      'ª':
        str[i] := ' ';
      'º':
        str[i] := ' ';
      '?':
        str[i] := ' ';
      '\':
        str[i] := ' ';
      '/':
        str[i] := ' ';
    end;
  Result := str;
end;

function TruncaValor(iNumero: Double; Casas: Byte = 2): Double;
begin

  if Casas > 0 then
  begin

    Result := Power(10, Casas);
    Result := ((Trunc(iNumero * Result)) / Result);
  end
  else
    Result := Int(iNumero);

end;

Function BuscaNivelPermissao(iForm: TForm): Integer;
begin
  try
    Result := StrToInt
      (ProcuraNome
      ('select convert(varchar,NivelPermissao) + 0 from sistbper with (nolock) '
      + ' where CodigoGrupo = ' + IntToStr(Ususario.Grupo) +
      ' and NomeForm = upper( ' + #39 + iForm.Name + #39 + ' )'))
  except
    Result := 0;
  end;

end;

function calculaIof(Baseiof: Double; numerodeparcelas: Integer;
  taxa, dias, iofTxAno: Double; TipoPgtoIOF: String;
  DataContrato: TDateTime): Double;
var
  i: Double;
  x, t: Integer;
  f1, Q, S, S1, S2, P: Double;

  IOFTxDia: Double;

begin

  if (dias > 365) then
    dias := 365;

   IOFTxDia := StrToFloat(FloatToStrF((iofTxAno / 365), ffFixed, 15, 4));
  S1 := IOFTxDia;

  if (DataContrato > StrToDate('28/02/2009')) then
  begin

    Result := ((Baseiof * IOFTxDia / 100) * (dias));

  end
  else
  begin

    if (numerodeparcelas > 1) then
    begin

      S2 := 0;
      i := taxa / 100;
      if numerodeparcelas < 12 then
        t := numerodeparcelas
      else
        t := 12;

      S1 := 1;

      for x := 2 to t do
        S1 := S1 + x * Power(1 + i, (x - 1));

      If (numerodeparcelas > 12) then
        for x := 13 to numerodeparcelas do
          S2 := S2 + Power((1 + i), (x - 1));

      S := S1 + (12 * S2);

      P := Power((1 + i), numerodeparcelas) - 1;

      Q := i * S / P;

      f1 := StrToFloat(FloatToStrF((iofTxAno / 36000 * 30), ffFixed,
        15, 5)) * Q;

      if (dias > 30) then

        Baseiof := Baseiof * (1 + (iofTxAno / 36000 * dias)) *
          Power(1 + i, (dias - 30) / 30)

      else if (dias <= 30) then
        Baseiof := Baseiof * (1 - (iofTxAno / 36000 * dias)) *
          Power(1 + i, (dias - 30) / 30);

      if (UpperCase(TipoPgtoIOF) = 'V') then
        Result := (Baseiof * f1)
      else if (UpperCase(TipoPgtoIOF) = 'F') then
        Result := Baseiof * f1 / (1 - f1)
      else
        Result := 0.00;

    end
    else
    begin
      f1 := StrToFloat(FloatToStrF((iofTxAno / 365), ffFixed, 15, 4)) / 100;

      if (dias > 365) then
        dias := 365;

      if (UpperCase(TipoPgtoIOF) = 'V') then
        Result := (Baseiof * f1) * dias
      else if (UpperCase(TipoPgtoIOF) = 'I') then
        Result := 0
      else
        Result := (Baseiof * f1 * dias) / (1 - f1 * dias);

      Result := Result;
    end;

  end;

end;

function calculaIofComplementar(ValorPMT, ValorAmortizacao, TaxaIofComplementar
  : Double; TipoPgtoIOF: String; DataContrato: TDateTime): Double;
begin
  if ((DataContrato > StrToDate('28/02/2009'))) then
  begin

    Result := ValorAmortizacao * TaxaIofComplementar / 100;

  end
  else
  begin
    if (TipoPgtoIOF = 'F') then
      Result := (ValorPMT * TaxaIofComplementar / 100) /
        (1 - (TaxaIofComplementar / 100))
    else
      Result := ValorPMT * TaxaIofComplementar / 100;
  end;

end;

function calculaPmt(i: Double; n: Integer; vp, vf: Double;
  endofperiod: Boolean): Double;
var
  taxa: Double;
begin
  taxa := i / 100;

  Result := vp * ((taxa * Power(1 + taxa, n)) / (Power(1 + taxa, n) - 1));

end;

function calculaCarencia(vp, i: Double; n, DiaCarencia, t: Integer): Double;
var
  pmt, Juros: Double;
begin
  pmt := calculaPmt(i, n, vp, 0, False);
  Juros := calculaJuros(i, n, vp, t);
  Result := (Juros / 30) * DiaCarencia;

end;

function calculaJuros(i: Double; n: Integer; vp: Double; t: Integer): Double;
var
  taxa, pmt: Double;
begin
  pmt := calculaPmt(i, n, vp, 0, False);
  taxa := i / 100;

  Result := pmt * ((Power(1 + taxa, (n - t + 1)) - 1) /
    (Power(1 + taxa, (n - t + 1))));

end;

function calculaAmortizacao(i: Double; n: Integer; vp: Double;
  t: Integer): Double;
var
  pmt, Juros: Double;
begin

  pmt := calculaPmt(i, n, vp, 0, False);

  Juros := calculaJuros(i, n, vp, t);

  Result := pmt - Juros;

end;

procedure DataSetToExcel(DataSet: TDataSet; Arquivo: String;
  ModoTexto, VisualizaCriacao, Distinto: Boolean; Pasta: Integer;
  NomePasta: String);
var
  Excel: Variant;
  Linha, Coluna: Cardinal;
begin
  if not DataSet.Active then
    DataSet.Open;

  if ((Pasta = 1) and FileExists(Arquivo + '.xls')) then
    DeleteFile(PChar(Arquivo + '.xls'));

  DataSet.DisableControls;

  Excel := CreateOleObject('Excel.Application');

  if (Pasta > 1) then
    Excel.workbooks.Open(Arquivo);

  Excel.Visible := VisualizaCriacao;

  Excel.workbooks.Add;
  Excel.workbooks[1].Sheets.Add;
  Excel.workbooks[1].WorkSheets[1].Name := NomePasta;
  Excel.workbooks[1].WorkSheets[NomePasta];

  if (NomePasta <> '') then
    Excel.Caption := NomePasta;

  Linha := 1;

  for Coluna := 1 to (DataSet.FieldCount) do
  begin
    if (DataSet.Fields[Coluna - 1].Visible) then
    begin
      Excel.workbooks[1].Sheets[1].Cells[Linha, Coluna].Font.Bold := True;
      Excel.workbooks[1].Sheets[1].Cells[Linha, Coluna] :=
        DataSet.Fields[Coluna - 1].DisplayLabel;
    end;

  end;

  DataSet.First;

  while not DataSet.Eof do
  begin
    inc(Linha);

    if VisualizaCriacao then
    begin
      Excel.Columns.AutoFit;
      Excel.workbooks[1].Sheets[1].Cells[Linha, 1].Select;
    end;

    for Coluna := 1 to (DataSet.FieldCount) do
      if ((not(DataSet.Fields[Coluna - 1].IsNull)) and
        (DataSet.Fields[Coluna - 1].Visible)) then
        if ((ModoTexto) or (DataSet.Fields[Coluna - 1] is TStringField)) then
          Excel.workbooks[1].Sheets[1].Cells[Linha, Coluna] :=
            '''' + DataSet.Fields[Coluna - 1].AsString
        else
          Excel.workbooks[1].Sheets[1].Cells[Linha, Coluna] :=
            DataSet.Fields[Coluna - 1].AsVariant;

    DataSet.Next;
    Application.ProcessMessages;
  end;

  Excel.Columns.AutoFit;

  if (Pasta = 1) then
    Excel.workbooks[1].SaveAs(Arquivo)
  else
    Excel.workbooks[1].Save;

  if not VisualizaCriacao then
  begin
    Excel.workbooks.Close;
    Excel.Quit;
  end
  else
    Excel.workbooks[1].Sheets[1].Cells[1, 1].Select;

  Excel := Unassigned;

  DataSet.EnableControls;
end;

procedure DataSetToTXT(DataSet: TDataSet; Arquivo: String; Separador: Char);
var
  TXT: TextFile;
  Linha: String;
  Coluna: Cardinal;
begin
  if not DataSet.Active then
    DataSet.Open;

  DataSet.DisableControls;

  AssignFile(TXT, Arquivo);
  Rewrite(TXT);

  Linha := '';

  for Coluna := 0 to (DataSet.FieldCount - 1) do
    Linha := Linha + DataSet.Fields[Coluna].DisplayLabel + Separador;

  Writeln(TXT, Linha);

  DataSet.First;

  while not DataSet.Eof do
  begin
    Linha := '';

    for Coluna := 0 to (DataSet.FieldCount - 1) do
      Linha := Linha + DataSet.Fields[Coluna].AsString + Separador;

    Writeln(TXT, Linha);

    DataSet.Next;
  end;

  CloseFile(TXT);

  DataSet.EnableControls;
end;

Function Apostrofo(Texto: String): String;
const
  ApostrofoOriginal = '''';
  ApostrofoNovo = '''''';
  ApostrofoTag = '<#APOSTROFO>';
begin
  if (Pos(ApostrofoOriginal, Texto) > 0) then
    Result := StringReplace(StringReplace(Texto, ApostrofoOriginal,
      ApostrofoTag, [rfReplaceAll]), ApostrofoTag, ApostrofoNovo,
      [rfReplaceAll])
  else
    Result := Texto;
end;

function AcessoArea(CampoTabela, CampoRegiao, CampoMacrorregiao: String;
  AliasCampoPromotorProcudor: String = ''): String;
begin
  Result := '';
  if Ususario.Tipo[1] in ['0' .. '9'] then
  begin
    CampoTabela := Trim(CampoTabela);
    if Ususario.Tipo[1] in ['0' .. '9'] then
    begin
      if (Pos(',', Ususario.Tipo) = 0) then
        Result := ' ' + CampoTabela + ' = ' + Ususario.Tipo
      else
        Result := ' ' + CampoTabela + ' in ( ' + Ususario.Tipo + ' )';
    end
    else
      Result := ' ' + CampoTabela + ' = ' + Ususario.Tipo

  end
  else if (Ususario.NivelAcessoArea = 1) then
  begin
    Result := ' ' + CampoMacrorregiao + ' = ' +
      IntToStr(Ususario.CodigoMacrorregiao)

  end
  else if (Ususario.NivelAcessoArea = 2) then
    if (Pos(',', Ususario.RegiaoSuplementar) = 0) then
      Result := ' ' + CampoRegiao + ' = ' + IntToStr(Ususario.Regiao)
    else
      Result := ' ' + CampoRegiao + ' in ( ' +
        Ususario.RegiaoSuplementar + ' )';
end;

function ForceForegroundWindow(wnd: THandle): Boolean;
const
  SPI_GETFOREGROUNDLOCKTIMEOUT = $2000;
  SPI_SETFOREGROUNDLOCKTIMEOUT = $2001;
var
  ForegroundThreadID: DWord;
  ThisThreadID: DWord;
  timeout: DWord;
begin
  if IsIconic(wnd) then
    ShowWindow(wnd, SW_RESTORE);

  if GetForegroundWindow = wnd then
    Result := True
  else
  begin
    if ((Win32Platform = VER_PLATFORM_WIN32_NT) and (Win32MajorVersion > 4)) or
      ((Win32Platform = VER_PLATFORM_WIN32_WINDOWS) and
      ((Win32MajorVersion > 4) or ((Win32MajorVersion = 4) and
      (Win32MinorVersion > 0)))) then
    begin
      Result := False;
      ForegroundThreadID := GetWindowThreadProcessID(GetForegroundWindow, nil);
      ThisThreadID := GetWindowThreadProcessID(wnd, nil);
      if AttachThreadInput(ThisThreadID, ForegroundThreadID, True) then
      begin
        BringWindowToTop(wnd);
        SetForegroundWindow(wnd);
        AttachThreadInput(ThisThreadID, ForegroundThreadID, False);
        Result := (GetForegroundWindow = wnd);
      end;
      if not Result then
      begin
        SystemParametersInfo(SPI_GETFOREGROUNDLOCKTIMEOUT, 0, @timeout, 0);
        SystemParametersInfo(SPI_SETFOREGROUNDLOCKTIMEOUT, 0, TObject(0),
          SPIF_SENDCHANGE);
        BringWindowToTop(wnd);
        SetForegroundWindow(wnd);
        SystemParametersInfo(SPI_SETFOREGROUNDLOCKTIMEOUT, 0, TObject(timeout),
          SPIF_SENDCHANGE);
      end;
    end
    else
    begin
      BringWindowToTop(wnd);
      SetForegroundWindow(wnd);
    end;

    Result := (GetForegroundWindow = wnd);
  end;
end;

function InteiroInsert(Inteiro: String): String;
begin
  Inteiro := Trim(Inteiro);
  if Inteiro = '' then
    Result := 'NULL '
  else
    Result := IntToStr(StrToInt64(Inteiro));

end;

function ValorInsert(Valor: String): String;
begin
  Valor := StringReplace(Trim(Valor), '.', '', [rfReplaceAll]);
  if Valor = '' then
    Result := 'NULL '
  else if Length(Valor) > 0 then
  begin
    if (StrToFloat(Valor) > 0) then
      Result := StringReplace(Valor, ',', '.', [])
    else
      Result := '0';
  end
  else
    Raise Exception.Create('Tamanho do valor inválido');

end;

function TextoInsert(Texto: String): String;
begin
  Texto := Trim(Texto);
  if Texto = '' then
    Result := 'NULL, '
  else
    Result := '''' + Apostrofo(Texto) + ''', ';
end;

function DataInsert(Data: String): String;
begin
  Result := Trim(Data);
  Try
    StrToDate(Data);
  except
    Result := 'Null';
  end
end;

function ComboBoxInsert(Combo: TComboBox): String;
begin
  Result := '0';

  Try
    if (Combo.ItemIndex = -1) then
      Result := '0'
    else
      Result := Combo.Items[Combo.ItemIndex];

  except
    Result := '0';
  end

end;

function CriterioString(Campo, LocalPesquisa, Ligacao,
  TextoPadrao: String): String;
begin
  Result := '';
  if (LocalPesquisa <> '') and (Pos(',', LocalPesquisa) = 0) Then
    Result := Ligacao + Campo + ' = ' + #39 + LocalPesquisa + #39
  else if (LocalPesquisa <> '') and (Pos(',', LocalPesquisa) > 0) Then
    Result := Ligacao + Campo + ' in ( ' + LocalPesquisa + ')';
end;

function CriterioData(Campo, Ligacao, DataInicial, DataFinal,
  TextoPadrao: String): String;
begin
  Result := '';
  if ((DataInicial <> '  /  /    ') and (DataFinal <> '  /  /    ')) then
    Result := Ligacao + Campo + ' BETWEEN ' + #39 + FormatDateTime(SQLDate,
      StrToDateTime(DataInicial)) + #39 + ' and ' + #39 +
      FormatDateTime(SQLDate + ' 23:59:59.995', StrToDateTime(DataFinal)) + #39
  else if (DataFinal <> '  /  /    ') then
    Result := Ligacao + Campo + ' <= ' + #39 +
      FormatDateTime(SQLDate + ' 23:59:59.995', StrToDateTime(DataFinal)) + #39
  else if (DataInicial <> '  /  /    ') then
    Result := Ligacao + Campo + ' >= ' + #39 + FormatDateTime(SQLDate,
      StrToDateTime(DataInicial)) + #39
  else
    Result := TextoPadrao;

end;

function CriterioInteiro(Campo, LocalPesquisa, Ligacao, TextoPadrao: String;
  Exclusao: String = ''): String;

begin
  Result := '';
  if (LocalPesquisa <> '') and (Pos(',', LocalPesquisa) = 0) Then
  begin
    if (Exclusao = '') then
      Exclusao := '='
    else
      Exclusao := '<>';
    Result := Ligacao + Campo + ' ' + Exclusao + LocalPesquisa;
  end
  else if (LocalPesquisa <> '') and (Pos(',', LocalPesquisa) > 0) Then
  begin
    Result := Ligacao + Campo + ' ' + Exclusao + ' in ( ' + LocalPesquisa + ')'
  end
  else
    Result := TextoPadrao;
end;

Function Pontuacao(CodigoGrupo, Nivel, Nota: Integer): Integer;
Var
  Auxs: String;
Begin
  Auxs := ' select PontuacaoFinal from Kg_GrupoClassificacaoClienteItem ' +
    ' where CodigoGrupo = ' + IntToStr(CodigoGrupo) + ' and Nivel = ' +
    IntToStr(Nivel) + ' and Nota = ' + IntToStr(Nota);
  With (DMDados.ADOExecutaUtil) do
  Begin
    Close;
    SQL.Clear;
    SQL.Add(Auxs);
    Open;
    If (DMDados.ADOExecutaUtil.RecordCount > 0) Then
      Result := Fields[0].AsInteger
    else
      Result := 0;
  end;
end;

Function PontuacaoCedente(CodigoGrupo, Nivel, Nota, Perfil: Integer): Integer;
Var
  Auxs: String;
Begin
  if (Perfil = 1) then
    Auxs := ' select PontuacaoFinal from Kg_PontuacaoCedenteItem '
  else if (Perfil = 2) then
    Auxs := ' select PontuacaoFinal2 from Kg_PontuacaoCedenteItem ';
  Auxs := Auxs + ' where CodigoGrupo = ' + IntToStr(CodigoGrupo) +
    ' and Nivel = ' + IntToStr(Nivel) + ' and Nota = ' + IntToStr(Nota);
  With (DMDados.ADOExecutaUtil) do
  Begin
    Close;
    SQL.Clear;
    SQL.Add(Auxs);
    Open;
    If (DMDados.ADOExecutaUtil.RecordCount > 0) Then
      Result := Fields[0].AsInteger
    else
      Result := 0;
  end;
end;

Function PontuacaoOperacao(CodigoGrupo, Nivel, Nota: Integer): Integer;
Var
  Auxs: String;
Begin
  Auxs := ' select PontuacaoFinal from Kg_PontuacaoOperacaoItem ' +
    ' where CodigoGrupo = ' + IntToStr(CodigoGrupo) + ' and Nivel = ' +
    IntToStr(Nivel) + ' and Nota = ' + IntToStr(Nota);

  With (DMDados.ADOExecutaUtil) do
  Begin
    Close;
    SQL.Clear;
    SQL.Add(Auxs);
    Open;
    If (DMDados.ADOExecutaUtil.RecordCount > 0) Then
      Result := Fields[0].AsInteger
    else
      Result := 0;
  end;

end;

Function Kg_Bacen(XNivel, XSubNivel: Integer;
  XChecagem, XOpcional: String): String;
Var
  Auxs: String;
Begin
  while Pos(',', XChecagem) > 0 do
    XChecagem[Pos(',', XChecagem)] := '.';
  Auxs := ' select Atribuicao from kg_bacen bac with (nolock) ';
  Auxs := Auxs + ' where nivel = ' + IntToStr(XNivel);
  Auxs := Auxs + ' and Subnivel = ' + IntToStr(XSubNivel);

  if (Pos(XChecagem[1], '01234567890-') > 0) then
  begin
    Auxs := Auxs + '   and cast(INICIAL as numeric(15,2)) <= ' + XChecagem;
    Auxs := Auxs + '   and  cast(FINAL as numeric(15,2)) >= ' + XChecagem;
  end
  else
  Begin
    Auxs := Auxs + '   and INICIAL <= ' + #39 + XChecagem + #39;
    Auxs := Auxs + '   and  FINAL  >= ' + #39 + XChecagem + #39;
  end;

  With (DMDados.ADOExecutaUtil) do
  Begin
    Close;
    SQL.Clear;
    SQL.Add(Auxs);
    Open;
    If (DMDados.ADOExecutaUtil.RecordCount > 0) Then
    begin
      Result := FieldByName('Atribuicao').AsString;
    end
    else
      Result := '0';
  end;

end;

Function BuscaLancamentos(V_CodigoCreditoCC, V_CodigoDebitoCC,
  V_CodigoCreditoCV, V_CodigoDebitoCV: Integer; Bordero, BorderoItem, Carteira,
  Parcela: String): String;
Var
  V_Auxs: String;
begin
  if ((Carteira <> 'AC') and (Carteira <> 'AR')) then
  begin
    V_Auxs := 'select ''CC - Dt.lanç: '' + convert( varchar , ctcdat, 103) + ''  -  Ocorr.Recebimento: '' '
      + ' + convert( varchar ,isnull(CTCOcorrenciaRecebimentoInterno,'''') )+''  -  Historico: ''+convert( varchar, hiscod) +'' - ''+hisdes+'' '' '
      + ' + Ltrim( convert( varchar(8000), ctc.ctchis ) )  as Historico ' +
      ' from factbctc CTC ' + ' join factbhis HIS on HIS.HISCOD = CTC.CTCHIP' +
      '                     and isnull(RecebeLancamentoAutomaticoRecebimento,''NAO'') = ''SIM'' '
      + ' where dupbord = ' + Bordero + '   and duporde = ' + BorderoItem +
      '   and dupclas = ' + #39 + Carteira + #39;
    if (StrToIntDef(Parcela, 0) > 0) then
      V_Auxs := V_Auxs + ' and CTCParcelaParcial = ' + Parcela;

    Result := ProcuraNome(V_Auxs);
  end
  else
  begin
    V_Auxs := 'select ''CV - Dt.lanç: '' + convert( varchar , DataLancamento, 103) + ''  -  Ocorr.Recebimento: '' '
      + ' + convert( varchar ,isnull(OcorrenciaRecebimentoInterno,'''') ) ' +
      ' +''  -  Historico: ''+convert( varchar, CV.CodigoHistorico ) +'' - ''+Descricao+'' '' '
      + ' + Ltrim( convert( varchar(8000), cv.HistoricoComplemento ) )  as Historico'
      + ' from kg_contavinculada CV' +
      ' join kg_contavinculadaHistorico CVH on CVH.id_Historico = CV.CodigoHistorico '
      + '                                    and isnull(RecebeLancamentoAutomaticoRecebimento,''NAO'') = ''SIM'' '
      + ' where Bordero = ' + Bordero + '   and Ordem = ' + BorderoItem +
      '   and Carteira = ' + #39 + Carteira + #39;
    if (StrToIntDef(Parcela, 0) > 0) then
      V_Auxs := V_Auxs + ' and ParcelaParcial = ' + Parcela;

    Result := ProcuraNome(V_Auxs);

  end;
end;

function Split(StrinCompleta, Separador: String): TStringList;
begin
  Result := TStringList.Create;
  Result.Text := StringReplace(StrinCompleta, Separador, #13 + #10,
    [rfReplaceAll]);
end;

Function GetLongFileName(Const FileName: String): String;
var
  aInfo: TSHFileInfo;
begin
  if SHGetFileInfo(PChar(FileName), 0, aInfo, Sizeof(aInfo),
    SHGFI_DISPLAYNAME) <> 0 then
    Result := String(aInfo.szDisplayName)
  else
    Result := FileName;
end;

procedure TraduzException(Msg: String; DataSet: TDataSet);
var
  Campo: string;
  Field: TFieldDef;
  procedure erro(Msg: string);
  begin
    MessageBox(Application.Handle, PChar(Msg), 'Erro', MB_OK + MB_ICONERROR);
  end;

begin
  if (Pos('violation of PRIMARY or UNIQUE KEY', Msg) > 0) or
    (Pos('Violation of PRIMARY KEY constraint', Msg) > 0) then
    erro('O registro não pode ser gravado, ocorreu um erro de duplicidade na chave!'
      + chr(10) + chr(10) + 'O processo foi cancelado, tente novamente.')
  else if (Pos('validation error for column', Msg) > 0) and
    (Pos('*** null ***', Msg) > 0) then

  else if (Pos('validation error for column', Msg) > 0) and
    (Pos('*** null ***', Msg) > 0) then
  begin
    Campo := Copy(Msg, 29, Pos(',', Msg) - 29);
    Field := DataSet.FieldDefs.Find(Campo);

    if Field <> nil then
      erro(Format
        ('O registro não pode ser gravado, o Campo ''%s'' precisa ter um valor',
        [DataSet.FieldByName(Campo).DisplayName]))

    else
      erro(Format
        ('O registro não pode ser gravado, o Campo ''%s'' precisa ter um valor',
        [Campo]))
  end
  else
    erro(Msg);
end;

function TXSDecimalToFloat(Valor: TXSDecimal): Double;
begin
  Result := StrToFloat(stringreplace(Valor.DecimalString, '.', ',', [rfReplaceAll]));
end;

function TransformaTXSSecimal(Valor: Double): TXSDecimal;
begin
  Result := TXSDecimal.Create;
  if not(Valor = 0) then
    Result.DecimalString := (TrocaVirgulax(FloatToStr(Valor)))
  else
    Result.DecimalString := '0';

end;

Procedure OrdenaGrid(Query: TComponent; var Campo: TColumn;
  var UltimoCampo: TColumn; var OrdemAscDesc: String; OrdemTotal: String = '');
begin
  Screen.Cursor := crHourGlass;
  Application.ProcessMessages;

  if Query is TAdoQuery then
  begin
    if not(TAdoQuery(Query).IsEmpty) then
    begin
      if Assigned(UltimoCampo) then
      begin
        if (UltimoCampo.FieldName = Campo.FieldName) then
        begin
          if (OrdemAscDesc = ' ASC') then
            OrdemAscDesc := ' DESC'
          else
            OrdemAscDesc := ' ASC';
        end
        else
        begin
          OrdemAscDesc := ' ASC';
          Campo.Title.Color := clInfoBk;
          UltimoCampo.Title.Color := $00F8E4D3;
        end;
      end
      else
      begin
        Campo.Title.Color := clInfoBk;
        OrdemAscDesc := ' DESC';
      end;

      UltimoCampo := Campo;
      TAdoQuery(Query).Sort := OrdemTotal + ' ' + Campo.FieldName + ' ' +
        OrdemAscDesc;
      Application.ProcessMessages;
    end;
  end;
  if Query is TAdoDataSet then
  begin
    if not(TAdoQuery(Query).IsEmpty) then
    begin
      if Assigned(UltimoCampo) then
      begin
        if (UltimoCampo.FieldName = Campo.FieldName) then
        begin
          if (OrdemAscDesc = ' ASC') then
            OrdemAscDesc := ' DESC'
          else
            OrdemAscDesc := ' ASC';
        end
        else
        begin
          OrdemAscDesc := ' ASC';
          Campo.Title.Color := clInfoBk;
          UltimoCampo.Title.Color := $00F8E4D3;
        end;
      end
      else
      begin
        Campo.Title.Color := clInfoBk;
        OrdemAscDesc := ' DESC';
      end;

      UltimoCampo := Campo;
      TAdoDataSet(Query).IndexFieldNames := OrdemTotal + ' ' + Campo.FieldName +
        ' ' + OrdemAscDesc;
      Application.ProcessMessages;
    end;
  end;
  Screen.Cursor := crDefault;
end;

Function Tern(condicao: Boolean; vTrue: Variant; vFalse: Variant): Variant;
begin
  if condicao then
    Result := vTrue
  else
    Result := vFalse;
end;

function LancaCcCv_Ident(conta: string; dataL: string; transacao: string;
  sinal: string; Valor: Double; documento: Integer; historico: string;
  identificacao: string): string;
var
  Entrada: EntradaMovimentoRequestModel;
  retorno: EntradaMovimentoResponseModel;

begin
  transacautbank := 0;
  nroMovimentoautbank := 0;
  codErroautbank := 0;
  mensagemErroautbank := '';
  Entrada := EntradaMovimentoRequestModel.Create();
  retorno := EntradaMovimentoResponseModel.Create();
  Entrada.dataOperacao := Copy(dataL, 7, 2) + '/' + Copy(dataL, 5, 2) + '/' +
    Copy(dataL, 1, 4);
  Entrada.dataEfetivacao := Copy(dataL, 7, 2) + '/' + Copy(dataL, 5, 2) + '/' +
    Copy(dataL, 1, 4);
  Entrada.contaCorrente := conta;
  Entrada.codigoLancamento := IntToStr(Ususario.Codigo);
  Entrada.codigoHistorico := transacao;
  Entrada.historico := historico;
  Entrada.valorOperacao := TransformaTXSSecimal(Valor);
  Entrada.origem := '01';
  Entrada.sistemaOrigem := 'INTCREDPJ';
  try
    retorno := GetEntradaMovimentoPortType(False,
    Cfg_WS_LANCAMENTO_DEBITO_CREDITO.EndPoint ,
    DMDados.HTTPRIOrecebimento).entradaMovimento(Entrada);   
  except
    MessageDlg('ERRO DE COMUNICACAO DE WEBSERVICE :' +
    Cfg_WS_LANCAMENTO_DEBITO_CREDITO.EndPoint
    , mtError, [mbOK], 0);
    ABORT;
  end;

  if retorno.sucesso then
  begin
    nroMovimentoautbank := retorno.nroMovimento;
    codErroautbank := retorno.codErro;
    mensagemErroautbank := retorno.mensagemErro;
  end
  else
  begin
    erroinsautbank := 1;
    nroMovimentoautbank := retorno.nroMovimento;
    codErroautbank := retorno.codErro;
    mensagemErroautbank := retorno.mensagemErro;
  end;
end;

procedure DataSetToExcelVariasAbas(DataSet: array of TDataSet;
  cnt_i, cnt_f: Integer; Arquivo: String; ModoTexto, VisualizaCriacao,
  Distinto: Boolean);
var
  Excel: Variant;
  Linha, Coluna: Cardinal;
  cnt: Integer;
begin
  cnt := cnt_i;
  while cnt <= cnt_f do
  begin
    if not DataSet[cnt].Active then
      DataSet[cnt].Open;
    inc(cnt);
  end;

  cnt := cnt_i;
  while cnt <= cnt_f do
  begin
    DataSet[cnt].DisableControls;
    inc(cnt);
  end;

  Excel := CreateOleObject('Excel.Application');
  Excel.Visible := VisualizaCriacao;

  cnt := cnt_i;
  while cnt <= cnt_f do
  begin
    Linha := 1;

    Excel.workbooks.Add;

    for Coluna := 1 to (DataSet[cnt].FieldCount) do
      if (DataSet[cnt].Fields[Coluna - 1].Visible) then
      begin
        Excel.workbooks[1].Sheets[cnt + 1].Cells[Linha, Coluna]
          .Font.Bold := True;
        Excel.workbooks[1].Sheets[cnt + 1].Cells[Linha, Coluna] :=
          DataSet[cnt].Fields[Coluna - 1].DisplayLabel;
      end;

    DataSet[cnt].First;

    while not DataSet[cnt].Eof do
    begin
      inc(Linha);

      if VisualizaCriacao then
      begin
        Excel.Columns.AutoFit;
        Excel.workbooks[1].Sheets[cnt + 1].Cells[Linha, 1].Select;
      end;

      for Coluna := 1 to (DataSet[cnt].FieldCount) do
        if ((not(DataSet[cnt].Fields[Coluna - 1].IsNull)) and
          (DataSet[cnt].Fields[Coluna - 1].Visible)) then
          if ((ModoTexto) or (DataSet[cnt].Fields[Coluna - 1] is TStringField))
          then
            Excel.workbooks[1].Sheets[cnt + 1].Cells[Linha, Coluna] :=
              '''' + DataSet[cnt].Fields[Coluna - 1].AsString
          else if ((ModoTexto) or
            (DataSet[cnt].Fields[Coluna - 1] is TFloatField)) then
            Excel.workbooks[1].Sheets[cnt + 1].Cells[Linha, Coluna] :=
              DataSet[cnt].Fields[Coluna - 1].AsFloat
          else if ((ModoTexto) or
            (DataSet[cnt].Fields[Coluna - 1] is TDateTimeField)) then
            Excel.workbooks[1].Sheets[cnt + 1].Cells[Linha, Coluna] :=
              DataSet[cnt].Fields[Coluna - 1].AsDateTime
          else if ((ModoTexto) or
            (DataSet[cnt].Fields[Coluna - 1] is TIntegerField)) then
            Excel.workbooks[1].Sheets[cnt + 1].Cells[Linha, Coluna] :=
              DataSet[cnt].Fields[Coluna - 1].AsInteger
          else if ((ModoTexto) or
            (DataSet[cnt].Fields[Coluna - 1] is TCurrencyField)) then
            Excel.workbooks[1].Sheets[cnt + 1].Cells[Linha, Coluna] :=
              DataSet[cnt].Fields[Coluna - 1].AsCurrency
          else
            Excel.workbooks[1].Sheets[cnt + 1].Cells[Linha, Coluna] :=
              DataSet[cnt].Fields[Coluna - 1].AsString;

      DataSet[cnt].Next;
      Application.ProcessMessages;
    end;
    inc(cnt);

  end;

  Excel.Columns.AutoFit;
  Excel.workbooks[1].SaveAs(Arquivo);

  if not VisualizaCriacao then
  begin
    Excel.workbooks[1].Close;
    Excel.Quit;
  end
  else
    Excel.workbooks[1].Sheets[1].Cells[1, 1].Select;

  Excel := Unassigned;

  cnt := cnt_i;
  while cnt <= cnt_f do
  begin
    DataSet[cnt].EnableControls;
    inc(cnt);
  end;

end;

function bd_WSDL(url, serv: String; id, col: Integer): String;
var
  Campos: TStringList;
begin
  with (DMDados.ADOExecutaUtil) do
  begin
    if (id > 0) and (col = 0) then
    begin

      Close;
      SQL.Clear;
      SQL.Add(' SELECT WEBSERVICE, LOGIN, SERVIDOR, SENHAAD, SENHABASE64 ' +
        ' FROM KG_ACESSOWEBSERVICE WITH(NOLOCK) ' + ' WHERE SERVIDOR = ''' +
        serv + ''' ' + ' AND ID_WEBSERVICE = ' + (IntToStr(id)));
      Open;
      if (url = '') and (RecordCount > 0) then
      begin
        Result := FieldByName('WEBSERVICE').AsString;
      end
      else
        Result := url;

    end
    else
    begin

      Close;
      SQL.Clear;
      SQL.Add(' SELECT SERVIDOR, LOGIN, MAX(SENHAAD) AS SENHAAD, MAX(SENHABASE64) AS SENHABASE64 '
        + ' FROM KG_ACESSOWEBSERVICE WITH(NOLOCK) WHERE SERVIDOR = ''' + serv +
        ''' AND ID_WEBSERVICE = ' + (IntToStr(id)) +
        ' GROUP BY SERVIDOR, LOGIN ');
      Open;
      if (RecordCount > 0) then
      begin
        if col = 1 then
          Result := FieldByName('LOGIN').AsString;
        if col = 2 then
          Result := FieldByName('SENHAAD').AsString;
        if col = 3 then
          Result := FieldByName('SENHABASE64').AsString;
      end;
    end;

  end;
end;

function LPad(AValor: string; ATam: integer): string;
var
  LAtu: integer;
begin
  Result := EmptyStr;
  LAtu := Length(AValor);
  while (LAtu < ATam) do
  begin
    Result := Result + '0';
    Inc(LAtu);
  end;
  Result := Result + AValor;
end;

procedure LimpaBufferTeclado;
var Msg: TMsg;
begin
  while PeekMessage(Msg, 0, WM_KEYFIRST, WM_KEYLAST, PM_REMOVE or PM_NOYIELD) do;
end;

procedure LimpaBufferMouse;
var Msg: TMsg;
begin
  while PeekMessage(Msg, 0, WM_MOUSEFIRST, WM_MOUSELAST, PM_REMOVE or PM_NOYIELD) do;
end;

procedure LimpaInputBuffer;
begin
  LimpaBufferTeclado;
  LimpaBufferMouse;
end;

procedure CopiarGridClipBoard(grd: TDBGrid; flg_exibe_msg: Boolean);
var
  Linhas: TStringList;
  i, posicao: integer;
  s: string;
begin
  Linhas := TStringList.Create;
  Clipboard.Open;
  try
    grd.DataSource.DataSet.DisableControls;
    posicao := grd.DataSource.DataSet.RecNo;
    grd.DataSource.DataSet.First;
    s := '';
    for i := 0 to grd.Columns.Count - 1 do
    begin
      if i > 0 then
        s := s + #9;
      s := s + grd.Columns.Items[i].Title.Caption;
    end;
    Linhas.Add(s);
    while not grd.DataSource.DataSet.Eof do
    begin
      s := '';
      for i := 0 to grd.Columns.Count - 1 do
      begin
        if i > 0 then
          s := s + #9;
        s := s + grd.Columns.Items[i].Field.Text;
      end;
      Linhas.Add(s);
      grd.DataSource.DataSet.Next;
    end;
    grd.DataSource.DataSet.RecNo := posicao;
    grd.DataSource.DataSet.EnableControls;

    Clipboard.SetTextBuf(Pointer(Linhas.Text));

    if flg_exibe_msg then
      ShowMessage('Planilha copiada para "Área de Transferência"!');
  finally
    Linhas.Free;
    Clipboard.Close;
  end;
end;

procedure CopiarDataSetClipBoard(dts: TDataSet; flg_exibe_msg: Boolean = true);
var
  Linhas: TStringList;
  i, posicao: integer;
  s: string;
begin
  Linhas := TStringList.Create;
  Clipboard.Open;
  try
    dts.DisableControls;
    posicao := dts.RecNo;
    dts.First;
    s := '';
    for i := 0 to dts.FieldCount - 1 do
    begin
      if i > 0 then
        s := s + #9;
      s := s + dts.Fields[i].DisplayLabel;
    end;
    Linhas.Add(s);
    while not dts.Eof do
    begin
      s := '';
      for i := 0 to dts.FieldCount - 1 do
      begin
        if i > 0 then
          s := s + #9;
        s := s + dts.Fields[i].AsString;
      end;
      Linhas.Add(s);
      dts.Next;
    end;
    dts.RecNo := posicao;
    dts.EnableControls;

    Clipboard.SetTextBuf(Pointer(Linhas.Text));

    if flg_exibe_msg then
      ShowMessage('Planilha copiada para "Área de Transferência"!');
  finally
    Linhas.Free;
    Clipboard.Close;
  end;
end;

function ExportaGridClipBoardExcel(grd: TDBGrid; Arquivo: String; VisualizaCriacao: Boolean = False): Boolean;
var
  Excel: Variant;
begin
  Result := True;

  CopiarGridClipBoard(grd, False);

  if (FileExists(Arquivo)) then
    DeleteFile(PChar(Arquivo));

  Excel := CreateOleObject('Excel.Application');
  try
    Excel.Visible := VisualizaCriacao;

    Excel.Caption := ExtractFileName(Arquivo);
    Excel.workbooks.Add;
    Excel.workbooks[1].WorkSheets[1].Name := 'Relatório';

    Excel.workbooks[1].WorkSheets[1].paste;
    Excel.workbooks[1].WorkSheets[1].Range['A1:ZZ1'].Font.Bold := True;

    Excel.Columns.AutoFit;

    Excel.workbooks[1].SaveAs(Arquivo);

    if not VisualizaCriacao then
    begin
      Excel.workbooks.Close;
      Excel.Quit;
    end
    else
      Excel.workbooks[1].Sheets[1].Cells[1, 1].Select;

    Excel := Unassigned;
  except
    Excel := Unassigned;
    Result := False;
  end;
end;

function ExportaDataSetClipBoardExcel(dts: TDataSet; Arquivo: String; VisualizaCriacao: Boolean = False): Boolean;
var
  Excel: Variant;
begin
  Result := True;

  CopiarDataSetClipBoard(dts, False);

  if (FileExists(Arquivo)) then
    DeleteFile(PChar(Arquivo));

  Excel := CreateOleObject('Excel.Application');
  try
    Excel.Visible := VisualizaCriacao;
    Excel.Caption := ExtractFileName(Arquivo);
    Excel.workbooks.Add;
    Excel.workbooks[1].WorkSheets[1].Name := 'Relatório';

    Excel.workbooks[1].WorkSheets[1].paste;
    Excel.workbooks[1].WorkSheets[1].Range['A1:ZZ1'].Font.Bold := True;

    Excel.Columns.AutoFit;

    Excel.workbooks[1].SaveAs(Arquivo);

    if not VisualizaCriacao then
    begin
      Excel.workbooks.Close;
      Excel.Quit;
    end
    else
      Excel.workbooks[1].Sheets[1].Cells[1, 1].Select;

    Excel := Unassigned;
  except
    Excel := Unassigned;
    Result := False;
  end;
end;

function ExportaDataSetClipBoardCSV(dts: TDataSet; Arquivo: String): Boolean;
var
  Linhas: TStringList;
  i, posicao: integer;
  s: string;
begin
  Result := True;

  if (FileExists(Arquivo)) then
    DeleteFile(PChar(Arquivo));

  Linhas := TStringList.Create;
  try
    dts.DisableControls;
    dts.First;
    s := '';
    for i := 0 to dts.FieldCount - 1 do
    begin
      if i > 0 then
        s := s + ';';
      s := s + dts.Fields[i].DisplayLabel;
    end;
    Linhas.Add(s);

    while not dts.Eof do
    begin
      s := '';
      for i := 0 to dts.FieldCount - 1 do
      begin
        if i > 0 then
          s := s + ';';
        s := s + dts.Fields[i].AsString;
      end;
      Linhas.Add(s);
      dts.Next;
    end;
    dts.RecNo := posicao;
    dts.EnableControls;

    Linhas.SaveToFile(Arquivo);
  finally
    Linhas.Free;
  end;
end;

function TTXSDecimal.asCurr: Double;
begin
  Result := TXSDecimalToFloat(Self);
end;

function TTXSDecimal.asStr: String;
begin
  Result := FormatFloat('#,##0.00', Self.asCurr);
end;

function ValidaPreenchimentoTaxaEfetiva(pVrTaxa: Double): Boolean;
begin
  Result := pVrTaxa > 0;
  if not Result then
    Result := MessageBox(Application.Handle, PChar('Taxa efetiva zerada ou não preenchida. Deseja continuar?'), 'Atenção', MB_YESNO + MB_ICONWARNING) = idYes;
end;

function ConvertFloatFormat(const AValue: string): string;
var
  I: Integer;
  TempValue: string;
begin
  TempValue := StringReplace(AValue, ',', '', [rfReplaceAll]);
  TempValue := StringReplace(TempValue, '.', '', [rfReplaceAll]);
  Insert(',', TempValue, Length(TempValue) - 1);
  I := Length(TempValue) - 3;
  while I > 3 do
  begin
    Insert('.', TempValue, I);
    Dec(I, 3);
  end;
  
  Result := TempValue;
end;

function DetectaCaracteresEspeciais(const Texto: string): Boolean;
const
  xCarEsp: array[1..40] of String = ('á', 'à', 'ã', 'â', 'ä','Á', 'À', 'Ã', 'Â', 'Ä',
                                     'é', 'è', 'ê', 'É', 'È', 'Ê','í', 'ì','Í', 'Ì',
                                     'ó', 'ò', 'ö','õ', 'ô','Ó', 'Ò', 'Ö', 'Õ', 'Ô',
                                     'ú', 'ù', 'ü','Ú','Ù', 'Ü','ç','Ç','ñ','Ñ');

  xCarExt: array[1..47] of string = ('<','>','!','@','#','$','%','¨','&','*',
                                     '(',')','_','+','=','{','}','[',']','?',
                                     ';',':','|','*','"','~','^','´','`',
                                     '¨','æ','Æ','ø','£','Ø','ƒ','ª','º','¿',
                                     '®','½','¼','ß','µ','þ','ý','Ý');
var
  i, j: Integer;
begin
  Result := False;


  for i := 1 to Length(Texto) do
  begin

    for j := 1 to 40 do
    begin
      if Texto[i] = xCarEsp[j] then
      begin
        ShowMessage(Texto[i]);      
        Result := True;
        Exit;
      end;
    end;

    for j := 1 to 48 do
    begin
      if Texto[i] = xCarExt[j] then
      begin
        ShowMessage(Texto[i]);
        Result := True;
        Exit;
      end;
    end;
  end;
end;

function RemoverCaracteresEspeciais(Texto: string; RemoverPontos: Boolean): string;
const
  xCarEsp: array[1..38] of String = ('á', 'à', 'ã', 'â', 'ä','Á', 'À', 'Ã', 'Â', 'Ä',
                                     'é', 'è','É', 'È','í', 'ì','Í', 'Ì',
                                     'ó', 'ò', 'ö','õ', 'ô','Ó', 'Ò', 'Ö', 'Õ', 'Ô',
                                     'ú', 'ù', 'ü','Ú','Ù', 'Ü','ç','Ç','ñ','Ñ');
  xCarTro: array[1..38] of String = ('a', 'a', 'a', 'a', 'a','A', 'A', 'A', 'A', 'A',
                                     'e', 'e','E', 'E','i', 'i','I', 'I',
                                     'o', 'o', 'o','o', 'o','O', 'O', 'O', 'O', 'O',
                                     'u', 'u', 'u','u','u', 'u','c','C','n', 'N');

  xCarExt: array[1..48] of string = ('<','>','!','@','#','$','%','¨','&','*',
                                     '(',')','_','+','=','{','}','[',']','?',
                                     ';',':',',','|','*','"','~','^','´','`',
                                     '¨','æ','Æ','ø','£','Ø','ƒ','ª','º','¿',
                                     '®','½','¼','ß','µ','þ','ý','Ý');

var
  xTexto : string;
  i : Integer;
begin
  xTexto := Texto;
   for i:=1 to 38 do
     xTexto := StringReplace(xTexto, xCarEsp[i], xCarTro[i], [rfreplaceall]);
   if (RemoverPontos) then
     for i:=1 to 48 do
       xTexto := StringReplace(xTexto, xCarExt[i], '', [rfreplaceall]);  
   Result := xTexto;

end;

function RemoveCaracteresValoresCurrency(valor : string): string;
var
  I: Integer;
begin
  Result := '';
  for I := 1 to Length(valor) do
  begin

    if valor[I] in ['0', '1', '2', '3', '4', '5', '6', '7', '8', '9', '.', ',','-'] then
    begin
      Result := Result + valor[I];
    end;
  end;
end;

function SomenteDigitos(valor : string): string;
var
  I: Integer;
begin
  Result := '';
  for I := 1 to Length(valor) do
  begin
    if valor[I] in ['0', '1', '2', '3', '4', '5', '6', '7', '8', '9'] then
    begin
      Result := Result + valor[I];
    end;
  end;
end;

function PossuiLetrasOuCaracteresEspeciais(valor : string): Boolean;
var
  I: Integer;
begin
  Result := False; 

  for I := 1 to Length(valor) do
  begin
    if valor[I] in [
        'a', 'A', 'b', 'B', 'c', 'C', 'd', 'D', 'e', 'E',
        'f', 'F', 'g', 'G', 'h', 'H', 'i', 'I', 'j', 'J',
        'k', 'K', 'l', 'L', 'm', 'M', 'n', 'N', 'o', 'O',
        'p', 'P', 'q', 'Q', 'r', 'R', 's', 'S', 't', 'T',
        'u', 'U', 'v', 'V', 'w', 'W', 'x', 'X', 'y', 'Y', 'z', 'Z',
        '!', '"', '#', '$', '%', '&',',', '-', '.', '/', ':', ';', '<', '=', '>', '?', '@',
        '^', '_', '`', '{', '|', '}', '~'] then
    begin
      Result := True;
    end;
  end;
end;

function CorrigeDataNula(Valor : String): String;
begin
  Result := Valor;
  if Valor = '30/12/1899' then
    Result := '';
end;

procedure Adverte(texto: string);
begin
  MessageDlg(texto, mtWarning, [mbOK], 0);
end;

procedure Informa(texto: string);
begin
  MessageDlg(texto, mtInformation, [mbOK], 0);
end;

procedure Erro(texto: string);
begin
  MessageDlg(texto, mtError, [mbOK], 0);
end;

function Confirma(texto: string) : Boolean;
var
  res: Integer;
begin
  res := MessageDlg(texto, mtConfirmation, [mbYes, mbNo], 0);
  Result := (res = mrYes);
end;

end.
