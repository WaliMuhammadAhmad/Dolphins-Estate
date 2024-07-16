unit viewProperty_u;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Data.DB, Vcl.Grids, dmCD_U, tenant_u,
  Vcl.DBGrids, Vcl.ExtCtrls, Vcl.Menus, Vcl.Imaging.pngimage;

type
  TfrmViewProperty = class(TForm)
    Label1: TLabel;
    lblPropID: TLabel;
    lblPropName: TLabel;
    lblPropAdd: TLabel;
    lblPropStatus: TLabel;
    edtPropID: TEdit;
    edtPropName: TEdit;
    edtPropAdd: TEdit;
    edtPropStatus: TEdit;
    ImgPropPhoto: TImage;
    lblRentalPrice: TLabel;
    lblLandlordContact: TLabel;
    edtRentalPrice: TEdit;
    edtLandlordContact: TEdit;
    btnShowAllProp: TButton;
    btnVacant: TButton;
    btnFilterRentPrice: TButton;
    btnFirst: TButton;
    dbGridPropTbl: TDBGrid;
    btnNext: TButton;
    Previous: TButton;
    btnLast: TButton;
    btnShowTenant: TButton;
    btnFilterRooms: TButton;
    btnFilterPropType: TButton;
    lblPropType: TLabel;
    lblPropRooms: TLabel;
    edtPropType: TEdit;
    edtPropRooms: TEdit;
    edtPropBaths: TEdit;
    lblPropBaths: TLabel;
    lblPropSize: TLabel;
    edtPropSize: TEdit;
    Image1: TImage;
    MainMenu1: TMainMenu;
    Menu1: TMenuItem;
    GotoDashboard1: TMenuItem;
    Help1: TMenuItem;
    ViewHelp1: TMenuItem;
    procedure ConnectDatabase(Sender: TObject);
    procedure btnShowTenantClick(Sender: TObject);
    procedure btnFirstClick(Sender: TObject);
    procedure btnNextClick(Sender: TObject);
    procedure PreviousClick(Sender: TObject);
    procedure btnLastClick(Sender: TObject);
    procedure btnFilterRoomsClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmViewProperty: TfrmViewProperty;

implementation

{$R *.dfm}

procedure TfrmViewProperty.btnFilterRoomsClick(Sender: TObject);
begin
  var NumberOfRooms : String;
  var RoomsVal : integer;

  NumberOfRooms := InputBox('Number of rooms', 'Enter the number of Rooms you want to search for:', '');
  try
    RoomsVal := StrToInt(NumberOfRooms);        //convert NumberOfRooms to integer to determine if value is an integer or string
  except
    on E: EConvertError do
      ShowMessage('Invalid input. Please enter a valid integer value.');
  end;

//  dataModuleCD.tblCD2.Close;
//  dataModuleCD.tblCD2.SQL.Text := 'SELECT * FROM tblProperty WHERE propRooms = :RoomsVal';
//  dataModuleCD.tblCD2.Parameters.ParamByName('propRooms').Value := RoomsVal; // Checks if value in column propRooms matches value that user input
//  dataModuleCD.tblCD2.Open;
end;

procedure TfrmViewProperty.btnFirstClick(Sender: TObject);
begin
//if dmCD_u.dataModuleCD.tblCD2.RecordCount > 0 then         // --- if the record count value is greater than 0
//  begin
//    dmCD_u.dataModuleCD.tblCD2.First;
//    DisplayImage;
//  end;
//end;




//procedure TfrmViewProperty.DisplayImage;
//begin
//  if not dmCD_u.dataModuleCD.tblCD2.FieldByName('Image').IsNull then
//  begin
    // Load the image that corresponds to the the database field name and display it in the TImage component
    // ImgPropPhoto.Picture.LoadFromFile(dmCD_u.dataModuleCD.tblCD2.FieldByName('propertyPhoto').AsString);
//  end
//  else
//  begin
    // Clear the TImage component if the image field is null/empty
//    ImgPropPhoto.Picture := nil;
//  end;
//end;

end;

procedure TfrmViewProperty.btnLastClick(Sender: TObject);
begin
//  if dmCD_u.dataModuleCD.tblCD2.RecordCount > 0 then     // --- if the record count value is greater than 0
//  begin
//    dmCD_u.dataModuleCD.tblCD2.Last;
//    DisplayImage;
end;

procedure TfrmViewProperty.btnNextClick(Sender: TObject);
begin
//  if dmCD_u.dataModuleCD.tblCD2.RecordCount > 0 then     // --- if the record count value is greater than 0
//  begin
//    if not dmCD_u.dataModuleCD.tblCD2.Eof then          // -- if the record count position has not reached the end of file
//      dmCD_u.dataModuleCD.tblCD2.Next;                  // Calls up the procedure to DisplayImage
//    DisplayImage;
//  end;
end;


procedure TfrmViewProperty.btnShowTenantClick(Sender: TObject);
begin
  frmTenant.Show();

end;

procedure TfrmViewProperty.ConnectDatabase(Sender: TObject);
begin
//dbGridPropTbl.DataSource := dataModuleCD.DsCD;

dbGridPropTbl.Columns[0].Width := 20;
dbGridPropTbl.Columns[1].Width := 30;
dbGridPropTbl.Columns[2].Width := 70;
dbGridPropTbl.Columns[3].Width := 20;
dbGridPropTbl.Columns[4].Width := 20;
dbGridPropTbl.Columns[5].Width := 20;


end;

procedure TfrmViewProperty.PreviousClick(Sender: TObject);
begin
//  if dmCD_u.dataModuleCD.tblCD2.RecordCount > 0 then
//  begin
//    if not dmCD_u.dataModuleCD.tblCD2.Bof then
//      dmCD_u.dataModuleCD.tblCD2.Prior;
//    DisplayImage;
  end;

end.
