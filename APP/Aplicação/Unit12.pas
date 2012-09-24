unit Unit12;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, jpeg, ExtCtrls;

type
  TInicial = class(TForm)
    Image1: TImage;
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Inicial: TInicial;

implementation

uses Unit_Splash;

{$R *.dfm}

procedure TInicial.FormActivate(Sender: TObject);
begin
splash.show;
end;

end.
