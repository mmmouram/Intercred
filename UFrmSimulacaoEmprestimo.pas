unit UFrmSimulacaoEmprestimo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UFrmmaster, ExtCtrls, StdCtrls, Buttons, DB, ADODB, Mask;

type
  TFrmSimulacaoEmprestimo = class(TFrmMaster)
    ScrollBox1: TScrollBox;
    Panel1: TPanel;
    BitBtnDireto: TBitBtn;
    BitBtnPreview: TBitBtn;
    BitBtnSair: TBitBtn;
    GroupBox3: TGroupBox;
    EditCarteira: TEdit;
    BitBtnCarteira: TBitBtn;
    PanelCarteira: TPanel;
    GroupBox2: TGroupBox;
    Proposta: TEdit;
    GroupBox4: TGroupBox;
    PanelCedente: TPanel;
    EditCedente: TEdit;
    BitBtnProcuraCedente: TBitBtn;
    procedure EditCarteiraExit(Sender: TObject);
    procedure EditCarteiraKeyPress(Sender: TObject; var Key: Char);
    procedure BitBtnCarteiraClick(Sender: TObject);
    procedure BitBtnProcuraCedenteClick(Sender: TObject);
    procedure EditCedenteKeyPress(Sender: TObject; var Key: Char);
    procedure EditCedenteExit(Sender: TObject);
    procedure PropostaExit(Sender: TObject);
    procedure PropostaKeyPress(Sender: TObject; var Key: Char);
    procedure BitBtnPreviewClick(Sender: TObject);
    procedure BitBtnDiretoClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtnSairClick(Sender: TObject);
    procedure DataInicialExit(Sender: TObject);
    procedure DataFinalExit(Sender: TObject);
    procedure PropostaChange(Sender: TObject);
  private
    CarteiraAdministrativa: String;
    CodigoPromotor, VImprime, Auxs, GrupoEconomico: String;
    procedure Ativa_relatorio;
    procedure Botoes(Direto, Preview, Sair: boolean);
  public
  end;

var
  FrmSimulacaoEmprestimo: TFrmSimulacaoEmprestimo;

implementation

Uses UDMDados, UDmConecta, UUTil, UFrmAuxProcura, UFrmPesquisaCedenteSacado,
  UQRSimulacaoEmprestimo;

{$R *.dfm}

