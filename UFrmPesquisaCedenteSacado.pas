unit UFrmPesquisaCedenteSacado;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DBGrids, DB, ADODB, Mask, DBCtrls, Buttons,
  ExtCtrls, ComCtrls,
  StrUtils;

type
  TFrmPesquisaCedenteSacado = class(TForm)
    ScrollBox1: TScrollBox;
    GroupBox1: TGroupBox;
    CBxCampos: TComboBox;
    GroupBox2: TGroupBox;
    EdtPesquisa: TEdit;
    ADOPesquisa: TADOQuery;
    DSPesquisa: TDataSource;
    ADOPesquisaCLICOD: TIntegerField;
    ADOPesquisaCLIEMPTITU: TIntegerField;
    ADOPesquisaCLICGC: TStringField;
    ADOPesquisaCLINOM: TStringField;
    ADOPesquisaCLICGCFILI: TStringField;
    ADOPesquisaCLICGCDV: TStringField;
    GroupBox3: TGroupBox;
    Panel1: TPanel;
    GroupBox4: TGroupBox;
    RadioButton2: TRadioButton;
    RadioButton1: TRadioButton;
    ADOPesquisaCLICID: TStringField;
    ADOPesquisaCLIEST: TStringField;
    Panel2: TPanel;
    DBGrid1: TDBGrid;
    BitBtnSair: TBitBtn;
    procedure DBGrid1KeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure EdtPesquisaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure RadioButton1Click(Sender: TObject);
    procedure RadioButton2Click(Sender: TObject);
    procedure ADOPesquisaAfterScroll(DataSet: TDataSet);
    procedure BitBtnSairClick(Sender: TObject);
  private

    Ok: Boolean;
    Auxs: String;

    Function GetSelectedRecord(DataSet: TDataSet; BookMarkList: TBookMarkList;
      CampoRetorno: String): String;

  public

  end;

var
  FrmPesquisaCedenteSacado: TFrmPesquisaCedenteSacado;

function PesquisaCedanteSacado(CedenteSacado: String; Digito: Boolean = False;
  CampoRetorno: String = 'CLICOD'; CpIndex: Integer = -1;
  CpCount: Integer = -1): String;

implementation

uses UDMConecta, UFrmPrincipal, IniFiles, UDMDados;

{$R *.dfm}

function PesquisaCedanteSacado(CedenteSacado: String; Digito: Boolean;
  CampoRetorno: String; CpIndex, CpCount: Integer): String;
