object Frmrelatorios: TFrmrelatorios
  Left = 0
  Top = 0
  BorderStyle = bsSingle
  Caption = 'Relat'#243'rios'
  ClientHeight = 381
  ClientWidth = 708
  Color = clWhite
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Label2: TLabel
    Left = 48
    Top = 126
    Width = 38
    Height = 19
    Caption = 'Casos'
    FocusControl = DBEdit2
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
  end
  object Label3: TLabel
    Left = 48
    Top = 186
    Width = 44
    Height = 19
    Caption = 'Mortes'
    FocusControl = DBEdit3
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
  end
  object Label4: TLabel
    Left = 194
    Top = 126
    Width = 58
    Height = 19
    Caption = 'Suspeitos'
    FocusControl = DBEdit4
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
  end
  object Label5: TLabel
    Left = 194
    Top = 186
    Width = 80
    Height = 19
    Caption = 'Recuperados'
    FocusControl = DBEdit5
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
  end
  object Lblestado: TLabel
    Left = 48
    Top = 46
    Width = 124
    Height = 19
    Caption = 'Pesquisa por Estado'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
  end
  object Btnreport: TButton
    Left = 496
    Top = 40
    Width = 75
    Height = 25
    Caption = 'Relat'#243'rio'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    OnClick = BtnreportClick
  end
  object Btnpdf: TButton
    Left = 496
    Top = 160
    Width = 75
    Height = 25
    Caption = 'Salvar .pdf'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    OnClick = BtnpdfClick
  end
  object Btnhtml: TButton
    Left = 496
    Top = 96
    Width = 75
    Height = 25
    Caption = 'Salvar .html'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
    OnClick = BtnhtmlClick
  end
  object Btncsv: TButton
    Left = 496
    Top = 232
    Width = 75
    Height = 25
    Caption = 'Salvar .csv'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 3
    OnClick = BtncsvClick
  end
  object DBEdit2: TDBEdit
    Left = 48
    Top = 145
    Width = 80
    Height = 21
    DataField = 'cases'
    DataSource = DataSource1
    TabOrder = 4
  end
  object DBEdit3: TDBEdit
    Left = 48
    Top = 205
    Width = 80
    Height = 21
    DataField = 'deaths'
    DataSource = DataSource1
    TabOrder = 5
  end
  object DBEdit4: TDBEdit
    Left = 194
    Top = 145
    Width = 80
    Height = 21
    DataField = 'suspects'
    DataSource = DataSource1
    TabOrder = 6
  end
  object DBEdit5: TDBEdit
    Left = 194
    Top = 205
    Width = 80
    Height = 21
    DataField = 'refuses'
    DataSource = DataSource1
    TabOrder = 7
  end
  object Cbestado: TComboBox
    Left = 48
    Top = 69
    Width = 145
    Height = 21
    TabOrder = 8
    Items.Strings = (
      'AC'
      'AL'
      'AP'
      'AM'
      'BA'
      'CE'
      'DF'
      'ES'
      'GO'
      'MA'
      'MT'
      'MS'
      'MG'
      'PA'
      'PB'
      'PR'
      'PE'
      'PI'
      'RJ'
      'RN'
      'RS'
      'RO'
      'RR'
      'SC'
      'SP'
      'SE')
  end
  object Btnbuscar: TButton
    Left = 208
    Top = 66
    Width = 75
    Height = 25
    Caption = 'Buscar'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 9
    OnClick = BtnbuscarClick
  end
  object frxReport1: TfrxReport
    Version = '6.2.1'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbCopy, pbSelection]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 44171.870609907400000000
    ReportOptions.LastChange = 44171.873425902780000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      'begin'
      ''
      'end.')
    Left = 768
    Top = 8
    Datasets = <
      item
        DataSet = frxDBDataset1
        DataSetName = 'frxDBDataset1'
      end>
    Variables = <>
    Style = <
      item
        Name = 'Title'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = []
        Fill.BackColor = clGray
      end
      item
        Name = 'Header'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMaroon
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = []
      end
      item
        Name = 'Group header'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMaroon
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = []
        Fill.BackColor = 16053492
      end
      item
        Name = 'Data'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = []
      end
      item
        Name = 'Group footer'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = []
      end
      item
        Name = 'Header line'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = [ftBottom]
        Frame.Width = 2.000000000000000000
      end>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      Frame.Typ = []
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        Frame.Typ = []
        Height = 26.456710000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Memo1: TfrxMemoView
          Align = baWidth
          AllowVectorExport = True
          Width = 718.110700000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Fill.BackColor = clGray
          HAlign = haCenter
          Memo.UTF8W = (
            'Report')
          ParentFont = False
          Style = 'Title'
          VAlign = vaCenter
        end
      end
      object GroupHeader1: TfrxGroupHeader
        FillType = ftBrush
        Frame.Typ = []
        Height = 26.456710000000000000
        Top = 105.826840000000000000
        Width = 718.110700000000000000
        Condition = 'frxDBDataset1."estend"'
        object Memo2: TfrxMemoView
          Align = baWidth
          AllowVectorExport = True
          Width = 718.110700000000000000
          Height = 22.677180000000000000
          DataField = 'estend'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Fill.BackColor = 16053492
          Memo.UTF8W = (
            '[frxDBDataset1."estend"]')
          ParentFont = False
          Style = 'Group header'
          VAlign = vaCenter
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Frame.Typ = []
        Height = 113.385900000000000000
        Top = 154.960730000000000000
        Width = 718.110700000000000000
        DataSet = frxDBDataset1
        DataSetName = 'frxDBDataset1'
        RowCount = 0
        object Memo3: TfrxMemoView
          AllowVectorExport = True
          Width = 134.370130000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Nome do Paciente')
          ParentFont = False
          Style = 'Header'
        end
        object Memo4: TfrxMemoView
          AllowVectorExport = True
          Left = 134.370130000000000000
          Width = 887.000000000000000000
          Height = 18.897650000000000000
          DataField = 'nompac'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."nompac"]')
          ParentFont = False
          Style = 'Data'
        end
        object Memo5: TfrxMemoView
          AllowVectorExport = True
          Top = 18.897650000000000000
          Width = 134.370130000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Data de Nascimento')
          ParentFont = False
          Style = 'Header'
        end
        object Memo6: TfrxMemoView
          AllowVectorExport = True
          Left = 134.370130000000000000
          Top = 18.897650000000000000
          Width = 78.000000000000000000
          Height = 18.897650000000000000
          DataField = 'datpac'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."datpac"]')
          ParentFont = False
          Style = 'Data'
        end
        object Memo7: TfrxMemoView
          AllowVectorExport = True
          Top = 37.795300000000000000
          Width = 134.370130000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'CPF do Paciente')
          ParentFont = False
          Style = 'Header'
        end
        object Memo8: TfrxMemoView
          AllowVectorExport = True
          Left = 134.370130000000000000
          Top = 34.015770000000000000
          Width = 144.000000000000000000
          Height = 18.897650000000000000
          DataField = 'cpfpac'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."cpfpac"]')
          ParentFont = False
          Style = 'Data'
        end
        object Memo9: TfrxMemoView
          AllowVectorExport = True
          Top = 56.692950000000000000
          Width = 134.370130000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Situa'#231#227'o ao COVID')
          ParentFont = False
          Style = 'Header'
        end
        object Memo10: TfrxMemoView
          AllowVectorExport = True
          Left = 134.370130000000000000
          Top = 52.913420000000000000
          Width = 11.000000000000000000
          Height = 18.897650000000000000
          DataField = 'sitpac'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."sitpac"]')
          ParentFont = False
          Style = 'Data'
        end
        object Memo11: TfrxMemoView
          AllowVectorExport = True
          Top = 75.590600000000000000
          Width = 134.370130000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Cidade do Paciente')
          ParentFont = False
          Style = 'Header'
        end
        object Memo12: TfrxMemoView
          AllowVectorExport = True
          Left = 134.370130000000000000
          Top = 75.590600000000000000
          Width = 887.000000000000000000
          Height = 18.897650000000000000
          DataField = 'cidend'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."cidend"]')
          ParentFont = False
          Style = 'Data'
        end
      end
      object GroupFooter1: TfrxGroupFooter
        FillType = ftBrush
        Frame.Typ = []
        Top = 291.023810000000000000
        Width = 718.110700000000000000
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        Frame.Typ = []
        Height = 26.456710000000000000
        Top = 351.496290000000000000
        Width = 718.110700000000000000
        object Memo13: TfrxMemoView
          Align = baWidth
          AllowVectorExport = True
          Width = 718.110700000000000000
          Frame.Typ = [ftTop]
          Frame.Width = 2.000000000000000000
        end
        object Memo14: TfrxMemoView
          AllowVectorExport = True
          Top = 1.000000000000000000
          Height = 22.677180000000000000
          AutoWidth = True
          Frame.Typ = []
          Memo.UTF8W = (
            '[Date] [Time]')
        end
        object Memo15: TfrxMemoView
          Align = baRight
          AllowVectorExport = True
          Left = 642.520100000000000000
          Top = 1.000000000000000000
          Width = 75.590600000000000000
          Height = 22.677180000000000000
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Page [Page#]')
        end
      end
    end
  end
  object frxDBDataset1: TfrxDBDataset
    UserName = 'frxDBDataset1'
    CloseDataSource = False
    DataSet = FDQuery1
    BCDToCurrency = False
    Left = 768
    Top = 48
  end
  object FDQuery1: TFDQuery
    Active = True
    Connection = DM.FDConnection1
    SQL.Strings = (
      
        'select p.codpac,p.nompac,p.datpac,p.cpfpac,c.sitpac,e.estend,e.c' +
        'idend'
      'from endereco e'
      'inner join paciente p on p.codpac = e.codpac'
      'inner join consulta c on c.codpac = p.codpac'
      'group by e.estend,p.codpac,c.sitpac,e.estend,e.cidend'
      'order by p.nompac desc')
    Left = 768
    Top = 240
  end
  object frxPDFExport1: TfrxPDFExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    OpenAfterExport = False
    PrintOptimized = False
    Outline = False
    Background = False
    HTMLTags = True
    Quality = 95
    Transparency = False
    Author = 'FastReport'
    Subject = 'FastReport PDF export'
    ProtectionFlags = [ePrint, eModify, eCopy, eAnnot]
    HideToolbar = False
    HideMenubar = False
    HideWindowUI = False
    FitWindow = False
    CenterWindow = False
    PrintScaling = False
    PdfA = False
    Left = 760
    Top = 88
  end
  object frxCSVExport1: TfrxCSVExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    Separator = ';'
    OEMCodepage = False
    UTF8 = False
    OpenAfterExport = False
    NoSysSymbols = True
    ForcedQuotes = False
    Left = 768
    Top = 184
  end
  object frxHTMLExport1: TfrxHTMLExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    OpenAfterExport = False
    FixedWidth = True
    Background = False
    Centered = False
    EmptyLines = True
    Print = False
    PictureType = gpPNG
    Left = 760
    Top = 136
  end
  object RESTClient1: TRESTClient
    Accept = 'application/json, text/plain; q=0.9, text/html;q=0.8,'
    AcceptCharset = 'utf-8, *;q=0.8'
    BaseURL = 'https://covid19-brazil-api.now.sh/api/report/v1/brazil'
    Params = <>
    RaiseExceptionOn500 = False
    Left = 824
    Top = 80
  end
  object RESTRequest1: TRESTRequest
    Client = RESTClient1
    Params = <
      item
        Kind = pkURLSEGMENT
        Name = 'estado'
        Options = [poAutoCreated]
        Value = 'sc'
      end>
    Resource = 'uf/{estado}'
    Response = RESTResponse1
    SynchronizedEvents = False
    Left = 808
    Top = 248
  end
  object RESTResponse1: TRESTResponse
    Left = 800
    Top = 168
  end
  object RESTResponseDataSetAdapter1: TRESTResponseDataSetAdapter
    Dataset = FDMemTable1
    FieldDefs = <>
    Response = RESTResponse1
    Left = 808
    Top = 120
  end
  object FDMemTable1: TFDMemTable
    FieldDefs = <>
    IndexDefs = <>
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired]
    UpdateOptions.CheckRequired = False
    StoreDefs = True
    Left = 816
    Top = 48
    object FDMemTable1state: TWideStringField
      FieldName = 'state'
      Size = 255
    end
    object FDMemTable1cases: TWideStringField
      FieldName = 'cases'
      Size = 255
    end
    object FDMemTable1deaths: TWideStringField
      FieldName = 'deaths'
      Size = 255
    end
    object FDMemTable1suspects: TWideStringField
      FieldName = 'suspects'
      Size = 255
    end
    object FDMemTable1refuses: TWideStringField
      FieldName = 'refuses'
      Size = 255
    end
  end
  object DataSource1: TDataSource
    DataSet = FDMemTable1
    Left = 752
    Top = 296
  end
  object RESTRequest2: TRESTRequest
    Params = <
      item
        Kind = pkURLSEGMENT
        Name = 'pais'
        Options = [poAutoCreated]
        Value = 'brazil'
      end>
    Resource = '{pais}'
    SynchronizedEvents = False
    Left = 792
    Top = 200
  end
end
