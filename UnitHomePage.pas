unit UnitHomePage;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.TabControl,
  FMX.Layouts, FMX.Objects, FMX.Controls.Presentation, FMX.StdCtrls, FMX.Effects,
  FMX.ListBox;

type
  TfrmHomePage = class(TForm)
    TabControl: TTabControl;
    tab_home_page: TTabItem;
    lay_top_home: TLayout;
    lay_btn_menu_home: TLayout;
    rect_fundo_top_home: TRectangle;
    Label1: TLabel;
    img_logo: TImage;
    rect_search: TRectangle;
    ShadowEffect1: TShadowEffect;
    Label2: TLabel;
    img_search: TImage;
    VertScrollBox: TVertScrollBox;
    lay_bottom_home: TLayout;
    lay_recomended: TLayout;
    Label3: TLabel;
    rect_more_recomended: TRectangle;
    Label4: TLabel;
    ShadowEffect2: TShadowEffect;
    lb_recomended: TListBox;
    lay_featured_plants: TLayout;
    Label5: TLabel;
    rect_featured_plants: TRectangle;
    Label6: TLabel;
    ShadowEffect3: TShadowEffect;
    lb_featured_plants: TListBox;
    lay_icones_home: TLayout;
    img_flower: TImage;
    cir_flower: TCircle;
    cir_heart: TCircle;
    img_heart: TImage;
    cir_user: TCircle;
    img_user: TImage;
    rect_icones_fundo: TRectangle;
    cir_menu_lateral: TCircle;
    img_menu_lateral: TImage;
    ShadowEffect4: TShadowEffect;
    tab_plant_page: TTabItem;
    lay_btn_back: TLayout;
    cir_btn_back: TCircle;
    img_back: TImage;
    rect_plant_viewer: TRectangle;
    lay_plant_viewer: TLayout;
    ShadowEffect5: TShadowEffect;
    lay_bottom_plant_page: TLayout;
    Layout1: TLayout;
    txt_name_plant: TLabel;
    txt_currrency: TLabel;
    txt_subtitle: TLabel;
    lay_btn_buy_desc: TLayout;
    rect_btn_buy: TRectangle;
    Label7: TLabel;
    rect_btn_description: TRectangle;
    Label8: TLabel;
    rect_sun: TRectangle;
    lay_btns: TLayout;
    ShadowEffect6: TShadowEffect;
    img_sun: TImage;
    rect_temp: TRectangle;
    img_temp: TImage;
    Rectangle1: TRectangle;
    Image1: TImage;
    rect_ar: TRectangle;
    img_ar: TImage;
    procedure FormShow(Sender: TObject);
    procedure lb_recomendedItemClick(const Sender: TCustomListBox;
      const Item: TListBoxItem);
    procedure cir_btn_backClick(Sender: TObject);
    procedure lb_featured_plantsItemClick(const Sender: TCustomListBox;
      const Item: TListBoxItem);
    procedure FormResize(Sender: TObject);
  private
    procedure CarregarRecomended;
    procedure CarregarFeatured;
    { Private declarations }
  public
    { Public declarations }

  end;

var
  frmHomePage: TfrmHomePage;

implementation

{$R *.fmx}

uses Unit_frame_recomended, Unit_frame_featured_plants;

procedure TfrmHomePage.FormResize(Sender: TObject);
begin
   rect_btn_buy.Width         := Trunc(frmHomePage.Width / 2);
   rect_btn_description.Width := Trunc(frmHomePage.Width / 2);
end;

procedure TfrmHomePage.FormShow(Sender: TObject);
begin
  lay_top_home.Width := frmHomePage.Width;
  lay_top_home.Height := Trunc(frmHomePage.Height / 4) ;

  TabControl.ActiveTab := tab_home_page;

  CarregarRecomended;
  CarregarFeatured;
end;

procedure TfrmHomePage.lb_featured_plantsItemClick(const Sender: TCustomListBox;
  const Item: TListBoxItem);
begin
  lb_featured_plants.ItemIndex := -1;
end;

procedure TfrmHomePage.lb_recomendedItemClick(const Sender: TCustomListBox;
  const Item: TListBoxItem);
begin
  lb_recomended.ItemIndex := 0;
  TabControl.GotoVisibleTab(tab_plant_page.Index);
end;

procedure  TfrmHomePage.CarregarRecomended;
var frame : Tfrm_frame_recomended;
    i : Integer;
    Item : TListBoxItem;
begin
  lb_recomended.Clear;

  for I := 1 to 5 do begin
    item := TListBoxItem.Create(lb_recomended);
    item.Text := '';
    item.Width := Trunc(lb_recomended.Width / 2.3);
    item.Height := 235;
    item.TagString := i.ToString;
    Item.Margins.Right := 8;

    frame := Tfrm_frame_recomended.Create(item);
    frame.Parent := item;
    frame.Align := TAlignLayout.Client;
    frame.Margins.Left := 0;
    frame.Margins.Right := 0;

    frame.txt_name_plant.Text := 'SAMANTHA';
    frame.txt_currrency.Text  := '$400';
    frame.txt_subtitle.Text   := 'RUSSIA';

    lb_recomended.AddObject(item);
  end;

end;

procedure TfrmHomePage.cir_btn_backClick(Sender: TObject);
begin
  TabControl.GotoVisibleTab(tab_home_page.Index);
end;

procedure  TfrmHomePage.CarregarFeatured;
var frame : Tfrm_frame_featured_plants;
    i : Integer;
    Item : TListBoxItem;
begin
  lb_featured_plants.Clear;

  for I := 1 to 5 do begin
    item := TListBoxItem.Create(lb_featured_plants);
    item.Text := '';
    item.Width := Trunc(lb_featured_plants.Width / 1.3);
    item.Height := 235;
    item.TagString := i.ToString;
    Item.Margins.Right := 8;

    frame := Tfrm_frame_featured_plants.Create(item);
    frame.Parent := item;
    frame.Align := TAlignLayout.Client;
    frame.Margins.Left := 0;
    frame.Margins.Right := 0;

    lb_featured_plants.AddObject(item);
  end;


end;
end.
