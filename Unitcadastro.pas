unit Unitcadastro;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls,
  Data.DB, Vcl.Grids, Vcl.DBGrids, System.Rtti, System.Bindings.Outputs,
  Vcl.Bind.Editors, Data.Bind.EngExt, Vcl.Bind.DBEngExt, Data.Bind.Components,
  Data.Bind.DBScope, REST.Types, REST.Client, Data.Bind.ObjectScope,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, REST.Response.Adapter;

type
  TFrmCadastro = class(TForm)
    edtnome: TEdit;
    EdtData: TEdit;
    edtpeso: TEdit;
    edtcpf: TEdit;
    edtaltura: TEdit;
    lblnome: TLabel;
    lbldata: TLabel;
    lblcpf: TLabel;
    lblaltura: TLabel;
    lblpeso: TLabel;
    lblsex: TLabel;
    Cbsexo: TComboBox;
    BindSourceDB1: TBindSourceDB;
    BindingsList1: TBindingsList;
    BTnsalvar: TButton;
    BtnNovo: TButton;
    LinkControlToField3: TLinkControlToField;
    LinkControlToField5: TLinkControlToField;
    BindSourceDB3: TBindSourceDB;
    LinkFillControlToField1: TLinkFillControlToField;
    procedure AbrirFormulario(const AForm: Tform);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BtnNovoClick(Sender: TObject);
    procedure BTnsalvarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadastro: TFrmCadastro;

implementation
uses
  UnitDM, Unitendereco;

{$R *.dfm}

procedure TFrmCadastro.AbrirFormulario(const AForm: TForm);
begin
  Aform.ShowModal;
  Aform.Free;
end;

procedure TFrmCadastro.BtnNovoClick(Sender: TObject);
begin
  edtnome.Enabled:=true;
  edtcpf.Enabled:=true;
  edtpeso.Enabled:=true;
  edtaltura.Enabled:=true;
  edtdata.Enabled:=true;
  Cbsexo.Enabled:=true;
  dm.FDQCadastro.Insert;
end;

procedure TFrmCadastro.BTnsalvarClick(Sender: TObject);
begin
  dm.FDQCadastro.Post;
  edtnome.Clear;
  edtcpf.Clear;
  edtpeso.Clear;
  edtaltura.Clear;
  edtdata.Clear;
  edtnome.Enabled:=false;
  edtcpf.Enabled:=false;
  edtpeso.Enabled:=false;
  edtaltura.Enabled:=false;
  edtdata.Enabled:=false;
  cbsexo.Enabled:=false;
  Unitendereco.frmendereco := Tfrmendereco.Create(Self);
  AbrirFormulario(Unitendereco.frmendereco);
end;



procedure TFrmCadastro.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   DM.FDConnection1.Connected:= false;
   DM.FDQCadastro.Active := false;
   DM.FDQEndereco.Active := false;
   DM.FDQConsulta.Active := false;
   DM.FDQSintoma.Active:= false;
end;

procedure TFrmCadastro.FormShow(Sender: TObject);
begin
  DM.FDConnection1.Connected:= true;
  DM.FDQCadastro.Active := true;
  DM.FDQEndereco.Active := true;
  DM.FDQConsulta.Active := true;
  DM.FDQSintoma.Active:= true;
  edtnome.Clear;
  edtcpf.Clear;
  edtpeso.Clear;
  edtaltura.Clear;
  edtdata.Clear;
  edtnome.Enabled:=false;
  edtcpf.Enabled:=false;
  edtpeso.Enabled:=false;
  edtaltura.Enabled:=false;
  edtdata.Enabled:=false;
  Cbsexo.Enabled:= false;
end;

end.
