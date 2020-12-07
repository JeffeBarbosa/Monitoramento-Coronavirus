unit Unitendereco;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, System.Rtti, System.Bindings.Outputs,
  Vcl.Bind.Editors, Data.Bind.EngExt, Vcl.Bind.DBEngExt, Data.DB, Vcl.StdCtrls,
  Vcl.Grids, Vcl.DBGrids, Data.Bind.Components, Data.Bind.DBScope;

type
  TFrmendereco = class(TForm)
    Lblrua: TLabel;
    Edtcep: TEdit;
    Edtcodigo: TEdit;
    Edtcidade: TEdit;
    Edtestado: TEdit;
    Edtbairro: TEdit;
    Edtrua: TEdit;
    Lblestado: TLabel;
    Lblcidade: TLabel;
    lblcep: TLabel;
    Lblbairro: TLabel;
    Lblcodigo: TLabel;
    Edtnumero: TEdit;
    Lblnumero: TLabel;
    BindSourceDB1: TBindSourceDB;
    BindingsList1: TBindingsList;
    LinkControlToField1: TLinkControlToField;
    LinkControlToField2: TLinkControlToField;
    LinkControlToField3: TLinkControlToField;
    LinkControlToField4: TLinkControlToField;
    LinkControlToField5: TLinkControlToField;
    LinkControlToField6: TLinkControlToField;
    LinkControlToField7: TLinkControlToField;
    Btnnovo: TButton;
    Btnsalvar: TButton;
    DBGrid1: TDBGrid;
    procedure BtnsalvarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BtnnovoClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmendereco: TFrmendereco;

implementation

{$R *.dfm}

uses UnitDM;

procedure TFrmendereco.BtnnovoClick(Sender: TObject);
begin
  edtestado.Clear;
  edtcidade.Clear;
  edtbairro.Clear;
  edtrua.Clear;
  edtnumero.Clear;
  edtcep.Clear;
  edtcodigo.Clear;
  Edtestado.Enabled:=true;
  edtcidade.Enabled:=true;
  edtcep.Enabled:=true;
  edtbairro.Enabled:=true;
  edtrua.Enabled:=true;
  edtnumero.Enabled:=true;
  edtcodigo.Enabled:=true;
  dm.FDQEndereco.Insert;
end;

procedure TFrmendereco.BtnsalvarClick(Sender: TObject);
begin
  dm.FDQEndereco.Post;
  edtestado.Clear;
  edtcidade.Clear;
  edtbairro.Clear;
  edtrua.Clear;
  edtnumero.Clear;
  edtcep.Clear;
  edtcodigo.Clear;
  Edtestado.Enabled:=false;
  edtcidade.Enabled:=false;
  edtcep.Enabled:=false;
  edtbairro.Enabled:=false;
  edtrua.Enabled:=false;
  edtnumero.Enabled:=false;
  edtcodigo.Enabled:=false;
end;

procedure TFrmendereco.FormShow(Sender: TObject);
begin
  edtestado.Clear;
  edtcidade.Clear;
  edtbairro.Clear;
  edtrua.Clear;
  edtnumero.Clear;
  edtcep.Clear;
  edtcodigo.Clear;
  Edtestado.Enabled:=false;
  edtcidade.Enabled:=false;
  edtcep.Enabled:=false;
  edtbairro.Enabled:=false;
  edtrua.Enabled:=false;
  edtnumero.Enabled:=false;
  edtcodigo.Enabled:=false;
end;

end.
