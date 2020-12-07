unit UnitSintomas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, System.Rtti,
  System.Bindings.Outputs, Vcl.Bind.Editors, Data.Bind.EngExt,
  Vcl.Bind.DBEngExt, Data.Bind.Components, Data.Bind.DBScope, Data.DB,
  Vcl.Grids, Vcl.DBGrids;

type
  TFrmsintomas = class(TForm)
    Label1: TLabel;
    Cbresultado: TComboBox;
    Lblresultado: TLabel;
    BindSourceDB1: TBindSourceDB;
    BindingsList1: TBindingsList;
    LinkFillControlToField1: TLinkFillControlToField;
    Edtsintomas: TEdit;
    LinkControlToField3: TLinkControlToField;
    Btnnovo: TButton;
    Btnsalvar: TButton;
    Cbintensidade: TComboBox;
    lblintencidade: TLabel;
    LinkFillControlToField2: TLinkFillControlToField;
    Lblcod: TLabel;
    Edtcod: TEdit;
    LinkControlToField10: TLinkControlToField;
    DBGrid1: TDBGrid;
    procedure BtnnovoClick(Sender: TObject);
    procedure BtnsalvarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmsintomas: TFrmsintomas;

implementation

{$R *.dfm}

uses UnitDM;

procedure TFrmsintomas.BtnnovoClick(Sender: TObject);
begin
  edtsintomas.Enabled:=true;
  Cbresultado.Enabled:=true;
  Cbintensidade.Enabled:=true;
  edtcod.Enabled:=true;
  dm.FDQSintoma.Insert;
  dm.FDQConsulta.Insert
end;


procedure TFrmsintomas.BtnsalvarClick(Sender: TObject);
begin
  dm.FDQSintoma.Post;
  dm.FDQConsulta.Post;
  edtsintomas.Clear;
  edtcod.Clear;
  edtsintomas.Enabled:=false;
  Cbresultado.Enabled:=false;
  Cbintensidade.Enabled:=false;
  edtcod.Enabled:=false;
end;


procedure TFrmsintomas.FormShow(Sender: TObject);
begin
  edtsintomas.Clear;
  edtsintomas.Enabled:=false;
  Cbresultado.Enabled:=false;
  Cbintensidade.Enabled:=false;
  edtcod.Enabled:=false;
end;

end.
