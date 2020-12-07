unit UnitLogin;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Imaging.jpeg,
  Vcl.ExtCtrls, Vcl.Imaging.pngimage;

type
  TFrmlogin = class(TForm)
    Edtlogin: TEdit;
    Edtsenha: TEdit;
    Btnentrar: TButton;
    Lblloginincorreto: TLabel;
    Lbllogin: TLabel;
    Lblsenha: TLabel;
    Lblsenhaerrada: TLabel;
    Image1: TImage;
    Image2: TImage;
    procedure BtnentrarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
  public
    class function logar: boolean;
  end;

var
  Frmlogin: TFrmlogin;
  bLogin: boolean;

implementation

{$R *.dfm}
{ TForm4 }

procedure TFrmlogin.BtnentrarClick(Sender: TObject);
begin
  Lblloginincorreto.Visible := false;
  Lblsenhaerrada.Visible := false;
  if (Edtlogin.text = 'admin') and (Edtsenha.text = 'admin') then
  begin
    bLogin := True;
    Self.Close;
  end;
  if (Edtlogin.Text <> 'admin') then
  begin
    Lblloginincorreto.Visible := true;
  end;
  if (Edtsenha.Text <> 'admin') then
  begin
    Lblsenhaerrada.Visible := true;
  end;

end;

procedure TFrmlogin.FormShow(Sender: TObject);
begin
  Lblloginincorreto.Visible := false;
end;

class function TFrmlogin.logar: boolean;
begin
  Frmlogin := TFrmlogin.create(nil);
  try
    Frmlogin.ShowModal;
    Result := bLogin;
  finally
    Frmlogin.Free;
  end;
end;

end.
