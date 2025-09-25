unit UContratoCapitaldeGiro;

interface

uses
  Math, Forms, DB, dbctrls, Dialogs, SysUtils, Windows, dbgrids, Classes,
  ADODB, StrUtils;

Type
  TStringArray = array of string;

  TCapitaldegiro = class(TForm)
  Private
    Criterios: String;

    procedure GetSelected(NumeroCamposRetornar: String);
    procedure CarregaDisplayLabel;
  Public

  end;

var
  Capitaldegiro: TCapitaldegiro;
  StringsPesquisa: TStringList;

  Auxs, Auxs_I, Auxs_c: String;

  iFields: TFields;
  ADO: TADOQuery;

const
  SQLDate = 'mm/dd/yyyy';
function ADOConsulta(Select, Tabela, CampoRetorno: String;
  Conexao: TADOConnection; Fields: TFields = nil; Ordem: String = '';
  iCriterios: String = ''; Join: String = '';
  DisplayLabel: TStringList = Nil): Boolean;

procedure CarregaCampos;
function ConsultaParcelas(Select, IntoTabela, Tabela, CampoRetorno: String;
  Conexao: TADOConnection; Fields: TFields = nil; Ordem: String = '';
  iCriterios: String = ''; Join: String = ''; groupby: String = '';
  InsertInto: String = ''): Boolean;

function Split(const str: string; const separator: string): TStringArray;

implementation

uses UUtil, UDMConecta, UDMDados;

function ADOConsulta(Select, Tabela, CampoRetorno: String;
  Conexao: TADOConnection; Fields: TFields = nil; Ordem: String = '';
  iCriterios: String = ''; Join: String = '';
  DisplayLabel: TStringList = Nil): Boolean;
var
  Strings: TStringList;
var
  i: Integer;
begin
  Strings := TStringList.Create;
  Strings.Clear;

  with (Capitaldegiro) do
    try
      iFields := Fields;
      ADO := TADOQuery.Create(Application);

      ADO.Close;
      ADO.SQL.Clear;
      ADO.Connection := Conexao;
      ADO.SQL.Add(Select);
      ADO.SQL.Add(' FROM ' + Tabela);

      if (Join <> '') then
        ADO.SQL.Add(Join)
      else
        ADO.SQL.Add('');

      if (iCriterios <> '') then
      begin
        ADO.SQL.Add('WHERE ' + iCriterios)
      end
      else
        ADO.SQL.Add('');

      if Ordem <> '' then
        ADO.SQL.Add('ORDER BY ' + Ordem)
      else
        ADO.SQL.Add('');

      CarregaCampos;

      if (ADO.RecordCount > 0) then
        GetSelected(CampoRetorno);

    finally
      Free;
    end;
end;

procedure TCapitaldegiro.CarregaDisplayLabel;
var
  i: Integer;
begin
  for i := 0 to (StringsPesquisa.Count - 1) do
    if (StringsPesquisa.Strings[i] <> '') then
      ADO.Fields[i].DisplayLabel := StringsPesquisa.Strings[i];
end;

procedure TCapitaldegiro.GetSelected(NumeroCamposRetornar: String);
Var
  i: Integer;
  NomCampos: String;
  NomeCampo: String;
  a: TStringArray;
begin
  StringsPesquisa.Clear;
  try
    for i := 0 to ADO.Fields.Count - 1 do
    begin
      NomCampos := NumeroCamposRetornar;
      Auxs_c := '';
      if (pos(',', NomCampos) > 0) then
      begin
        while (pos(',', NomCampos) > 0) do
        begin
          NomeCampo := Trim(copy(NomCampos, 1, pos(',', NomCampos) - 1));
          Auxs_c := Auxs_c + StringReplace(ADO.FieldByName(NomeCampo).AsString,
            ',', '', [rfReplaceAll]) + ',';
          NomCampos := Trim(StuffString(NomCampos, 1, pos(',', NomCampos), ''));
        end;
      end;
      Auxs_c := Auxs_c + StringReplace(ADO.FieldByName(NomCampos).AsString, ',',
        '', [rfReplaceAll]);
      StringsPesquisa.Add(Auxs_c);
    end;
  finally
  end;
end;

function Split(const str: string; const separator: string): TStringArray;
var
  i, n: Integer;
  p, q, s: PChar;
begin
  SetLength(Result, pos(str, separator) + 1);
  p := PChar(str);
  s := PChar(separator);
  n := Length(separator);
  i := 0;
  repeat
    q := StrPos(p, s);
    if q = nil then
      q := StrScan(p, #0);
    SetString(Result[i], p, q - p);
    p := q + n;
    inc(i);
  until q^ = #0;
end;

procedure CarregaCampos;
var
  i: Integer;
begin
  Auxs := '';
  with (Capitaldegiro) do
    if ADO.SQL.Strings[0] = '' then
      if iFields <> nil then
      begin
        for i := 0 to (iFields.Count - 1) do
          if iFields[i].FieldKind = fkData then
            if ADO.SQL.Strings[0] = '' then
              ADO.SQL.Strings[0] := iFields[i].FieldName
            else
              ADO.SQL.Strings[0] := ADO.SQL.Strings[0] + ', ' + iFields[i]
                .FieldName;
      end
      else
        ADO.SQL.Strings[0] := '*';

  ADO.SQL.Strings[0] := 'SELECT ' + ADO.SQL.Strings[0];
  Auxs := ADO.SQL.Text;

  ADO.Open;
end;

function ConsultaParcelas(Select, IntoTabela, Tabela, CampoRetorno: String;
  Conexao: TADOConnection; Fields: TFields = nil; Ordem: String = '';
  iCriterios: String = ''; Join: String = ''; groupby: String = '';
  InsertInto: String = ''): Boolean;
begin
  with (Capitaldegiro) do
    try
      Auxs := (Select);
      if (IntoTabela <> '') then
      begin
        Auxs := Auxs + ' INTO ' + IntoTabela
      end
      else
        Auxs := Auxs + '';
      Auxs := Auxs + ' FROM ' + Tabela;

      if (Join <> '') then
        Auxs := Auxs + Join
      else
        Auxs := Auxs + '';

      if (iCriterios <> '') then
        Auxs := Auxs + ' WHERE ' + iCriterios
      else
        Auxs := Auxs + '';

      if groupby <> '' then
        Auxs := Auxs + ' GROUP BY ' + groupby
      else
        Auxs := Auxs + '';

      if Ordem <> '' then
        Auxs := Auxs + ' ORDER BY ' + Ordem
      else
        Auxs := Auxs + '';

      if InsertInto <> '' then
      begin
        Auxs_I := ' insert into ' + InsertInto;
        DMConecta.ADOCapitalDeGiro.Execute(Auxs_I + ' ' + Auxs);
      end
      else
      begin
        DMConecta.ADOCapitalDeGiro.Execute(' ' + Auxs);
      end;
    finally
      Free;
    end;
end;

initialization

StringsPesquisa := TStringList.Create;

end.
