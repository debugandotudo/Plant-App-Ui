unit Unit_frame_recomended;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants, 
  FMX.Types, FMX.Graphics, FMX.Controls, FMX.Forms, FMX.Dialogs, FMX.StdCtrls,
  FMX.Objects, FMX.Controls.Presentation, FMX.Layouts, FMX.Effects;

type
  Tfrm_frame_recomended = class(TFrame)
    img_plant: TImage;
    Rectangle1: TRectangle;
    txt_name_plant: TLabel;
    txt_currrency: TLabel;
    txt_subtitle: TLabel;
    Layout1: TLayout;
    ShadowEffect3: TShadowEffect;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.fmx}

end.
