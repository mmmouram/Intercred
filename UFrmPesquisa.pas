unit UFrmPesquisa;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, DB, ADODB, StdCtrls, Buttons, ExtCtrls, StrUtils,
  DBCtrls, ComCtrls, Mask, ImgList;

type
  TFrmPesquisa = class(TForm)
    ScrollBox1: TScrollBox;
    ADOPesquisa: TADOQuery;
    DataSource1: TDataSource;
    GroupBox1: TGroupBox;
    CbxCampos: TComboBox;
    RadioGroup1: TRadioGroup;
    GroupBox2: TGroupBox;
    EdtProcura: TEdit;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    SpeedButton1: TSpeedButton;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    Panel1: TPanel;
    DBGrdPesquisa: TDBGrid;
    Panel2: TPanel;
    DBMemo1: TDBMemo;
    PanelBarra: TPanel;
    Shape2: TShape;
    Shape3: TShape;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Shape1: TShape;
    Label4: TLabel;
    Shape4: TShape;
    Shape5: TShape;
    Label5: TLabel;
    Panel3: TPanel;
    Panel4: TPanel;
    SpeedButton2: TSpeedButton;
    GroupBox12: TGroupBox;
    DataInicial: TMaskEdit;
    GroupBox13: TGroupBox;
    DataFinal: TMaskEdit;
    ImageList1: TImageList;
    procedure EdtProcuraKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ADOPesquisaAfterOpen(DataSet: TDataSet);
    procedure DBGrdPesquisaDblClick(Sender: TObject);
    procedure EdtProcuraKeyPress(Sender: TObject; var Key: Char);
    procedure CbxCamposClick(Sender: TObject);
    procedure EdtProcuraChange(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure GetSelectedRecord(DataSet: TDataSet; BookMarkList: TBookMarkList;
      NumeroCamposRetornar: String);
    procedure FormCreate(Sender: TObject);
    procedure DBGrdPesquisaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGrdPesquisaDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBGrdPesquisaColEnter(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure DataInicialExit(Sender: TObject);
    procedure DataFinalExit(Sender: TObject);
    procedure FormActivate(Sender: TObject);

  private

    iCriterios: String;

    iDisplayLabel: TStringList;

    TopPesquisa: Integer;
    Auxs: String;
    V_Status: String;

    procedure CarregaCampos;
    procedure CarregaDisplayLabel;

    procedure DBGrdPesquisaOnClick(Sender: TObject);
    Function AjustaSelect(Sql: String): String;

  public

    iFields: TFields;

  Const
    CHECKED = 'CHECADO';
    PARTIAL_CHECKED = 'PARCIAL';
  end;

var
  FrmPesquisa: TFrmPesquisa;
  Retorno: Variant;
  StringsPesquisa, StringsDisplayLabel: TStringList;

function ADOPesquisa(Select, Tabela, CampoRetorno: String;
  Conexao: TADOConnection; Fields: TFields = nil; ordem: String = '';
  criterios: String = ''; Join: String = ''; DisplayLabel: TStringList = Nil;
  SelProcura: Word = 0; TopMax: Integer = 0; StatusArquivo: String = '';
  CodigoPortal: Integer = 0): Boolean;

implementation

Uses UUtil;
{$R *.dfm}

function ADOPesquisa(Select, Tabela, CampoRetorno: String;
  Conexao: TADOConnection; Fields: TFields; ordem, criterios, Join: String;
  DisplayLabel: TStringList; SelProcura: Word; TopMax: Integer;
  StatusArquivo: String; CodigoPortal: Integer): Boolean;

Var
  bm: TbookMark;
  i: Integer;
  BookMarkList: TBookMarkList;
  Strings: TStringList;
  Select2: String;
begin
  FrmPesquisa := TFrmPesquisa.Create(Application);
  FrmPesquisa.Tag := CodigoPortal;
  Strings := TStringList.Create;
  Strings.Clear;
  with (FrmPesquisa) do
    try

      iFields := Fields;
      iDisplayLabel := DisplayLabel;

      Select2 := Select;

      ADOPesquisa.Close;
      ADOPesquisa.Sql.Clear;
      ADOPesquisa.Connection := Conexao;

      if (TopMax > 0) then
        Select2 := ' top ' + IntToStr(TopMax) + ' ' + Select;


      if StatusArquivo <> '' then
      begin

        V_Status := StatusArquivo;
        If V_Status <> 'SI' then
          PanelBarra.Visible := True;

        if V_Status = 'OP' then
        begin
          Shape1.Brush.Color := clWhite;
          Label1.Caption := 'Aberto';

          Shape2.Brush.Color := $00E3DFDF;
          Label2.Caption := 'Fechado';

          Shape3.Visible := True;
          Label3.Visible := True;
          Shape3.Brush.Color := clInfoBk;
          Label3.Caption := 'Concluido / Transitando';

          Shape4.Visible := True;
          Label4.Visible := True;
          Shape4.Brush.Color := clRed;
          Label4.Caption := 'Cancelado';

          Shape5.Visible := True;
          Label5.Visible := True;
          Shape5.Brush.Color := clMoneyGreen;
          Label5.Caption := 'Suspenso/ Alteração';
        end;

        if V_Status = 'PRO' then
        begin
          Shape1.Brush.Color := clInfoBk;
          Label1.Caption := 'Concluido';

          Shape2.Brush.Color := clMoneyGreen;
          Label2.Caption := 'Alteração';

          Shape3.Visible := False;
          Label3.Visible := False;

          Shape4.Visible := False;
          Label4.Visible := False;

          Shape5.Visible := False;
          Label5.Visible := False;
        end;

      end
      else
        PanelBarra.Visible := False;

      ADOPesquisa.Sql.Add(Select2);

      ADOPesquisa.Sql.Add(' FROM ' + Tabela);

      if (Join <> '') then
        ADOPesquisa.Sql.Add(Join)
      else
        ADOPesquisa.Sql.Add('');



      if ((criterios <> '') and (Pos('WHERE', UpperCase(criterios)) <> 0)) then
      begin
        ADOPesquisa.Sql.Add(criterios);
        iCriterios := criterios;
      end
      else
        ADOPesquisa.Sql.Add('');

      if ordem <> '' then
        ADOPesquisa.Sql.Add('ORDER BY ' + ordem)
      else
        ADOPesquisa.Sql.Add('');

      CarregaCampos;

      CbxCampos.ItemIndex := SelProcura;

      if FrmPesquisa.Tag <> 429 then
      begin
        Result := ((ShowModal = mrOk) and (ADOPesquisa.Active) and
          (DBGrdPesquisa.SelectedRows.Count > 0));
      end
      else
      begin

        FrmPesquisa.DBGrdPesquisa.SelectedIndex := 1;
        FrmPesquisa.DBGrdPesquisaDblClick(DBGrdPesquisa);
        Result := True;
      end;

      if ((Result) and (ADOPesquisa.RecordCount > 0)) then
      begin
        GetSelectedRecord(DataSource1.DataSet, DBGrdPesquisa.SelectedRows,
          CampoRetorno);
      end;
    finally
      Free;
      FrmPesquisa := nil;
    end;
end;

procedure TFrmPesquisa.CarregaCampos;
var
  i: Integer;
  Auxs: String;
begin
  if ADOPesquisa.Sql.Strings[0] = '' then
    if iFields <> nil then
    begin
      for i := 0 to (iFields.Count - 1) do
        if iFields[i].FieldKind = fkData then
          if ADOPesquisa.Sql.Strings[0] = '' then
            ADOPesquisa.Sql.Strings[0] := iFields[i].FieldName
          else
            ADOPesquisa.Sql.Strings[0] := ADOPesquisa.Sql.Strings[0] + ', ' +
              iFields[i].FieldName;
    end
    else
      ADOPesquisa.Sql.Strings[0] := '*';

  ADOPesquisa.Sql.Strings[0] := 'SELECT ' + ADOPesquisa.Sql.Strings[0];
  Auxs := 'SELECT ' + ADOPesquisa.Sql.Strings[0];
  ADOPesquisa.Open;

  CbxCampos.Clear;
  CbxCampos.ItemIndex := 0;

  if ((iDisplayLabel <> nil) and (iDisplayLabel.Count > 0)) then
    CarregaDisplayLabel;

  for i := 0 to (ADOPesquisa.Fields.Count - 1) do
    CbxCampos.Items.Add(ADOPesquisa.Fields[i].DisplayLabel);

end;

procedure TFrmPesquisa.EdtProcuraKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  case Key of
    VK_UP:
      if ADOPesquisa.Active then
        ADOPesquisa.Prior;
    VK_DOWN:
      if ADOPesquisa.Active then
        ADOPesquisa.Next;
    VK_F2:
      BitBtn1.Click;
    VK_RETURN:
      SpeedButton1.Click;

  end;

end;

procedure TFrmPesquisa.ADOPesquisaAfterOpen(DataSet: TDataSet);
var
  i, Campo: Integer;
begin
  if iFields <> nil then
  begin
    for i := 0 to (iFields.Count - 1) do
      if iFields[i].FieldKind = fkData then
      begin
        try
          Campo := ADOPesquisa.FieldByName(iFields[i].FieldName).Index;
        except
          Campo := -1;
        end;

        if Campo >= 0 then
        begin
          ADOPesquisa.Fields[Campo].Alignment := iFields[i].Alignment;
          ADOPesquisa.Fields[Campo].DisplayLabel := iFields[i].DisplayLabel;
          if ADOPesquisa.Fields[Campo] is TNumericField then
            TNumericField(ADOPesquisa.Fields[Campo]).DisplayFormat :=
              TNumericField(iFields[i]).DisplayFormat;
        end;

      end;

    for i := 0 to (DBGrdPesquisa.Columns.Count - 1) do
    begin
      DBGrdPesquisa.Columns[i].Title.Font.Size := DBGrdPesquisa.Columns[i]
        .Title.Font.Size - 2;
      DBGrdPesquisa.Columns[i].Title.Alignment := taCenter;
    end;
  end;

end;

procedure TFrmPesquisa.DBGrdPesquisaDblClick(Sender: TObject);
begin
  BitBtn1.Click;
end;

procedure TFrmPesquisa.EdtProcuraKeyPress(Sender: TObject; var Key: Char);
begin
  if (Key = #13) then
  begin
    if (DBGrdPesquisa.SelectedRows.Count > 0) then
    begin

      Key := #0;
      Perform(WM_NEXTDLGCTL, 0, 0);
      EdtProcura.SetFocus;
    end
    else
    begin
      SpeedButton1.Click;
      EdtProcura.SetFocus;
    end;
  end;

end;

procedure TFrmPesquisa.CbxCamposClick(Sender: TObject);
begin
  RadioGroup1.Enabled := ((CbxCampos.ItemIndex >= 0) and
    ((ADOPesquisa.Fields[CbxCampos.ItemIndex] is TStringField) or
    (ADOPesquisa.Fields[CbxCampos.ItemIndex] is TDateField) or
    (ADOPesquisa.Fields[CbxCampos.ItemIndex] is TDateTimeField)));
  EdtProcura.Clear;
  EdtProcura.SetFocus;
end;

procedure TFrmPesquisa.EdtProcuraChange(Sender: TObject);
begin
  if RadioGroup1.ItemIndex = 3 then
    SpeedButton1.Click
end;

procedure TFrmPesquisa.SpeedButton1Click(Sender: TObject);
var
  LinhaProcura, TmpLinha: String;
  Aspas: Boolean;
  Teste: String;
begin

  EdtProcura.Text := StringReplace(EdtProcura.Text, '%', '', [rfReplaceAll]);
  Aspas := ((ADOPesquisa.Fields[CbxCampos.ItemIndex] is TStringField) or
    (ADOPesquisa.Fields[CbxCampos.ItemIndex] is TDateField) or
    (ADOPesquisa.Fields[CbxCampos.ItemIndex] is TDateTimeField));

  case RadioGroup1.ItemIndex of
    0:
      if Aspas then
        LinhaProcura := ' "' + ADOPesquisa.Fields[CbxCampos.ItemIndex].FieldName
          + '" = ''' + EdtProcura.Text + ''''
      else
        LinhaProcura := ' "' + ADOPesquisa.Fields[CbxCampos.ItemIndex].FieldName
          + '" = ' + EdtProcura.Text;
    1:
      if Aspas then
        LinhaProcura := ' "' + ADOPesquisa.Fields[CbxCampos.ItemIndex].FieldName
          + '" LIKE ''' + EdtProcura.Text + '%'''
      else
        LinhaProcura := ' "' + ADOPesquisa.Fields[CbxCampos.ItemIndex].FieldName
          + '" = ' + EdtProcura.Text;
    2, 3:
      begin
        If (DataInicial.Text <> '  /  /    ') and
          (DataFinal.Text <> '  /  /    ') then
          LinhaProcura := ' "' + ADOPesquisa.Fields[CbxCampos.ItemIndex]
            .FieldName + '" BETWEEN ' + #39 + FormatDateTime(SQLDate,
            StrToDateTime(DataInicial.Text)) + #39 + ' AND ' + #39 +
            FormatDateTime(SQLDate + ' 23:59:59.995',
            StrToDateTime(DataFinal.Text)) + #39
        else If (DataFinal.Text <> '  /  /    ') then
          LinhaProcura := ' "' + ADOPesquisa.Fields[CbxCampos.ItemIndex]
            .FieldName + '" <= ' + #39 +
            FormatDateTime(SQLDate + ' 23:59:59.995',
            StrToDateTime(DataFinal.Text)) + #39
        else If (DataInicial.Text <> '  /  /    ') then
          Auxs := Auxs + ' "' + ADOPesquisa.Fields[CbxCampos.ItemIndex]
            .FieldName + '" >= ' + #39 + FormatDateTime(SQLDate,
            StrToDateTime(DataInicial.Text)) + #39
        else If (Aspas) then
          LinhaProcura := ' "' + ADOPesquisa.Fields[CbxCampos.ItemIndex]
            .FieldName + '" LIKE ''%' + EdtProcura.Text + '%'''
        else If (EdtProcura.Text <> '') then
          LinhaProcura := ' "' + ADOPesquisa.Fields[CbxCampos.ItemIndex]
            .FieldName + '" = ' + EdtProcura.Text;
      end;
  end;

  ADOPesquisa.Close;

  if (Pos('top 0', ADOPesquisa.Sql.Strings[0]) > 0) then
    ADOPesquisa.Sql.Strings[0] := 'select ' + copy(ADOPesquisa.Sql.Strings[0],
      14, length(ADOPesquisa.Sql.Strings[0]));

  TmpLinha := ADOPesquisa.Sql.Strings[3];

  if (LinhaProcura <> '') then
    if iCriterios = '' then
      ADOPesquisa.Sql.Strings[3] := 'WHERE ' + LinhaProcura
    else
      ADOPesquisa.Sql.Strings[3] := iCriterios + ' AND (' + LinhaProcura + ')';

  try

    ADOPesquisa.Open;

    if (iDisplayLabel <> nil) and (iDisplayLabel.Count > 0) then
      CarregaDisplayLabel;

    if (ADOPesquisa.RecordCount = 1) then
      DBGrdPesquisaOnClick(Sender);

  except
    on E: Exception do
    begin
      ADOPesquisa.Close;
      ADOPesquisa.Sql.Strings[3] := TmpLinha;
      ADOPesquisa.Open;

      MessageDlg
        ('Informação para procura incompatível com o conteúdo do campo.',
        mtError, [mbAbort], 0);
    end;
  end;

end;

procedure TFrmPesquisa.SpeedButton2Click(Sender: TObject);
begin
  If FrmPesquisa.WindowState = wsNormal then
    FrmPesquisa.WindowState := wsMaximized
  else
    FrmPesquisa.WindowState := wsNormal;
end;

procedure TFrmPesquisa.GetSelectedRecord(DataSet: TDataSet;
  BookMarkList: TBookMarkList; NumeroCamposRetornar: String);
Var
  i: Integer;
  bm: TbookMark;
  Auxs, NomCampos: String;
  NomeCampo: String;
begin
  StringsPesquisa.Clear;
  with DataSet do
  begin
    DisableControls;
    bm := GetBookmark;
    try
      for i := 0 to BookMarkList.Count - 1 do
      begin
        Bookmark := BookMarkList[i];
        NomCampos := NumeroCamposRetornar;
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
        Auxs := Auxs + StringReplace(DataSet.FieldByName(NomCampos).AsString,
          ',', '', [rfReplaceAll]);
        StringsPesquisa.Add(Auxs);
      end;
    finally
      GotoBookmark(bm);
      FreeBookmark(bm);
      EnableControls;
    end;
  end;
end;

procedure TFrmPesquisa.CarregaDisplayLabel;
var
  i: Integer;
begin
  for i := 0 to (iDisplayLabel.Count - 1) do
    if (iDisplayLabel.Strings[i] <> '') then
      ADOPesquisa.Fields[i].DisplayLabel := iDisplayLabel.Strings[i];

end;

procedure TFrmPesquisa.DBGrdPesquisaOnClick(Sender: TObject);
begin
  DBGrdPesquisa.SelectedRows.CurrentRowSelected := True;

end;

procedure TFrmPesquisa.FormActivate(Sender: TObject);
begin
  if FrmPesquisa.Tag = 429 then
  begin
    FrmPesquisa.DBGrdPesquisa.SetFocus;
    FrmPesquisa.DBGrdPesquisa.SelectedIndex := 1;
    FrmPesquisa.DBGrdPesquisaDblClick(DBGrdPesquisa);
    FrmPesquisa.ModalResult := mrOk;
  end;
end;

procedure TFrmPesquisa.FormCreate(Sender: TObject);
begin
  DBGrdPesquisa.ControlStyle := DBGrdPesquisa.ControlStyle + [csClickEvents];
  TForm(DBGrdPesquisa).OnClick := DBGrdPesquisaOnClick;
end;

procedure TFrmPesquisa.DBGrdPesquisaKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Shift = [ssCtrl]) and (Key = 46) Then
    Key := 0;

  if (Key = 113) Then
    BitBtn1.Click;

