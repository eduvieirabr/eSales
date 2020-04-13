unit UcLIENTE;

interface

uses
  System.SysUtils,FMX.Platform.TApplicationEvent, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs,
  FMX.wwColumnTypes, FMX.wwDataGrid, Data.Bind.Components, Data.Bind.DBScope,
  FMX.wwLayouts, FMX.wwBaseGrid, FMX.TabControl, FMX.Controls.Presentation,
  FMX.StdCtrls, FMX.TMSButton, FMX.wwDialog, FMX.wwLookupDialog, FMX.wwTypes,
  FMX.Edit, FMX.wwEdit, FMX.wwSearchBox,FMX.wwRecPanel, FMX.Layouts,
  FMX.ListBox, FMX.Objects, FMX.TMSHTMLText, FMX.WebBrowser, FMX.MultiView,
  FMX.TMSWebGMapsWebBrowser, FMX.TMSWebGMaps, FMX.TMSWebGMapsCommon,
  FMX.TMSWebGMapsReverseGeocoding,
 FMX.TMSWebGMapsPolyLines, FMX.TMSWebGMapsPolyGons,
  FMX.TMSWebGMapsDirections, FMX.TMSWebGMapsMarkers, FMX.wwManager;

type
  TfrmCli = class(TForm)
    TabControl1: TTabControl;
    ToolBar1: TToolBar;
    TabItem1: TTabItem;
    TabItem2: TTabItem;
    wwDataGrid1: TwwDataGrid;
    BindSourceDB1: TBindSourceDB;
    wwDataGrid1A1_MAIDUPL: TwwGridColumn;
    wwDataGrid1A1_CEPE: TwwGridColumn;
    wwDataGrid1A1_ESTE: TwwGridColumn;
    wwDataGrid1A1_SATIV1: TwwGridColumn;
    wwDataGrid1A1_DSATIV1: TwwGridColumn;
    wwDataGrid1A1_SATIV2: TwwGridColumn;
    wwDataGrid1A1_DSATIV2: TwwGridColumn;
    wwDataGrid1A1_CODPAIS: TwwGridColumn;
    wwDataGrid1A1_TPESSOA: TwwGridColumn;
    wwDataGrid1A1_CODLOC: TwwGridColumn;
    wwDataGrid1A1_SATIV3: TwwGridColumn;
    wwDataGrid1A1_DSATIV3: TwwGridColumn;
    wwDataGrid1A1_SATIV4: TwwGridColumn;
    wwDataGrid1A1_TABELA: TwwGridColumn;
    wwDataGrid1A1_INCISS: TwwGridColumn;
    wwDataGrid1A1_SALDUPM: TwwGridColumn;
    wwDataGrid1A1_PAGATR: TwwGridColumn;
    wwDataGrid1A1_CXPOSTA: TwwGridColumn;
    wwDataGrid1A1_ATIVIDA: TwwGridColumn;
    wwDataGrid1A1_CARGO1: TwwGridColumn;
    wwDataGrid1A1_CARGO2: TwwGridColumn;
    wwDataGrid1A1_CARGO3: TwwGridColumn;
    wwDataGrid1A1_ALIQIR: TwwGridColumn;
    wwDataGrid1A1_SUPER: TwwGridColumn;
    wwDataGrid1A1_RTEC: TwwGridColumn;
    wwDataGrid1A1_OBSERV: TwwGridColumn;
    wwDataGrid1A1_RG: TwwGridColumn;
    wwDataGrid1A1_CALCSUF: TwwGridColumn;
    wwDataGrid1A1_DTNASC: TwwGridColumn;
    wwDataGrid1A1_SALPEDB: TwwGridColumn;
    wwDataGrid1A1_CLIFAT: TwwGridColumn;
    wwDataGrid1A1_GRPTRIB: TwwGridColumn;
    wwDataGrid1A1_BAIRROC: TwwGridColumn;
    wwDataGrid1A1_CEPC: TwwGridColumn;
    wwDataGrid1A1_MUNC: TwwGridColumn;
    wwDataGrid1A1_ESTC: TwwGridColumn;
    wwDataGrid1A1_BAIRROE: TwwGridColumn;
    wwDataGrid1A1_MUNE: TwwGridColumn;
    wwDataGrid1A1_DSATIV4: TwwGridColumn;
    wwDataGrid1A1_SATIV5: TwwGridColumn;
    wwDataGrid1A1_DSATIV5: TwwGridColumn;
    wwDataGrid1A1_SATIV6: TwwGridColumn;
    wwDataGrid1A1_DSATIV6: TwwGridColumn;
    wwDataGrid1A1_SATIV7: TwwGridColumn;
    wwDataGrid1A1_DSATIV7: TwwGridColumn;
    wwDataGrid1A1_SATIV8: TwwGridColumn;
    wwDataGrid1A1_DSATIV8: TwwGridColumn;
    wwDataGrid1A1_CODMARC: TwwGridColumn;
    wwDataGrid1A1_CODAGE: TwwGridColumn;
    wwDataGrid1A1_VM_MARC: TwwGridColumn;
    wwDataGrid1A1_COMAGE: TwwGridColumn;
    wwDataGrid1A1_TIPCLI: TwwGridColumn;
    wwDataGrid1A1_EMAIL: TwwGridColumn;
    wwDataGrid1A1_DEST_1: TwwGridColumn;
    wwDataGrid1A1_CODMUN: TwwGridColumn;
    wwDataGrid1A1_DEST_2: TwwGridColumn;
    wwDataGrid1A1_HPAGE: TwwGridColumn;
    wwDataGrid1A1_DEST_3: TwwGridColumn;
    wwDataGrid1A1_CONDPAG: TwwGridColumn;
    wwDataGrid1A1_DIASPAG: TwwGridColumn;
    wwDataGrid1A1_DESCPAG: TwwGridColumn;
    wwDataGrid1A1_OBS: TwwGridColumn;
    wwDataGrid1A1_AGREG: TwwGridColumn;
    wwDataGrid1A1_MATR: TwwGridColumn;
    wwDataGrid1A1_VM_OBS: TwwGridColumn;
    wwDataGrid1A1_CODHIST: TwwGridColumn;
    wwDataGrid1A1_RECINSS: TwwGridColumn;
    wwDataGrid1A1_RECCOFI: TwwGridColumn;
    wwDataGrid1A1_RECCSLL: TwwGridColumn;
    wwDataGrid1A1_RECPIS: TwwGridColumn;
    wwDataGrid1A1_HISTMK: TwwGridColumn;
    wwDataGrid1A1_TIPPER: TwwGridColumn;
    wwDataGrid1A1_COD_MUN: TwwGridColumn;
    wwDataGrid1A1_SALFIN: TwwGridColumn;
    wwDataGrid1A1_CONTAB: TwwGridColumn;
    wwDataGrid1A1_SALFINM: TwwGridColumn;
    wwDataGrid1A1_B2B: TwwGridColumn;
    wwDataGrid1A1_GRPVEN: TwwGridColumn;
    wwDataGrid1A1_CLICNV: TwwGridColumn;
    wwDataGrid1A1_INSCRUR: TwwGridColumn;
    wwDataGrid1A1_MSBLQL: TwwGridColumn;
    wwDataGrid1A1_SITUA: TwwGridColumn;
    wwDataGrid1A1_NUMRA: TwwGridColumn;
    wwDataGrid1A1_SUBCOD: TwwGridColumn;
    wwDataGrid1A1_CDRDES: TwwGridColumn;
    wwDataGrid1A1_REGDES: TwwGridColumn;
    wwDataGrid1A1_FILDEB: TwwGridColumn;
    wwDataGrid1A1_CODFOR: TwwGridColumn;
    wwDataGrid1A1_FILIAL: TwwGridColumn;
    wwDataGrid1A1_LOJA: TwwGridColumn;
    wwDataGrid1A1_PESSOA: TwwGridColumn;
    wwDataGrid1A1_NOME: TwwGridColumn;
    wwDataGrid1A1_NREDUZ: TwwGridColumn;
    wwDataGrid1A1_TIPO: TwwGridColumn;
    wwDataGrid1A1_END: TwwGridColumn;
    wwDataGrid1A1_MUN: TwwGridColumn;
    wwDataGrid1A1_EST: TwwGridColumn;
    wwDataGrid1A1_NATUREZ: TwwGridColumn;
    wwDataGrid1A1_ESTADO: TwwGridColumn;
    wwDataGrid1A1_BAIRRO: TwwGridColumn;
    wwDataGrid1A1_CEP: TwwGridColumn;
    wwDataGrid1A1_DDI: TwwGridColumn;
    wwDataGrid1A1_DDD: TwwGridColumn;
    wwDataGrid1A1_TEL: TwwGridColumn;
    wwDataGrid1A1_TELEX: TwwGridColumn;
    wwDataGrid1A1_FAX: TwwGridColumn;
    wwDataGrid1A1_ENDCOB: TwwGridColumn;
    wwDataGrid1A1_PAIS: TwwGridColumn;
    wwDataGrid1A1_INSCRM: TwwGridColumn;
    wwDataGrid1A1_VEND: TwwGridColumn;
    wwDataGrid1A1_COMIS: TwwGridColumn;
    wwDataGrid1A1_REGIAO: TwwGridColumn;
    wwDataGrid1A1_CONTA: TwwGridColumn;
    wwDataGrid1A1_BCO1: TwwGridColumn;
    wwDataGrid1A1_BCO2: TwwGridColumn;
    wwDataGrid1A1_BCO3: TwwGridColumn;
    wwDataGrid1A1_BCO4: TwwGridColumn;
    wwDataGrid1A1_BCO5: TwwGridColumn;
    wwDataGrid1A1_TRANSP: TwwGridColumn;
    wwDataGrid1A1_TPFRET: TwwGridColumn;
    wwDataGrid1A1_COND: TwwGridColumn;
    wwDataGrid1A1_DESC: TwwGridColumn;
    wwDataGrid1A1_PRIOR: TwwGridColumn;
    wwDataGrid1A1_RISCO: TwwGridColumn;
    wwDataGrid1A1_LC: TwwGridColumn;
    wwDataGrid1A1_VENCLC: TwwGridColumn;
    wwDataGrid1A1_CLASSE: TwwGridColumn;
    wwDataGrid1A1_LCFIN: TwwGridColumn;
    wwDataGrid1A1_MOEDALC: TwwGridColumn;
    wwDataGrid1A1_MSALDO: TwwGridColumn;
    wwDataGrid1A1_MCOMPRA: TwwGridColumn;
    wwDataGrid1A1_ABICS: TwwGridColumn;
    wwDataGrid1A1_BLEMAIL: TwwGridColumn;
    wwDataGrid1A1_TIPOCLI: TwwGridColumn;
    wwDataGrid1A1_IBGE: TwwGridColumn;
    wwDataGrid1A1_SIMPLES: TwwGridColumn;
    wwDataGrid1A1_ABATIMP: TwwGridColumn;
    wwDataGrid1A1_RECIRRF: TwwGridColumn;
    wwDataGrid1A1_METR: TwwGridColumn;
    wwDataGrid1A1_PAISDES: TwwGridColumn;
    wwDataGrid1A1_ENDENT: TwwGridColumn;
    wwDataGrid1A1_ENDREC: TwwGridColumn;
    wwDataGrid1A1_CGC: TwwGridColumn;
    wwDataGrid1A1_CONTATO: TwwGridColumn;
    wwDataGrid1A1_INSCR: TwwGridColumn;
    wwDataGrid1A1_PFISICA: TwwGridColumn;
    wwDataGrid1A1_PRICOM: TwwGridColumn;
    wwDataGrid1A1_ULTCOM: TwwGridColumn;
    wwDataGrid1A1_NROCOM: TwwGridColumn;
    wwDataGrid1A1_FORMVIS: TwwGridColumn;
    wwDataGrid1A1_TEMVIS: TwwGridColumn;
    wwDataGrid1A1_ULTVIS: TwwGridColumn;
    wwDataGrid1A1_TMPVIS: TwwGridColumn;
    wwDataGrid1A1_TMPSTD: TwwGridColumn;
    wwDataGrid1A1_CLASVEN: TwwGridColumn;
    wwDataGrid1A1_MENSAGE: TwwGridColumn;
    wwDataGrid1A1_SALDUP: TwwGridColumn;
    wwDataGrid1A1_RECISS: TwwGridColumn;
    wwDataGrid1A1_NROPAG: TwwGridColumn;
    wwDataGrid1A1_SALPEDL: TwwGridColumn;
    wwDataGrid1A1_TRANSF: TwwGridColumn;
    wwDataGrid1A1_SUFRAMA: TwwGridColumn;
    wwDataGrid1A1_ATR: TwwGridColumn;
    wwDataGrid1A1_VACUM: TwwGridColumn;
    wwDataGrid1A1_SALPED: TwwGridColumn;
    wwDataGrid1A1_TITPROT: TwwGridColumn;
    wwDataGrid1A1_DTULTIT: TwwGridColumn;
    wwDataGrid1A1_CHQDEVO: TwwGridColumn;
    wwDataGrid1A1_DTULCHQ: TwwGridColumn;
    wwDataGrid1R_E_C_N_O_: TwwGridColumn;
    wwDataGrid1R_E_C_D_E_L_: TwwGridColumn;
    wwDataGrid1D_E_L_E_T_: TwwGridColumn;
    wwDataGrid1A1_CEPE2: TwwGridColumn;
    B: TwwSearchBox;
    TabItem3: TTabItem;
    lbRouteDetails: TListBox;
    lbRoutes: TListBox;
    Panel1: TPanel;
    Panel2: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    web: TWebBrowser;
    Panel3: TPanel;
    rbHybrid: TRadioButton;
    rbTerrain: TRadioButton;
    rbSatellite: TRadioButton;
    rbRoad: TRadioButton;
    cbWeather: TCheckBox;
    cbTraffic: TCheckBox;
    cbCycle: TCheckBox;
    TMSFMXButton1: TTMSFMXButton;
    TMSFMXWebGMaps1: TTMSFMXWebGMaps;
    gend: TTMSFMXWebGMapsReverseGeocoding;
    procedure TMSFMXButton1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure wwDataGrid1ButtonClick(Sender: TObject;
      CellAttributes: TwwCellAttributes; AFieldName: string);
    procedure TabControl1Change(Sender: TObject);
    procedure lbRoutesClick(Sender: TObject);
    procedure rbRoadClick(Sender: TObject);
    procedure rbSatelliteClick(Sender: TObject);
    procedure rbTerrainClick(Sender: TObject);
    procedure rbHybridClick(Sender: TObject);
    procedure cbCycleChange(Sender: TObject);
    procedure cbWeatherChange(Sender: TObject);
    procedure cbTrafficChange(Sender: TObject);
    procedure cbCloudChange(Sender: TObject);
    procedure cbStreetViewChange(Sender: TObject);
    procedure cbPanoChange(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
      procedure DisplayRoute;
      procedure DisplayRouteDetails;
      procedure ClearDirections;

    { Public declarations }
  end;

var
  frmCli: TfrmCli;

implementation

{$R *.fmx}

uses udata, uprinc;



procedure TfrmCli.cbCloudChange(Sender: TObject);
begin
  TMSFMXWebGMaps1.MapOptions.ShowBicycling := cbCycle.IsChecked;
  TMSFMXWebGMaps1.MapOptions.ShowTraffic := cbTraffic.IsChecked;
  TMSFMXWebGMaps1.MapOptions.ShowWeather := cbWeather.IsChecked;

end;

procedure TfrmCli.cbCycleChange(Sender: TObject);
begin
  TMSFMXWebGMaps1.MapOptions.ShowBicycling := cbCycle.IsChecked;
  TMSFMXWebGMaps1.MapOptions.ShowTraffic := cbTraffic.IsChecked;
  TMSFMXWebGMaps1.MapOptions.ShowWeather := cbWeather.IsChecked;

end;

procedure TfrmCli.cbPanoChange(Sender: TObject);
begin
  TMSFMXWebGMaps1.MapOptions.ShowBicycling := cbCycle.IsChecked;
  TMSFMXWebGMaps1.MapOptions.ShowTraffic := cbTraffic.IsChecked;
  TMSFMXWebGMaps1.MapOptions.ShowWeather := cbWeather.IsChecked;

end;

procedure TfrmCli.cbStreetViewChange(Sender: TObject);
begin
  TMSFMXWebGMaps1.MapOptions.ShowBicycling := cbCycle.IsChecked;
  TMSFMXWebGMaps1.MapOptions.ShowTraffic := cbTraffic.IsChecked;
  TMSFMXWebGMaps1.MapOptions.ShowWeather := cbWeather.IsChecked;

end;

procedure TfrmCli.cbTrafficChange(Sender: TObject);
begin
  TMSFMXWebGMaps1.MapOptions.ShowBicycling := cbCycle.IsChecked;
  TMSFMXWebGMaps1.MapOptions.ShowTraffic := cbTraffic.IsChecked;
  TMSFMXWebGMaps1.MapOptions.ShowWeather := cbWeather.IsChecked;

end;

procedure TfrmCli.cbWeatherChange(Sender: TObject);
begin
  TMSFMXWebGMaps1.MapOptions.ShowBicycling := cbCycle.IsChecked;
  TMSFMXWebGMaps1.MapOptions.ShowTraffic := cbTraffic.IsChecked;
  TMSFMXWebGMaps1.MapOptions.ShowWeather := cbWeather.IsChecked;

end;

procedure TfrmCli.ClearDirections;
begin
  TMSFMXWebGMaps1.Directions.Clear;
  TMSFMXWebGMaps1.Polylines.Clear;
  TMSFMXWebGMaps1.Polygons.Clear;
  TMSFMXWebGMaps1.Markers.Clear;
  TMSFMXWebGmaps1.DeleteAllMapPolyline;
  TMSFMXWebGmaps1.DeleteAllMapPolygon;
  TMSFMXWebGmaps1.DeleteAllMapMarker;
  TMSFMXWebGMaps1.Directions.Clear;
  lbRoutes.Clear;
  lbRouteDetails.Clear;
end;

procedure TfrmCli.DisplayRouteDetails;
var
  I, J: Integer;
begin
  lbRouteDetails.BeginUpdate;
  lbRouteDetails.Items.Clear;
  if lbRoutes.ItemIndex >= 0 then
  begin
    for J := 0 to TMSFMXWebGMaps1.Directions[lbRoutes.ItemIndex].Legs.Count - 1 do
    begin
      for I := 0 to TMSFMXWebGMaps1.Directions[lbRoutes.ItemIndex].Legs[J].Steps.Count - 1 do
      begin
        lbRouteDetails.Items.Add('<p>'+TMSFMXWebGMaps1.Directions[lbRoutes.ItemIndex].Legs[J].Steps[I].Instructions+'</p>');
      end;
    end;
  end;
 // lbRouteDetails.Items.Text:=StringReplace(lbRouteDetails.Items.Text,'<b>','',[rfReplaceAll,rfIgnoreCase]);
 // lbRouteDetails.Items.Text:=StringReplace(lbRouteDetails.Items.Text,'</b>','',[rfReplaceAll,rfIgnoreCase]);

  lbRouteDetails.EndUpdate;

  lbRouteDetails.Items.SaveToFile(GetHOmePath + PathDelim+'temp.html');
  web.URL:='file://'+GetHOmePath + PathDelim+'temp.html';
  web.Navigate;

end;

procedure TfrmCli.DisplayRoute;
var
  Route: TRoute;
  Marker: TMarker;
  Circle: TMapPolygon;
  Rect: TMapPolygon;
  PolygonItem: TPolygonItem;
//  I, J: Integer;
begin
  TMSFMXWebGMaps1.DeleteAllMapPolyline;
  TMSFMXWebGMaps1.DeleteAllMapPolygon;

  Route := TMSFMXWebGMaps1.Directions[lbRoutes.ItemIndex];

  //Zoom to directions Bounds
  TMSFMXWebGMaps1.MapZoomTo(Route.Bounds);
  TMSFMXWebGMaps1.CreateMapPolyline(Route.Polyline);

  //Add Markers
  TMSFMXWebGMaps1.DeleteAllMapMarker;

  Marker := TMSFMXWebGMaps1.Markers.Add;
  Marker.Draggable := false;
  Marker.Latitude := Route.Legs[0].StartLocation.Latitude;
  Marker.Longitude := Route.Legs[0].StartLocation.Longitude;
  Marker.Title := 'Start Location';
  Marker.MapLabel.Text := 'Start Location: ' + Route.Legs[0].StartAddress;
  TMSFMXWebGMaps1.CreateMapMarker(Marker);

  Marker := TMSFMXWebGMaps1.Markers.Add;
  Marker.Draggable := false;
  Marker.Latitude := Route.Legs[0].EndLocation.Latitude;
  Marker.Longitude := Route.Legs[0].EndLocation.Longitude;
  Marker.Title := 'Destination';
  Marker.MapLabel.Text := '<b>Destination:</b> ' + Route.Legs[0].EndAddress;
  Marker.MapLabel.Color := TAlphaColorRec.Yellow;
  Marker.MapLabel.BorderColor := TAlphaColorRec.Red;
  Marker.MapLabel.FontColor := TAlphaColorRec.Red;
  Marker.MapLabel.Font.Size := 14;
  TMSFMXWebGMaps1.CreateMapMarker(Marker);

  //Add Polygon Circles
//  if CheckBox1.Checked then
{  begin
    PolygonItem := TMSFMXWebGMaps1.Polygons.Add;
    Circle := PolygonItem.Polygon;
    Circle.PolygonType := ptCircle;
    Circle.BackgroundOpacity := 50;
    Circle.BorderWidth := 2;
    Circle.Radius := Integer(Route.Legs[0].Distance div 10);
    Circle.Center.Latitude := Route.Legs[0].StartLocation.Latitude;
    Circle.Center.Longitude := Route.Legs[0].StartLocation.Longitude;
    TMSFMXWebGMaps1.CreateMapPolygon(Circle);

    PolygonItem := TMSFMXWebGMaps1.Polygons.Add;
    Circle := PolygonItem.Polygon;
    Circle.PolygonType := ptCircle;
    Circle.BackgroundOpacity := 50;
    Circle.BorderWidth := 2;
    Circle.Radius := Integer(Route.Legs[0].Distance div 10);
    Circle.Center.Latitude := Route.Legs[0].EndLocation.Latitude;
    Circle.Center.Longitude := Route.Legs[0].EndLocation.Longitude;
    TMSFMXWebGMaps1.CreateMapPolygon(Circle);
  end;}

  //Add Polygon Rectangle
//  if CheckBox2.Checked then
  begin
 {   PolygonItem := TMSFMXWebGMaps1.Polygons.Add;
    Rect := PolygonItem.Polygon;
    Rect.PolygonType := ptRectangle;
    Rect.BackgroundOpacity := 0;
    Rect.BorderWidth := 2;
//    Rect.BorderColor := clBlack;
    Rect.BorderOpacity := 100;
    Rect.Bounds.SouthWest.Latitude := Route.Bounds.SouthWest.Latitude;
    Rect.Bounds.SouthWest.Longitude := Route.Bounds.SouthWest.Longitude;
    Rect.Bounds.NorthEast.Latitude := Route.Bounds.NorthEast.Latitude;
    Rect.Bounds.NorthEast.Longitude := Route.Bounds.NorthEast.Longitude;
    TMSFMXWebGMaps1.CreateMapPolygon(Rect);}
  end;
end;


procedure TfrmCli.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 //_data.lc.Active:=false;
 action:=TCloseAction.caFree;
end;

procedure TfrmCli.FormCreate(Sender: TObject);
var
    SvcEvents : IFMXApplicationEventService;
begin
  TMSFMXWebGmaps1.APIKey:='AIzaSyCIP4DpACBU9xnitmjR4E4soNAmTiqOW5c';
  gend.APIKey:='AIzaSyCIP4DpACBU9xnitmjR4E4soNAmTiqOW5c';

  TMSFMXWebGmaps1.MapOptions.DefaultLatitude:=_data.Latitude;
  TMSFMXWebGmaps1.MapOptions.DefaultLongitude:=_data.Longitude;
  TMSFMXWebGmaps1.MapOptions.Language:= lnPortuguese_Brazil;

end;

procedure TfrmCli.FormShow(Sender: TObject);
begin
 _data.SA1.Close;
 _data.SA1.SQL.Text:='Select * from SA1010 limit 10';
 _data.SA1.Open();
 TMSFMXWebGmaps1.Visible:=false;
end;

procedure TfrmCli.lbRoutesClick(Sender: TObject);
begin
//  tabcontrol1.TabIndex:=2;

  if lbRoutes.IsUpdating then
    Exit;


  DisplayRouteDetails;
  DisplayRoute;

end;

procedure TfrmCli.rbHybridClick(Sender: TObject);
begin
  TMSFMXWebGMaps1.MapOptions.MapType := mtHybrid;
end;

procedure TfrmCli.rbRoadClick(Sender: TObject);
begin
  TMSFMXWebGMaps1.MapOptions.MapType := mtDefault;
end;

procedure TfrmCli.rbSatelliteClick(Sender: TObject);
begin
  TMSFMXWebGMaps1.MapOptions.MapType := mtSatellite;
end;

procedure TfrmCli.rbTerrainClick(Sender: TObject);
begin
  TMSFMXWebGMaps1.MapOptions.MapType := mtTerrain;
end;

procedure TfrmCli.TabControl1Change(Sender: TObject);
begin
 if TabControl1.TabIndex = 2 then
  Begin
     TMSFMXWebGMaps1.Visible:=true;
  End
     else
        Begin
             TMSFMXWebGMaps1.Visible:=false;
        End;


 if TabControl1.TabIndex = 0 then
  Begin
     toolbar1.Visible:=true;
  End
     else
        Begin
             toolbar1.Visible:=false;
        End;


end;

procedure TfrmCli.TMSFMXButton1Click(Sender: TObject);
begin
 _data.SA1.Close;
 _data.SA1.SQL.Clear;
 _data.SA1.SQL.Add('Select * from SA1010');
 _data.SA1.SQL.Add('Where A1_NOME LIKE '+#39+'%'+B.Text+'%'+#39);
 _data.SA1.SQL.Add('OR A1_MUN LIKE '+#39+'%'+B.Text+'%'+#39);
 _data.SA1.SQL.Add('OR A1_BAIRRO LIKE '+#39+'%'+B.Text+'%'+#39);
 _data.SA1.SQL.Add('OR A1_NOME LIKE '+#39+'%'+B.Text+'%'+#39);
 _data.SA1.SQL.Add('OR A1_NREDUZ LIKE '+#39+'%'+B.Text+'%'+#39);
 _data.SA1.SQL.Add('OR A1_EST LIKE '+#39+'%'+B.Text+'%'+#39);

 try
   _data.SA1.Open;
 Except
  on e:Exception do
    Begin
      ShowMEssage(e.Message);
    End;

 end;

end;

procedure TfrmCli.wwDataGrid1ButtonClick(Sender: TObject;
  CellAttributes: TwwCellAttributes; AFieldName: string);
var
  I, J: Integer;
  TotalDistance, TotalDuration: integer;
  Description: string;
begin
  ClearDirections;

  gend.Latitude:=_data.Latitude;
  gend.Longitude:=_data.Longitude;
  gend.LaunchReverseGeocoding;
  //Showmessage(gend.ResultAddress.FormattedAddress);
  TMSFMXWebGMaps1.Routing.Units:=usMetric;
 // ShowMessage(gend.ResultAddress.FormattedAddress);

  TMSFMXWebGmaps1.GetDirections(gend.ResultAddress.FormattedAddress , _data.SA1A1_END.AsString+', '+ _data.SA1A1_BAIRRO.AsString+','+_data.SA1A1_EST.AsString +','+_data.SA1A1_CEP.AsString, true, tmDriving, usMetric,
    lnPortuguese_Brazil, false);

  if TMSFMXWebGmaps1.Directions.Count > 0 then
  begin
    lbRoutes.BeginUpdate;
    lbRoutes.Items.Clear;
    for I := 0 to TMSFMXWebGmaps1.Directions.Count - 1 do
    begin
      Description := TMSFMXWebGMaps1.Directions[I].Summary + ': ';

      if TMSFMXWebGMaps1.Directions[I].Legs.Count = 1 then
        Description := Description
        + TMSFMXWebGMaps1.Directions[I].Legs[0].DistanceText + ', '
        + TMSFMXWebGMaps1.Directions[I].Legs[0].DurationText
      else
      begin
        TotalDistance := 0;
        TotalDuration := 0;
        for J := 0 to TMSFMXWebGMaps1.Directions[I].Legs.Count - 1 do
        begin
          TotalDistance := TotalDistance + TMSFMXWebGMaps1.Directions[I].Legs[J].Distance;
          TotalDuration := TotalDuration + TMSFMXWebGMaps1.Directions[I].Legs[J].Duration;
        end;
        Description := Description +
          FormatFloat('0.00', TotalDistance / 1000) + ' km, '
          + FormatFloat('0.00', (TotalDuration / 60) / 60) + ' h'
      end;
      lbRoutes.Items.Add(Description);
    end;
    lbRoutes.ItemIndex := 0;
    lbRoutes.EndUpdate;

    TMSFMXWebGMaps1.Visible:=true;
    DisplayRouteDetails;
    DisplayRoute;
    TMSFMXWebGMaps1.Visible:=false;

    TabControl1.TabIndex:=1;
  end
  else
    ShowMessage('"From" or "To" location not found.');


 {TMSFMXWebGMaps1.Directions.Clear;
 TMSFMXWebGMaps1.Polylines.Clear;
 TMSFMXWebGMaps1.Polygons.Clear;
 TMSFMXWebGMaps1.Markers.Clear;
 TMSFMXWebGmaps1.DeleteAllMapPolyline;
 TMSFMXWebGmaps1.DeleteAllMapPolygon;
 TMSFMXWebGmaps1.DeleteAllMapMarker;
 TMSFMXWebGMaps1.Directions.Clear;


  gend.Latitude:=_data.Latitude;
  gend.Longitude:=_data.Longitude;
  gend.LaunchReverseGeocoding;

 //TMSFMXWebGmaps1.GetCurrentLocation:=true;
 TMSFMXWebGmaps1.MapOptions.DefaultLatitude:=_data.Latitude;
 TMSFMXWebGmaps1.MapOptions.DefaultLongitude:=_data.Longitude;
 TMSFMXWebGmaps1.GetDirections( gend.ResultAddress.FormattedAddress ,_data.SA1A1_END.AsString+', '+ _data.SA1A1_BAIRRO.AsString+','+_data.SA1A1_EST.AsString +','+_data.SA1A1_CEP.AsString, true, tmDriving, usMetric,
 lnDefault, true);}


end;

end.
