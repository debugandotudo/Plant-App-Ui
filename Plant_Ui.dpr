program Plant_Ui;

uses
  System.StartUpCopy,
  FMX.Forms,
  UnitHomePage in 'UnitHomePage.pas' {frmHomePage},
  Unit_frame_recomended in 'Unit_frame_recomended.pas' {frm_frame_recomended: TFrame},
  Unit_frame_featured_plants in 'Unit_frame_featured_plants.pas' {frm_frame_featured_plants: TFrame};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TfrmHomePage, frmHomePage);
  Application.Run;
end.
