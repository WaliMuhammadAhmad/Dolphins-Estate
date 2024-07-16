unit addTenant_u;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, Vcl.StdCtrls,
  Vcl.Imaging.pngimage, Vcl.ExtCtrls;

type
  TfrmAddTenant = class(TForm)
    lblTenantID: TLabel;
    lblFirstName: TLabel;
    lblSurname: TLabel;
    lblIDNum: TLabel;
    lblContact: TLabel;
    lblEmail: TLabel;
    lblPropID: TLabel;
    edtTenantID: TEdit;
    edtFirstName: TEdit;
    edtSurname: TEdit;
    edtIDNum: TEdit;
    edtContact: TEdit;
    edtEmail: TEdit;
    cmbPropertyID: TComboBox;
    btnLeaseDet: TButton;
    MainMenu1: TMainMenu;
    Menu1: TMenuItem;
    PreviousScreen1: TMenuItem;
    Dashboard1: TMenuItem;
    Help1: TMenuItem;
    ViewHelpFile1: TMenuItem;
    btnSave: TButton;
    Image1: TImage;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmAddTenant: TfrmAddTenant;

implementation

{$R *.dfm}

end.
