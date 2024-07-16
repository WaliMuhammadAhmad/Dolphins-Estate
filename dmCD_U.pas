unit dmCD_U;

interface

uses
  System.SysUtils, System.Classes, ADODB, DB;

type
  TdataModuleCD = class(TDataModule)
    ADOConnection1: TADOConnection;
    ADOTable1: TADOTable;
    DataSource1: TDataSource;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dataModuleCD: TdataModuleCD;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

procedure TdataModuleCD.DataModuleCreate(Sender: TObject);
begin
  ADOConnection1.ConnectionString := 'Provider=Microsoft.Jet.OLEDB.4.0;Data Source=' + ExtractFilePath(ParamStr(0)) + 'dolphinsEstate.mdb;Persist Security Info=False';
  ADOConnection1.LoginPrompt := False;
  ADOConnection1.Open;

  ADOTable1.Connection := ADOConnection1;
  ADOTable1.TableName := 'tblUsers';
  ADOTable1.Open;

  DataSource1.DataSet := ADOTable1;
end;

end.

