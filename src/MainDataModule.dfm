object dmMain: TdmMain
  Height = 750
  Width = 1000
  PixelsPerInch = 120
  object dbCon: TFDConnection
    Params.Strings = (
      'Server=localhost'
      'Database=teste_wk'
      'User_Name=root'
      'Password=99318254'
      'DriverID=MySQL')
    Connected = True
    Left = 40
    Top = 24
  end
  object qrAux: TFDQuery
    Connection = dbCon
    Left = 168
    Top = 24
  end
  object dsBuscaProduto: TDataSource
    DataSet = qrBuscaProduto
    Left = 160
    Top = 136
  end
  object qrBuscaProduto: TFDQuery
    Connection = dbCon
    SQL.Strings = (
      'select * from produtos;')
    Left = 40
    Top = 136
  end
  object mtbProdutos: TFDMemTable
    Active = True
    BeforeEdit = mtbProdutosBeforeEdit
    BeforePost = mtbProdutosBeforePost
    AfterPost = mtbProdutosAfterPost
    FieldDefs = <
      item
        Name = 'codigo'
        DataType = ftInteger
      end
      item
        Name = 'nome'
        DataType = ftString
        Size = 45
      end
      item
        Name = 'descricao'
        DataType = ftString
        Size = 255
      end
      item
        Name = 'valor_unitario'
        DataType = ftFloat
      end
      item
        Name = 'valor_total'
        DataType = ftFloat
      end
      item
        Name = 'quantidade'
        DataType = ftFloat
      end
      item
        Name = 'codigo_cliente'
        DataType = ftInteger
      end>
    IndexDefs = <>
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    StoreDefs = True
    Left = 32
    Top = 232
    object mtbProdutoscodigo: TIntegerField
      DisplayLabel = 'C'#243'digo'
      DisplayWidth = 10
      FieldName = 'codigo'
    end
    object mtbProdutosnome: TStringField
      DisplayLabel = 'Nome'
      DisplayWidth = 32
      FieldName = 'nome'
      Size = 45
    end
    object mtbProdutosdescricao: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      DisplayWidth = 82
      FieldName = 'descricao'
      Size = 255
    end
    object mtbProdutosvalor_unitario: TFloatField
      DisplayLabel = 'Valor Unit'#225'rio'
      DisplayWidth = 12
      FieldName = 'valor_unitario'
      currency = True
    end
    object mtbProdutosvalor_total: TFloatField
      DisplayLabel = 'Valor Total'
      DisplayWidth = 10
      FieldName = 'valor_total'
      currency = True
    end
    object mtbProdutosquantidade: TFloatField
      DisplayLabel = 'Quantidade'
      DisplayWidth = 10
      FieldName = 'quantidade'
    end
    object mtbProdutoscodigo_cliente: TIntegerField
      FieldName = 'codigo_cliente'
      Visible = False
    end
  end
  object dsProdutos: TDataSource
    DataSet = mtbProdutos
    Left = 136
    Top = 232
  end
  object qrClientes: TFDQuery
    Active = True
    Connection = dbCon
    SQL.Strings = (
      'select * from clientes;')
    Left = 32
    Top = 320
  end
  object dsClientesSelecionado: TDataSource
    DataSet = mtbClienteSelecionado
    OnDataChange = dsClientesSelecionadoDataChange
    Left = 424
    Top = 320
  end
  object mtbClienteSelecionado: TFDMemTable
    Active = True
    AfterPost = mtbClienteSelecionadoAfterPost
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    Left = 256
    Top = 320
    object mtbClienteSelecionadocodigo_cliente: TIntegerField
      FieldName = 'codigo_cliente'
    end
  end
  object dsClientes: TDataSource
    DataSet = qrClientes
    Left = 136
    Top = 320
  end
  object qrPedidos: TFDQuery
    Active = True
    Connection = dbCon
    SQL.Strings = (
      'select * from pedido_dados_gerais where deleted = 0;')
    Left = 32
    Top = 408
  end
  object dsPedidos: TDataSource
    DataSet = qrPedidos
    Left = 128
    Top = 408
  end
end
