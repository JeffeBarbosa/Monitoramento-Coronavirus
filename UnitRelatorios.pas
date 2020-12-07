unit UnitRelatorios;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, frxClass, frxDBSet, Vcl.StdCtrls,
  frxExportHTML, frxExportCSV, frxExportBaseDialog, frxExportPDF, REST.Types,
  Vcl.Mask, Vcl.DBCtrls, REST.Response.Adapter, REST.Client,
  Data.Bind.Components, Data.Bind.ObjectScope;

type
  TFrmrelatorios = class(TForm)
    frxReport1: TfrxReport;
    frxDBDataset1: TfrxDBDataset;
    FDQuery1: TFDQuery;
    Btnreport: TButton;
    frxPDFExport1: TfrxPDFExport;
    frxCSVExport1: TfrxCSVExport;
    Btnpdf: TButton;
    Btnhtml: TButton;
    Btncsv: TButton;
    frxHTMLExport1: TfrxHTMLExport;
    RESTClient1: TRESTClient;
    RESTRequest1: TRESTRequest;
    RESTResponse1: TRESTResponse;
    RESTResponseDataSetAdapter1: TRESTResponseDataSetAdapter;
    FDMemTable1: TFDMemTable;
    FDMemTable1state: TWideStringField;
    FDMemTable1cases: TWideStringField;
    FDMemTable1deaths: TWideStringField;
    FDMemTable1suspects: TWideStringField;
    FDMemTable1refuses: TWideStringField;
    DataSource1: TDataSource;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    Cbestado: TComboBox;
    Lblestado: TLabel;
    Btnbuscar: TButton;
    RESTRequest2: TRESTRequest;
    procedure BtnreportClick(Sender: TObject);
    procedure BtnpdfClick(Sender: TObject);
    procedure BtnhtmlClick(Sender: TObject);
    procedure BtncsvClick(Sender: TObject);
    procedure BtnbuscarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmrelatorios: TFrmrelatorios;

implementation

{$R *.dfm}

uses UnitDM,REST.Json, System.Json, System.Json.Types, System.Json.Writers,
System.Json.Builders, System.Json.Readers;


procedure TFrmrelatorios.BtnbuscarClick(Sender: TObject);
var
  casosJSON: TJSONValue;
begin
  RESTRequest1.Params.ParameterByName('estado').Value := Cbestado.Text;
  RESTRequest1.Execute;
  casosJSON := TJSONObject.ParseJSONValue(RESTResponse1.Content.Trim);
  casosJSON.Free;
  end;


procedure TFrmrelatorios.BtncsvClick(Sender: TObject);
var
   Exportfilter : TfrxCustomExportFilter;
begin
   Exportfilter := TfrxCustomExportFilter(frxCSVExport1);
   ExportFilter.ShowDialog := false;
   ExportFilter.FileName := 'D:\dsv\wkspii\Trabalho corona\Relatorio.csv';
   frxReport1.PrepareReport(True);
   frxReport1.Export(ExportFilter);
end;


procedure TFrmrelatorios.BtnhtmlClick(Sender: TObject);
var
   Exportfilter : TfrxCustomExportFilter;
begin
   Exportfilter := TfrxCustomExportFilter(frxHTMLExport1);
   ExportFilter.ShowDialog := false;
   ExportFilter.FileName := 'D:\dsv\wkspii\Trabalho corona\Relatorio.html';
   frxReport1.PrepareReport(True);
   frxReport1.Export(ExportFilter);
end;


procedure TFrmrelatorios.BtnpdfClick(Sender: TObject);
var
   Exportfilter : TfrxCustomExportFilter;
begin
   Exportfilter := TfrxCustomExportFilter(frxPDFExport1);
   ExportFilter.ShowDialog := false;
   ExportFilter.FileName := 'D:\dsv\wkspii\Trabalho corona\Relatorio.pdf';
   frxReport1.PrepareReport(True);
   frxReport1.Export(ExportFilter);
end;


procedure TFrmrelatorios.BtnreportClick(Sender: TObject);
begin
  frxreport1.ShowReport();
end;


end.
