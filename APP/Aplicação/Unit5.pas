unit Unit5;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ComCtrls, DB, Mask, DBCtrls, Grids, DBGrids;

type
  TProdutos = class(TForm)
    Label2: TLabel;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    BitBtn6: TBitBtn;
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
    Label6: TLabel;
    DBEdit5: TDBEdit;
    Label7: TLabel;
    DBEdit6: TDBEdit;
    Label8: TLabel;
    DBEdit7: TDBEdit;
    Memo1: TMemo;
    Label9: TLabel;
    DateTimePicker1: TDateTimePicker;
    Label10: TLabel;
    Label11: TLabel;
    MaskEdit1: TMaskEdit;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    RadioButton3: TRadioButton;
    Edit1: TEdit;
    Edit2: TEdit;
    Label12: TLabel;
    DBEdit8: TDBEdit;
    Label13: TLabel;
    DBEdit9: TDBEdit;
    Memo2: TMemo;
    Label14: TLabel;
    DateTimePicker2: TDateTimePicker;
    Label15: TLabel;
    Label16: TLabel;
    MaskEdit2: TMaskEdit;
    DBGrid1: TDBGrid;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Produtos: TProdutos;

implementation

uses Unit13;

{$R *.dfm}

end.
