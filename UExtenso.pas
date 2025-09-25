unit UExtenso;

interface

uses sysutils;

type
  TNumeroStr = string;

const
  Unidades: array [1 .. 19] of TNumeroStr = ('um', 'dois', 'três', 'quatro',
    'cinco', 'seis', 'sete', 'oito', 'nove', 'dez', 'onze', 'doze', 'treze',
    'quatorze', 'quinze', 'dezesseis', 'dezessete', 'dezoito', 'dezenove');

  Dezenas: array [1 .. 9] of TNumeroStr = ('dez', 'vinte', 'trinta', 'quarenta',
    'cinqüenta', 'sessenta', 'setenta', 'oitenta', 'noventa');

  Centenas: array [1 .. 9] of TNumeroStr = ('cem', 'duzentos', 'trezentos',
    'quatrocentos', 'quinhentos', 'seiscentos', 'setecentos', 'oitocentos',
    'novecentos');

  ErrorString = 'Valor fora da faixa';
  Mini = 0.01;
  Maxi = 4294967295.99;
  Moeda = ' real ';
  Moedas = ' reais ';
  Centesimo = ' centavo ';
  Centesimos = ' centavos ';

function NumeroParaExtenso(parmNumero: Real): string;
function ConversaoRecursiva(N: LongWord): string;
function Extenso(Valor : Extended): String;

implementation

function Extenso(Valor : Extended): String;
var
  Decimal, Centena, Milhar, Milhao, Bilhao, Texto : string;
const
  Unidades: array [1..9] of string = ('um', 'dois', 'três','quatro','cinco',
  'seis', 'sete', 'oito','nove');
  Dez     : array [1..9] of string = ('onze', 'doze', 'treze', 'quatorze',
  'quinze', 'dezesseis', 'dezessete', 'dezoito', 'dezenove');
  Dezenas : array [1..9] of string = ('dez', 'vinte', 'trinta',
  'quarenta', 'cinqüenta', 'sessenta', 'setenta', 'oitenta', 'noventa');
  Centenas: array [1..9] of string = ('cento', 'duzentos', 'trezentos',
  'quatrocentos', 'quinhentos', 'seiscentos', 'setecentos', 'oitocentos',
  'novecentos');

  function ifs( Expressao: Boolean; CasoVerdadeiro, CasoFalso:String): String;
  begin
    if Expressao then
      Result := CasoVerdadeiro
    else
      Result :=CasoFalso;
  end;
  function MiniExtenso( Valor: ShortString ): string;
  var
    Unidade, Dezena, Centena: String;
  begin
    if (Valor[2] = '1') and (Valor[3] <> '0') then
    begin
      Unidade := Dez[StrToInt(Valor[3])];
      Dezena := '';
    end
    else
    begin
     if Valor[2] <> '0' then
       Dezena := Dezenas[StrToInt(Valor[2])];
     if Valor[3] <> '0' then
       unidade := Unidades[StrToInt(Valor[3])];
    end;
    if (Valor[1] = '1') and (Unidade = '') and (Dezena = '') then
      centena := 'cem'
    else
      if Valor[1] <> '0' then
        Centena := Centenas[StrToInt(Valor[1])]
      else
        Centena := '';

    Result := Centena + ifs( (Centena <> '') and ((Dezena <> '') or
    (Unidade <> '')),' e ', '') + Dezena + ifs( (Dezena <> '') and
    (Unidade <> ''), ' e ','') + Unidade;
  end;
