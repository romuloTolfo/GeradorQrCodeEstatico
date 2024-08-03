unit uGeraPix;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.Buttons, Vcl.StdCtrls, vcl.Clipbrd,
  Winapi.ShellAPI;

type
  TfrmGeraPix = class(TForm)
    edtChave: TEdit;
    edtValor: TEdit;
    edtNome: TEdit;
    edtCidade: TEdit;
    edtDesc: TEdit;
    edtId: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    lbInst: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    btPix: TSpeedButton;
    btnQR: TSpeedButton;
    imgQR: TImage;
    Edit1: TEdit;
    btnCopiarchave: TSpeedButton;
    Panel1: TPanel;
    procedure btPixClick(Sender: TObject);
    procedure btnQRClick(Sender: TObject);
    procedure btnCopiarchaveClick(Sender: TObject);
    procedure Panel1Click(Sender: TObject);
  private
    procedure PintarQRCode(APict: TPicture; Pix: String);
    procedure CopyToClipboard(const S: string);
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmGeraPix: TfrmGeraPix;

implementation

uses
  ACBrDelphiZXingQRCode, uClassePixEstatico;
{$R *.dfm}

procedure TfrmGeraPix.btnCopiarchaveClick(Sender: TObject);
begin
  CopyToClipboard(edit1.Text);
end;

procedure TfrmGeraPix.btnQRClick(Sender: TObject);
begin
  if edit1.Text <> '' then
    PintarQRCode(imgqr.Picture, edit1.Text)
  else
    raise Exception.Create('Atenção! Gere o PIX antes!');
end;

procedure TfrmGeraPix.btPixClick(Sender: TObject);
var
  chave: String;
begin
  var Pix := TInformacoesPixEstatico.Create;
  try
    with Pix do
    begin
      chave         := edtChave.Text;
      Valor         := edtValor.Text;
      Nome          := edtNome.Text;
      Cidade        := edtCidade.Text;
      Desc          := edtDesc.Text;
      Id := edtId.Text;
    end;
    chave := Pix.Gerar;
  finally
    FreeAndNil(Pix);
  end;
  if chave <> '' then
  begin
    edit1.text := chave;
  end;
end;

procedure TfrmGeraPix.Panel1Click(Sender: TObject);
begin
  ShellExecute(0, 'open', 'https://www.linkedin.com/in/r%C3%B4mulo-tolfo-765353123/', nil, nil, SW_SHOWNORMAL);
end;

procedure TFrmGeraPix.PintarQRCode(APict: TPicture; Pix: String);
var
  QRCode: TDelphiZXingQRCode;
  QRCodeBitmap: TBitmap;
  Row, Column: Integer;
begin
  QRCode       := TDelphiZXingQRCode.Create;
  QRCodeBitmap := TBitmap.Create;
  try
   // QRCode.Encoding  := qrUTF8NoBOM;
    QRCode.QuietZone := 1;
    QRCode.Data      := AnsiToUTF8(Trim(Pix));
    //QRCodeBitmap.SetSize(QRCode.Rows, QRCode.Columns);
    QRCodeBitmap.Width  := QRCode.Columns;
    QRCodeBitmap.Height := QRCode.Rows;
    for Row := 0 to QRCode.Rows - 1 do
    begin
      for Column := 0 to QRCode.Columns - 1 do
      begin
        if (QRCode.IsBlack[Row, Column]) then
          QRCodeBitmap.Canvas.Pixels[Column, Row] := clBlack
        else
          QRCodeBitmap.Canvas.Pixels[Column, Row] := clWhite;
      end;
    end;
    APict.Assign(QRCodeBitmap);
  finally
    QRCode.Free;
    QRCodeBitmap.Free;
  end;
end;

procedure TfrmGeraPix.CopyToClipboard(const S: string);
begin
  Clipboard.AsText := S;
end;
end.
