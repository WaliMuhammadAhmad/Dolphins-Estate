unit Dashboard_u;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Imaging.pngimage,
  Vcl.ExtCtrls, Vcl.Menus, ShellAPI, viewProperty_u, tenant_u, viewPayment_u;

type
  TfrmDashboard = class(TForm)
    btnProperties: TButton;
    btnTenant: TButton;
    btnPayment: TButton;
    btnSTools: TButton;
    Image1: TImage;
    MainMenu1: TMainMenu;
    Menu1: TMenuItem;
    ExitProgram1: TMenuItem;
    Help1: TMenuItem;
    ViewHelpFile1: TMenuItem;
    procedure btnPropertiesClick(Sender: TObject);
    procedure btnTenantClick(Sender: TObject);
    procedure btnPaymentClick(Sender: TObject);
    procedure ViewHelpFile1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmDashboard: TfrmDashboard;

implementation

{$R *.dfm}

procedure TfrmDashboard.btnPaymentClick(Sender: TObject);
begin
frmViewPayment.Show;
frmDashboard.Hide;
end;

procedure TfrmDashboard.btnPropertiesClick(Sender: TObject);
begin
frmViewProperty.Show;
frmDashboard.Hide;
end;

procedure TfrmDashboard.btnTenantClick(Sender: TObject);
begin
frmTenant.Show;
frmDashboard.Hide;

end;

procedure TfrmDashboard.ViewHelpFile1Click(Sender: TObject);
begin
 var
  HelpFilePath: string;
begin
  // Declaring the help file location
//  HelpFilePath := 'C:\PAT\HelpFile.txt';

  // Check if the help file exists
  if FileExists(HelpFilePath) then
  begin
    // Open the help file using ShellExecute in read-only mode. The parameters passed allow the Help file to be opened in a normal window.
    ShellExecute(0, 'open', PChar(HelpFilePath), nil, nil, SW_SHOWNORMAL);
  end
  else
  begin
    // Show an error message if the help file does not exist
    ShowMessage('Help file not found.');
  end;
end;
end;
end.