begin
  if Valor = 0 then
  begin
    Result := 'zero';

    Exit;
  end;

  Texto    := FormatFloat( '000000000000.00', Valor );
  Decimal  := MiniExtenso( '0' + Copy( Texto, 14, 2 ) );
  Centena  := MiniExtenso( Copy( Texto, 10, 3 ) );
  Milhar   := MiniExtenso( Copy( Texto,  7, 3 ) );

  if Milhar <> '' then
    Milhar := Milhar + ' mil';

  Milhao   := MiniExtenso( Copy( Texto,  4, 3 ) );

  if Milhao <> '' then
  begin
    Milhao := Milhao
    + ifs( Copy( Texto, 4,
    3 ) = '001', ' milhão', ' milhões');
  end;

  Bilhao   := MiniExtenso( Copy( Texto,  1, 3 ) );

  if Bilhao <> '' then
  begin
    Bilhao := Bilhao + ifs( Copy( Texto, 1, 3 ) = '001', ' bilhão',
    ' bilhões');
  end;

  Result := Bilhao + ifs( (Bilhao <> '') and (Milhao + Milhar +
  Centena <> ''),
  ifs((Pos(' e ', Bilhao) > 0) or (Pos( ' e ',
  Milhao + Milhar + Centena ) > 0), ', ', ' e '), '') +
  Milhao + ifs( (Milhao <> '') and (Milhar + Centena <> ''),
  ifs((Pos(' e ', Milhao) > 0) or
  (Pos( ' e ', Milhar + Centena ) > 0 ),', ',    ' e '), '') +
  Milhar + ifs( (Milhar <> '') and
  (Centena <> ''), ifs(Pos( ' e ', Centena ) > 0, ', ', ' e '),'') +
  Centena;

  if Decimal <> '' then
  begin
    if Valor > 1 then
      Result := Result + ' virgula ' + Decimal
    else
      Result := 'Zero virgula ' + Decimal;
  end;

end;

function NumeroParaExtenso(parmNumero: Real): string;
begin
  if (parmNumero >= Mini) and (parmNumero <= Maxi) then
  begin

    Result := ConversaoRecursiva(Round(Int(parmNumero)));
    if Round(Int(parmNumero)) = 1 then
      Result := Result + Moeda
    else if Round(Int(parmNumero)) <> 0 then
      Result := Result + Moedas;

 
    if not(Frac(parmNumero) = 0.00) then
    begin
      if Round(Int(parmNumero)) <> 0 then
        Result := Result + ' e ';
      Result := Result + ConversaoRecursiva(Round(Frac(parmNumero) * 100));
      if (Round(Frac(parmNumero) * 100) = 1) then
        Result := Result + Centesimo
      else
        Result := Result + Centesimos;
    end;
  end
  else
    raise ERangeError.CreateFmt('%g ' + ErrorString + ' %g..%g',
      [parmNumero, Mini, Maxi]);

  Result := StringReplace(Result, '  ', ' ', [rfReplaceAll]);
end;

function ConversaoRecursiva(N: LongWord): string;
begin
  case N of
    1 .. 19:
      Result := Unidades[N];
    20, 30, 40, 50, 60, 70, 80, 90:
      Result := Dezenas[N div 10] + ' ';
    21 .. 29, 31 .. 39, 41 .. 49, 51 .. 59, 61 .. 69, 71 .. 79,
      81 .. 89, 91 .. 99:
      Result := Dezenas[N div 10] + ' e ' + ConversaoRecursiva(N mod 10);
    100, 200, 300, 400, 500, 600, 700, 800, 900:
      Result := Centenas[N div 100] + ' ';
    101 .. 199:
      Result := ' cento e ' + ConversaoRecursiva(N mod 100);
    201 .. 299, 301 .. 399, 401 .. 499, 501 .. 599, 601 .. 699, 701 .. 799,
      801 .. 899, 901 .. 999:
      Result := Centenas[N div 100] + ' e ' + ConversaoRecursiva(N mod 100);
    1000 .. 999999:
      Result := ConversaoRecursiva(N div 1000) + ' mil ' +
        ConversaoRecursiva(N mod 1000);
    1000000 .. 1999999:
      Result := ConversaoRecursiva(N div 1000000) + ' milhão ' +
        ConversaoRecursiva(N mod 1000000);
    2000000 .. 999999999:
      Result := ConversaoRecursiva(N div 1000000) + ' milhões ' +
        ConversaoRecursiva(N mod 1000000);
    1000000000 .. 1999999999:
      Result := ConversaoRecursiva(N div 1000000000) + ' bilhão ' +
        ConversaoRecursiva(N mod 1000000000);
    2000000000 .. 4294967295:
      Result := ConversaoRecursiva(N div 1000000000) + ' bilhões ' +
        ConversaoRecursiva(N mod 1000000000);
  end;
end;

end.