procedure TFrmSimulacaoEmprestimo.EditCarteiraExit(Sender: TObject);
begin
  inherited;
  If (EditCarteira.Text <> '') then
  begin
    DMDados.ADOExecuta.close;
    DMDados.ADOExecuta.SQL.Clear;
    DMDados.ADOExecuta.SQL.Add
      ('SELECT TOP 1 CLACOD, CLANOM, CLAADM FROM FACTBCLA WHERE CLACOD = ' + #39
      + EditCarteira.Text + #39);
    DMDados.ADOExecuta.Open;
    if (DMDados.ADOExecuta.FieldByName('CLACOD').AsString <>
      EditCarteira.Text) Then
    Begin
      ShowMessage('Codigo da carteira não encontrado.');
      EditCarteira.SetFocus;
      Abort;
    end;
    PanelCarteira.Caption := DMDados.ADOExecuta.FieldByName('CLANOM').AsString;
    CarteiraAdministrativa := DMDados.ADOExecuta.FieldByName('CLAADM').AsString;
    DMDados.ADOExecuta.close;
  end
  else
    PanelCarteira.Caption := '';

end;

procedure TFrmSimulacaoEmprestimo.EditCarteiraKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  if not(Key in ['a' .. 'z', 'A' .. 'Z', #13]) then
    Key := #0;
end;

procedure TFrmSimulacaoEmprestimo.BitBtnCarteiraClick(Sender: TObject);
begin
  inherited;
  DMDados.ADOExecuta.close;
  DMDados.ADOExecuta.SQL.Clear;
  DMDados.ADOExecuta.SQL.Add('SELECT CLACOD, CLANOM Codigo FROM FACTBCLA');
  DMDados.ADOExecuta.Open;
  with (DMDados) do
  Begin
    Auxs := AuxProcura(ADOExecuta, 'CODIGO');
    if (Auxs <> '') Then
    Begin
      EditCarteira.Text := Auxs;
      EditCarteiraExit(Sender);
    end
    else
    Begin
      EditCarteira.SetFocus;
      Abort;
    end;
  end;
  DMDados.ADOExecuta.close;
end;

procedure TFrmSimulacaoEmprestimo.BitBtnProcuraCedenteClick(Sender: TObject);
begin
  inherited;
  with (DMDados) do
  Begin
    EditCedente.Text := '';
    PanelCedente.Caption := '';
    Auxs := PesquisaCedanteSacado('C', True);
    if (Auxs <> '') then
    begin
      EditCedente.Text := Auxs;
      EditCedenteExit(Sender);
    end
    else
      EditCedente.Text := '';
  end;

end;

procedure TFrmSimulacaoEmprestimo.EditCedenteKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  if not(Key in [',', '0' .. '9', #8, #13]) then
    Key := #0;
end;

procedure TFrmSimulacaoEmprestimo.EditCedenteExit(Sender: TObject);
begin
  inherited;
  if (EditCedente.Text <> '') then
  begin
    if (pos(',', EditCedente.Text) = 0) Then
    begin
      DMDados.ADOExecuta.close;
      DMDados.ADOExecuta.SQL.Clear;
      DMDados.ADOExecuta.SQL.Add
        ('SELECT TOP 1 CLINOM, CLICOD FROM FACTBCLI WHERE CLICOD = ' +
        EditCedente.Text + ' and CLITIP = ''C''');
      DMDados.ADOExecuta.Open;
      If (DMDados.ADOExecuta.RecordCount = 0) then
      Begin
        ShowMessage('Codigo do cedente não encontrado.');
        EditCedente.SetFocus;
        Abort;
      end;
      PanelCedente.Caption := DMDados.ADOExecuta.Fields[0].AsString;
      DMDados.ADOExecuta.close;
    end
    else
    begin
      Auxs := EditCedente.Text;
      while pos(',,', Auxs) > 0 do
        delete(Auxs, pos(',,', Auxs), 1);
      EditCedente.Text := Auxs;
    end;
  end
  else
    PanelCedente.Caption := '';
end;

procedure TFrmSimulacaoEmprestimo.PropostaExit(Sender: TObject);
begin
  inherited;
  OnExit(Sender);
  if ((Proposta.Text <> '') and (EditCarteira.Text <> '')) then
  begin
    Auxs := ' Select pro.proclie, cli.clinom, prodtop, cliemptitu, Prooper, TipoFinanciamento '
      + ' from kg_simulacaoProposta pro ' +
      ' join factbcli cli on cli.clicod = pro.proclie and cli.clitip = ''C'' ' +
      ' join kg_produto PRD on CodigoProduto = pro.prodocumen ' +
      ' where pro.proprop = ' + Proposta.Text + ' and pro.proclas = ' + #39 +
      EditCarteira.Text + #39;

    with (DMDados.ADOExecuta) do
    begin
      close;
      SQL.Clear;
      SQL.Add(Auxs);
      Open;
      if (Recordset.RecordCount < 1) then
      begin
        ShowMessage('Proposta não encontrada ou está cancelada.');
        Proposta.SetFocus;
        Abort;
      end
      else if (Fields[5].AsString = 'DES') then
      begin
        Application.MessageBox
          ('Impressão de Simulação só para PRODUTO EMPRÉSTIMO. ', 'Atenção',
          MB_OK + MB_DEFBUTTON1 + MB_APPLMODAL);
        Proposta.SetFocus;
        Abort;
      end;
      EditCedente.Text := FieldByName('Proclie').AsString;
      PanelCedente.Caption := FieldByName('Clinom').AsString;
      GrupoEconomico := FieldByName('cliemptitu').AsString;
      CodigoPromotor := FieldByName('prooper').AsString;

    end;
  end;

end;

procedure TFrmSimulacaoEmprestimo.PropostaKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  if not(Key in ['0' .. '9', #8, #13]) then
    Key := #0;

end;

procedure TFrmSimulacaoEmprestimo.BitBtnPreviewClick(Sender: TObject);
begin
  inherited;
  VImprime := 'PREVIEW';
  Ativa_relatorio;
end;

procedure TFrmSimulacaoEmprestimo.BitBtnDiretoClick(Sender: TObject);
begin
  inherited;
  VImprime := 'DIRETO';
  Ativa_relatorio;
end;

procedure TFrmSimulacaoEmprestimo.Ativa_relatorio;
begin

  if (Proposta.Text = '') then
  Begin
    ShowMessage('Nº da proposta não foi informado.');
    Proposta.SetFocus;
    Abort;
  end;

  Try
    Botoes(False, False, False);

    Auxs := ' select proclas, prooper, proprop, prodtop, proclie, proFloa, ' +
      ' clinom, clipes , clicgc+isnull(clicgcfili,'''')+isnull(clicgcdv,'''') as Inscricao '
      + ' ,provrbo, proliqu ,pro.TaxaAberturaCredito' +
      ' ,provrio, provriofc,IOFValorTeto,IOFBeneficio,IOFAtraso,ItemVrIOFCobrado'
      + ' ,isnull(provrio,0) + isnull(provriofc,0) as IOF ' +
      ' , ProValorCarencia, ProDiasCarencia ' +
      ' ,(case when isnull(ProTipoPagtoTac,''V'') = ''V'' then ''À Vista'' ' +
      '       else ''Financiado'' end) as ProTipoPagtoTac ' +
      ' ,(case when isnull(ProTipoPagtoIOF,''V'') = ''V'' then ''À Vista'' ' +
      '        when ProtipoPagtoIOF = ''F'' then ''Financiado'' ' +
      '        when ProTipoPagtoIOF = ''I'' then ''Isento'' ' +
      '        else '''' end ) as ProTipoPagtoIOF ' +
      ' , ProValorTacs, ITEORDE, itedtve, itejuros, Itevrti, iteamortizacao ' +
      ' ,iif(pro.ProTipoPagtoIOF = ''V'', 0, isnull(itevrio,0) + isnull(itevriofc,0)) as IOF_ITEM '
      + ' ,iif(pro.ProTipoPagtoIOF = ''V'', 0, itevrio) as itevrio, iif(pro.ProTipoPagtoIOF = ''V'', 0, itevriofc) as itevriofc '
      + ' , ProValorFinanciado ' +
      ' , ( case when TipoFinanciamento <> ''POS'' then PROTXME ' +
      '          when TipoFinanciamento = ''POS'' and prd.moeda = ''IGPM'' then PROTXME '
      + '        else TaxanominalPosFixada end) as PROTXME '
      + ' , provrdc, provrcac, ProDesp, proccob, protaxaadministrativa ' +
      ' ,prodiascarencia, provalorcarencia, IteIntervalo, Itepraz, IteFatorPrazo '
      + ' ,iteliqu, ITEPMEF, ProValorLiberado, PROAJUSTEIOF, IteVencimentoReal '
      + ' ,prd.Descricao, ProDocumen, ItePercentualValorPMT, ItePrazoIOF ' +
      ' , PROTXEF, CustoEfetivoTotal,'
      + ' case when prodocumen in ( 18, 2, 10, 14, 1, 42 , 3) then cast( (isnull(proliqu,0))/PROVRBO*100 as numeric(15,2))+cast( (isnull(provrio,0) + isnull(provriofc,0))/PROVRBO*100 as numeric(15,2)) +'
      + ' cast((isnull(provrdc,0)+ isnull(provrip,0)+ isnull(provrcac,0)+ isnull(PROVRTEO,0)+ isnull(proccob,0)+isnull(provalorTMF,0)+  isnull(ProTarifaDigitacao,0)+ isnull(prodesp,0)+ isnull(protxre,0)+ isnull(protxca,0)+'
      + ' isnull(provrsa,0)+ isnull(provrrisco,0)+ isnull(proTaxaAdministrativa,0)+ '
      + ' isnull(pro.TaxaAberturaCredito,0)) /PROVRBO*100 as numeric(15,2)) when prodocumen in (32, 17) then 100 else 0 end  valorfinanciado,'
      + ' case when prodocumen  in (32, 17, 18, 2, 10, 14, 1, 42 , 3) then cast( (isnull(proliqu,0))/PROVRBO*100 as numeric(15,2)) else 0 end somatoriomutuo ,'
      + ' case when prodocumen  in (32, 17, 18, 2, 10, 14, 1, 42 , 3) then cast( (isnull(provrio,0) + isnull(provriofc,0))/PROVRBO*100 as numeric(15,2)) else 0 end somatorioiof ,'
      + ' case when prodocumen  in (32, 17, 18, 2, 10, 14, 1, 42 , 3) then cast((isnull(provrdc,0)+ isnull(provrip,0)+ isnull(provrcac,0)+ isnull(PROVRTEO,0)+ isnull(proccob,0)+ '
       +' isnull(provalorTMF,0)+  isnull(ProTarifaDigitacao,0)+ isnull(prodesp,0)+ isnull(protxre,0)+ isnull(protxca,0)+ isnull(provrsa,0)+ isnull(provrrisco,0)+ isnull(proTaxaAdministrativa,0)+'
       +' isnull(pro.TaxaAberturaCredito,0)) /PROVRBO*100 as numeric(15,2)) else 0 end somatoriotarifas, valor_ecg,Itevalor_ecg'

      + ' from kg_simulacaoProposta pro      with (nolock) ' +
      ' join kg_simulacaoProposta_item ite With (nolock) on ite.iteprop = pro.proprop and ite.iteclas = pro.proclas '
      + ' join kg_produto prd with (nolock) on prd.CodigoProduto = Prodocumen '
      + ' join factbcli Cli                  with (nolock) on cli.clicod  = pro.proclie and cli.clitip = ''C'' '
      + ' where pro.proprop = ' + IntToStr(StrToInt64Def(Proposta.Text, 0)) +
      ' order by Iteorde ';

    if not(Assigned(TQRSimulacaoEmprestimo(QRSimulacaoEmprestimo))) then
      TQRSimulacaoEmprestimo(QRSimulacaoEmprestimo) :=
        TQRSimulacaoEmprestimo.Create(nil);

    with (QRSimulacaoEmprestimo) do
    begin
      ADOAnalitico.close;
      ADOAnalitico.CommandText := Auxs;
      ADOAnalitico.Open;
      IF VImprime = 'PREVIEW' then
        PreviewModal
      else
        Print;
      ADOAnalitico.close;

      QRSimulacaoEmprestimo.Free;
      QRSimulacaoEmprestimo := Nil;
    end;
  except
    on E: Exception do
      MessageDlg(' Mensagem: ' + E.Message, mtError, [mbOK], 0);
    else
      ShowMessage('Foi encontrado um parâmetro inesperado.');
    Botoes(True, True, True);
  end;
  Botoes(True, True, True);
end;

procedure TFrmSimulacaoEmprestimo.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  Action := caFree;
  FrmSimulacaoEmprestimo := nil;
end;

procedure TFrmSimulacaoEmprestimo.BitBtnSairClick(Sender: TObject);
begin
  inherited;
  close;
end;

procedure TFrmSimulacaoEmprestimo.Botoes(Direto, Preview, Sair: boolean);
begin
  BitBtnDireto.Enabled := Direto;
  BitBtnPreview.Enabled := Preview;
  BitBtnSair.Enabled := Sair;

end;

procedure TFrmSimulacaoEmprestimo.DataInicialExit(Sender: TObject);
begin
  inherited;
  OnExit(Sender);
  TMaskEdit(Sender).Text := CorrigeData(TMaskEdit(Sender).Text);
end;

procedure TFrmSimulacaoEmprestimo.DataFinalExit(Sender: TObject);
begin
  inherited;
  OnExit(Sender);
  TMaskEdit(Sender).Text := CorrigeData(TMaskEdit(Sender).Text);

end;

procedure TFrmSimulacaoEmprestimo.PropostaChange(Sender: TObject);
begin
  inherited;
  EditCedente.Clear;
  PanelCedente.Caption := '';
end;

end.