begin

  Result := '';
  FrmPesquisaCedenteSacado := TFrmPesquisaCedenteSacado.Create(Application);
  with (FrmPesquisaCedenteSacado) do
  begin
    try
      Ok := False;
      ADOPesquisa.SQL.Strings[2] := 'WHERE CLITIP = ''' + CedenteSacado + '''';
      ShowModal;

      if (Ok) then
        Result := GetSelectedRecord(DSPesquisa.DataSet, DBGrid1.SelectedRows,
          CampoRetorno);

    finally
      Free;
      FrmPesquisaCedenteSacado := nil;
    end;
  end;
end;

procedure TFrmPesquisaCedenteSacado.DBGrid1KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  case Key of
    VK_BACK:
      begin
        EdtPesquisa.SetFocus;
        EdtPesquisa.SelectAll;
      end;

    VK_ESCAPE:
      Close;

    VK_RETURN:
      if DBGrid1.SelectedRows.Count > 0 then
      begin
        Ok := True;
        Close;
      end;
    VK_SPACE:
      begin
        DBGrid1.SelectedRows.CurrentRowSelected := True;
      end;
  end;

end;

procedure TFrmPesquisaCedenteSacado.BitBtnSairClick(Sender: TObject);
begin
  Close;
end;

procedure TFrmPesquisaCedenteSacado.DBGrid1DblClick(Sender: TObject);
begin
  if DBGrid1.SelectedRows.Count > 0 then
  begin
    Ok := True;
    Close;
  end;
end;

procedure TFrmPesquisaCedenteSacado.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if Assigned(TForm(FrmPrincipal)) then
    IniCapitalDeGiro.WriteInteger('PesquisaCS', 'Campo', CBxCampos.ItemIndex);

end;

procedure TFrmPesquisaCedenteSacado.FormCreate(Sender: TObject);
begin
  if Assigned(TForm(FrmPrincipal)) then
    CBxCampos.ItemIndex := IniCapitalDeGiro.ReadInteger('PesquisaCS',
      'Campo', 2);


end;

procedure TFrmPesquisaCedenteSacado.EdtPesquisaKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  case Key of
    VK_ESCAPE:
      Close;

    VK_RETURN:
      with (ADOPesquisa) do
      begin
        Close;
        case CBxCampos.ItemIndex of
          0:
            SQL.Strings[3] := 'CLICOD';
          1:
            SQL.Strings[3] := 'CLIEMPTITU';
          2:
            SQL.Strings[3] := 'CLICGC + ISNULL(CLICGCFILI, '''')+ CLICGCDV';
          3:
            SQL.Strings[3] := 'CLINOM';
          4:
            SQL.Strings[3] := 'CLICID';
        end;

        if (Pos('%', EdtPesquisa.Text) > 0) then
          SQL.Strings[3] := 'AND ' + SQL.Strings[3] + ' LIKE '''
        else
          SQL.Strings[3] := 'AND ' + SQL.Strings[3] + ' = ''';

        SQL.Strings[3] := SQL.Strings[3] + EdtPesquisa.Text + '''';

        Open;
        DBGrid1.SetFocus;
      end;
  end;
end;

Function TFrmPesquisaCedenteSacado.GetSelectedRecord(DataSet: TDataSet;
  BookMarkList: TBookMarkList; CampoRetorno: String): String;
Var
  i: Integer;
  bm: TbookMark;
  Auxs, NomCampos: String;
  NomeCampo: String;
begin
  Result := '';
  with DataSet do
  begin
    DisableControls;
    bm := GetBookmark;
    try
      for i := 0 to BookMarkList.Count - 1 do
      begin
        Bookmark := BookMarkList[i];
        NomCampos := CampoRetorno;
        Auxs := '';
        if (Pos(',', NomCampos) > 0) then
        begin
          while (Pos(',', NomCampos) > 0) do
          begin
            NomeCampo := Trim(copy(NomCampos, 1, Pos(',', NomCampos) - 1));
            Auxs := Auxs + StringReplace(DataSet.FieldByName(NomeCampo)
              .AsString, ',', '', [rfReplaceAll]) + ',';
            NomCampos :=
              Trim(StuffString(NomCampos, 1, Pos(',', NomCampos), ''));
          end;
        end;
        if (Length(Result) > 0) then
          Auxs := ',' + Auxs;

        Auxs := Auxs + StringReplace(DataSet.FieldByName(NomCampos).AsString,
          ',', '', [rfReplaceAll]);
        Result := Result + Auxs;
      end;
    finally
      GotoBookmark(bm);
      FreeBookmark(bm);
      EnableControls;
    end;
  end;
end;

procedure TFrmPesquisaCedenteSacado.RadioButton1Click(Sender: TObject);
var
  vlLinha: Integer;
begin
  if ADOPesquisa.Active then
    if (ADOPesquisa.RecordCount > 0) then
    begin
      with (DBGrid1.DataSource.DataSet) do
      begin
        First;
        for vlLinha := 0 to RecordCount - 1 do
        begin
          DBGrid1.SelectedRows.CurrentRowSelected := True;
          Ok := True;

          Next;
        end;
      end;
      DBGrid1.SelectedRows.Refresh;
      DBGrid1.SetFocus;
    end;

end;

procedure TFrmPesquisaCedenteSacado.RadioButton2Click(Sender: TObject);
var
  vlLinha: Integer;
begin
  if ADOPesquisa.Active then
    if (ADOPesquisa.RecordCount > 0) then
    begin
      with DBGrid1.DataSource.DataSet do
      begin
        First;
        for vlLinha := 0 to RecordCount - 1 do
        begin
          DBGrid1.SelectedRows.CurrentRowSelected := False;
          Next;
        end;
      end;
      DBGrid1.SelectedRows.Refresh;
      DBGrid1.SetFocus;
    end;
end;

procedure TFrmPesquisaCedenteSacado.ADOPesquisaAfterScroll(DataSet: TDataSet);
begin
  Panel1.Caption := IntToStr(ADOPesquisa.RecordCount);
end;

end.
