object Frmsintomas: TFrmsintomas
  Left = 0
  Top = 0
  Caption = 'Sintomas'
  ClientHeight = 371
  ClientWidth = 782
  Color = clWhite
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 48
    Top = 61
    Width = 55
    Height = 19
    Caption = 'Sintomas'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
  end
  object Lblresultado: TLabel
    Left = 48
    Top = 213
    Width = 116
    Height = 19
    Caption = 'Resultado do Teste'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
  end
  object lblintencidade: TLabel
    Left = 48
    Top = 141
    Width = 69
    Height = 19
    Caption = 'Intensidade'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
  end
  object Lblcod: TLabel
    Left = 416
    Top = 63
    Width = 214
    Height = 17
    Caption = 'Informe o c'#243'digo pesquisado a baixo'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
  end
  object Cbresultado: TComboBox
    Left = 48
    Top = 232
    Width = 218
    Height = 21
    TabOrder = 0
    Items.Strings = (
      'Positivo'
      'Negativo'
      'Suspeito'
      'N'#227'o foi Feito o Teste')
  end
  object Edtsintomas: TEdit
    Left = 48
    Top = 80
    Width = 218
    Height = 21
    TabOrder = 1
  end
  object Btnnovo: TButton
    Left = 424
    Top = 259
    Width = 75
    Height = 25
    Caption = 'Novo'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
    OnClick = BtnnovoClick
  end
  object Btnsalvar: TButton
    Left = 525
    Top = 259
    Width = 75
    Height = 25
    Caption = 'Salvar'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 3
    OnClick = BtnsalvarClick
  end
  object Cbintensidade: TComboBox
    Left = 48
    Top = 160
    Width = 218
    Height = 21
    TabOrder = 4
    Items.Strings = (
      '1 '
      '2 '
      '3 ')
  end
  object Edtcod: TEdit
    Left = 448
    Top = 80
    Width = 145
    Height = 21
    TabOrder = 5
  end
  object DBGrid1: TDBGrid
    Left = 341
    Top = 120
    Width = 404
    Height = 133
    DataSource = DM.DSCadastro
    TabOrder = 6
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'codpac'
        Title.Caption = 'C'#243'digo'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'nompac'
        Title.Caption = 'Nome do Paciente'
        Width = 219
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'cpfpac'
        Title.Caption = 'CPF'
        Width = 84
        Visible = True
      end>
  end
  object BindSourceDB1: TBindSourceDB
    DataSet = DM.FDQConsulta
    ScopeMappings = <>
    Left = 984
    Top = 8
  end
  object BindingsList1: TBindingsList
    Methods = <>
    OutputConverters = <>
    Left = 988
    Top = 53
    object LinkFillControlToField1: TLinkFillControlToField
      Category = 'Quick Bindings'
      DataSource = BindSourceDB1
      FieldName = 'sitpac'
      Control = Cbresultado
      Track = True
      AutoFill = True
      FillExpressions = <>
      FillHeaderExpressions = <>
      FillBreakGroups = <>
    end
    object LinkControlToField3: TLinkControlToField
      Category = 'Quick Bindings'
      DataSource = DM.BindSourceDB1
      FieldName = 'sitsin'
      Control = Edtsintomas
      Track = True
    end
    object LinkFillControlToField2: TLinkFillControlToField
      Category = 'Quick Bindings'
      DataSource = DM.BindSourceDB1
      FieldName = 'intsin'
      Control = Cbintensidade
      Track = True
      AutoFill = True
      FillExpressions = <>
      FillHeaderExpressions = <>
      FillBreakGroups = <>
    end
    object LinkControlToField10: TLinkControlToField
      Category = 'Quick Bindings'
      DataSource = BindSourceDB1
      FieldName = 'codpac'
      Control = Edtcod
      Track = True
    end
  end
end
