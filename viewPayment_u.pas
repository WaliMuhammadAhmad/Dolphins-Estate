unit viewPayment_u;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Imaging.pngimage,
  Vcl.ExtCtrls;

type
  TfrmViewPayment = class(TForm)
    lblPaymentID: TLabel;
    lblLeaseID: TLabel;
    lblPaymentDate: TLabel;
    lblAmountPd: TLabel;
    edtAmtPaid: TEdit;
    edtLeaseID: TEdit;
    edtPaymentDate: TEdit;
    edtPaymentID: TEdit;
    btnMakePayment: TButton;
    Button1: TButton;
    lblPaymentHistory: TLabel;
    Image1: TImage;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmViewPayment: TfrmViewPayment;

implementation

{$R *.dfm}

end.
