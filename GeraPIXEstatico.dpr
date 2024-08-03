program GeraPIXEstatico;

uses
  Vcl.Forms,
  uGeraPix in 'uGeraPix.pas' {frmGeraPix},
  ACBrDelphiZXingQRCode in 'ACBrDelphiZXingQRCode.pas',
  uClassePixEstatico in 'uClassePixEstatico.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmGeraPix, frmGeraPix);
  Application.Run;
end.
