object Frmendereco: TFrmendereco
  Left = 0
  Top = 0
  BorderStyle = bsSingle
  Caption = 'Cadastro Endere'#231'o'
  ClientHeight = 381
  ClientWidth = 814
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
  object Lblrua: TLabel
    Left = 232
    Top = 138
    Width = 24
    Height = 19
    Caption = 'Rua'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
  end
  object Lblestado: TLabel
    Left = 54
    Top = 64
    Width = 42
    Height = 19
    Caption = 'Estado'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
  end
  object Lblcidade: TLabel
    Left = 54
    Top = 138
    Width = 44
    Height = 19
    Caption = 'Cidade'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
  end
  object lblcep: TLabel
    Left = 54
    Top = 216
    Width = 29
    Height = 19
    Caption = 'CEP'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
  end
  object Lblbairro: TLabel
    Left = 232
    Top = 64
    Width = 38
    Height = 19
    Caption = 'Bairro'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
  end
  object Lblcodigo: TLabel
    Left = 472
    Top = 64
    Width = 242
    Height = 15
    Caption = 'C'#243'digo do Paciente Retirado da Lista a Baixo'
    Color = clBtnFace
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
  end
  object Lblnumero: TLabel
    Left = 232
    Top = 216
    Width = 104
    Height = 19
    Caption = 'N'#250'mero da Casa'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
  end
  object Edtcep: TEdit
    Left = 54
    Top = 235
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object Edtcodigo: TEdit
    Left = 568
    Top = 83
    Width = 57
    Height = 21
    TabOrder = 1
  end
  object Edtcidade: TEdit
    Left = 54
    Top = 157
    Width = 121
    Height = 21
    TabOrder = 2
  end
  object Edtestado: TEdit
    Left = 54
    Top = 83
    Width = 121
    Height = 21
    TabOrder = 3
  end
  object Edtbairro: TEdit
    Left = 232
    Top = 83
    Width = 121
    Height = 21
    TabOrder = 4
  end
  object Edtrua: TEdit
    Left = 232
    Top = 157
    Width = 121
    Height = 21
    TabOrder = 5
  end
  object Edtnumero: TEdit
    Left = 232
    Top = 235
    Width = 121
    Height = 21
    TabOrder = 6
  end
  object Btnnovo: TButton
    Left = 488
    Top = 256
    Width = 75
    Height = 25
    Caption = 'Novo'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 7
    OnClick = BtnnovoClick
  end
  object Btnsalvar: TButton
    Left = 622
    Top = 256
    Width = 75
    Height = 25
    Caption = 'Salvar'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 8
    OnClick = BtnsalvarClick
  end
  object DBGrid1: TDBGrid
    Left = 384
    Top = 110
    Width = 417
    Height = 120
    DataSource = DM.DSCadastro
    TabOrder = 9
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
        Width = 214
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'cpfpac'
        Title.Caption = 'CPF'
        Width = 97
        Visible = True
      end>
  end
  object BindSourceDB1: TBindSourceDB
    DataSet = DM.FDQEndereco
    ScopeMappings = <>
    Left = 784
    Top = 32
  end
  object BindingsList1: TBindingsList
    Methods = <>
    OutputConverters = <>
    Left = 20
    Top = 5
    object LinkControlToField1: TLinkControlToField
      Category = 'Quick Bindings'
      DataSource = BindSourceDB1
      FieldName = 'cidend'
      Control = Edtcidade
      Track = True
    end
    object LinkControlToField2: TLinkControlToField
      Category = 'Quick Bindings'
      DataSource = BindSourceDB1
      FieldName = 'cepend'
      Control = Edtcep
      Track = True
    end
    object LinkControlToField3: TLinkControlToField
      Category = 'Quick Bindings'
      DataSource = BindSourceDB1
      FieldName = 'numend'
      Control = Edtnumero
      Track = True
    end
    object LinkControlToField4: TLinkControlToField
      Category = 'Quick Bindings'
      DataSource = BindSourceDB1
      FieldName = 'estend'
      Control = Edtestado
      Track = True
    end
    object LinkControlToField5: TLinkControlToField
      Category = 'Quick Bindings'
      DataSource = BindSourceDB1
      FieldName = 'ruaend'
      Control = Edtrua
      Track = True
    end
    object LinkControlToField6: TLinkControlToField
      Category = 'Quick Bindings'
      DataSource = BindSourceDB1
      FieldName = 'baiend'
      Control = Edtbairro
      Track = True
    end
    object LinkControlToField7: TLinkControlToField
      Category = 'Quick Bindings'
      DataSource = BindSourceDB1
      FieldName = 'codpac'
      Control = Edtcodigo
      Track = True
    end
  end
end
