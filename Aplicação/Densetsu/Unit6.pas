unit Unit6;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ComCtrls, Grids, DBGrids, Mask, DB, DBCtrls;

type
  TFornecedores = class(TForm)
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
    Label6: TLabel;
    DBEdit5: TDBEdit;
    Label7: TLabel;
    Label4: TLabel;
    DBEdit3: TDBEdit;
    Label5: TLabel;
    DBEdit4: TDBEdit;
    Label8: TLabel;
    DBEdit6: TDBEdit;
    MaskEdit1: TMaskEdit;
    MaskEdit2: TMaskEdit;
    Label9: TLabel;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    RadioButton3: TRadioButton;
    Edit1: TEdit;
    Edit2: TEdit;
    DBGrid1: TDBGrid;
    BitBtn1: TBitBtn;
    Label10: TLabel;
    DBEdit7: TDBEdit;
    Label11: TLabel;
    DBEdit8: TDBEdit;
    Label12: TLabel;
    MaskEdit3: TMaskEdit;
    MaskEdit4: TMaskEdit;
    Label13: TLabel;
    BitBtn2: TBitBtn;
    procedure BitBtn5Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Fornecedores: TFornecedores;

implementation

uses Unit13;

{$R *.dfm}

procedure TFornecedores.BitBtn5Click(Sender: TObject);
begin
close;
end;

end.
