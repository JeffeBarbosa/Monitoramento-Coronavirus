program Projectfinal;

uses
  Vcl.Forms,
  UnitDM in 'UnitDM.pas' {DM: TDataModule},
  UnitRelatorios in 'UnitRelatorios.pas' {Frmrelatorios},
  UnitPrincipal in 'UnitPrincipal.pas' {FrmPrincipal},
  UnitLogin in 'UnitLogin.pas' {Frmlogin},
  Unitendereco in 'Unitendereco.pas' {Frmendereco};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;

  if not(Tfrmlogin.logar) then
    exit;

  Application.CreateForm(TDM, DM);
  Application.CreateForm(TFrmPrincipal, FrmPrincipal);
  Application.CreateForm(TFrmendereco, Frmendereco);
  Application.Run;
end.
