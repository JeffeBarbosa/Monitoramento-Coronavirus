object FrmCadastro: TFrmCadastro
  Left = 0
  Top = 0
  BorderStyle = bsSingle
  Caption = 'Cadastro'
  ClientHeight = 381
  ClientWidth = 710
  Color = clWhite
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clBlack
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object lblnome: TLabel
    Left = 168
    Top = 53
    Width = 38
    Height = 19
    Caption = 'Nome'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -16
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
  end
  object lbldata: TLabel
    Left = 168
    Top = 117
    Width = 124
    Height = 19
    Caption = 'Data de Nascimento'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -16
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
  end
  object lblcpf: TLabel
    Left = 425
    Top = 181
    Width = 29
    Height = 19
    Caption = 'CPF'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -16
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
  end
  object lblaltura: TLabel
    Left = 168
    Top = 181
    Width = 37
    Height = 19
    Caption = 'Altura'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -16
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
  end
  object lblpeso: TLabel
    Left = 425
    Top = 120
    Width = 30
    Height = 19
    Caption = 'Peso'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -16
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
  end
  object lblsex: TLabel
    Left = 425
    Top = 53
    Width = 29
    Height = 17
    Caption = 'Sexo'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -15
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
  end
  object edtnome: TEdit
    Left = 168
    Top = 72
    Width = 121
    Height = 21
    TabOrder = 0
    Text = 'jefferson'
  end
  object EdtData: TEdit
    Left = 168
    Top = 139
    Width = 121
    Height = 21
    TabOrder = 1
    Text = '01/06/2000'
  end
  object edtpeso: TEdit
    Left = 425
    Top = 139
    Width = 121
    Height = 21
    TabOrder = 2
    Text = '1,7'
  end
  object edtcpf: TEdit
    Left = 425
    Top = 200
    Width = 121
    Height = 21
    TabOrder = 3
    Text = '11033194930'
  end
  object edtaltura: TEdit
    Left = 168
    Top = 200
    Width = 121
    Height = 21
    TabOrder = 4
    Text = '1,7'
  end
  object Cbsexo: TComboBox
    Left = 425
    Top = 72
    Width = 121
    Height = 21
    TabOrder = 5
    Items.Strings = (
      'Masculino'
      'Feminino')
  end
  object BTnsalvar: TButton
    Left = 369
    Top = 267
    Width = 75
    Height = 25
    Caption = 'Salvar'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 6
    OnClick = BTnsalvarClick
  end
  object BtnNovo: TButton
    Left = 269
    Top = 267
    Width = 75
    Height = 25
    Caption = 'Novo'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 7
    OnClick = BtnNovoClick
  end
  object BindSourceDB1: TBindSourceDB
    DataSet = DM.FDQCadastro
    ScopeMappings = <>
    Left = 1280
    Top = 56
  end
  object BindingsList1: TBindingsList
    Methods = <>
    OutputConverters = <>
    Left = 1284
    Top = 109
    object LinkControlToField1: TLinkControlToField
      Category = 'Quick Bindings'
      DataSource = BindSourceDB1
      FieldName = 'nompac'
      Control = edtnome
      Track = True
    end
    object LinkControlToField2: TLinkControlToField
      Category = 'Quick Bindings'
      DataSource = BindSourceDB1
      FieldName = 'pespac'
      Control = edtpeso
      Track = True
    end
    object LinkControlToField4: TLinkControlToField
      Category = 'Quick Bindings'
      DataSource = BindSourceDB1
      FieldName = 'altpac'
      Control = edtaltura
      Track = True
    end
    object LinkControlToField3: TLinkControlToField
      Category = 'Quick Bindings'
      DataSource = BindSourceDB1
      FieldName = 'datpac'
      Control = EdtData
      Track = True
    end
    object LinkControlToField5: TLinkControlToField
      Category = 'Quick Bindings'
      DataSource = BindSourceDB1
      FieldName = 'cpfpac'
      Control = edtcpf
      Track = True
    end
    object LinkFillControlToField1: TLinkFillControlToField
      Category = 'Quick Bindings'
      DataSource = BindSourceDB1
      FieldName = 'sexpac'
      Control = Cbsexo
      Track = True
      AutoFill = True
      FillExpressions = <>
      FillHeaderExpressions = <>
      FillBreakGroups = <>
    end
  end
  object BindSourceDB3: TBindSourceDB
    ScopeMappings = <>
    Left = 1376
    Top = 272
  end
end
