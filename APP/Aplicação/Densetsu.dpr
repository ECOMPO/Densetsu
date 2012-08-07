program Densetsu;

uses
  Forms,
  Unit_Splash in 'Unit_Splash.pas' {Splash},
  Unit_Apresentacao in 'Unit_Apresentacao.pas' {Apresentacao};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TSplash, Splash);
  Application.CreateForm(TApresentacao, Apresentacao);
  Application.Run;
end.
