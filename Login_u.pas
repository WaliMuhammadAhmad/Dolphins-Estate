unit Login_u;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.ComCtrls,
  Vcl.Imaging.pngimage, dmCD_U;

type
  TfrmLogin = class(TForm)
    lblUsername: TLabel;
    lblPassword: TLabel;
    edtUsername: TEdit;
    edtPassword: TEdit;
    StatusBar1: TStatusBar;
    Image1: TImage;
    Image2: TImage;
    Label1: TLabel;
    Image3: TImage;
    btnLogin: TButton;
    btnExit: TButton;
    procedure btnLoginClick(Sender: TObject);
    procedure btnExitClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmLogin: TfrmLogin;

implementation

{$R *.dfm}

procedure TfrmLogin.FormCreate(Sender: TObject);
begin
  dataModuleCD := TdataModuleCD.Create(Self);
end;

procedure TfrmLogin.btnExitClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmLogin.btnLoginClick(Sender: TObject);
var
  UserName, Password: string;
  Result: Boolean;
begin
  UserName := edtUsername.Text;
  Password := edtPassword.Text;
  Result := False; // Initialize Result to False

  // Start at the first record
  dataModuleCD.ADOTable1.First;

  // Loop through all records
  while not dataModuleCD.ADOTable1.Eof do
  begin
    if (UserName = dataModuleCD.ADOTable1.FieldByName('UserName').AsString) and
       (Password = dataModuleCD.ADOTable1.FieldByName('Password').AsString) then
    begin
      Result := True;
      Break; // Exit the loop if a match is found
    end;
    dataModuleCD.ADOTable1.Next; // Move to the next record
  end;

  // Check the Result
  if Result then
    ShowMessage('Login successful')
  else
    ShowMessage('Invalid login');
end;

end.

