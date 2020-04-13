program eSales;

uses
  System.StartUpCopy,
  FMX.Forms,
  uprinc in 'uprinc.pas' {Form1},
  udata in 'udata.pas' {_data: TDataModule},
  uMenu in 'uMenu.pas' {frmMenu},
  uAtualiza in 'uAtualiza.pas' {frmAtualiza},
  uvenda in 'uvenda.pas' {frmVendaR},
  ubcli in 'ubcli.pas' {frmbcli},
  uvendaP in 'uvendaP.pas' {frmVendaP},
  Unit2 in 'Unit2.pas' {Form5},
  udetvenda in 'udetvenda.pas' {frmdetv},
  ucatalago in 'ucatalago.pas' {frmCat},
  UcLIENTE in 'UcLIENTE.pas' {frmCli},
  uMapa in 'uMapa.pas' {frmMapa};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(T_data, _data);
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
