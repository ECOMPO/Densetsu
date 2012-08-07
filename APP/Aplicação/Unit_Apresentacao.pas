unit Unit_Apresentacao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, ExtCtrls, StdCtrls, Buttons;

type
  TApresentacao = class(TForm)
    StatusBar1: TStatusBar;
    Timer1: TTimer;
    BitBtn1: TBitBtn;
    Image1: TImage;
    BitBtn2: TBitBtn;
    procedure Timer1Timer(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Apresentacao: TApresentacao;

implementation

uses Unit_Splash;

{$R *.dfm}

procedure TApresentacao.Timer1Timer(Sender: TObject);
VAR
        Day: Integer;
begin
        StatusBar1.Panels[0].Text:=DateToStr(now);
        StatusBar1.Panels[1].Text:=TimeToStr(now);
        StatusBar1.Panels[3].Text:='Desenvolvedor Geek Sistemas';
        Day := DayOfWeek(date());
        Case Day of
        1:
        begin
          StatusBar1.Panels[2].Text := ('Domingo');
        end;
        2:
        begin
          StatusBar1.Panels[2].Text := ('Segunda-Feira');
        end;
        3:
        begin
          StatusBar1.Panels[2].Text := ('Terça-Feira');
        end;
        4:
        begin
          StatusBar1.Panels[2].Text := ('Quarta-Feira');
        end;
        5:
        begin
          StatusBar1.Panels[2].Text := ('Quinta-Feira');
        end;
        6:
        begin
          StatusBar1.Panels[2].Text := ('Sexta-Feira');
        end;
        7:
        begin
          StatusBar1.Panels[2].Text := ('Sábado');
        end;
      end;
end;

procedure TApresentacao.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
      Splash.Close;
end;

end.
