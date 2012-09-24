object DM: TDM
  OldCreateOrder = False
  Top = 74
  Height = 551
  Width = 313
  object ZC_Densetsu: TZConnection
    Protocol = 'mysql-4.1'
    HostName = 'localhost'
    Port = 3306
    Database = 'densetsu'
    User = 'root'
    AutoCommit = True
    ReadOnly = False
    TransactIsolationLevel = tiNone
    Connected = True
    SQLHourGlass = False
    Left = 32
    Top = 24
  end
  object ZT_Anuncios: TZTable
    Connection = ZC_Densetsu
    CachedUpdates = False
    Active = True
    ReadOnly = False
    TableName = 'anuncios'
    ShowRecordTypes = [usUnmodified, usModified, usInserted]
    UpdateMode = umUpdateChanged
    WhereMode = wmWhereKeyOnly
    Options = [doCalcDefaults]
    Left = 32
    Top = 96
    object ZT_Anunciosid_anuncios: TIntegerField
      FieldName = 'id_anuncios'
      Required = True
    end
    object ZT_Anunciostitulo: TStringField
      FieldName = 'titulo'
      Size = 80
    end
    object ZT_Anunciosid_produtos: TIntegerField
      FieldName = 'id_produtos'
      Required = True
    end
    object ZT_Anunciosdescricao_oferta: TStringField
      FieldName = 'descricao_oferta'
      Size = 150
    end
  end
  object ZT_Bairro: TZTable
    Connection = ZC_Densetsu
    CachedUpdates = False
    Active = True
    ReadOnly = False
    TableName = 'bairros'
    ShowRecordTypes = [usUnmodified, usModified, usInserted]
    UpdateMode = umUpdateChanged
    WhereMode = wmWhereKeyOnly
    Options = [doCalcDefaults]
    Left = 32
    Top = 168
  end
  object ZT_Cidades: TZTable
    Connection = ZC_Densetsu
    CachedUpdates = False
    Active = True
    ReadOnly = False
    TableName = 'cidades'
    ShowRecordTypes = [usUnmodified, usModified, usInserted]
    UpdateMode = umUpdateChanged
    WhereMode = wmWhereKeyOnly
    Options = [doCalcDefaults]
    Left = 32
    Top = 240
  end
  object ZT_Clientes: TZTable
    Connection = ZC_Densetsu
    CachedUpdates = False
    Active = True
    ReadOnly = False
    TableName = 'clientes'
    ShowRecordTypes = [usUnmodified, usModified, usInserted]
    UpdateMode = umUpdateChanged
    WhereMode = wmWhereKeyOnly
    Options = [doCalcDefaults]
    Left = 32
    Top = 312
  end
  object ZT_Contatos: TZTable
    Connection = ZC_Densetsu
    CachedUpdates = False
    Active = True
    ReadOnly = False
    TableName = 'contatos'
    ShowRecordTypes = [usUnmodified, usModified, usInserted]
    UpdateMode = umUpdateChanged
    WhereMode = wmWhereKeyOnly
    Options = [doCalcDefaults]
    Left = 32
    Top = 384
  end
  object ZT_Dados: TZTable
    Connection = ZC_Densetsu
    CachedUpdates = False
    Active = True
    ReadOnly = False
    TableName = 'dados_pessoais'
    ShowRecordTypes = [usUnmodified, usModified, usInserted]
    UpdateMode = umUpdateChanged
    WhereMode = wmWhereKeyOnly
    Options = [doCalcDefaults]
    Left = 32
    Top = 456
  end
  object ZT_Endereco: TZTable
    Connection = ZC_Densetsu
    CachedUpdates = False
    Active = True
    ReadOnly = False
    TableName = 'enderecos'
    ShowRecordTypes = [usUnmodified, usModified, usInserted]
    UpdateMode = umUpdateChanged
    WhereMode = wmWhereKeyOnly
    Options = [doCalcDefaults]
    Left = 136
    Top = 24
  end
  object ZT_Fornecedores: TZTable
    Connection = ZC_Densetsu
    CachedUpdates = False
    Active = True
    ReadOnly = False
    TableName = 'fornecedores'
    ShowRecordTypes = [usUnmodified, usModified, usInserted]
    UpdateMode = umUpdateChanged
    WhereMode = wmWhereKeyOnly
    Options = [doCalcDefaults]
    Left = 136
    Top = 96
    object ZT_Fornecedoresid_fornecedores: TIntegerField
      FieldName = 'id_fornecedores'
    end
    object ZT_Fornecedoresnome: TStringField
      FieldName = 'nome'
      Required = True
      Size = 80
    end
    object ZT_Fornecedoresnumero_casa: TStringField
      FieldName = 'numero_casa'
      Size = 45
    end
    object ZT_Fornecedorestelefone3: TStringField
      FieldName = 'telefone3'
      Size = 15
    end
    object ZT_Fornecedorese_mail: TStringField
      FieldName = 'e_mail'
      Required = True
      Size = 80
    end
    object ZT_Fornecedorescnpj: TStringField
      FieldName = 'cnpj'
      Required = True
      Size = 18
    end
  end
  object ZT_Funcionarios: TZTable
    Connection = ZC_Densetsu
    CachedUpdates = False
    Active = True
    ReadOnly = False
    TableName = 'funcionarios'
    ShowRecordTypes = [usUnmodified, usModified, usInserted]
    UpdateMode = umUpdateChanged
    WhereMode = wmWhereKeyOnly
    Options = [doCalcDefaults]
    Left = 136
    Top = 168
  end
  object ZT_Parcelamentos: TZTable
    Connection = ZC_Densetsu
    CachedUpdates = False
    Active = True
    ReadOnly = False
    TableName = 'parcelamentos'
    ShowRecordTypes = [usUnmodified, usModified, usInserted]
    UpdateMode = umUpdateChanged
    WhereMode = wmWhereKeyOnly
    Options = [doCalcDefaults]
    Left = 136
    Top = 240
  end
  object ZT_Parcelas: TZTable
    Connection = ZC_Densetsu
    CachedUpdates = False
    Active = True
    ReadOnly = False
    TableName = 'parcelas'
    ShowRecordTypes = [usUnmodified, usModified, usInserted]
    UpdateMode = umUpdateChanged
    WhereMode = wmWhereKeyOnly
    Options = [doCalcDefaults]
    Left = 136
    Top = 312
  end
  object ZT_Produtos: TZTable
    Connection = ZC_Densetsu
    CachedUpdates = False
    Active = True
    ReadOnly = False
    TableName = 'produtos'
    ShowRecordTypes = [usUnmodified, usModified, usInserted]
    UpdateMode = umUpdateChanged
    WhereMode = wmWhereKeyOnly
    Options = [doCalcDefaults]
    Left = 136
    Top = 384
    object ZT_Produtosid_produtos: TIntegerField
      FieldName = 'id_produtos'
    end
    object ZT_Produtosnome: TStringField
      FieldName = 'nome'
      Required = True
      Size = 45
    end
    object ZT_Produtosdescricao: TStringField
      FieldName = 'descricao'
      Size = 45
    end
    object ZT_Produtosvalor: TLargeintField
      FieldName = 'valor'
      Required = True
    end
    object ZT_Produtosquantidade_estoque: TLargeintField
      FieldName = 'quantidade_estoque'
      Required = True
    end
    object ZT_Produtosdata_entrega: TDateField
      FieldName = 'data_entrega'
      Required = True
    end
  end
  object ZT_PF: TZTable
    Connection = ZC_Densetsu
    CachedUpdates = False
    Active = True
    ReadOnly = False
    TableName = 'produtos_fornecedores'
    ShowRecordTypes = [usUnmodified, usModified, usInserted]
    UpdateMode = umUpdateChanged
    WhereMode = wmWhereKeyOnly
    Options = [doCalcDefaults]
    Left = 136
    Top = 456
  end
  object ZT_UF: TZTable
    Connection = ZC_Densetsu
    CachedUpdates = False
    Active = True
    ReadOnly = False
    TableName = 'uf'
    ShowRecordTypes = [usUnmodified, usModified, usInserted]
    UpdateMode = umUpdateChanged
    WhereMode = wmWhereKeyOnly
    Options = [doCalcDefaults]
    Left = 232
    Top = 24
  end
  object ZT_Unidades: TZTable
    Connection = ZC_Densetsu
    CachedUpdates = False
    Active = True
    ReadOnly = False
    TableName = 'unidades'
    ShowRecordTypes = [usUnmodified, usModified, usInserted]
    UpdateMode = umUpdateChanged
    WhereMode = wmWhereKeyOnly
    Options = [doCalcDefaults]
    Left = 232
    Top = 96
  end
  object ZT_Usuarios: TZTable
    Connection = ZC_Densetsu
    CachedUpdates = False
    Active = True
    ReadOnly = False
    TableName = 'usuarios'
    ShowRecordTypes = [usUnmodified, usModified, usInserted]
    UpdateMode = umUpdateChanged
    WhereMode = wmWhereKeyOnly
    Options = [doCalcDefaults]
    Left = 232
    Top = 160
    object ZT_Usuariosusuario: TStringField
      FieldName = 'usuario'
      Required = True
      Size = 45
    end
    object ZT_Usuariossenha: TStringField
      FieldName = 'senha'
      Required = True
      Size = 45
    end
    object ZT_Usuariosnome: TStringField
      FieldName = 'nome'
      Required = True
      Size = 45
    end
    object ZT_Usuarioscargo: TStringField
      FieldName = 'cargo'
      Required = True
      Size = 11
    end
    object ZT_Usuariosstatus: TStringField
      FieldName = 'status'
      Required = True
      Size = 1
    end
    object ZT_Usuariosprimeiro_acesso: TStringField
      FieldName = 'primeiro_acesso'
      Size = 1
    end
    object ZT_Usuariosquantidade_acesso: TLargeintField
      FieldName = 'quantidade_acesso'
    end
    object ZT_Usuariosdata_ultimo_acesso: TDateField
      FieldName = 'data_ultimo_acesso'
    end
    object ZT_Usuarioshora_ultimo_acesso: TTimeField
      FieldName = 'hora_ultimo_acesso'
    end
    object ZT_Usuariostipo: TStringField
      FieldName = 'tipo'
      Size = 1
    end
  end
  object ZT_Vendas: TZTable
    Connection = ZC_Densetsu
    CachedUpdates = False
    Active = True
    ReadOnly = False
    TableName = 'vendas'
    ShowRecordTypes = [usUnmodified, usModified, usInserted]
    UpdateMode = umUpdateChanged
    WhereMode = wmWhereKeyOnly
    Options = [doCalcDefaults]
    Left = 232
    Top = 240
  end
  object ZT_VP: TZTable
    Connection = ZC_Densetsu
    CachedUpdates = False
    Active = True
    ReadOnly = False
    TableName = 'vendas_produtos'
    ShowRecordTypes = [usUnmodified, usModified, usInserted]
    UpdateMode = umUpdateChanged
    WhereMode = wmWhereKeyOnly
    Options = [doCalcDefaults]
    Left = 232
    Top = 312
  end
end
