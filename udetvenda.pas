unit udetvenda;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs,
  FMX.wwColumnTypes, FMX.wwRecPanel, FMX.StdCtrls, FMX.TMSButton, FMX.Layouts,
  FMX.Controls.Presentation,math,db, FMX.Edit, FMX.Objects;

type
  Tfrmdetv = class(TForm)
    Panel1: TPanel;
    ScrollBox2: TScrollBox;
    TMSFMXButton6: TTMSFMXButton;
    TMSFMXButton3: TTMSFMXButton;
    cedit: TEdit;
    Label1: TLabel;
    TMSFMXButton1: TTMSFMXButton;
    Rectangle1: TRectangle;
    wwRecordViewPanel1: TwwRecordViewPanel;
    wwRecordViewPanel1c6_num: TwwRecordViewItem;
    wwRecordViewPanel1c6_item: TwwRecordViewItem;
    wwRecordViewPanel1c6_produto: TwwRecordViewItem;
    wwRecordViewPanel1c6_descri: TwwRecordViewItem;
    wwRecordViewPanel1c6_qtdven: TwwRecordViewItem;
    wwRecordViewPanel1c6_prcven: TwwRecordViewItem;
    wwRecordViewPanel1c6_valor: TwwRecordViewItem;
    wwRecordViewPanel1c6_descont: TwwRecordViewItem;
    wwRecordViewPanel1c6_valdesc: TwwRecordViewItem;
    procedure TMSFMXButton3Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure TMSFMXButton6Click(Sender: TObject);
    procedure TMSFMXButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmdetv: Tfrmdetv;

implementation

{$R *.fmx}

uses uprinc, uvenda, Unit2, udata;

procedure Tfrmdetv.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 action:=TCloseAction.caFree;
end;

procedure Tfrmdetv.TMSFMXButton1Click(Sender: TObject);
begin
if _data.SC6.State = dsBrowse then
    _data.SC6.Edit;
  _data.SC6c6_descont.AsFloat :=
    ROUNDTO(100 - ((StrToFloat(cedit.Text) / _data.SC6c6_valor.AsFloat) *
    100), -2);
  _data.SC6.Post;
  cedit.Text:='';

end;

procedure Tfrmdetv.TMSFMXButton3Click(Sender: TObject);
begin
 Close;
end;

procedure Tfrmdetv.TMSFMXButton6Click(Sender: TObject);
begin
if _data.SC6.State <> dsBrowse then
   _data.SC6.Post;

end;

end.