end;

procedure TFrmPesquisa.DBGrdPesquisaDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
var
  Check: Integer;
  R: TRect;
  i_Color: Integer;
  Btm: TBitmap;
begin

  R := Rect;
  Dec(R.Bottom, 2);

  if (Column.Field.DataType = ftMemo) then
  begin
    if not(gdSelected in State) then
      DBGrdPesquisa.Canvas.FillRect(Rect)
    else
      DBGrdPesquisa.Canvas.FillRect(Rect);

    DrawText(DBGrdPesquisa.Canvas.Handle,
      PChar(ADOPesquisa.FieldByName(Column.FieldName).AsString),
      length(ADOPesquisa.FieldByName(Column.FieldName).AsString), R,
      DT_WORDBREAK);

  end;
  If (Column.FieldName = 'STATUS_ARQUIVO') then
  begin
    (Sender as TDBGrid).Canvas.Font.Style := (Sender as TDBGrid)
      .Canvas.Font.Style + [FSBOLD];
  end;

  If V_Status = 'SIM' then
  begin

    If (ADOPesquisa.FieldByName('STATUS_ARQUIVO').AsString = 'PAGO') or
      (ADOPesquisa.FieldByName('STATUS_ARQUIVO').AsString = 'FECHADO') or
      (ADOPesquisa.FieldByName('STATUS_ARQUIVO').AsString = 'CONCLUIDO') then
    begin
      (Sender as TDBGrid).Canvas.Brush.Color := clRed;
      DBGrdPesquisa.Canvas.Font.Color := clWhite;
    end
    else
    begin
      (Sender as TDBGrid).Canvas.Brush.Color := clWhite;
      DBGrdPesquisa.Canvas.Font.Color := clDefault;
    end;

  end
  else If V_Status = 'OP' then
  begin
    If (ADOPesquisa.FieldByName('StatusBoletoOperacao').AsString = 'CANCELADO')
    then
    begin
      (Sender as TDBGrid).Canvas.Brush.Color := clRed;
      (Sender as TDBGrid).Canvas.Font.Color := clWhite;
      (Sender as TDBGrid).Canvas.Font.Style := (Sender as TDBGrid)
        .Canvas.Font.Style + [FSBOLD]; 
    end
    else If (ADOPesquisa.FieldByName('StatusBoletoOperacao').AsString = 'ABERTO')
    then
    begin
      (Sender as TDBGrid).Canvas.Brush.Color := clWhite;
      DBGrdPesquisa.Canvas.Font.Color := clDefault;
    end
    else If (ADOPesquisa.FieldByName('StatusBoletoOperacao')
      .AsString = 'FECHADO') then
    begin
      (Sender as TDBGrid).Canvas.Brush.Color := $00E3DFDF;
      DBGrdPesquisa.Canvas.Font.Color := clDefault;
    end
    else If (ADOPesquisa.FieldByName('StatusBoletoOperacao')
      .AsString = 'CONCLUIDO') then
    begin
      (Sender as TDBGrid).Canvas.Brush.Color := clInfoBk;
      DBGrdPesquisa.Canvas.Font.Color := clDefault;
    end
    else If (ADOPesquisa.FieldByName('StatusBoletoOperacao')
      .AsString = 'SUSPENSO') then
    begin
      (Sender as TDBGrid).Canvas.Brush.Color := clMoneyGreen;
      DBGrdPesquisa.Canvas.Font.Color := clDefault;
    end
    else If (ADOPesquisa.FieldByName('StatusBoletoOperacao')
      .AsString = 'ALTERACAO') then
    begin
      (Sender as TDBGrid).Canvas.Brush.Color := clMoneyGreen;
      DBGrdPesquisa.Canvas.Font.Color := clDefault;
      (Sender as TDBGrid).Canvas.Font.Style := (Sender as TDBGrid)
        .Canvas.Font.Style + [FSBOLD];
    end
    else If (ADOPesquisa.FieldByName('StatusBoletoOperacao')
      .AsString = 'TRANSITANDO') then
    begin
      (Sender as TDBGrid).Canvas.Brush.Color := clInfoBk;
      DBGrdPesquisa.Canvas.Font.Color := clDefault;
      (Sender as TDBGrid).Canvas.Font.Style := (Sender as TDBGrid)
        .Canvas.Font.Style + [FSBOLD];
    end
    else
      (Sender as TDBGrid).Canvas.Brush.Color := clWhite;

  end
  else If V_Status = 'PRO' then
  begin
    If (ADOPesquisa.FieldByName('StatusBoletoOperacao').AsString = 'ALTERACAO')
    then
    begin
      (Sender as TDBGrid).Canvas.Brush.Color := clMoneyGreen;
      DBGrdPesquisa.Canvas.Font.Color := clDefault;
    end
    else If (ADOPesquisa.FieldByName('StatusBoletoOperacao')
      .AsString = 'CONCLUIDO') then
    begin
      (Sender as TDBGrid).Canvas.Brush.Color := clInfoBk;
      DBGrdPesquisa.Canvas.Font.Color := clDefault;
    end;
  end
  else If V_Status = 'SI' then
  begin
    (Sender as TDBGrid).Canvas.Brush.Color := clWhite;
    DBGrdPesquisa.Canvas.Font.Color := clDefault;
  end
  else
  begin
    (Sender as TDBGrid).Canvas.Brush.Color := clWhite;
    DBGrdPesquisa.Canvas.Font.Color := clDefault;
  end;

  DBGrdPesquisa.DefaultDrawColumnCell(Rect, DataCol, Column, State);

  if ((TDBGrid(Sender).Fields[1].FieldName = 'T00_SITUACAO') and
    (Column.FieldName = 'T00_SITUACAO')) then
  begin
    if (Column.Width <> 68) then
      Column.Width := 68;

    Btm := TBitmap.Create;
    TDBGrid(Sender).Canvas.FillRect(Rect);

    if TDBGrid(Sender).Fields[1].AsString = CHECKED then
    begin
      ImageList1.GetBitmap(0, Btm)
    end
    else if TDBGrid(Sender).Fields[1].AsString = PARTIAL_CHECKED then
      ImageList1.GetBitmap(1, Btm)
    else
      ImageList1.GetBitmap(2, Btm);

    TDBGrid(Sender).Canvas.Draw(Rect.Left + trunc((Rect.Right - Rect.Left) / 2)
      - trunc(Btm.Width / 2), Rect.Top + 1, Btm);
    Btm.Free;
  end;
end;

procedure TFrmPesquisa.DataFinalExit(Sender: TObject);
begin
  TMaskEdit(Sender).Text := CorrigeData(TMaskEdit(Sender).Text);
end;

procedure TFrmPesquisa.DataInicialExit(Sender: TObject);
begin
  TMaskEdit(Sender).Text := CorrigeData(TMaskEdit(Sender).Text);
end;

procedure TFrmPesquisa.DBGrdPesquisaColEnter(Sender: TObject);
begin

  DBMemo1.DataField := DBGrdPesquisa.SelectedField.FieldName;

end;

Function TFrmPesquisa.AjustaSelect(Sql: String): String;
begin

end;

initialization

StringsPesquisa := TStringList.Create;
StringsDisplayLabel := TStringList.Create;

end.
