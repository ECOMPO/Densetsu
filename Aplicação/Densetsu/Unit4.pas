unit Unit4;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ComCtrls, DB, Mask, DBCtrls;

type
  TFuncionarios = class(TForm)
    BitBtn5: TBitBtn;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    BitBtn4: TBitBtn;
    BitBtn6: TBitBtn;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    DataSource1: TDataSource;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    GroupBox2: TGroupBox;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Label6: TLabel;
    DBEdit6: TDBEdit;
    Label7: TLabel;
    DBEdit7: TDBEdit;
    Label8: TLabel;
    DBEdit8: TDBEdit;
    Label9: TLabel;
    DBEdit9: TDBEdit;
    Label10: TLabel;
    DBEdit10: TDBEdit;
    GroupBox3: TGroupBox;
    Label12: TLabel;
    DBEdit12: TDBEdit;
    Label13: TLabel;
    DBEdit13: TDBEdit;
    Label14: TLabel;
    DBEdit14: TDBEdit;
    GroupBox4: TGroupBox;
    Label15: TLabel;
    DBEdit15: TDBEdit;
    Label16: TLabel;
    DateTimePicker1: TDateTimePicker;
    Label17: TLabel;
    MaskEdit1: TMaskEdit;
    Label11: TLabel;
    DBEdit11: TDBEdit;
    MaskEdit2: TMaskEdit;
    Label18: TLabel;
    ComboBox1: TComboBox;
    Label19: TLabel;
    Label20: TLabel;
    ComboBox2: TComboBox;
    GroupBox5: TGroupBox;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    Label21: TLabel;
    DBEdit16: TDBEdit;
    DataSource2: TDataSource;
    Label22: TLabel;
    Label23: TLabel;
    DBEdit17: TDBEdit;
    Label24: TLabel;
    DBEdit18: TDBEdit;
    Label25: TLabel;
    DBEdit19: TDBEdit;
    Label40: TLabel;
    MaskEdit3: TMaskEdit;
    BitBtn3: TBitBtn;
    Label26: TLabel;
    DBEdit20: TDBEdit;
    DataSource3: TDataSource;
    Label27: TLabel;
    DBEdit21: TDBEdit;
    Label28: TLabel;
    DBEdit22: TDBEdit;
    Label29: TLabel;
    DBEdit23: TDBEdit;
    DataSource4: TDataSource;
    Label30: TLabel;
    DBEdit24: TDBEdit;
    Label31: TLabel;
    DBEdit25: TDBEdit;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Funcionarios: TFuncionarios;

implementation

uses Unit13;

{$R *.dfm}

end.
