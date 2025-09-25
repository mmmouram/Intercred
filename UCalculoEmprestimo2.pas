unit UCalculoEmprestimo2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UFrmmaster, DB, ADODB, ExtCtrls, DBCtrls, StdCtrls, Mask,
  Buttons, Grids, DBGrids, ComCtrls, Math, DateUtils, UUtil;

type
  TTipoArray = Array of array of Double;

Function CalculaContratoMisto2(TipoPagtoIOF: String;
  QdeParcelas, TaxaMes, TaxaIofAno, ValorFinanciado: Double;
  PrimeiroCalculo: TTipoArray; DataContrato: TdateTime;
  TaxaIofComplementar: Double;codigoproduto:string): TTipoArray;

  Function CalculaContratoMisto3(TipoPagtoIOF: String;
  QdeParcelas, TaxaMes, TaxaIofAno, ValorFinanciado: Double;
  PrimeiroCalculo: TTipoArray; DataContrato: TdateTime;
  TaxaIofComplementar: Double): TTipoArray;

Function CalculaContratoMistoIGPM(TipoPagtoIOF: String;
  QdeParcelas, TaxaMes, TaxaIofAno, ValorFinanciado: Double;
  PrimeiroCalculo: TTipoArray; DataContrato: TdateTime;
  TaxaIofComplementar: Double): TTipoArray;

implementation

Function CalculaContratoMisto2(TipoPagtoIOF: String;
  QdeParcelas, TaxaMes, TaxaIofAno, ValorFinanciado: Double;
  PrimeiroCalculo: TTipoArray; DataContrato: TdateTime;
  TaxaIofComplementar: Double;codigoproduto:string): TTipoArray;
Var
  DataAnterior, DataVencimento, VencimentoReal: TdateTime;
  ValorIOF, ValorPMT, ValorPMT_Anterior, ValorAmortizacao, AmortizacaoAnterior,
    ValorJuros, TaxaDiaria, SaldoDevedor, FatorContrato, FatorPrazo, TxaIofDia,
    FatorIntervalo, Prazo, Prazoiof, Intervalo, BaseCalculo,
    ValorIOFComplementar, LBaseCalculoAntiga, LNovoIOF,
    LNovoIOFComplementar: Double;
  TotalItens: word;
  TaxaDiaria2,teste: String;
  possuecarencia:integer;
