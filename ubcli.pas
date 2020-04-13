unit ubcli;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Objects,
  FMX.StdCtrls, FMX.TMSButton, FMX.ListBox, FMX.Controls.Presentation, FMX.Edit,
  FMX.Layouts, Data.Bind.Components, Data.Bind.DBScope, FMX.wwColumnTypes,
  FMX.wwDataGrid, FMX.wwLayouts, FMX.wwBaseGrid;

type
  Tfrmbcli = class(TForm)
    ScrollBox1: TScrollBox;
    bcBusca: TEdit;
    Image2: TImage;
    Label1: TLabel;
    TMSFMXButton2: TTMSFMXButton;
    wwDataGrid1: TwwDataGrid;
    wwDataGrid1Unbound: TwwGridColumn;
    BSAI: TBindSourceDB;
    wwDataGrid1A1_NOME: TwwGridColumn;
    wwDataGrid1A1_COD: TwwGridColumn;
    wwDataGrid1A1_END: TwwGridColumn;
    wwDataGrid1A1_CGC: TwwGridColumn;
    procedure TMSFMXButton2Click(Sender: TObject);
    procedure wwDataGrid1ButtonClick(Sender: TObject;
      CellAttributes: TwwCellAttributes; AFieldName: string);
  private
    { Private declarations }
  public
  buscar,busca:Boolean;
    { Public declarations }
  end;

var
  frmbcli: Tfrmbcli;

implementation

{$R *.fmx}

uses uAtualiza, udata, uMenu, uprinc, uvenda, uvendaP;

procedure Tfrmbcli.TMSFMXButton2Click(Sender: TObject);
var b,O:String;
begin



 Begin
   b:=' and (A1_NOME like '+#39+bcBusca.text+'%'+#39+' or A1_COD LIKE '+#39+bcBusca.text+'%'+#39+')';
   o:=' A1_NOME';
 End;

   _DATA.SA1.CLOSE;
   _data.SA1.sql.text:='Select * from SA1010 Where 1=1 '+b+' ORDER BY '+O+' limit 100';
   _data.SA1.open;

end;

procedure Tfrmbcli.wwDataGrid1ButtonClick(Sender: TObject;
  CellAttributes: TwwCellAttributes; AFieldName: string);
begin
if _data.emps.Active then
  Begin
    _data.emps.Locate('FILIAL',_data.SA1A1_FILIAL.AsString,[]);
  End;

 if buscar then
 Begin
   frmVendaR.a1_cli.Text:=_data.SA1A1_cod.AsString;

 End
 Else
 if not busca then
 Begin
 _data.SC5c5_cliente.AsString:=_data.SA1A1_cod.AsString;
 _data.sc5c5_zznomec.AsString:=_data.SA1A1_NOME.AsString;
 _data.SC5c5_vend1.AsString:=_data.SA1A1_VEND.AsString;

 if tRIM(_data.SA1A1_CONDPAG.AsString)<> '' then
   _DATA.SC5c5_condpag.AsString:=_data.SA1A1_CONDPAG.AsString;


 End
  Else
   begin
     frmVendaP.bcli.Text:=_data.SA1A1_cod.AsString;
   end;
close;
end;

end.
