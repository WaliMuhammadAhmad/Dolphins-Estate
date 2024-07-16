program Dolphins1;

uses
  Vcl.Forms,
  Login_u in 'Login_u.pas' {frmLogin},
  dmCD_U in 'dmCD_U.pas' {dataModuleCD: TDataModule},
  Dashboard_u in 'Dashboard_u.pas' {frmDashboard},
  viewProperty_u in 'viewProperty_u.pas' {frmViewProperty},
  tenant_u in 'tenant_u.pas' {frmTenant},
  leaseDetails_u in 'leaseDetails_u.pas' {frmLeaseDetails},
  viewPayment_u in 'viewPayment_u.pas' {frmViewPayment},
  makePayment_u in 'makePayment_u.pas' {frmMakePayment},
  addTenant_u in 'addTenant_u.pas' {frmAddTenant},
  adminSysTools_u in 'adminSysTools_u.pas' {frmSysTools};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmLogin, frmLogin);
  Application.CreateForm(TdataModuleCD, dataModuleCD);
  Application.CreateForm(TfrmDashboard, frmDashboard);
  Application.CreateForm(TfrmViewProperty, frmViewProperty);
  Application.CreateForm(TfrmTenant, frmTenant);
  Application.CreateForm(TfrmLeaseDetails, frmLeaseDetails);
  Application.CreateForm(TfrmViewPayment, frmViewPayment);
  Application.CreateForm(TfrmMakePayment, frmMakePayment);
  Application.CreateForm(TfrmAddTenant, frmAddTenant);
  Application.CreateForm(TfrmSysTools, frmSysTools);
  Application.Run;
end.