begin
   teste:= codigoproduto;
  TotalItens := 1;
  possuecarencia:=0;
   while (TotalItens <= QdeParcelas) do
  begin
   if (PrimeiroCalculo[8, TotalItens] <> 1) then
    possuecarencia:=possuecarencia+30;
   Inc(TotalItens);
  end;

  FatorContrato := 0;
  TxaIofDia := 0.00;
  TaxaDiaria := power(1 + (TaxaMes / 100), 1 / 30);
  TxaIofDia := ArredondaValor(TaxaIofAno / 365, 4);
  TotalItens := 1;
  BaseCalculo := ValorFinanciado;
  while (TotalItens <= QdeParcelas) do
  begin
    DataVencimento := PrimeiroCalculo[0, TotalItens];
    if (possuecarencia>0) and (PrimeiroCalculo[8, TotalItens] =1) then
    begin
    Prazo := PrimeiroCalculo[1, TotalItens];
    prazo:=prazo-possuecarencia;
    end
    else
    Prazo := PrimeiroCalculo[1, TotalItens];
    Intervalo := PrimeiroCalculo[2, TotalItens];

       if (PrimeiroCalculo[8, TotalItens] <> 1) then
       fatorprazo:=0
      else
      FatorPrazo := ArredondaValor(power(1 / TaxaDiaria, Prazo), 11);
    FatorIntervalo := ArredondaValor(power(TaxaDiaria, (Intervalo / 1))
      - 1, 11);

    if (PrimeiroCalculo[8, TotalItens] = 1) then
      FatorContrato := FatorContrato + FatorPrazo;

    PrimeiroCalculo[3, TotalItens] := FatorPrazo;
    PrimeiroCalculo[4, TotalItens] := FatorIntervalo;

    Inc(TotalItens);
  end;

  ValorPMT := BaseCalculo / FatorContrato;

  ValorPMT_Anterior := ValorPMT;

  SaldoDevedor := BaseCalculo;
  PrimeiroCalculo[9, 0] := SaldoDevedor;
  TotalItens := 1;
  ValorIOF := 0;
  ValorIOFComplementar := 0;

  while (TotalItens <= QdeParcelas) do
  begin
    Prazo := PrimeiroCalculo[1, TotalItens];
    FatorPrazo := PrimeiroCalculo[3, TotalItens];
    Prazoiof := PrimeiroCalculo[10, TotalItens];

    FatorIntervalo := PrimeiroCalculo[4, TotalItens];
    if (TaxaMes <> 0) then
      ValorJuros := SaldoDevedor * FatorIntervalo
    else
      ValorJuros := 0;

    if (PrimeiroCalculo[8, TotalItens] = 1) then
    begin
      ValorAmortizacao := ValorPMT - ValorJuros;

      PrimeiroCalculo[7, TotalItens] := calculaIof(ValorAmortizacao, 1, TaxaMes,
        Prazoiof, TaxaIofAno, TipoPagtoIOF, DataContrato);
      PrimeiroCalculo[12, TotalItens] := calculaIofComplementar(ValorPMT,
        ValorAmortizacao, TaxaIofComplementar, TipoPagtoIOF, DataContrato);

    end
    else
    begin
      ValorAmortizacao := 0;
      PrimeiroCalculo[7, TotalItens] := 0;
      PrimeiroCalculo[12, TotalItens] := 0;
    end;

    SaldoDevedor := SaldoDevedor - ValorAmortizacao;

    PrimeiroCalculo[5, TotalItens] := ValorJuros;

    PrimeiroCalculo[6, TotalItens] := ValorAmortizacao;

    ValorIOF := ValorIOF + PrimeiroCalculo[7, TotalItens];

    ValorIOFComplementar := ValorIOFComplementar + PrimeiroCalculo
      [12, TotalItens];

    Inc(TotalItens);

  end;

  if (TipoPagtoIOF = 'F') then
  begin
    LBaseCalculoAntiga := BaseCalculo;
    BaseCalculo := BaseCalculo + ValorIOF + ValorIOFComplementar;
  end;

  ValorPMT := BaseCalculo / FatorContrato;
  SaldoDevedor := BaseCalculo;
  PrimeiroCalculo[9, 0] := SaldoDevedor;
  PrimeiroCalculo[0, 0] := ValorPMT;
  TotalItens := 1;
  LNovoIOF := 0;
  LNovoIOFComplementar := 0;
  while (TotalItens <= QdeParcelas) do
  begin

    Prazo := PrimeiroCalculo[1, TotalItens];

    FatorPrazo := PrimeiroCalculo[3, TotalItens];
    Prazoiof := PrimeiroCalculo[10, TotalItens];
    FatorIntervalo := PrimeiroCalculo[4, TotalItens];
    ValorJuros := SaldoDevedor * FatorIntervalo;

    AmortizacaoAnterior := PrimeiroCalculo[6, TotalItens];

    ValorIOF := 0;
    ValorIOFComplementar := 0;
    ValorAmortizacao := 0;

    if (PrimeiroCalculo[8, TotalItens] = 1) then
    begin
      ValorAmortizacao := ValorPMT - ValorJuros;
      SaldoDevedor := SaldoDevedor - ValorAmortizacao;
      ValorIOF := calculaIof(ValorAmortizacao, 1, TaxaMes, Prazoiof, TaxaIofAno,
        TipoPagtoIOF, DataContrato);
      ValorIOFComplementar := calculaIofComplementar(ValorPMT, ValorAmortizacao,
        TaxaIofComplementar, TipoPagtoIOF, DataContrato);
    end;
    LNovoIOF := LNovoIOF + ValorIOF;
    LNovoIOFComplementar := LNovoIOFComplementar + ValorIOFComplementar;

    PrimeiroCalculo[5, TotalItens] := ValorJuros;
    PrimeiroCalculo[6, TotalItens] := ValorAmortizacao;
    PrimeiroCalculo[7, TotalItens] := ValorIOF;
    PrimeiroCalculo[12, TotalItens] := ValorIOFComplementar;

    Inc(TotalItens);
  end;

  if (TipoPagtoIOF = 'F') then
  begin
    BaseCalculo := LBaseCalculoAntiga + LNovoIOF + LNovoIOFComplementar;
  end;
  if (codigoproduto='17' ) or (codigoproduto='155') or (codigoproduto='79') or (codigoproduto='18') or (codigoproduto='78') or (codigoproduto='152') or (codigoproduto='32') or (codigoproduto= '42') or(codigoproduto='77') or(codigoproduto='65') or(codigoproduto='75') or(codigoproduto='71') or(codigoproduto='72') then
      begin
       LNovoIOF :=0;
       LNovoIOFcomplementar:=0;
      end;

  ValorPMT := BaseCalculo / FatorContrato;
  SaldoDevedor := BaseCalculo;
  PrimeiroCalculo[9, 0] := SaldoDevedor;
  PrimeiroCalculo[0, 0] := ValorPMT;
  TotalItens := 1;
  while (TotalItens <= QdeParcelas) do
  begin

    Prazo := PrimeiroCalculo[1, TotalItens];

    FatorPrazo := PrimeiroCalculo[3, TotalItens];
    Prazoiof := PrimeiroCalculo[10, TotalItens];
    FatorIntervalo := PrimeiroCalculo[4, TotalItens];
    ValorJuros := SaldoDevedor * FatorIntervalo;

    AmortizacaoAnterior := PrimeiroCalculo[6, TotalItens];

    ValorIOF := 0;
    ValorIOFComplementar := 0;
    ValorAmortizacao := 0;

    if (PrimeiroCalculo[8, TotalItens] = 1) then
    begin
      ValorAmortizacao := ValorPMT - ValorJuros;
      SaldoDevedor := SaldoDevedor - ValorAmortizacao;
      if (codigoproduto='17' )or (codigoproduto='78') or (codigoproduto='152') or (codigoproduto='155') or (codigoproduto='79') or (codigoproduto='18') or (codigoproduto='32') or (codigoproduto= '42') or(codigoproduto='77')or(codigoproduto='65') or(codigoproduto='75') or(codigoproduto='71') or(codigoproduto='72') then
      begin
         ValorIOF := calculaIof(ValorAmortizacao, 1, TaxaMes, Prazoiof, TaxaIofAno,
         TipoPagtoIOF, DataContrato);
         ValorIOFComplementar := calculaIofComplementar(ValorPMT, ValorAmortizacao,
         TaxaIofComplementar, TipoPagtoIOF, DataContrato);

         LNovoIOF := LNovoIOF + ValorIOF;
         LNovoIOFComplementar := LNovoIOFComplementar + ValorIOFComplementar;

      end;

    end;

    PrimeiroCalculo[5, TotalItens] := ValorJuros;
    PrimeiroCalculo[6, TotalItens] := ValorAmortizacao;
     if (codigoproduto='17' ) or (codigoproduto='152') or (codigoproduto='78') or (codigoproduto='155') or (codigoproduto='79') or (codigoproduto='18') or (codigoproduto='32') or (codigoproduto= '42') or(codigoproduto='77')or(codigoproduto='65') or(codigoproduto='75') or(codigoproduto='71') or(codigoproduto='72') then
      begin
       PrimeiroCalculo[7, TotalItens] := ValorIOF;
       PrimeiroCalculo[12, TotalItens] := ValorIOFComplementar;
      end;
    Inc(TotalItens);
  end;
  if (TipoPagtoIOF = 'F') then
  begin
    BaseCalculo := LBaseCalculoAntiga + LNovoIOF + LNovoIOFComplementar;
  end;

  if (codigoproduto='17' ) or (codigoproduto='78') or (codigoproduto='152') or (codigoproduto='155') or (codigoproduto='79') or (codigoproduto='18') or (codigoproduto='32') or (codigoproduto= '42') or(codigoproduto='77')or(codigoproduto='65') or(codigoproduto='75') or(codigoproduto='71') or(codigoproduto='72') then
      begin
       LNovoIOF :=0;
       LNovoIOFcomplementar:=0;
      end;


  ValorPMT := BaseCalculo / FatorContrato;
  SaldoDevedor := BaseCalculo;
  PrimeiroCalculo[9, 0] := SaldoDevedor;
  PrimeiroCalculo[0, 0] := ValorPMT;
  TotalItens := 1;
  while (TotalItens <= QdeParcelas) do
  begin


    Prazo := PrimeiroCalculo[1, TotalItens];

    FatorPrazo := PrimeiroCalculo[3, TotalItens];
    Prazoiof := PrimeiroCalculo[10, TotalItens];
    FatorIntervalo := PrimeiroCalculo[4, TotalItens];
    ValorJuros := SaldoDevedor * FatorIntervalo;

    AmortizacaoAnterior := PrimeiroCalculo[6, TotalItens];

    ValorIOF := 0;
    ValorIOFComplementar := 0;
    ValorAmortizacao := 0;

    if (PrimeiroCalculo[8, TotalItens] = 1) then
    begin
      ValorAmortizacao := ValorPMT - ValorJuros;
      SaldoDevedor := SaldoDevedor - ValorAmortizacao;
      if (codigoproduto='17' ) or (codigoproduto='152') or (codigoproduto='78') or (codigoproduto='155') or (codigoproduto='79') or (codigoproduto='18') or (codigoproduto='32') or (codigoproduto= '42') or(codigoproduto='77')or(codigoproduto='65') or(codigoproduto='75') or(codigoproduto='71') or(codigoproduto='72') then
      begin
         ValorIOF := calculaIof(ValorAmortizacao, 1, TaxaMes, Prazoiof, TaxaIofAno,
         TipoPagtoIOF, DataContrato);
         ValorIOFComplementar := calculaIofComplementar(ValorPMT, ValorAmortizacao,
         TaxaIofComplementar, TipoPagtoIOF, DataContrato);

         LNovoIOF := LNovoIOF + ValorIOF;
         LNovoIOFComplementar := LNovoIOFComplementar + ValorIOFComplementar;

      end;

    end;

     if (codigoproduto='17' ) or (codigoproduto='152') or (codigoproduto='78') or (codigoproduto='155') or (codigoproduto='79') or (codigoproduto='18') or (codigoproduto='32') or (codigoproduto= '42') or(codigoproduto='77')or(codigoproduto='65') or(codigoproduto='75') or(codigoproduto='71') or(codigoproduto='72') then
      begin
       PrimeiroCalculo[0, 0] := ValorPMT;
       PrimeiroCalculo[7, TotalItens] := ValorIOF;
       PrimeiroCalculo[12, TotalItens] := ValorIOFComplementar;
      end;


    Inc(TotalItens);
  end;

  Result := PrimeiroCalculo;
