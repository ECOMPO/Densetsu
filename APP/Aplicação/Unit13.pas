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
    ZT_Anunciosid_produtos: TIntegerField;
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
