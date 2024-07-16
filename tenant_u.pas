unit tenant_u;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Menus,
  Vcl.Imaging.pngimage, Vcl.ExtCtrls, dmCD_U, addTenant_u;

type
  TfrmTenant = class(TForm)
    lblTenantID: TLabel;
    lblFirstName: TLabel;
    lblSurname: TLabel;
    lblIDNum: TLabel;
    lblContact: TLabel;
    lblEmail: TLabel;
    lblPropID: TLabel;
    btnViewLease: TButton;
    btnEditTenant: TButton;
    btnUpdate: TButton;
    edtTenantID: TEdit;
    edtPropID: TEdit;
    edtFirstName: TEdit;
    edtSurname: TEdit;
    edtIDNum: TEdit;
    edtContact: TEdit;
    edtEmail: TEdit;
    MainMenu1: TMainMenu;
    N1: TMenuItem;
    MainMenu2: TMenuItem;
    Help1: TMenuItem;
    ViewHelpFile1: TMenuItem;
    btnNewTenant: TButton;
    Label1: TLabel;
    Image1: TImage;
    procedure btnNewTenantClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmTenant: TfrmTenant;

implementation

{$R *.dfm}

procedure TfrmTenant.btnNewTenantClick(Sender: TObject);
begin
frmAddTenant.Show;
end;

end.
