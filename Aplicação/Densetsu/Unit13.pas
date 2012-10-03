unit Unit13;

interface

uses
  SysUtils, Classes, ZConnection, DB, ZAbstractRODataset, ZAbstractDataset,
  ZAbstractTable, ZDataset;

type
  TDM = class(TDataModule)
    ZC_Densetsu: TZConnection;
    ZT_Anuncios: TZTable;
    ZT_Bairro: TZTable;
    ZT_Cidades: TZTable;
    ZT_Clientes: TZTable;
    ZT_Contatos: TZTable;
    ZT_Dados: TZTable;
    ZT_Endereco: TZTable;
    ZT_Fornecedores: TZTable;
    ZT_Funcionarios: TZTable;
    ZT_Parcelamentos: TZTable;
    ZT_Parcelas: TZTable;
    ZT_Produtos: TZTable;
    ZT_PF: TZTable;
    ZT_UF: TZTable;
    ZT_Unidades: TZTable;
    ZT_Usuarios: TZTable;
    ZT_Vendas: TZTable;
    ZT_VP: TZTable;
    ZT_Anunciosid_anuncios: TIntegerField;
    ZT_Anunciostitulo: TStringField;
    ZT_Anunciosdescricao_oferta: TStringField;
    ZT_Fornecedoresid_fornecedores: TIntegerField;
    ZT_Fornecedoresnome: TStringField;
    ZT_Fornecedoresnumero_casa: TStringField;
    ZT_Fornecedorestelefone3: TStringField;
    ZT_Fornecedorese_mail: TStringField;
    ZT_Fornecedorescnpj: TStringField;
    ZT_Produtosid_produtos: TIntegerField;
    ZT_Produtosnome: TStringField;
    ZT_Produtosdescricao: TStringField;
    ZT_Produtosvalor: TLargeintField;
    ZT_Produtosquantidade_estoque: TLargeintField;
    ZT_Produtosdata_entrega: TDateField;
    ZT_Usuariosusuario: TStringField;
    ZT_Usuariossenha: TStringField;
    ZT_Usuariosnome: TStringField;
    ZT_Usuarioscargo: TStringField;
    ZT_Usuariosstatus: TStringField;
    ZT_Usuariosprimeiro_acesso: TStringField;
    ZT_Usuariosquantidade_acesso: TLargeintField;
    ZT_Usuariosdata_ultimo_acesso: TDateField;
    ZT_Usuarioshora_ultimo_acesso: TTimeField;
    ZT_Usuariostipo: TStringField;
    ZT_Clientesid_clientes: TIntegerField;
    ZT_Clientescpf: TStringField;
    ZT_Clientesnome: TStringField;
    ZT_Clientesnumero_casa: TStringField;
    ZT_Clientesdata_cadastro: TDateField;
    ZT_Clientescomplemento: TStringField;
    ZT_Clientesnum_compras: TIntegerField;
    ZT_Clientesrg: TStringField;
    ZT_Clientese_mail: TStringField;
    ZT_Clientesid_contatos: TIntegerField;
    ZT_Clientesid_enderecos: TIntegerField;
    ZT_Enderecoid_enderecos: TIntegerField;
    ZT_Endereconome_rua: TStringField;
    ZT_Enderecocep: TStringField;
    ZT_Enderecoid_bairros: TIntegerField;
    ZT_Bairroid_bairros: TIntegerField;
    ZT_Bairronome: TStringField;
    ZT_Bairroid_cidades: TIntegerField;
    ZT_Cidadesid_cidades: TIntegerField;
    ZT_Cidadesnome: TStringField;
    ZT_Cidadesid_uf: TIntegerField;
    ZT_Contatosid_contatos: TIntegerField;
    ZT_Contatostelefone: TStringField;
    ZT_Contatostipo: TStringField;
    ZT_Dadosid_dados_pessoais: TIntegerField;
    ZT_Dadosdata_nascimento: TDateField;
    ZT_Dadosuf_natal: TStringField;
    ZT_Dadoscidade_natal: TStringField;
    ZT_Dadossexo: TStringField;
    ZT_Dadosestado_civil: TStringField;
    ZT_UFid_uf: TIntegerField;
    ZT_UFnome: TStringField;
    ZT_UFsigla: TStringField;
    ZT_Funcionariosid_funcionarios: TIntegerField;
    ZT_Funcionariosusuario: TStringField;
    ZT_Funcionariosnome: TStringField;
    ZT_FuncionariosCPF: TStringField;
    ZT_Funcionariosnum_casa: TStringField;
    ZT_Funcionarioscomplemento: TStringField;
    ZT_Funcionariosdata_admissao: TDateField;
    ZT_Funcionarioscargo: TStringField;
    ZT_Funcionariosstatus: TStringField;
    ZT_Funcionariossalario: TLargeintField;
    ZT_Funcionariosnumero_dependentes: TLargeintField;
    ZT_Funcionariosrg: TStringField;
    ZT_Funcionariose_mail: TStringField;
    ZT_Funcionariosid_enderecos: TIntegerField;
    ZT_Funcionariosid_dados_pessoais: TIntegerField;
    ZT_Funcionariosid_contatos: TIntegerField;
    ZT_Vendasid_vendas: TIntegerField;
    ZT_Vendasvalor_venda: TLargeintField;
    ZT_Vendasdata_venda: TDateField;
    ZT_Vendasusuario: TStringField;
    ZT_Vendasid_unidades: TIntegerField;
    ZT_Vendasid_clientes: TIntegerField;
    ZT_Vendasid_pagamentos: TIntegerField;
    ZT_Parcelamentosid_pagamentos: TIntegerField;
    ZT_Parcelamentostipo: TStringField;
    ZT_Parcelamentosquantidade_parcelas: TStringField;
    ZT_VPid_vendas: TIntegerField;
    ZT_VPid_produtos: TIntegerField;
    ZT_PFid_produtos: TIntegerField;
    ZT_PFid_fornecedores: TIntegerField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DM: TDM;

implementation

{$R *.dfm}

end.
