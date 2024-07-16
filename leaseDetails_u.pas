unit leaseDetails_u;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, viewPayment_u,
  Vcl.Imaging.pngimage, Vcl.ExtCtrls;

type
  TfrmLeaseDetails = class(TForm)
    lblLeaseID: TLabel;
    lblPropID: TLabel;
    lblTenantID: TLabel;
    lblRentalPrice: TLabel;
    lblStartDate: TLabel;
    lblEndDate: TLabel;
    lblRentalDuration: TLabel;
    edtLeaseID: TEdit;
    edtPropID: TEdit;
    edtTenantID: TEdit;
    edtRentalPrice: TEdit;
    edtStartDate: TEdit;
    edtEndDate: TEdit;
    edtRentalDuration: TEdit;
    btnPaymentHistory: TButton;
    btnBack: TButton;
    lblLeaseDets: TLabel;
    Image1: TImage;
    procedure btnPaymentHistoryClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmLeaseDetails: TfrmLeaseDetails;

implementation

{$R *.dfm}

procedure TfrmLeaseDetails.btnPaymentHistoryClick(Sender: TObject);
begin
frmViewPayment.Show();
frmLeaseDetails.Hide;

end;

end.
