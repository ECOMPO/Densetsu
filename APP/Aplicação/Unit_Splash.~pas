unit Unit_Splash;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Gauges, ExtCtrls, ComCtrls, Spin, Buttons;

type
  TSplash = class(TForm)
    Panel1: TPanel;
    Timer1: TTimer;
    Gauge1: TGauge;
    Label3: TLabel;
    StatusBar1: TStatusBar;
    Timer2: TTimer;
    s: TSpinEdit;
    e: TEdit;
    t: TTimer;
    Timer3: TTimer;
    W1: TSpinEdit;
    W2: TSpinEdit;
    W3: TSpinEdit;
    W4: TSpinEdit;
    W5: TSpinEdit;
    W6: TSpinEdit;
    W7: TSpinEdit;
    W8: TSpinEdit;
    w9: TSpinEdit;
    w10: TSpinEdit;
    w11: TSpinEdit;
    w12: TSpinEdit;
    Panel2: TPanel;
    Q8: TLabel;
    Q7: TLabel;
    Q6: TLabel;
    Q5: TLabel;
    Q4: TLabel;
    Q3: TLabel;
    Q2: TLabel;
    Q1: TLabel;
    q12: TLabel;
    q11: TLabel;
    q10: TLabel;
    q9: TLabel;
    R: TSpeedButton;
    procedure Timer1Timer(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure Timer2Timer(Sender: TObject);
    procedure tTimer(Sender: TObject);
    procedure sChange(Sender: TObject);
    procedure W1Change(Sender: TObject);
    procedure W2Change(Sender: TObject);
    procedure W3Change(Sender: TObject);
    procedure W4Change(Sender: TObject);
    procedure W5Change(Sender: TObject);
    procedure W6Change(Sender: TObject);
    procedure W7Change(Sender: TObject);
    procedure W8Change(Sender: TObject);
    procedure w9Change(Sender: TObject);
    procedure w10Change(Sender: TObject);
    procedure w11Change(Sender: TObject);
    procedure w12Change(Sender: TObject);
    procedure RClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Splash: TSplash;

implementation

uses Unit_Apresentacao;

{$R *.dfm}

// Configurando Tela de Splash
procedure TSplash.Timer1Timer(Sender: TObject);
begin
      gauge1.Progress:=gauge1.Progress+10;
              if(gauge1.progress=0) then
begin
end;
              if(gauge1.progress=10) then
begin
      label3.visible:= true;
      label3.caption:='Carregando Tela inicial...';

    end;
              if(gauge1.progress=20) then
begin
      label3.caption:='Carregando Tela Inicial....';

    end;
              if(gauge1.progress=30) then
begin
      label3.caption:='Carregando Formulários...';

end;
              if(gauge1.progress=40) then
begin
      label3.caption:='Carregando Formulários....';

end;
              if(gauge1.progress=50) then
begin
      label3.caption:='Carregando Formulários.....';

end;
              if(gauge1.progress=60) then
begin
      label3.caption:='Carregando Banco de Dados...';

end;
              if(gauge1.progress=70) then
begin
      label3.caption:='Carregando Banco de Dados.....';

end;
              if(gauge1.progress=80) then
begin
      label3.caption:='Carregando Banco de Dados......';

end;
              if(gauge1.progress=90) then
begin

      label3.caption:='Carregando Conexão...';

end;
              if(gauge1.progress=100) then
begin
      label3.caption:='          Concluído!!!';
      timer1.Enabled:=false;
      Apresentacao.Show;
end;
end;

//Corrigindo BUG do label...

procedure TSplash.FormActivate(Sender: TObject);
begin
        label3.visible:= false;
        timer2.Enabled := false;
        timer2.Interval := 1000;
        s.value:=80;
        timer2.Enabled := true;
end;

procedure TSplash.Timer2Timer(Sender: TObject);
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

procedure TSplash.tTimer(Sender: TObject);
begin
W1.Value:=W1.Value+1;
W2.Value:=W2.Value+1;
W3.Value:=W3.Value+1;
W4.Value:=W4.Value+1;
W5.Value:=W5.Value+1;
W6.Value:=W6.Value+1;
W7.Value:=W7.Value+1;
W8.Value:=W8.Value+1;
W9.Value:=W9.Value+1;
W10.Value:=W10.Value+1;
W11.Value:=W11.Value+1;
W12.Value:=W12.Value+1;
begin
IF(W1.Value=E.GetTextLen+1)THEN
R.Click;
end;
end;

procedure TSplash.sChange(Sender: TObject);
begin
t.Interval:=s.Value;
end;

procedure TSplash.W1Change(Sender: TObject);
begin
iF(W1.Value>0)and(w1.Value<e.GetTextLen+1) THEN
Q1.Caption:=E.Text[W1.VALUE];
iF(W1.Value<0)or(w1.Value>e.GetTextLen) THEN
q1.Caption:='';
end;

procedure TSplash.W2Change(Sender: TObject);
begin
IF(W2.Value>0)and(w2.Value<e.GetTextLen+1)THEN
Q2.Caption:=E.Text[W2.VALUE];
iF(W2.Value<0)or(w2.Value>e.GetTextLen) THEN
q2.Caption:='';
end;

procedure TSplash.W3Change(Sender: TObject);
begin
IF(W3.Value>0)and(w3.Value<e.GetTextLen+1)THEN
Q3.Caption:=E.Text[W3.VALUE];
iF(W3.Value<0)or(w3.Value>e.GetTextLen) THEN
q3.Caption:='';
end;

procedure TSplash.W4Change(Sender: TObject);
begin
IF(W4.Value>0)and(w4.Value<e.GetTextLen+1)THEN
Q4.Caption:=E.Text[W4.VALUE];
 iF(W4.Value<0)or(w4.Value>e.GetTextLen) THEN
q4.Caption:='';
end;

procedure TSplash.W5Change(Sender: TObject);
begin
IF(w5.Value>0)and(w5.Value<e.GetTextLen+1)then
Q5.Caption:=E.Text[W5.VALUE];
iF(W5.Value<0)or(w5.Value>e.GetTextLen) THEN
q5.Caption:='';
end;

procedure TSplash.W6Change(Sender: TObject);
begin
if(w6.Value>0)and(w6.Value<e.GetTextLen+1)then
Q6.Caption:=E.Text[W6.VALUE];
iF(W6.Value<0)or(w6.Value>e.GetTextLen) THEN
q6.Caption:='';
end;

procedure TSplash.W7Change(Sender: TObject);
begin
if(w7.Value>0)and(w7.Value<e.GetTextLen+1)then
Q7.Caption:=E.Text[W7.VALUE];
iF(W7.Value<0)or(w7.Value>e.GetTextLen) THEN
q7.Caption:='';
end;

procedure TSplash.W8Change(Sender: TObject);
begin
if(w8.Value>0)and(w8.Value<e.GetTextLen+1)then
Q8.Caption:=E.Text[W8.VALUE];
iF(W8.Value<0)or(w8.Value>e.GetTextLen) THEN
q8.Caption:='';
end;

procedure TSplash.w9Change(Sender: TObject);
begin
if(w9.Value>0)and(w9.Value<e.GetTextLen+1)then
Q9.Caption:=E.Text[W9.VALUE];
iF(W9.Value<0)or(w9.Value>e.GetTextLen) THEN
q9.Caption:='';
end;

procedure TSplash.w10Change(Sender: TObject);
begin
if(w10.Value>0)and(w10.Value<e.GetTextLen+1)then
Q10.Caption:=E.Text[W10.VALUE];
iF(W10.Value<0)or(w10.Value>e.GetTextLen) THEN
q10.Caption:='';
end;

procedure TSplash.w11Change(Sender: TObject);
begin
if(w11.Value>0)and(w11.Value<e.GetTextLen+1)then
Q11.Caption:=E.Text[W11.VALUE];
iF(W11.Value<0)or(w11.Value>e.GetTextLen) THEN
q11.Caption:='';
end;

procedure TSplash.w12Change(Sender: TObject);
begin
if(w12.Value>0)and(w12.Value<e.GetTextLen+1)then
Q12.Caption:=E.Text[W12.VALUE];
iF(W12.Value=0)or(w12.Value>e.GetTextLen) THEN
q12.Caption:='';
end;

procedure TSplash.RClick(Sender: TObject);
begin
W1.Value:=-11;
W2.Value:=-10;
W3.Value:=-9;
W4.Value:=-8;
W5.Value:=-7;
W6.Value:=-6;
W7.Value:=-5;
W8.Value:=-4;
W9.Value:=-3;
W10.Value:=-2;
W11.Value:=-1;
W12.Value:=0;
end;

end.
