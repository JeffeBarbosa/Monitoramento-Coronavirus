unit UnitDM;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.VCLUI.Wait,
  FireDAC.Phys.PGDef, FireDAC.Phys.PG, Data.DB, FireDAC.Comp.Client,
  FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt,
  FireDAC.Comp.DataSet, Data.Bind.Components, Data.Bind.DBScope;

type
  TDM = class(TDataModule)
    FDConnection1: TFDConnection;
    FDPhysPgDriverLink1: TFDPhysPgDriverLink;
    FDQCadastro: TFDQuery;
    FDQEndereco: TFDQuery;
    DSCadastro: TDataSource;
    DSEndereco: TDataSource;
    FDQCadastrocodpac: TIntegerField;
    FDQCadastronompac: TWideStringField;
    FDQCadastrodatpac: TDateField;
    FDQCadastropespac: TSingleField;
    FDQCadastroaltpac: TSingleField;
    FDQCadastrocpfpac: TFMTBCDField;
    FDQCadastrosexpac: TWideStringField;
    FDQSintoma: TFDQuery;
    FDQConsulta: TFDQuery;
    DSSintomas: TDataSource;
    DSConsulta: TDataSource;
    BindSourceDB1: TBindSourceDB;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DM: TDM;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}
end.
