unit Unit10;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ComCtrls, DB, Mask, DBCtrls, Grids, DBGrids;

type
  TAnuncios = class(TForm)
    Label2: TLabel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    DataSource1: TDataSource;
    Label3: TLabel;
    DBEdit2: TDBEdit;
    Label4: TLabel;
    DBEdit3: TDBEdit;
    Label5: TLabel;
    DBEdit4: TDBEdit;
    Memo1: TMemo;
    Label6: TLabel;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    BitBtn4: TBitBtn;
    RadioButton3: TRadioButton;
    DBGrid1: TDBGrid;
    Edit1: TEdit;
    Label7: TLabel;
    Label8: TLabel;
    Memo2: TMemo;
    BitBtn5: TBitBtn;
    Edit2: TEdit;
    Edit3: TEdit;
    procedure BitBtn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Anuncios: TAnuncios;

implementation

uses Unit13;

{$R *.dfm}

procedure TAnuncios.BitBtn2Click(Sender: TObject);
begin
close;
end;

end.
