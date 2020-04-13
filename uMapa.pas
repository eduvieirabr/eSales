unit uMapa;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs,
  FMX.TMSWebGMapsWebBrowser, FMX.TMSWebGMaps;

type
  TfrmMapa = class(TForm)
    TMSFMXWebGMaps1: TTMSFMXWebGMaps;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmMapa: TfrmMapa;

implementation

{$R *.fmx}

end.
