unit Main;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    mmLinhas: TMemo;
    Button4: TButton;
    lblSOL: TLabel;
    lblDES: TLabel;
    lblAMBOS: TLabel;
    lblSaida: TLabel;
    Label1: TLabel;
    edtVersao: TEdit;
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  linhasGerais : integer;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
var   arq: TextFile; { declarando a vari�vel "arq" do tipo arquivo texto }
    linha: string;
    linhas: Integer;
begin
  if edtVersao.Text = '' then edtVersao.Text := '1024';

  AssignFile(arq, 'c:\Gera\SOL'+edtVersao.Text+'.txt');

  {$I-}         // desativa a diretiva de Input
  Reset(arq);   // [ 3 ] Abre o arquivo texto para leitura
  {$I+}         // ativa a diretiva de Input
  linhas := 0;
  if (IOResult <> 0) // verifica o resultado da opera��o de abertura
     then mmLinhas.Lines.Add('Erro na abertura do arquivo !!!')
  else begin
// [ 11 ] verifica se o ponteiro de arquivo atingiu a marca de final de arquivo
         while (not eof(arq)) do
         begin
           readln(arq, linha); // [ 6 ] L� uma linha do arquivo

           mmLinhas.Lines.Add(linha);
           linhas       := linhas + 1;
           linhasGerais := linhasGerais + 1;
           lblSol.Caption   := 'Linhas: ' + IntToStr(linhas);
           lblAmbos.Caption := 'Linhas: ' + IntToStr(linhasGerais);
           application.ProcessMessages;
         end;

         CloseFile(arq); // [ 8 ] Fecha o arquivo texto aberto
       end;
end;

procedure TForm1.Button2Click(Sender: TObject);
var   arq: TextFile; { declarando a vari�vel "arq" do tipo arquivo texto }
    linha: string;
    linhas: Integer;
begin
  if edtVersao.Text = '' then edtVersao.Text := '1024';

  AssignFile(arq, 'c:\Gera\DES'+edtVersao.Text+'.txt');

  {$I-}         // desativa a diretiva de Input
  Reset(arq);   // [ 3 ] Abre o arquivo texto para leitura
  {$I+}         // ativa a diretiva de Input
  linhas := 0;
  if (IOResult <> 0) // verifica o resultado da opera��o de abertura
     then mmLinhas.Lines.Add('Erro na abertura do arquivo !!!')
  else begin
// [ 11 ] verifica se o ponteiro de arquivo atingiu a marca de final de arquivo
         while (not eof(arq)) do
         begin
           readln(arq, linha); // [ 6 ] L� uma linha do arquivo

           mmLinhas.Lines.Add(linha);
           linhas       := linhas + 1;
           linhasGerais := linhasGerais + 1;
           lblDES.Caption   := 'Linhas: ' + IntToStr(linhas);
           lblAmbos.Caption := 'Linhas: ' + IntToStr(linhasGerais);
           application.ProcessMessages;
         end;

         CloseFile(arq); // [ 8 ] Fecha o arquivo texto aberto
       end;
end;

procedure TForm1.Button4Click(Sender: TObject);
var
    linha: string;
    linhas: Integer;
begin
  if edtVersao.Text = '' then edtVersao.Text := '1024';

  linhas := 0;
  mmLinhas.Lines.SaveToFile('c:\Gera\DESS'+edtVersao.Text+'.txt');
  lblSaida.Caption := 'Linhas: ' + intToStr( mmLinhas.Lines.count);
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  lblSOL.Caption   := 'Linhas : 00';
  lblDES.Caption   := 'Linhas : 00';
  lblAmbos.Caption := 'Linhas : 00';
  lblSaida.Caption := 'Linhas : 00';
  edtVersao.Text   := '1024';
  linhasGerais     := 0;
  mmLinhas.Clear;
end;

end.