end;

Function CalculaContratoMisto3(TipoPagtoIOF: String;
  QdeParcelas, TaxaMes, TaxaIofAno, ValorFinanciado: Double;
  PrimeiroCalculo: TTipoArray; DataContrato: TdateTime;
  TaxaIofComplementar: Double): TTipoArray;
Var
  DataAnterior, DataVencimento, VencimentoReal: TdateTime;
  ValorIOF, ValorPMT, ValorPMT_Anterior, ValorAmortizacao, AmortizacaoAnterior,
    ValorJuros, TaxaDiaria, SaldoDevedor, FatorContrato, FatorPrazo, TxaIofDia,
    FatorIntervalo, Prazo, Prazoiof, Intervalo, BaseCalculo,
    ValorIOFComplementar, LBaseCalculoAntiga, LNovoIOF,
    LNovoIOFComplementar: Double;
  TotalItens: word;
  TaxaDiaria2: String;
begin
  FatorContrato := 0;
  TxaIofDia := 0.00;

  TaxaDiaria := power(1 + (TaxaMes / 100), 1 / 30);

  TxaIofDia := ArredondaValor(TaxaIofAno / 365, 4);

  TotalItens := 1;
  BaseCalculo := ValorFinanciado;

  while (TotalItens <= QdeParcelas) do
  begin
    DataVencimento := PrimeiroCalculo[0, TotalItens];
    Prazo := PrimeiroCalculo[1, TotalItens];
    Intervalo := PrimeiroCalculo[2, TotalItens];
    FatorPrazo := 0;
    FatorIntervalo := ArredondaValor(power(TaxaDiaria, (Intervalo / 1))
      - 1, 11);

    if (PrimeiroCalculo[8, TotalItens] = 1) then
      FatorContrato := FatorContrato + FatorPrazo;

    PrimeiroCalculo[3, TotalItens] := FatorPrazo;
    PrimeiroCalculo[4, TotalItens] := FatorIntervalo;

    Inc(TotalItens);
  end;

 if FatorContrato=0 then
 FatorContrato:=1;

  ValorPMT := BaseCalculo / FatorContrato;

  ValorPMT_Anterior := ValorPMT;

  SaldoDevedor := BaseCalculo;
  PrimeiroCalculo[9, 0] := SaldoDevedor;
  TotalItens := 1;
  ValorIOF := 0;
  ValorIOFComplementar := 0;

  while (TotalItens <= QdeParcelas) do
  begin
    Prazo := PrimeiroCalculo[1, TotalItens];
    FatorPrazo := 0;
    Prazoiof := PrimeiroCalculo[10, TotalItens];

    FatorIntervalo := PrimeiroCalculo[4, TotalItens];
    if (TaxaMes <> 0) then
      ValorJuros := SaldoDevedor * FatorIntervalo
    else
      ValorJuros := 0;

    if (PrimeiroCalculo[8, TotalItens] = 1) then
    begin
      ValorAmortizacao := ValorPMT - ValorJuros;

      PrimeiroCalculo[7, TotalItens] := calculaIof(ValorAmortizacao, 1, TaxaMes,
        Prazoiof, TaxaIofAno, TipoPagtoIOF, DataContrato);
      PrimeiroCalculo[12, TotalItens] := calculaIofComplementar(ValorPMT,
        ValorAmortizacao, TaxaIofComplementar, TipoPagtoIOF, DataContrato);

    end
    else
    begin
      ValorAmortizacao := 0;
      PrimeiroCalculo[7, TotalItens] := 0;
      PrimeiroCalculo[12, TotalItens] := 0;
    end;

    SaldoDevedor := SaldoDevedor - ValorAmortizacao;

    PrimeiroCalculo[5, TotalItens] := ValorJuros;

    PrimeiroCalculo[6, TotalItens] := ValorAmortizacao;

    ValorIOF := ValorIOF + PrimeiroCalculo[7, TotalItens];

    ValorIOFComplementar := ValorIOFComplementar + PrimeiroCalculo
      [12, TotalItens];

    Inc(TotalItens);

  end;

  if (TipoPagtoIOF = 'F') then
  begin
    LBaseCalculoAntiga := BaseCalculo;
    BaseCalculo := BaseCalculo + ValorIOF + ValorIOFComplementar;
  end;

  ValorPMT := BaseCalculo / FatorContrato;
  SaldoDevedor := BaseCalculo;
  PrimeiroCalculo[9, 0] := SaldoDevedor;
  PrimeiroCalculo[0, 0] := ValorPMT;
  TotalItens := 1;
  LNovoIOF := 0;
  LNovoIOFComplementar := 0;
  while (TotalItens <= QdeParcelas) do
  begin

    Prazo := PrimeiroCalculo[1, TotalItens];

    FatorPrazo := 0;
    Prazoiof := PrimeiroCalculo[10, TotalItens];
    FatorIntervalo := PrimeiroCalculo[4, TotalItens];
    ValorJuros := SaldoDevedor * FatorIntervalo;

    AmortizacaoAnterior := PrimeiroCalculo[6, TotalItens];

    ValorIOF := 0;
    ValorIOFComplementar := 0;
    ValorAmortizacao := 0;

    if (PrimeiroCalculo[8, TotalItens] = 1) then
    begin
      ValorAmortizacao := ValorPMT - ValorJuros;
      SaldoDevedor := SaldoDevedor - ValorAmortizacao;
      ValorIOF := calculaIof(ValorAmortizacao, 1, TaxaMes, Prazoiof, TaxaIofAno,
        TipoPagtoIOF, DataContrato);
      ValorIOFComplementar := calculaIofComplementar(ValorPMT, ValorAmortizacao,
        TaxaIofComplementar, TipoPagtoIOF, DataContrato);
    end;
    LNovoIOF := LNovoIOF + ValorIOF;
    LNovoIOFComplementar := LNovoIOFComplementar + ValorIOFComplementar;

    PrimeiroCalculo[5, TotalItens] := ValorJuros;
    PrimeiroCalculo[6, TotalItens] := ValorAmortizacao;
    PrimeiroCalculo[7, TotalItens] := ValorIOF;
    PrimeiroCalculo[12, TotalItens] := ValorIOFComplementar;

    Inc(TotalItens);
  end;

  if (TipoPagtoIOF = 'F') then
  begin
    BaseCalculo := LBaseCalculoAntiga + LNovoIOF + LNovoIOFComplementar;
  end;

  ValorPMT := BaseCalculo / FatorContrato;
  SaldoDevedor := BaseCalculo;
  PrimeiroCalculo[9, 0] := SaldoDevedor;
  PrimeiroCalculo[0, 0] := ValorPMT;
  TotalItens := 1;
  while (TotalItens <= QdeParcelas) do
  begin

    Prazo := PrimeiroCalculo[1, TotalItens];

    FatorPrazo := 0;
    Prazoiof := PrimeiroCalculo[10, TotalItens];
    FatorIntervalo := PrimeiroCalculo[4, TotalItens];
    ValorJuros := SaldoDevedor * FatorIntervalo;

    AmortizacaoAnterior := PrimeiroCalculo[6, TotalItens];

    ValorIOF := 0;
    ValorIOFComplementar := 0;
    ValorAmortizacao := 0;

    if (PrimeiroCalculo[8, TotalItens] = 1) then
    begin
      ValorAmortizacao := ValorPMT - ValorJuros;
      SaldoDevedor := SaldoDevedor - ValorAmortizacao;
    end;

    PrimeiroCalculo[5, TotalItens] := ValorJuros;
    PrimeiroCalculo[6, TotalItens] := ValorAmortizacao;

    Inc(TotalItens);
  end;

  Result := PrimeiroCalculo;
