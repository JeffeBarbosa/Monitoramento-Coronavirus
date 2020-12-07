object DM: TDM
  OldCreateOrder = False
  Height = 324
  Width = 819
  object FDConnection1: TFDConnection
    Params.Strings = (
      'Database=TrabalhoCorona'
      'User_Name=postgres'
      'Password= masterkey'
      'DriverID=PG')
    Connected = True
    LoginPrompt = False
    Left = 200
    Top = 48
  end
  object FDPhysPgDriverLink1: TFDPhysPgDriverLink
    VendorHome = 'D:\dsv\wkspii\Trabalho corona\Win32\Debug'
    Left = 88
    Top = 48
  end
  object FDQCadastro: TFDQuery
    Active = True
    Connection = FDConnection1
    SQL.Strings = (
      'SELECT *FROM PACIENTE')
    Left = 408
    Top = 48
    object FDQCadastrocodpac: TIntegerField
      FieldName = 'codpac'
      Origin = 'codpac'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object FDQCadastronompac: TWideStringField
      FieldName = 'nompac'
      Origin = 'nompac'
      Size = 120
    end
    object FDQCadastrodatpac: TDateField
      FieldName = 'datpac'
      Origin = 'datpac'
    end
    object FDQCadastropespac: TSingleField
      FieldName = 'pespac'
      Origin = 'pespac'
    end
    object FDQCadastroaltpac: TSingleField
      FieldName = 'altpac'
      Origin = 'altpac'
    end
    object FDQCadastrocpfpac: TFMTBCDField
      FieldName = 'cpfpac'
      Origin = 'cpfpac'
      Precision = 64
      Size = 0
    end
    object FDQCadastrosexpac: TWideStringField
      FieldName = 'sexpac'
      Origin = 'sexpac'
      Size = 1
    end
  end
  object FDQEndereco: TFDQuery
    Active = True
    Connection = FDConnection1
    SQL.Strings = (
      'select *from endereco')
    Left = 496
    Top = 48
  end
  object DSCadastro: TDataSource
    DataSet = FDQCadastro
    Left = 408
    Top = 120
  end
  object DSEndereco: TDataSource
    DataSet = FDQEndereco
    Left = 496
    Top = 120
  end
  object FDQSintoma: TFDQuery
    Active = True
    ConstraintsEnabled = True
    Connection = FDConnection1
    SQL.Strings = (
      'SELECT *FROM SINTOMA')
    Left = 592
    Top = 48
  end
  object FDQConsulta: TFDQuery
    Active = True
    Connection = FDConnection1
    SQL.Strings = (
      'SELECT *FROM CONSULTA')
    Left = 656
    Top = 48
  end
  object DSSintomas: TDataSource
    DataSet = FDQSintoma
    Left = 584
    Top = 120
  end
  object DSConsulta: TDataSource
    DataSet = FDQConsulta
    Left = 664
    Top = 120
  end
  object BindSourceDB1: TBindSourceDB
    DataSet = FDQSintoma
    ScopeMappings = <>
    Left = 240
    Top = 224
  end
end
