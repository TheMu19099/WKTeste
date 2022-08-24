program PedidoVendaWKTeste;

uses
  Vcl.Forms,
  MainForm in 'src\MainForm.pas' {frmMain},
  MainDataModule in 'src\MainDataModule.pas' {dmMain: TDataModule},
  Functions in 'src\Functions.pas',
  GlobalData in 'src\GlobalData.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmMain, frmMain);
  Application.CreateForm(TdmMain, dmMain);
  Application.Run;
end.