end;


Function CalculaContratoMistoIGPM(TipoPagtoIOF: String;
  QdeParcelas, TaxaMes, TaxaIofAno, ValorFinanciado: Double;
  PrimeiroCalculo: TTipoArray; DataContrato: TdateTime;
  TaxaIofComplementar: Double): TTipoArray;
Var
  DataAnterior, DataVencimento, VencimentoReal: TdateTime;
  ValorIOF, ValorPMT, ValorPMT_Anterior, ValorAmortizacao, AmortizacaoAnterior,
    ValorJuros, TaxaDiaria, SaldoDevedor, FatorContrato, FatorPrazo, TxaIofDia,
    FatorIntervalo, Prazo, Prazoiof, Intervalo, BaseCalculo,
    ValorIOFComplementar: Double;
  TotalItens: word;
  TaxaDiaria2: String;
begin
  FatorContrato := 0;
  TxaIofDia := 0.00;
  TaxaDiaria := TaxaMes / 30;

  TxaIofDia := ArredondaValor(TaxaIofAno / 365, 4);
  TotalItens := 1;
  BaseCalculo := ValorFinanciado;

  while (TotalItens <= QdeParcelas) do
  begin
    DataVencimento := PrimeiroCalculo[0, TotalItens];
    Prazo := PrimeiroCalculo[1, TotalItens];
    Intervalo := PrimeiroCalculo[2, TotalItens];

    FatorPrazo := ArredondaValor(power(1 / (1 + TaxaDiaria / 100), Prazo), 11);
    FatorIntervalo := ArredondaValor(power((1 + TaxaDiaria / 100),
      (Intervalo / 1)) - 1, 11);

    if (PrimeiroCalculo[8, TotalItens] = 1) then
      FatorContrato := FatorContrato + FatorPrazo;

    PrimeiroCalculo[3, TotalItens] := FatorPrazo;
    PrimeiroCalculo[4, TotalItens] := FatorIntervalo;

    Inc(TotalItens);
  end;

  ValorPMT := BaseCalculo / FatorContrato;

  ValorPMT_Anterior := ValorPMT;

  SaldoDevedor := BaseCalculo;
  PrimeiroCalculo[9, 0] := SaldoDevedor;
  TotalItens := 1;
  ValorIOF := 0;
  ValorIOFComplementar := 0;
  while (TotalItens <= QdeParcelas) do
  begin
    Prazo := PrimeiroCalculo[1, TotalItens];
    FatorPrazo := PrimeiroCalculo[3, TotalItens];
    Prazoiof := PrimeiroCalculo[10, TotalItens];

    FatorIntervalo := PrimeiroCalculo[4, TotalItens];
    if (TaxaMes <> 0) then
      ValorJuros := SaldoDevedor * FatorIntervalo
    else
      ValorJuros := 0;

    if (PrimeiroCalculo[8, TotalItens] = 1) then
    begin
      ValorAmortizacao := ValorPMT - ValorJuros;

      PrimeiroCalculo[7, TotalItens] := calculaIof(ValorAmortizacao, 1, TaxaMes,
        Prazoiof, TaxaIofAno, TipoPagtoIOF, DataContrato);
      PrimeiroCalculo[12, TotalItens] := calculaIofComplementar(ValorPMT,
        ValorAmortizacao, TaxaIofComplementar, TipoPagtoIOF, DataContrato);

    end
    else
    begin
      ValorAmortizacao := 0;
      PrimeiroCalculo[7, TotalItens] := 0;
      PrimeiroCalculo[12, TotalItens] := 0;
    end;

    SaldoDevedor := SaldoDevedor - ValorAmortizacao;

    PrimeiroCalculo[5, TotalItens] := ValorJuros;

    PrimeiroCalculo[6, TotalItens] := ValorAmortizacao;

    ValorIOF := ValorIOF + PrimeiroCalculo[7, TotalItens];

    ValorIOFComplementar := ValorIOFComplementar + PrimeiroCalculo
      [12, TotalItens];

    Inc(TotalItens);

  end;

  if (TipoPagtoIOF = 'F') then
    BaseCalculo := BaseCalculo + ValorIOF + ValorIOFComplementar;

  ValorPMT := BaseCalculo / FatorContrato;
  SaldoDevedor := BaseCalculo;
  PrimeiroCalculo[9, 0] := SaldoDevedor;
  PrimeiroCalculo[0, 0] := ValorPMT;
  TotalItens := 1;
  while (TotalItens <= QdeParcelas) do
  begin

    Prazo := PrimeiroCalculo[1, TotalItens];

    FatorPrazo := PrimeiroCalculo[3, TotalItens];
    Prazoiof := PrimeiroCalculo[10, TotalItens];
    FatorIntervalo := PrimeiroCalculo[4, TotalItens];
    ValorJuros := SaldoDevedor * FatorIntervalo;

    AmortizacaoAnterior := PrimeiroCalculo[6, TotalItens];

    ValorIOF := 0;
    ValorIOFComplementar := 0;
    ValorAmortizacao := 0;

    if (PrimeiroCalculo[8, TotalItens] = 1) then
    begin
      ValorAmortizacao := ValorPMT - ValorJuros;
      SaldoDevedor := SaldoDevedor - ValorAmortizacao;
      ValorIOF := calculaIof(ValorAmortizacao, 1, TaxaMes, Prazoiof, TaxaIofAno,
        TipoPagtoIOF, DataContrato);
      ValorIOFComplementar := calculaIofComplementar(ValorPMT, ValorAmortizacao,
        TaxaIofComplementar, TipoPagtoIOF, DataContrato);
    end;

    PrimeiroCalculo[5, TotalItens] := ValorJuros;
    PrimeiroCalculo[6, TotalItens] := ValorAmortizacao;
    PrimeiroCalculo[7, TotalItens] := ValorIOF;
    PrimeiroCalculo[12, TotalItens] := ValorIOFComplementar;

    Inc(TotalItens);
  end;

  Result := PrimeiroCalculo;
end;

end.
