unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, ExtCtrls, StdCtrls, Buttons, jpeg;

type
  TPrincipal = class(TForm)
    Panel1: TPanel;
    StatusBar1: TStatusBar;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    Panel2: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    BitBtn6: TBitBtn;
    BitBtn7: TBitBtn;
    Timer1: TTimer;
    Label3: TLabel;
    Label4: TLabel;
    BitBtn8: TBitBtn;
    Panel3: TPanel;
    BitBtn9: TBitBtn;
    BitBtn10: TBitBtn;
    procedure Timer1Timer(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure BitBtn7Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Principal: TPrincipal;

implementation

uses Unit3, Unit4, Unit8, Unit5, Unit6, Unit7, Unit10;

{$R *.dfm}

procedure TPrincipal.Timer1Timer(Sender: TObject);
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

procedure TPrincipal.BitBtn1Click(Sender: TObject);
begin
Clientes.showmodal;
end;

procedure TPrincipal.BitBtn2Click(Sender: TObject);
begin
Funcionarios.showmodal;
end;

procedure TPrincipal.BitBtn3Click(Sender: TObject);
begin
Vendas.showmodal;
end;

procedure TPrincipal.BitBtn4Click(Sender: TObject);
begin
Produtos.showmodal;
end;

procedure TPrincipal.BitBtn5Click(Sender: TObject);
begin
Fornecedores.showmodal;
end;

procedure TPrincipal.BitBtn6Click(Sender: TObject);
begin
Usuarios.showmodal;
end;

procedure TPrincipal.BitBtn7Click(Sender: TObject);
begin
Anuncios.showmodal;
end;

end.
