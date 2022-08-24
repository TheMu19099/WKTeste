object frmMain: TfrmMain
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 
    'Pedido de Venda de Produtos - WK Teste - by Wanderson Murillo Mo' +
    'ura'
  ClientHeight = 726
  ClientWidth = 1077
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  OnActivate = FormActivate
  TextHeight = 15
  object GroupBox1: TGroupBox
    Left = 0
    Top = 0
    Width = 1077
    Height = 233
    Align = alTop
    Caption = 'Pesquisa de Produtos'
    TabOrder = 0
    object Label1: TLabel
      Left = 258
      Top = 25
      Width = 99
      Height = 15
      Caption = 'Nome do Produto:'
    end
    object Label2: TLabel
      Left = 10
      Top = 24
      Width = 105
      Height = 15
      Caption = 'C'#243'digo do Produto:'
    end
    object Label3: TLabel
      Left = 10
      Top = 208
      Width = 300
      Height = 15
      Caption = 'Inserir na venda o produto selecionado na quantidade de'
    end
    object Label4: TLabel
      Left = 380
      Top = 208
      Width = 119
      Height = 15
      Caption = 'no valor unit'#225'rio de R$'
    end
    object Label5: TLabel
      Left = 559
      Top = 184
      Width = 3
      Height = 15
    end
    object lbProdutoSelecionado: TLabel
      Left = 10
      Top = 187
      Width = 165
      Height = 15
      Caption = '[nenhum produto selecionado]'
    end
    object edtBuscaProdutoNome: TEdit
      Left = 369
      Top = 22
      Width = 416
      Height = 23
      TabOrder = 0
      TextHint = 'tylenol 20mg'
      OnKeyPress = edtBuscaProdutoNomeKeyPress
    end
    object gdBuscaProduto: TDBGrid
      Left = 2
      Top = 49
      Width = 1073
      Height = 126
      Align = alCustom
      DataSource = dmMain.dsBuscaProduto
      Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
      ReadOnly = True
      TabOrder = 1
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -12
      TitleFont.Name = 'Segoe UI'
      TitleFont.Style = []
      OnDblClick = gdBuscaProdutoDblClick
    end
    object btPesquisarProduto: TBitBtn
      Left = 791
      Top = 20
      Width = 98
      Height = 25
      Caption = 'Buscar (Enter)'
      TabOrder = 2
      OnClick = btPesquisarProdutoClick
    end
    object edtBuscaProdutoCodigo: TEdit
      Left = 121
      Top = 21
      Width = 121
      Height = 23
      NumbersOnly = True
      TabOrder = 3
      TextHint = '3345'
      OnKeyPress = edtBuscaProdutoCodigoKeyPress
    end
    object btLimparFiltros: TBitBtn
      Left = 967
      Top = 20
      Width = 98
      Height = 25
      Caption = 'Limpar Filtros'
      TabOrder = 4
      OnClick = btLimparFiltrosClick
    end
    object edtBuscaQuantidade: TEdit
      Left = 316
      Top = 205
      Width = 58
      Height = 23
      Alignment = taCenter
      TabOrder = 5
      Text = '1'
    end
    object edtBuscaVlrUnitario: TEdit
      Left = 505
      Top = 205
      Width = 64
      Height = 23
      TabOrder = 6
      Text = '1'
    end
    object btInserirProdutoVenda: TBitBtn
      Left = 583
      Top = 204
      Width = 114
      Height = 25
      Caption = 'Inserir na Venda'
      TabOrder = 7
      OnClick = btInserirProdutoVendaClick
    end
  end
  object GroupBox2: TGroupBox
    Left = 0
    Top = 233
    Width = 1077
    Height = 264
    Align = alTop
    Caption = 
      'Produtos na Venda                                               ' +
      '                                                                ' +
      '                                                        (para ed' +
      'i'#231#227'o dos valores, navegue pelas setas e aperte Enter no campo de' +
      'sejado)'
    TabOrder = 1
    object Label6: TLabel
      Left = 10
      Top = 219
      Width = 93
      Height = 15
      Caption = 'Pesquisar Cliente:'
    end
    object btLimparPesquisaCliente: TSpeedButton
      Left = 583
      Top = 216
      Width = 23
      Height = 23
      Caption = 'C'
      OnClick = btLimparPesquisaClienteClick
    end
    object gdProdutos: TDBGrid
      Left = 2
      Top = 17
      Width = 1073
      Height = 184
      Align = alTop
      DataSource = dmMain.dsProdutos
      ReadOnly = True
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -12
      TitleFont.Name = 'Segoe UI'
      TitleFont.Style = []
      OnKeyDown = gdProdutosKeyDown
      OnKeyPress = gdProdutosKeyPress
    end
    object edtCodigoCliente: TEdit
      Left = 109
      Top = 216
      Width = 70
      Height = 23
      NumbersOnly = True
      TabOrder = 1
      OnChange = edtCodigoClienteChange
    end
    object btGravarPedido: TBitBtn
      Left = 925
      Top = 215
      Width = 138
      Height = 25
      Caption = 'Gravar Pedido'
      TabOrder = 2
      OnClick = btGravarPedidoClick
    end
    object lcbClientes: TDBLookupComboBox
      Left = 185
      Top = 216
      Width = 392
      Height = 23
      DataField = 'codigo_cliente'
      DataSource = dmMain.dsClientesSelecionado
      KeyField = 'codigo'
      ListField = 'nome'
      ListSource = dmMain.dsClientes
      TabOrder = 3
    end
  end
  object GroupBox3: TGroupBox
    Left = 0
    Top = 497
    Width = 1077
    Height = 249
    Align = alTop
    Caption = 'Pedidos de Venda'
    TabOrder = 2
    object lblPedidoN: TLabel
      Left = 720
      Top = 25
      Width = 96
      Height = 15
      Caption = 'Apagar pedido n'#186':'
    end
    object gdPedidos: TDBGrid
      Left = 3
      Top = 56
      Width = 1073
      Height = 148
      Align = alCustom
      DataSource = dmMain.dsPedidos
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
      ReadOnly = True
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -12
      TitleFont.Name = 'Segoe UI'
      TitleFont.Style = []
      OnDblClick = gdPedidosDblClick
    end
    object btCarregarPedidos: TBitBtn
      Left = 10
      Top = 21
      Width = 119
      Height = 25
      Caption = 'Carregar Pedidos'
      TabOrder = 1
      OnClick = btCarregarPedidosClick
    end
    object edtApagarPedidoNmr: TEdit
      Left = 824
      Top = 22
      Width = 121
      Height = 23
      TabOrder = 2
    end
    object btApagarPedido: TBitBtn
      Left = 951
      Top = 21
      Width = 119
      Height = 25
      Caption = 'Apagar Pedido'
      TabOrder = 3
      OnClick = btApagarPedidoClick
    end
  end
  object statusBar: TStatusBar
    Left = 0
    Top = 707
    Width = 1077
    Height = 19
    Panels = <
      item
        Alignment = taRightJustify
        Text = 'Valor Total do pedido: R$'
        Width = 100
      end>
  end
end
