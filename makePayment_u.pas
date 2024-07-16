unit makePayment_u;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ComCtrls, Vcl.Menus,
  Vcl.Imaging.pngimage, Vcl.ExtCtrls;

type
  TfrmMakePayment = class(TForm)
    lblTenant: TLabel;
    lblTenantID: TLabel;
    lblPropertyID: TLabel;
    lblLeaseID: TLabel;
    lblPaymentDate: TLabel;
    lblAmountPaid: TLabel;
    edtTenantID: TEdit;
    edtPropID: TEdit;
    edtLeaseID: TEdit;
    dtPaymentDate: TDateTimePicker;
    cmbTenant: TComboBox;
    edtAmountPaid: TEdit;
    Label1: TLabel;
    btnMakePayment: TButton;
    btnBack: TButton;
    Image1: TImage;
    MainMenu1: TMainMenu;
    Menu1: TMenuItem;
    Dashboard1: TMenuItem;
    ExitProgram1: TMenuItem;
    Help1: TMenuItem;
    ViewHelpFile1: TMenuItem;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmMakePayment: TfrmMakePayment;

implementation

{$R *.dfm}

end.
