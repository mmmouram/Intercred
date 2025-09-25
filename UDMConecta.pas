unit UDMConecta;

interface

uses
  Forms, SysUtils, Classes, DB, IniFiles, ADODB, Dialogs, Windows;

type
  TDMConecta = class(TDataModule)
    ADOCapitalDeGiro: TADOConnection;
    ADOComite: TADOConnection;
    Adoprocessamento: TADOConnection;
    Adosfinance_cd: TADOConnection;
    Adosfinanceem: TADOConnection;
    ADOAutBank: TADOConnection;
    ADOCcweb: TADOConnection;
    ADOIntercred_2_core: TADOConnection;
    ADOIntercred_2_operacao: TADOConnection;
    procedure ADOCapitalDeGiroAfterConnect(Sender: TObject);
    procedure ADOCapitalDeGiroBeforeConnect(Sender: TObject);
    procedure DataModuleCreate(Sender: TObject);                            
    procedure ADOComiteBeforeConnect(Sender: TObject);
    procedure ADOComiteAfterConnect(Sender: TObject);
    procedure ADOAutBankAfterConnect(Sender: TObject);
    procedure ADOAutBankBeforeConnect(Sender: TObject);
    procedure LeIniRetornaDados;
    procedure IniciaCfg_Ini;
    procedure FinalizaCfg_Ini;
    procedure DataModuleDestroy(Sender: TObject);
  private
  public
    function Valida_Ambeinte : Boolean ;
  end;

  TConectaBancoIni = Class
    Tag, Local, DataBase, Usuario, Senha, Connection_String, EndPoint, Descricao, Senha64: String;
  End;

  const
  Local_Config = 'P:\InterCredPJ\config\';

  var
    DMConecta: TDMConecta;
    IniCapitalDeGiro, IniComite, IniAutbank: TIniFile;
    Cfg_ambiente                           : TConectaBancoIni;
    Cfg_BD_INTERCREDPJ                     : TConectaBancoIni;
    Cfg_BD_FINANCE_CD                      : TConectaBancoIni;
    Cfg_BD_FINANCE_EM                      : TConectaBancoIni;
    Cfg_BD_AUTBANK                         : TConectaBancoIni;
    Cfg_BD_PROCESSAMENTO                   : TConectaBancoIni;
    Cfg_BD_COMITE                          : TConectaBancoIni;
    Cfg_BD_CCBWEB                          : TConectaBancoIni;
    Cfg_WS_LANCAMENTO_DEBITO_CREDITO       : TConectaBancoIni;
    Cfg_WS_TESOURARIA                      : TConectaBancoIni;
    Cfg_WS_SALDO                           : TConectaBancoIni;
    Cfg_WS_TRANSFERENCIA_ENTRE_CONTAS_TED  : TConectaBancoIni;
    Cfg_WS_EXTRATO                         : TConectaBancoIni;
    Cfg_WS_COBRANCA                        : TConectaBancoIni;
    Cfg_WS_CONSULTAR_DADOS_CLIENTE         : TConectaBancoIni;
    Cfg_WS_CONSULTAR_MODALIDADE_CLIENTE    : TConectaBancoIni;
    Cfg_WS_CONSULTAR_CONTAS_CLIENTES       : TConectaBancoIni;
    Cfg_WS_CONSULTAR_DOMINIOS              : TConectaBancoIni;
    Cfg_WS_SALDO_DATA                      : TConectaBancoIni;
    Cfg_WS_EXTRATO_CONCILIACA_CNAB_240     : TConectaBancoIni;
    Cfg_WS_CONSULTA_MODALIDADE             : TConectaBancoIni;
    Cfg_WS_SERVICO_PAGAMENTO               : TConectaBancoIni;
    Cfg_WS_SERVICO_EBANK                   : TConectaBancoIni;
    Cfg_WS_CONSULTAR_CONTAS_CLIENTES_V5    : TConectaBancoIni;
    Cfg_BD_INTERCRED_2_CORE                : TConectaBancoIni;
    Cfg_BD_INTERCRED_2_OPERACAO            : TConectaBancoIni;

implementation

uses UFrmApresentacao, UUtil;

{$R *.dfm}

procedure TDMConecta.ADOAutBankAfterConnect(Sender: TObject);
begin
  If Assigned(FrmApresentacao) then
    FrmApresentacao.Mensagem('Conectado Autbank...');

  if Valida_Ambeinte then
    IniAutbank.WriteBool('AB_COBRANCA', 'Conectado', ADOAutBank.Connected);

  ADOAutBank.Open;
end;

