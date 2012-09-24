program Densetsu;

uses
  Forms,
  Unit_Splash in 'Unit_Splash.pas' {Splash},
  Unit_Apresentacao in 'Unit_Apresentacao.pas' {Apresentacao},
  Unit1 in 'Unit1.pas' {Login},
  Unit2 in 'Unit2.pas' {Principal},
  Unit3 in 'Unit3.pas' {Clientes},
  Unit4 in 'Unit4.pas' {Funcionarios},
  Unit5 in 'Unit5.pas' {Produtos},
  Unit6 in 'Unit6.pas' {Fornecedores},
  Unit7 in 'Unit7.pas' {Usuarios},
  Unit8 in 'Unit8.pas' {Vendas},
  Unit9 in 'Unit9.pas' {Endereco},
  Unit10 in 'Unit10.pas' {Anuncios},
  Unit11 in 'Unit11.pas' {AboutBox},
  Unit13 in 'Unit13.pas' {DM: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TSplash, Splash);
  Application.CreateForm(TApresentacao, Apresentacao);
  Application.CreateForm(TLogin, Login);
  Application.CreateForm(TPrincipal, Principal);
  Application.CreateForm(TClientes, Clientes);
  Application.CreateForm(TFuncionarios, Funcionarios);
  Application.CreateForm(TProdutos, Produtos);
  Application.CreateForm(TFornecedores, Fornecedores);
  Application.CreateForm(TUsuarios, Usuarios);
  Application.CreateForm(TVendas, Vendas);
  Application.CreateForm(TEndereco, Endereco);
  Application.CreateForm(TAnuncios, Anuncios);
  Application.CreateForm(TAboutBox, AboutBox);
  Application.CreateForm(TDM, DM);
  Application.Run;
end.
