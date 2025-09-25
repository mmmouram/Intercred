unit UExtensoNumero;

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


function NumExtenso(parmNumero: Real): string;
function ConversaoRecursiva(N: LongWord): string;

implementation

function NumExtenso(parmNumero: Real): string;
begin
  if (parmNumero >= Mini) and (parmNumero <= Maxi) then
  begin

    Result := ConversaoRecursiva(Round(Int(parmNumero)));
    if Round(Int(parmNumero)) = 1 then
      Result := Result
    else if Round(Int(parmNumero)) <> 0 then
      Result := Result;


    if not(Frac(parmNumero) = 0.00) then
    begin
      if Round(Int(parmNumero)) <> 0 then
        Result := Result + ' e ';
      Result := Result + ConversaoRecursiva(Round(Frac(parmNumero) * 100));
      if (Round(Frac(parmNumero) * 100) = 1) then
        Result := Result
      else
        Result := Result;
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
      Result := ConversaoRecursiva(N div 1000) + '' +
        ConversaoRecursiva(N mod 1000);
    1000000 .. 1999999:
      Result := ConversaoRecursiva(N div 1000000) + '' +
        ConversaoRecursiva(N mod 1000000);
    2000000 .. 999999999:
      Result := ConversaoRecursiva(N div 1000000) + '' +
        ConversaoRecursiva(N mod 1000000);
    1000000000 .. 1999999999:
      Result := ConversaoRecursiva(N div 1000000000) + '' +
        ConversaoRecursiva(N mod 1000000000);
    2000000000 .. 4294967295:
      Result := ConversaoRecursiva(N div 1000000000) + '' +
        ConversaoRecursiva(N mod 1000000000);
  end;
end;

end.
