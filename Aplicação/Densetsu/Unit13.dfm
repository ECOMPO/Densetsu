object DM: TDM
  OldCreateOrder = False
  Left = 591
  Top = 136
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
    object ZT_Bairroid_bairros: TIntegerField
      FieldName = 'id_bairros'
    end
    object ZT_Bairronome: TStringField
      FieldName = 'nome'
      Required = True
      Size = 80
    end
    object ZT_Bairroid_cidades: TIntegerField
      FieldName = 'id_cidades'
      Required = True
    end
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
    object ZT_Cidadesid_cidades: TIntegerField
      FieldName = 'id_cidades'
    end
    object ZT_Cidadesnome: TStringField
      FieldName = 'nome'
      Required = True
      Size = 80
    end
    object ZT_Cidadesid_uf: TIntegerField
      FieldName = 'id_uf'
      Required = True
    end
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
    object ZT_Clientesid_clientes: TIntegerField
      FieldName = 'id_clientes'
    end
    object ZT_Clientescpf: TStringField
      FieldName = 'cpf'
      Required = True
      Size = 14
    end
    object ZT_Clientesnome: TStringField
      FieldName = 'nome'
      Required = True
      Size = 80
    end
    object ZT_Clientesnumero_casa: TStringField
      FieldName = 'numero_casa'
      Required = True
      Size = 4
    end
    object ZT_Clientesdata_cadastro: TDateField
      FieldName = 'data_cadastro'
      Required = True
    end
    object ZT_Clientescomplemento: TStringField
      FieldName = 'complemento'
      Size = 15
    end
    object ZT_Clientesnum_compras: TIntegerField
      FieldName = 'num_compras'
      Required = True
    end
    object ZT_Clientesrg: TStringField
      FieldName = 'rg'
      Required = True
      Size = 15
    end
    object ZT_Clientese_mail: TStringField
      FieldName = 'e_mail'
      Size = 45
    end
    object ZT_Clientesid_contatos: TIntegerField
      FieldName = 'id_contatos'
      Required = True
    end
    object ZT_Clientesid_enderecos: TIntegerField
      FieldName = 'id_enderecos'
      Required = True
    end
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
    object ZT_Contatosid_contatos: TIntegerField
      FieldName = 'id_contatos'
    end
    object ZT_Contatostelefone: TStringField
      FieldName = 'telefone'
      Required = True
      Size = 14
    end
    object ZT_Contatostipo: TStringField
      FieldName = 'tipo'
      Required = True
      Size = 36
    end
  end
  object ZT_Dados: TZTable
    Connection = ZC_Densetsu
    CachedUpdates = False
    ReadOnly = False
    TableName = 'dados_pessoais'
    ShowRecordTypes = [usUnmodified, usModified, usInserted]
    UpdateMode = umUpdateChanged
    WhereMode = wmWhereKeyOnly
    Options = [doCalcDefaults]
    Left = 32
    Top = 456
    object ZT_Dadosid_dados_pessoais: TIntegerField
      FieldName = 'id_dados_pessoais'
      Required = True
    end
    object ZT_Dadosdata_nascimento: TDateField
      FieldName = 'data_nascimento'
      Required = True
    end
    object ZT_Dadosuf_natal: TStringField
      FieldName = 'uf_natal'
      Required = True
      Size = 2
    end
    object ZT_Dadoscidade_natal: TStringField
      FieldName = 'cidade_natal'
      Required = True
      Size = 80
    end
    object ZT_Dadossexo: TStringField
      FieldName = 'sexo'
      Required = True
      Size = 1
    end
    object ZT_Dadosestado_civil: TStringField
      FieldName = 'estado_civil'
      Required = True
      Size = 1
    end
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
    object ZT_Enderecoid_enderecos: TIntegerField
      FieldName = 'id_enderecos'
    end
    object ZT_Endereconome_rua: TStringField
      FieldName = 'nome_rua'
      Required = True
      Size = 80
    end
    object ZT_Enderecocep: TStringField
      FieldName = 'cep'
      Required = True
      Size = 9
    end
    object ZT_Enderecoid_bairros: TIntegerField
      FieldName = 'id_bairros'
      Required = True
    end
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
    object ZT_Funcionariosid_funcionarios: TIntegerField
      FieldName = 'id_funcionarios'
    end
    object ZT_Funcionariosusuario: TStringField
      FieldName = 'usuario'
      Required = True
    end
    object ZT_Funcionariosnome: TStringField
      FieldName = 'nome'
      Required = True
      Size = 45
    end
    object ZT_FuncionariosCPF: TStringField
      FieldName = 'CPF'
      Required = True
      Size = 14
    end
    object ZT_Funcionariosnum_casa: TStringField
      FieldName = 'num_casa'
      Size = 4
    end
    object ZT_Funcionarioscomplemento: TStringField
      FieldName = 'complemento'
      Size = 15
    end
    object ZT_Funcionariosdata_admissao: TDateField
      FieldName = 'data_admissao'
    end
    object ZT_Funcionarioscargo: TStringField
      FieldName = 'cargo'
      Required = True
      Size = 11
    end
    object ZT_Funcionariosstatus: TStringField
      FieldName = 'status'
      Required = True
      Size = 1
    end
    object ZT_Funcionariossalario: TLargeintField
      FieldName = 'salario'
      Required = True
    end
    object ZT_Funcionariosnumero_dependentes: TLargeintField
      FieldName = 'numero_dependentes'
      Required = True
    end
    object ZT_Funcionariosrg: TStringField
      FieldName = 'rg'
      Required = True
      Size = 15
    end
    object ZT_Funcionariose_mail: TStringField
      FieldName = 'e_mail'
      Size = 45
    end
    object ZT_Funcionariosid_enderecos: TIntegerField
      FieldName = 'id_enderecos'
      Required = True
    end
    object ZT_Funcionariosid_dados_pessoais: TIntegerField
      FieldName = 'id_dados_pessoais'
      Required = True
    end
    object ZT_Funcionariosid_contatos: TIntegerField
      FieldName = 'id_contatos'
      Required = True
    end
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
    object ZT_Parcelamentosid_pagamentos: TIntegerField
      FieldName = 'id_pagamentos'
    end
    object ZT_Parcelamentostipo: TStringField
      FieldName = 'tipo'
      Required = True
      Size = 1
    end
    object ZT_Parcelamentosquantidade_parcelas: TStringField
      FieldName = 'quantidade_parcelas'
      Required = True
      Size = 45
    end
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
    object ZT_PFid_produtos: TIntegerField
      FieldName = 'id_produtos'
      Required = True
    end
    object ZT_PFid_fornecedores: TIntegerField
      FieldName = 'id_fornecedores'
      Required = True
    end
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
    object ZT_UFid_uf: TIntegerField
      FieldName = 'id_uf'
    end
    object ZT_UFnome: TStringField
      FieldName = 'nome'
      Required = True
      Size = 80
    end
    object ZT_UFsigla: TStringField
      FieldName = 'sigla'
      Required = True
      Size = 2
    end
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
    object ZT_Vendasid_vendas: TIntegerField
      FieldName = 'id_vendas'
    end
    object ZT_Vendasvalor_venda: TLargeintField
      FieldName = 'valor_venda'
      Required = True
    end
    object ZT_Vendasusuario: TStringField
      FieldName = 'usuario'
      Required = True
      Size = 45
    end
    object ZT_Vendasid_unidades: TIntegerField
      FieldName = 'id_unidades'
      Required = True
    end
    object ZT_Vendasid_clientes: TIntegerField
      FieldName = 'id_clientes'
      Required = True
    end
    object ZT_Vendasdata_venda: TDateField
      FieldName = 'data_venda'
      Required = True
    end
    object ZT_Vendasid_pagamentos: TIntegerField
      FieldName = 'id_pagamentos'
      Required = True
    end
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
    object ZT_VPid_produtos: TIntegerField
      FieldName = 'id_produtos'
      Required = True
    end
    object ZT_VPid_vendas: TIntegerField
      FieldName = 'id_vendas'
      Required = True
    end
  end
end
