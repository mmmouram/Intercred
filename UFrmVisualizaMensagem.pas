unit UFrmVisualizaMensagem;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Buttons, ComCtrls, Spin;

type
  TFrmVisualizaMensagem = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    BitBtn2: TBitBtn;
    Memo: TRichEdit;
    SpinEdit1: TSpinEdit;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure SpinEdit1Change(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
  private

    iMensagem: String;
  public

  end;

var
  FrmVisualizaMensagem: TFrmVisualizaMensagem;

procedure VisualizaMensagem(Mensagem: String;
  Titulo: String = 'Visualizando Mensagem');

implementation

uses UFrmPrincipal;

{$R *.dfm}

procedure VisualizaMensagem(Mensagem, Titulo: String);
begin
  FrmVisualizaMensagem := TFrmVisualizaMensagem.Create(Application);
  with (FrmVisualizaMensagem) do
    try
      Memo.Lines.Add(Mensagem);

      iMensagem := Mensagem;
      Caption := Titulo;
      ShowModal;
    finally
      Free;
      FrmVisualizaMensagem := nil;
    end;
end;

procedure TFrmVisualizaMensagem.BitBtn2Click(Sender: TObject);
begin
  Close;
end;

procedure TFrmVisualizaMensagem.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #27 then
    Close;
end;

procedure TFrmVisualizaMensagem.SpinEdit1Change(Sender: TObject);
begin
  Memo.Font.Size := SpinEdit1.Value;
end;

end.