procedure TDMConecta.ADOAutBankBeforeConnect(Sender: TObject);
begin
  if Valida_Ambeinte then
  begin
    IniAutbank := TIniFile.Create('C:\Documents and Settings\' + UsuarioLogado + '\CapitalDeGiro.ini');

    if not IniAutbank.ReadBool('AB_COBRANCA', 'Conectado', False) then
    begin
      if InputQuery('Banco de Dados - Autbank',
                    'Informe o nome do servidor. Caso seja a primeira vez, clique em OK.',
                    Cfg_BD_AUTBANK.local)
      then
        IniAutbank.WriteString('AB_COBRANCA', 'Local', Cfg_BD_AUTBANK.local)
      else
      Application.Terminate;
    end;
  end;
end;

procedure TDMConecta.ADOCapitalDeGiroAfterConnect(Sender: TObject);
begin
  If Assigned(FrmApresentacao) then
    FrmApresentacao.Mensagem('Conectado Capital de Giro...');

  if Valida_Ambeinte then
    IniCapitalDeGiro.WriteBool('BD_Capitaldegiro', 'Conectado', ADOCapitalDeGiro.Connected);

  ADOCapitalDeGiro.Open;
end;

procedure TDMConecta.ADOCapitalDeGiroBeforeConnect(Sender: TObject);
begin
  if Assigned(FrmApresentacao) then
    FrmApresentacao.Mensagem('Conectando...');

  if Valida_Ambeinte then
  begin

    IniCapitalDeGiro := TIniFile.Create('C:\Documents and Settings\' + UsuarioLogado + '\CapitalDeGiro.ini');

    if not IniCapitalDeGiro.ReadBool('BD_Capitaldegiro', 'Conectado', False) then
    begin
      if InputQuery('Banco de Dados - CapitaldeGiro',
                    'Informe o nome do servidor. Caso seja a primeira vez, clique em OK.', Cfg_BD_INTERCREDPJ.local)
      then
        IniCapitalDeGiro.WriteString('BD_Capitaldegiro', 'Local', Cfg_BD_INTERCREDPJ.local)
      else
        Application.Terminate;
    end;
  end;


  ADOCapitalDeGiro.ConnectionString  :='Provider=SQLOLEDB.1;'                 +
                                       'Password='+Cfg_BD_INTERCREDPJ.Senha+';'           +
                                       'Persist Security Info=True;'          +
                                       'User ID='+Cfg_BD_INTERCREDPJ.Usuario+';'          +
                                       'Initial Catalog='+Cfg_BD_INTERCREDPJ.DataBase+';' +
                                       'Data Source='+ Cfg_BD_INTERCREDPJ.local + ';'     +
                                       'Use Procedure for Prepare=1;'         +
                                       'Auto Translate=True;'                 +
                                       'Packet Size=4096;'                    +
                                       'Workstation ID=' + IP + ' - ' + UsuarioLogado + ';'+
                                       'Use Encryption for Data=False;'       +
                                       'Tag with column collation when possible=False';

  ADOCapitalDeGiro.DefaultDatabase   :=Cfg_BD_INTERCREDPJ.DataBase;

  ADOComite.ConnectionString         :='Provider=SQLOLEDB.1;'                 +
                                       'Password='+Cfg_BD_COMITE.Senha+';'    +
                                       'Persist Security Info=True;'          +
                                       'User ID='+Cfg_BD_COMITE.Usuario+';'   +
                                       'Initial Catalog='+Cfg_BD_COMITE.DataBase+';' +
                                       'Data Source='+ Cfg_BD_COMITE.local + ';'     +
                                       'Use Procedure for Prepare=1;'         +
                                       'Auto Translate=True;'                 +
                                       'Packet Size=4096;'                    +
                                       'Workstation ID=' + IP + ' - ' + UsuarioLogado + ';'+
                                       'Use Encryption for Data=False;'       +
                                       'Tag with column collation when possible=False';

  ADOComite.DefaultDatabase         :=Cfg_BD_COMITE.DataBase;

  Adosfinance_cd.ConnectionString   :='Provider=SQLOLEDB.1;'                  +
                                      'Password='+Cfg_BD_FINANCE_CD.Senha+';' +
                                      'Persist Security Info=True;'           +
                                      'User ID='+Cfg_BD_FINANCE_CD.Usuario+';'+
                                      'Initial Catalog='+Cfg_BD_FINANCE_CD.DataBase+';'+
                                      'Data Source='+ Cfg_BD_FINANCE_CD.local + ';'+
                                      'Use Procedure for Prepare=1;'          +
                                      'Auto Translate=True;'                  +
                                      'Packet Size=4096;'                     +
                                      'Workstation ID=' + IP + ' - ' + UsuarioLogado +';'+
                                      'Use Encryption for Data=False;'        +
                                      'Tag with column collation when possible=False';


  Adosfinance_cd.DefaultDatabase    :=Cfg_BD_FINANCE_CD.DataBase;

  Adosfinanceem.ConnectionString    :='Provider=SQLOLEDB.1;'                  +
                                      'Password='+Cfg_BD_FINANCE_EM.Senha+';' +
                                      'Persist Security Info=True;'           +
                                      'User ID='+Cfg_BD_FINANCE_EM.Usuario+';'+
                                      'Initial Catalog='+Cfg_BD_FINANCE_EM.DataBase+';'+
                                      'Data Source='+ Cfg_BD_FINANCE_EM.local + ';'+
                                      'Use Procedure for Prepare=1;'          +
                                      'Auto Translate=True;'                  +
                                      'Packet Size=4096;'                     +
                                      'Workstation ID=' + IP + ' - ' + UsuarioLogado +';'+
                                      'Use Encryption for Data=False;'        +
                                      'Tag with column collation when possible=False';

  Adosfinanceem.DefaultDatabase     := Cfg_BD_FINANCE_EM.DataBase;

  Adoprocessamento.ConnectionString :='Provider=SQLOLEDB.1;'                  +
                                      'Password='+Cfg_BD_PROCESSAMENTO.Senha+';'+
                                      'Persist Security Info=True;'           +
                                      'User ID='+Cfg_BD_PROCESSAMENTO.Usuario+';'+
                                      'Initial Catalog='+Cfg_BD_PROCESSAMENTO.DataBase+';'+
                                      'Data Source='+ Cfg_BD_PROCESSAMENTO.local+';'+
                                      'Use Procedure for Prepare=1;'          +
                                      'Auto Translate=True;'                  +
                                      'Packet Size=4096;'                     +
                                      'Workstation ID=' + IP + ' - ' + UsuarioLogado +';'+
                                      'Use Encryption for Data=False;'        +
                                      'Tag with column collation when possible=False';

  Adoprocessamento.DefaultDatabase := Cfg_BD_PROCESSAMENTO.DataBase;

  ADOAutBank.ConnectionString       :='Provider=SQLOLEDB.1;'                        +
                                      'Password='+Cfg_BD_AUTBANK.Senha+';'          +
                                      'Persist Security Info=True;'                 +
                                      'User ID='+Cfg_BD_AUTBANK.Usuario+';'         +
                                      'Initial Catalog='+Cfg_BD_AUTBANK.DataBase+';'+
                                      'Data Source='+ Cfg_BD_AUTBANK.local + ';'    +
                                      'Use Procedure for Prepare=1;'                +
                                      'Auto Translate=True;'                        +
                                      'Packet Size=4096;'                           +
                                      'Workstation ID=' + IP + ' - ' + UsuarioLogado +';'+
                                      'Use Encryption for Data=False;'              +
                                      'Tag with column collation when possible=False';

  ADOCcweb.ConnectionString                 := Cfg_BD_CCBWEB.Connection_String;
  ADOIntercred_2_core.ConnectionString      := Cfg_BD_INTERCRED_2_CORE.Connection_String;
  ADOIntercred_2_operacao.ConnectionString  := Cfg_BD_INTERCRED_2_OPERACAO.Connection_String;
  
end;

procedure TDMConecta.DataModuleCreate(Sender: TObject);
begin
  try
    LeIniRetornaDados;

    ADOCapitalDeGiro.Open;
    ADOComite.Open;
    ADOAutBank.Open;
  except

    ADOCapitalDeGiro.Open;

    if Valida_Ambeinte then
      IniCapitalDeGiro.WriteBool('BD_Capitaldegiro', 'Conectado', False);

    ADOComite.Open;

    if Valida_Ambeinte then
      IniCapitalDeGiro.WriteBool('BD_Comite', 'Conectado', False);

    ADOAutBank.Open;

    if Valida_Ambeinte then
      IniCapitalDeGiro.WriteBool('AB_COBRANCA', 'Conectado', False);
  end;
end;

procedure TDMConecta.DataModuleDestroy(Sender: TObject);
begin
  FinalizaCfg_Ini;
end;

procedure TDMConecta.FinalizaCfg_Ini;
begin
  Cfg_ambiente.Free;
  Cfg_BD_INTERCREDPJ.Free;
  Cfg_BD_FINANCE_CD.Free;
  Cfg_BD_FINANCE_EM.Free;
  Cfg_BD_AUTBANK.Free;
  Cfg_BD_PROCESSAMENTO.Free;
  Cfg_BD_COMITE.Free;
  Cfg_BD_CCBWEB.Free;
  Cfg_WS_LANCAMENTO_DEBITO_CREDITO.Free;
  Cfg_WS_TESOURARIA.Free;
  Cfg_WS_SALDO.Free;
  Cfg_WS_TRANSFERENCIA_ENTRE_CONTAS_TED.Free;
  Cfg_WS_EXTRATO.Free;
  Cfg_WS_COBRANCA.Free;
  Cfg_WS_CONSULTAR_DADOS_CLIENTE.Free;
  Cfg_WS_CONSULTAR_MODALIDADE_CLIENTE.Free;
  Cfg_WS_CONSULTAR_CONTAS_CLIENTES.Free;
  Cfg_WS_CONSULTAR_DOMINIOS.Free;
  Cfg_WS_SALDO_DATA.Free;
  Cfg_WS_EXTRATO_CONCILIACA_CNAB_240.Free;
  Cfg_WS_CONSULTA_MODALIDADE.Free;
  Cfg_WS_SERVICO_PAGAMENTO.Free;
  Cfg_WS_SERVICO_EBANK.Free;
  Cfg_WS_CONSULTAR_CONTAS_CLIENTES_V5.Free;
  Cfg_BD_INTERCRED_2_CORE.Free;
  Cfg_BD_INTERCRED_2_OPERACAO.Free;
end;

procedure TDMConecta.IniciaCfg_Ini;
begin
  Cfg_ambiente                           := TConectaBancoIni.Create;
  Cfg_BD_INTERCREDPJ                     := TConectaBancoIni.Create;
  Cfg_BD_FINANCE_CD                      := TConectaBancoIni.Create;
  Cfg_BD_FINANCE_EM                      := TConectaBancoIni.Create;
  Cfg_BD_AUTBANK                         := TConectaBancoIni.Create;
  Cfg_BD_PROCESSAMENTO                   := TConectaBancoIni.Create;
  Cfg_BD_COMITE                          := TConectaBancoIni.Create;
  Cfg_BD_CCBWEB                          := TConectaBancoIni.Create;
  Cfg_WS_LANCAMENTO_DEBITO_CREDITO       := TConectaBancoIni.Create;
  Cfg_WS_TESOURARIA                      := TConectaBancoIni.Create;
  Cfg_WS_SALDO                           := TConectaBancoIni.Create;
  Cfg_WS_TRANSFERENCIA_ENTRE_CONTAS_TED  := TConectaBancoIni.Create;
  Cfg_WS_EXTRATO                         := TConectaBancoIni.Create;
  Cfg_WS_COBRANCA                        := TConectaBancoIni.Create;
  Cfg_WS_CONSULTAR_DADOS_CLIENTE         := TConectaBancoIni.Create;
  Cfg_WS_CONSULTAR_MODALIDADE_CLIENTE    := TConectaBancoIni.Create;
  Cfg_WS_CONSULTAR_CONTAS_CLIENTES       := TConectaBancoIni.Create;
  Cfg_WS_CONSULTAR_DOMINIOS              := TConectaBancoIni.Create;
  Cfg_WS_SALDO_DATA                      := TConectaBancoIni.Create;
  Cfg_WS_EXTRATO_CONCILIACA_CNAB_240     := TConectaBancoIni.Create;
  Cfg_WS_CONSULTA_MODALIDADE             := TConectaBancoIni.Create;
  Cfg_WS_SERVICO_PAGAMENTO               := TConectaBancoIni.Create;
  Cfg_WS_SERVICO_EBANK                   := TConectaBancoIni.Create;
  Cfg_WS_CONSULTAR_CONTAS_CLIENTES_V5    := TConectaBancoIni.Create;
  Cfg_BD_INTERCRED_2_CORE                := TConectaBancoIni.Create;
  Cfg_BD_INTERCRED_2_OPERACAO            := TConectaBancoIni.Create;
end;

procedure TDMConecta.LeIniRetornaDados;
var
  ArquivoIni : TIniFile;
  DiretorioIni : String;
begin
  try
    DiretorioIni  := Local_Config + 'config.ini';

    if  not FileExists(DiretorioIni) then
    begin
      Application.MessageBox('Arquivo de configuração não encontrado.' ,
          'Atenção', MB_OK + MB_ICONEXCLAMATION + MB_DEFBUTTON1 + MB_APPLMODAL);
      Application.Terminate;
    end;
    
    ArquivoIni    := TIniFile.Create(DiretorioIni);

    IniciaCfg_Ini;

    Cfg_ambiente.Tag := 'ambiente';
    Cfg_ambiente.local := ArquivoIni.ReadString('ambiente', 'LOCAL', '');

    Cfg_BD_INTERCREDPJ.Tag := 'BD_INTERCREDPJ';
    Cfg_BD_INTERCREDPJ.local := ArquivoIni.ReadString('BD_INTERCREDPJ', 'LOCAL', '');
    Cfg_BD_INTERCREDPJ.DataBase := ArquivoIni.ReadString('BD_INTERCREDPJ', 'DATABASE', '');
    Cfg_BD_INTERCREDPJ.Usuario := ArquivoIni.ReadString('BD_INTERCREDPJ', 'USUARIO', '');
    Cfg_BD_INTERCREDPJ.Senha := ArquivoIni.ReadString('BD_INTERCREDPJ', 'SENHA', '');

    Cfg_BD_FINANCE_CD.Tag := 'BD_FINANCE_CD';
    Cfg_BD_FINANCE_CD.local := ArquivoIni.ReadString('BD_FINANCE_CD', 'LOCAL', '');
    Cfg_BD_FINANCE_CD.DataBase := ArquivoIni.ReadString('BD_FINANCE_CD', 'DATABASE', '');
    Cfg_BD_FINANCE_CD.Usuario := ArquivoIni.ReadString('BD_FINANCE_CD', 'USUARIO', '');
    Cfg_BD_FINANCE_CD.Senha := ArquivoIni.ReadString('BD_FINANCE_CD', 'SENHA', '');

    Cfg_BD_FINANCE_EM.Tag := 'BD_FINANCE_EM';
    Cfg_BD_FINANCE_EM.local := ArquivoIni.ReadString('BD_FINANCE_EM', 'LOCAL', '');
    Cfg_BD_FINANCE_EM.DataBase := ArquivoIni.ReadString('BD_FINANCE_EM', 'DATABASE', '');
    Cfg_BD_FINANCE_EM.Usuario := ArquivoIni.ReadString('BD_FINANCE_EM', 'USUARIO', '');
    Cfg_BD_FINANCE_EM.Senha := ArquivoIni.ReadString('BD_FINANCE_EM', 'SENHA', '');


    Cfg_BD_AUTBANK.Tag := 'BD_AUTBANK';
    Cfg_BD_AUTBANK.local := ArquivoIni.ReadString('BD_AUTBANK', 'LOCAL', '');
    Cfg_BD_AUTBANK.DataBase := ArquivoIni.ReadString('BD_AUTBANK', 'DATABASE', '');
    Cfg_BD_AUTBANK.Usuario := ArquivoIni.ReadString('BD_AUTBANK', 'USUARIO', '');
    Cfg_BD_AUTBANK.Senha := ArquivoIni.ReadString('BD_AUTBANK', 'SENHA', '');

    Cfg_BD_PROCESSAMENTO.Tag := 'BD_PROCESSAMENTO';
    Cfg_BD_PROCESSAMENTO.local := ArquivoIni.ReadString('BD_PROCESSAMENTO', 'LOCAL', '');
    Cfg_BD_PROCESSAMENTO.DataBase := ArquivoIni.ReadString('BD_PROCESSAMENTO', 'DATABASE', '');
    Cfg_BD_PROCESSAMENTO.Usuario := ArquivoIni.ReadString('BD_PROCESSAMENTO', 'USUARIO', '');
    Cfg_BD_PROCESSAMENTO.Senha := ArquivoIni.ReadString('BD_PROCESSAMENTO', 'SENHA', '');

    Cfg_BD_COMITE.Tag := 'BD_COMITE';
    Cfg_BD_COMITE.local := ArquivoIni.ReadString('BD_COMITE', 'LOCAL', '');
    Cfg_BD_COMITE.DataBase := ArquivoIni.ReadString('BD_COMITE', 'DATABASE', '');
    Cfg_BD_COMITE.Usuario := ArquivoIni.ReadString('BD_COMITE', 'USUARIO', '');
    Cfg_BD_COMITE.Senha := ArquivoIni.ReadString('BD_COMITE', 'SENHA', '');

    Cfg_BD_CCBWEB.Tag := 'BD_CCBWEB';
    Cfg_BD_CCBWEB.Connection_String := ArquivoIni.ReadString('BD_CCBWEB', 'CONNECTION_STRING', '');

    Cfg_BD_INTERCRED_2_CORE.Tag := 'BD_INTERCRED_2_CORE';
    Cfg_BD_INTERCRED_2_CORE.Connection_String := ArquivoIni.ReadString('BD_INTERCRED_2_CORE', 'CONNECTION_STRING', '');

    Cfg_BD_INTERCRED_2_CORE.Tag := 'BD_INTERCRED_2_OPERACAO';
    Cfg_BD_INTERCRED_2_OPERACAO.Connection_String := ArquivoIni.ReadString('BD_INTERCRED_2_OPERACAO', 'CONNECTION_STRING', '');

    Cfg_WS_LANCAMENTO_DEBITO_CREDITO.Tag := 'WS_LANCAMENTO_DEBITO_CREDITO';
    Cfg_WS_LANCAMENTO_DEBITO_CREDITO.Descricao := ArquivoIni.ReadString('WS_LANCAMENTO_DEBITO_CREDITO', 'DESCRICAO', '');
    Cfg_WS_LANCAMENTO_DEBITO_CREDITO.EndPoint := ArquivoIni.ReadString('WS_LANCAMENTO_DEBITO_CREDITO', 'ENDPOINT', '');
    Cfg_WS_LANCAMENTO_DEBITO_CREDITO.Usuario := ArquivoIni.ReadString('WS_LANCAMENTO_DEBITO_CREDITO', 'USUARIO', '');
    Cfg_WS_LANCAMENTO_DEBITO_CREDITO.Senha := ArquivoIni.ReadString('WS_LANCAMENTO_DEBITO_CREDITO', 'SENHA', '');
    Cfg_WS_LANCAMENTO_DEBITO_CREDITO.Senha64 := ArquivoIni.ReadString('WS_LANCAMENTO_DEBITO_CREDITO', 'SENHA64', '');

    Cfg_WS_TESOURARIA.Tag := 'WS_TESOURARIA';
    Cfg_WS_TESOURARIA.Descricao := ArquivoIni.ReadString('WS_TESOURARIA', 'DESCRICAO', '');
    Cfg_WS_TESOURARIA.EndPoint := ArquivoIni.ReadString('WS_TESOURARIA', 'ENDPOINT', '');
    Cfg_WS_TESOURARIA.Usuario := ArquivoIni.ReadString('WS_TESOURARIA', 'USUARIO', '');
    Cfg_WS_TESOURARIA.Senha := ArquivoIni.ReadString('WS_TESOURARIA', 'SENHA', '');
    Cfg_WS_TESOURARIA.Senha64 := ArquivoIni.ReadString('WS_TESOURARIA', 'SENHA64', '');

    Cfg_WS_SALDO.Tag := 'WS_SALDO';
    Cfg_WS_SALDO.Descricao := ArquivoIni.ReadString('WS_SALDO', 'DESCRICAO', '');
    Cfg_WS_SALDO.EndPoint := ArquivoIni.ReadString('WS_SALDO', 'ENDPOINT', '');
    Cfg_WS_SALDO.Usuario := ArquivoIni.ReadString('WS_SALDO', 'USUARIO', '');
    Cfg_WS_SALDO.Senha := ArquivoIni.ReadString('WS_SALDO', 'SENHA', '');
    Cfg_WS_SALDO.Senha64 := ArquivoIni.ReadString('WS_SALDO', 'SENHA64', '');

    Cfg_WS_TRANSFERENCIA_ENTRE_CONTAS_TED.Tag := 'WS_TRANSFERENCIA_ENTRE_CONTAS_TED';
    Cfg_WS_TRANSFERENCIA_ENTRE_CONTAS_TED.Descricao := ArquivoIni.ReadString('WS_TRANSFERENCIA_ENTRE_CONTAS_TED', 'DESCRICAO', '');
    Cfg_WS_TRANSFERENCIA_ENTRE_CONTAS_TED.EndPoint := ArquivoIni.ReadString('WS_TRANSFERENCIA_ENTRE_CONTAS_TED', 'ENDPOINT', '');
    Cfg_WS_TRANSFERENCIA_ENTRE_CONTAS_TED.Usuario := ArquivoIni.ReadString('WS_TRANSFERENCIA_ENTRE_CONTAS_TED', 'USUARIO', '');
    Cfg_WS_TRANSFERENCIA_ENTRE_CONTAS_TED.Senha := ArquivoIni.ReadString('WS_TRANSFERENCIA_ENTRE_CONTAS_TED', 'SENHA', '');
    Cfg_WS_TRANSFERENCIA_ENTRE_CONTAS_TED.Senha64 := ArquivoIni.ReadString('WS_TRANSFERENCIA_ENTRE_CONTAS_TED', 'SENHA64', '');

    Cfg_WS_EXTRATO.Tag := 'WS_EXTRATO';
    Cfg_WS_EXTRATO.Descricao := ArquivoIni.ReadString('WS_EXTRATO', 'DESCRICAO', '');
    Cfg_WS_EXTRATO.EndPoint := ArquivoIni.ReadString('WS_EXTRATO', 'ENDPOINT', '');
    Cfg_WS_EXTRATO.Usuario := ArquivoIni.ReadString('WS_EXTRATO', 'USUARIO', '');
    Cfg_WS_EXTRATO.Senha := ArquivoIni.ReadString('WS_EXTRATO', 'SENHA', '');
    Cfg_WS_EXTRATO.Senha64 := ArquivoIni.ReadString('WS_EXTRATO', 'SENHA64', '');

    Cfg_WS_COBRANCA.Tag := 'WS_COBRANCA';
    Cfg_WS_COBRANCA.Descricao := ArquivoIni.ReadString('WS_COBRANCA', 'DESCRICAO', '');
    Cfg_WS_COBRANCA.EndPoint := ArquivoIni.ReadString('WS_COBRANCA', 'ENDPOINT', '');
    Cfg_WS_COBRANCA.Usuario := ArquivoIni.ReadString('WS_COBRANCA', 'USUARIO', '');
    Cfg_WS_COBRANCA.Senha := ArquivoIni.ReadString('WS_COBRANCA', 'SENHA', '');
    Cfg_WS_COBRANCA.Senha64 := ArquivoIni.ReadString('WS_COBRANCA', 'SENHA64', '');

    Cfg_WS_CONSULTAR_DADOS_CLIENTE.Tag := 'WS_CONSULTAR_DADOS_CLIENTE';
    Cfg_WS_CONSULTAR_DADOS_CLIENTE.Descricao := ArquivoIni.ReadString('WS_CONSULTAR_DADOS_CLIENTE', 'DESCRICAO', '');
    Cfg_WS_CONSULTAR_DADOS_CLIENTE.EndPoint := ArquivoIni.ReadString('WS_CONSULTAR_DADOS_CLIENTE', 'ENDPOINT', '');
    Cfg_WS_CONSULTAR_DADOS_CLIENTE.Usuario := ArquivoIni.ReadString('WS_CONSULTAR_DADOS_CLIENTE', 'USUARIO', '');
    Cfg_WS_CONSULTAR_DADOS_CLIENTE.Senha := ArquivoIni.ReadString('WS_CONSULTAR_DADOS_CLIENTE', 'SENHA', '');
    Cfg_WS_CONSULTAR_DADOS_CLIENTE.Senha64 := ArquivoIni.ReadString('WS_CONSULTAR_DADOS_CLIENTE', 'SENHA64', '');

    Cfg_WS_CONSULTAR_MODALIDADE_CLIENTE.Tag := 'WS_CONSULTAR_MODALIDADE_CLIENTE';
    Cfg_WS_CONSULTAR_MODALIDADE_CLIENTE.Descricao := ArquivoIni.ReadString('WS_CONSULTAR_MODALIDADE_CLIENTE', 'DESCRICAO', '');
    Cfg_WS_CONSULTAR_MODALIDADE_CLIENTE.EndPoint := ArquivoIni.ReadString('WS_CONSULTAR_MODALIDADE_CLIENTE', 'ENDPOINT', '');
    Cfg_WS_CONSULTAR_MODALIDADE_CLIENTE.Usuario := ArquivoIni.ReadString('WS_CONSULTAR_MODALIDADE_CLIENTE', 'USUARIO', '');
    Cfg_WS_CONSULTAR_MODALIDADE_CLIENTE.Senha := ArquivoIni.ReadString('WS_CONSULTAR_MODALIDADE_CLIENTE', 'SENHA', '');
    Cfg_WS_CONSULTAR_MODALIDADE_CLIENTE.Senha64 := ArquivoIni.ReadString('WS_CONSULTAR_MODALIDADE_CLIENTE', 'SENHA64', '');

    Cfg_WS_CONSULTAR_CONTAS_CLIENTES.Tag := 'WS_CONSULTAR_CONTAS_CLIENTES';
    Cfg_WS_CONSULTAR_CONTAS_CLIENTES.Descricao := ArquivoIni.ReadString('WS_CONSULTAR_CONTAS_CLIENTES', 'DESCRICAO', '');
    Cfg_WS_CONSULTAR_CONTAS_CLIENTES.EndPoint := ArquivoIni.ReadString('WS_CONSULTAR_CONTAS_CLIENTES', 'ENDPOINT', '');
    Cfg_WS_CONSULTAR_CONTAS_CLIENTES.Usuario := ArquivoIni.ReadString('WS_CONSULTAR_CONTAS_CLIENTES', 'USUARIO', '');
    Cfg_WS_CONSULTAR_CONTAS_CLIENTES.Senha := ArquivoIni.ReadString('WS_CONSULTAR_CONTAS_CLIENTES', 'SENHA', '');
    Cfg_WS_CONSULTAR_CONTAS_CLIENTES.Senha64 := ArquivoIni.ReadString('WS_CONSULTAR_CONTAS_CLIENTES', 'SENHA64', '');

    Cfg_WS_CONSULTAR_DOMINIOS.Tag := 'WS_CONSULTAR_DOMINIOS';
    Cfg_WS_CONSULTAR_DOMINIOS.Descricao := ArquivoIni.ReadString('WS_CONSULTAR_DOMINIOS', 'DESCRICAO', '');
    Cfg_WS_CONSULTAR_DOMINIOS.EndPoint := ArquivoIni.ReadString('WS_CONSULTAR_DOMINIOS', 'ENDPOINT', '');
    Cfg_WS_CONSULTAR_DOMINIOS.Usuario := ArquivoIni.ReadString('WS_CONSULTAR_DOMINIOS', 'USUARIO', '');
    Cfg_WS_CONSULTAR_DOMINIOS.Senha := ArquivoIni.ReadString('WS_CONSULTAR_DOMINIOS', 'SENHA', '');
    Cfg_WS_CONSULTAR_DOMINIOS.Senha64 := ArquivoIni.ReadString('WS_CONSULTAR_DOMINIOS', 'SENHA64', '');

    Cfg_WS_SALDO_DATA.Tag := 'WS_SALDO_DATA';
    Cfg_WS_SALDO_DATA.Descricao := ArquivoIni.ReadString('WS_SALDO_DATA', 'DESCRICAO', '');
    Cfg_WS_SALDO_DATA.EndPoint := ArquivoIni.ReadString('WS_SALDO_DATA', 'ENDPOINT', '');
    Cfg_WS_SALDO_DATA.Usuario := ArquivoIni.ReadString('WS_SALDO_DATA', 'USUARIO', '');
    Cfg_WS_SALDO_DATA.Senha := ArquivoIni.ReadString('WS_SALDO_DATA', 'SENHA', '');
    Cfg_WS_SALDO_DATA.Senha64 := ArquivoIni.ReadString('WS_SALDO_DATA', 'SENHA64', '');

    Cfg_WS_EXTRATO_CONCILIACA_CNAB_240.Tag := 'WS_EXTRATO_CONCILIACA_CNAB_240';
    Cfg_WS_EXTRATO_CONCILIACA_CNAB_240.Descricao := ArquivoIni.ReadString('WS_EXTRATO_CONCILIACA_CNAB_240', 'DESCRICAO', '');
    Cfg_WS_EXTRATO_CONCILIACA_CNAB_240.EndPoint := ArquivoIni.ReadString('WS_EXTRATO_CONCILIACA_CNAB_240', 'ENDPOINT', '');
    Cfg_WS_EXTRATO_CONCILIACA_CNAB_240.Usuario := ArquivoIni.ReadString('WS_EXTRATO_CONCILIACA_CNAB_240', 'USUARIO', '');
    Cfg_WS_EXTRATO_CONCILIACA_CNAB_240.Senha := ArquivoIni.ReadString('WS_EXTRATO_CONCILIACA_CNAB_240', 'SENHA', '');
    Cfg_WS_EXTRATO_CONCILIACA_CNAB_240.Senha64 := ArquivoIni.ReadString('WS_EXTRATO_CONCILIACA_CNAB_240', 'SENHA64', '');

    Cfg_WS_CONSULTA_MODALIDADE.Tag := 'WS_CONSULTA_MODALIDADE';
    Cfg_WS_CONSULTA_MODALIDADE.Descricao := ArquivoIni.ReadString('WS_CONSULTA_MODALIDADE', 'DESCRICAO', '');
    Cfg_WS_CONSULTA_MODALIDADE.EndPoint := ArquivoIni.ReadString('WS_CONSULTA_MODALIDADE', 'ENDPOINT', '');
    Cfg_WS_CONSULTA_MODALIDADE.Usuario := ArquivoIni.ReadString('WS_CONSULTA_MODALIDADE', 'USUARIO', '');
    Cfg_WS_CONSULTA_MODALIDADE.Senha := ArquivoIni.ReadString('WS_CONSULTA_MODALIDADE', 'SENHA', '');
    Cfg_WS_CONSULTA_MODALIDADE.Senha64 := ArquivoIni.ReadString('WS_CONSULTA_MODALIDADE', 'SENHA64', '');

    Cfg_WS_SERVICO_PAGAMENTO.Tag := 'WS_SERVICO_PAGAMENTO';
    Cfg_WS_SERVICO_PAGAMENTO.Descricao := ArquivoIni.ReadString('WS_SERVICO_PAGAMENTO', 'DESCRICAO', '');
    Cfg_WS_SERVICO_PAGAMENTO.EndPoint := ArquivoIni.ReadString('WS_SERVICO_PAGAMENTO', 'ENDPOINT', '');
    Cfg_WS_SERVICO_PAGAMENTO.Usuario := ArquivoIni.ReadString('WS_SERVICO_PAGAMENTO', 'USUARIO', '');
    Cfg_WS_SERVICO_PAGAMENTO.Senha := ArquivoIni.ReadString('WS_SERVICO_PAGAMENTO', 'SENHA', '');
    Cfg_WS_SERVICO_PAGAMENTO.Senha64 := ArquivoIni.ReadString('WS_SERVICO_PAGAMENTO', 'SENHA64', '');

    Cfg_WS_SERVICO_EBANK.Tag := 'WS_SERVICO_EBANK';
    Cfg_WS_SERVICO_EBANK.Descricao := ArquivoIni.ReadString('WS_SERVICO_EBANK', 'DESCRICAO', '');
    Cfg_WS_SERVICO_EBANK.EndPoint := ArquivoIni.ReadString('WS_SERVICO_EBANK', 'ENDPOINT', '');
    Cfg_WS_SERVICO_EBANK.Usuario := ArquivoIni.ReadString('WS_SERVICO_EBANK', 'USUARIO', '');
    Cfg_WS_SERVICO_EBANK.Senha := ArquivoIni.ReadString('WS_SERVICO_EBANK', 'SENHA', '');
    Cfg_WS_SERVICO_EBANK.Senha64 :=  ArquivoIni.ReadString('WS_SERVICO_EBANK', 'SENHA64', '');


    Cfg_WS_CONSULTAR_CONTAS_CLIENTES_V5.Tag := 'WS_CONSULTAR_CONTAS_CLIENTES_V5';
    Cfg_WS_CONSULTAR_CONTAS_CLIENTES_V5.Descricao := ArquivoIni.ReadString('WS_CONSULTAR_CONTAS_CLIENTES_V5', 'DESCRICAO', '');
    Cfg_WS_CONSULTAR_CONTAS_CLIENTES_V5.EndPoint := ArquivoIni.ReadString('WS_CONSULTAR_CONTAS_CLIENTES_V5', 'ENDPOINT', '');
    Cfg_WS_CONSULTAR_CONTAS_CLIENTES_V5.Usuario := ArquivoIni.ReadString('WS_CONSULTAR_CONTAS_CLIENTES_V5', 'USUARIO', '');
    Cfg_WS_CONSULTAR_CONTAS_CLIENTES_V5.Senha := ArquivoIni.ReadString('WS_CONSULTAR_CONTAS_CLIENTES_V5', 'SENHA', '');
    Cfg_WS_CONSULTAR_CONTAS_CLIENTES_V5.Senha64 :=  ArquivoIni.ReadString('WS_CONSULTAR_CONTAS_CLIENTES_V5', 'SENHA64', '');
  except
    on E: Exception do
    begin
      Application.MessageBox('Não foi possível carregar configuração de conexão com banco de dados.',
          'Atenção', MB_OK + MB_ICONEXCLAMATION + MB_DEFBUTTON1 + MB_APPLMODAL);
      Application.Terminate;
    end;
  end;
  ArquivoIni.Free;
end;

function TDMConecta.Valida_Ambeinte: Boolean;
begin
  if Cfg_ambiente.local <> 'homologacao' then
    Result := True
  else
    Result := False;
end;

procedure TDMConecta.ADOComiteBeforeConnect(Sender: TObject);
begin
  if Valida_Ambeinte then
  begin

    IniComite := TIniFile.Create('C:\Documents and Settings\' + UsuarioLogado +'\CapitalDeGiro.ini');

    if not IniComite.ReadBool('BD_Comite', 'Conectado', False) then
    begin
      if InputQuery('Banco de Dados - Comite',
        'Informe o nome do servidor. Caso seja a primeira vez, clique em OK.',
        Cfg_BD_COMITE.local) then
        IniComite.WriteString('BD_Comite', 'Local', Cfg_BD_COMITE.local)
      else
        Application.Terminate;
    end;
  end;

  ADOComite.ConnectionString := 'Provider=SQLOLEDB.1;'+
                                'Password='+Cfg_BD_COMITE.Senha+ ';' +           
                                'Persist Security Info=True;'+
                                'User ID='+Cfg_BD_COMITE.Usuario+ ';' +          
                                'Initial Catalog='+Cfg_BD_COMITE.DataBase+ ';' + 
                                'Data Source=' + Cfg_BD_COMITE.Local;            
end;

procedure TDMConecta.ADOComiteAfterConnect(Sender: TObject);
begin
  If Assigned(FrmApresentacao) then
    FrmApresentacao.Mensagem('Conectado Comite...');

  IF Valida_Ambeinte then
    IniComite.WriteBool('BD_Comite', 'Conectado', ADOComite.Connected);

  ADOComite.Open;
end;

end.
