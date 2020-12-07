unit UnitPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Imaging.jpeg,
  Vcl.ExtCtrls, Vcl.Imaging.pngimage;

type
  TFrmPrincipal = class(TForm)
    Btncadastro: TButton;
    Btnconsulta: TButton;
    Btnrelatorios: TButton;
    Image1: TImage;
    procedure BtncadastroClick(Sender: TObject);
    procedure AbrirFormulario(const AForm: Tform);
    procedure BtnconsultaClick(Sender: TObject);
    procedure BtnrelatoriosClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPrincipal: TFrmPrincipal;

implementation

{$R *.dfm}

uses
   Unitcadastro, UnitSintomas, UnitRelatorios;

procedure TfrmPrincipal.AbrirFormulario(const AForm: Tform);
begin
  AForm.ShowModal;
  AForm.Free;
end;

procedure TFrmPrincipal.BtncadastroClick(Sender: TObject);
begin
  Unitcadastro.frmCadastro := TFrmcadastro.Create(self);
  AbrirFormulario(Unitcadastro.frmCadastro);
end;


procedure TFrmPrincipal.BtnconsultaClick(Sender: TObject);
begin
   UnitSintomas.frmsintomas := TFrmsintomas.Create(self);
   AbrirFormulario(UnitSintomas.frmsintomas);
end;

procedure TFrmPrincipal.BtnrelatoriosClick(Sender: TObject);
begin
   UnitRelatorios.frmrelatorios := Tfrmrelatorios.Create(self);
   AbrirFormulario(UnitRelatorios.frmrelatorios);
end;

end.
