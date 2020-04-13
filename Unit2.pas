unit Unit2;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Objects,
  FMX.TabControl, FMX.StdCtrls, FMX.TMSButton, FMX.Edit, FMX.ListBox,
  FMX.Controls.Presentation, FMX.DateTimeCtrls, Data.Bind.Components,
  Data.Bind.DBScope, FMX.wwColumnTypes, FMX.wwDataGrid, FMX.wwLayouts,
  FMX.wwBaseGrid, FMX.Layouts, Data.Bind.Controls, Fmx.Bind.Navigator,
  Data.Bind.EngExt, Fmx.Bind.DBEngExt, System.Rtti, System.Bindings.Outputs,
  Data.Bind.Grid, Fmx.Bind.Editors,db,math, FMX.ScrollBox, FMX.Memo,
  FMX.TMSBaseControl, FMX.TMSBaseGroup, FMX.TMSRadioGroup,
  FMX.TMSWebGMapsCommon, FMX.TMSWebGMapsReverseGeocoding, FMX.MultiView,
  FMX.TMSSignatureCapture;

type
  TForm5 = class(TForm)
    TabControl1: TTabControl;
    TabItem1: TTabItem;
    TabItem2: TTabItem;
    Image1: TImage;
    FramedScrollBox1: TFramedScrollBox;
    TMSFMXButton1: TTMSFMXButton;
    gsc6: TwwDataGrid;
    gsc6c6_item: TwwGridColumn;
    gsc6c6_produto: TwwGridColumn;
    gsc6c6_descri: TwwGridColumn;
    gsc6c6_qtdven: TwwGridColumn;
    gsc6c6_prcven: TwwGridColumn;
    gsc6c6_valor: TwwGridColumn;
    gsc6c6_descont: TwwGridColumn;
    gsc6c6_valdesc: TwwGridColumn;
    gsc6c6_op: TwwGridColumn;
    gsc6c6_qtdlib: TwwGridColumn;
    gsc6c6_um: TwwGridColumn;
    gsc6c6_qtdemp: TwwGridColumn;
    gsc6c6_qtdemp2: TwwGridColumn;
    BindSourceDB4: TBindSourceDB;
    BindNavigator1: TBindNavigator;
    TabItem3: TTabItem;
    C5_MENNOTA: TMemo;
    ScrollBox1: TScrollBox;
    gsc6d_e_l_e_t_: TwwGridColumn;
    gsc6c6_entreg: TwwGridColumn;
    ToolBar1: TToolBar;
    Image4: TImage;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    BindSourceDB1: TBindSourceDB;
    DataSource1: TDataSource;
    C5_VOLUME1: TEdit;
    Label67: TLabel;
    C5_CONDPAG: TComboBox;
    Label14: TLabel;
    A1_NOME: TEdit;
    Label20: TLabel;
    A1_COD: TEdit;
    TMSFMXButton2: TTMSFMXButton;
    c5_data4: TEdit;
    pode: TSwitch;
    sinc: TSwitch;
    C5_TIPO: TComboBox;
    Label13: TLabel;
    C5_NUM: TEdit;
    C5_EMISSAO: TDateEdit;
    C5_FILIAL: TComboBox;
    Label36: TLabel;
    Label22: TLabel;
    Label11: TLabel;
    Label34: TLabel;
    Label19: TLabel;
    Label35: TLabel;
    Label2: TLabel;
    C5_DESC1: TEdit;
    Label7: TLabel;
    Label8: TLabel;
    C5_FRETE: TEdit;
    BindingsList1: TBindingsList;
    LinkControlToField1: TLinkControlToField;
    LinkControlToField2: TLinkControlToField;
    LinkControlToField3: TLinkControlToField;
    LinkControlToField4: TLinkControlToField;
    LinkControlToField5: TLinkControlToField;
    LinkPropertyToFieldText: TLinkPropertyToField;
    LinkPropertyToFieldText2: TLinkPropertyToField;
    LinkControlToField6: TLinkControlToField;
    LinkControlToField7: TLinkControlToField;
    C5_TPFRETE: TComboBox;
    Label10: TLabel;
    gend: TTMSFMXWebGMapsReverseGeocoding;
    Memo1: TMemo;
    MultiView1: TMultiView;
    TMSFMXButton3: TTMSFMXButton;
    TMSFMXButton6: TTMSFMXButton;
    TMSFMXButton4: TTMSFMXButton;
    TMSFMXButton5: TTMSFMXButton;
    assina: TTMSFMXSignatureCapture;
    ToolBar2: TToolBar;
    TMSFMXButton7: TTMSFMXButton;
    pdesc: TSwitch;
    Label1: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure cbTPGChange(Sender: TObject);
    procedure TMSFMXButton3Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure TMSFMXButton1Click(Sender: TObject);
    procedure TabControl1Change(Sender: TObject);
    procedure TMSFMXButton5Click(Sender: TObject);
    procedure TMSFMXButton6Click(Sender: TObject);
    procedure gsc6ButtonClick(Sender: TObject;
      CellAttributes: TwwCellAttributes; AFieldName: string);
    procedure C5_FILIALExit(Sender: TObject);
    procedure TMSFMXButton2Click(Sender: TObject);
    procedure TMSFMXButton4Click(Sender: TObject);
    procedure DataSource1DataChange(Sender: TObject; Field: TField);
    procedure C5_DESC1Exit(Sender: TObject);
    procedure C5_FRETEExit(Sender: TObject);
    procedure C5_TPFRETEChange(Sender: TObject);
    procedure TMSFMXButton7Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form5: TForm5;

implementation

{$R *.fmx}

uses uAtualiza, ubcli, udata, uMenu, uprinc, uvenda, uvendaP, udetvenda;

procedure TForm5.C5_FILIALExit(Sender: TObject);
begin
_data.emps.RecNo:=C5_FILIAL.ItemIndex+1;

if (_data.SC5.State = dsBrowse) then
    _data.SC5.Edit;

    _data.SC5c5_filial.AsString:=_data.empsFILIAL.AsString;

end;

procedure TForm5.C5_FRETEExit(Sender: TObject);
begin
if _data.SC5.State <> dsBrowse then
Begin
 if (_data.SC5C5_TPFRETE.AsString <> 'Cliente') AND (_data.SC5C5_FRETE.Value > 0) then
   Begin
      ShowMessage('Desconto apenas para frete por Cliente');
      _data.SC5C5_FRETE.Value := 0;
      Exit;
   End
   Else
    Begin
      if C5_FRETE.Text.ToDouble > 5 then
       Begin
         _data.SC5C5_FRETE.Value := 5;
         ShowMessage('O desconto de frete não pode ser superior a 5%');
       End;
    End;

 End;
end;

procedure TForm5.cbTPGChange(Sender: TObject);
begin
//_data.tpg.RecNo:=cbTPG.ItemIndex+1;
end;

procedure TForm5.C5_TPFRETEChange(Sender: TObject);
begin
if _data.SC5.State = dsBrowse then
   _data.SC5.Edit;

   //ShowMessage(C5_TPFRETE.Items.Strings[C5_TPFRETE.ItemIndex]);

  _data.SC5C5_TPFRETE.AsString:=C5_TPFRETE.Items.Strings[C5_TPFRETE.ItemIndex];
end;

procedure TForm5.DataSource1DataChange(Sender: TObject; Field: TField);
begin
if _DATA.SC5.active then
 Begin
    _data.auxSC6.Close;
    _data.auxSC6.SQL.Text:='Select round(sum(c6_qtdemp2),2) as PESO, round(sum(c6_valdesc)/sum(c6_qtdemp2),2) as MEDIO from SC6010 where not c6_qtdemp2 is null and C6_NUM='+#39+_DATA.SC5C5_NUM.AsString+#39;
   try
    _data.auxSC6.Open();
   Except

   end;
 End;

end;

procedure TForm5.C5_DESC1Exit(Sender: TObject);
begin
if _data.SC5.State <> dsBrowse then
Begin
 _data.SE4.RecNo := c5_condpag.ItemIndex+1;

 if (_data.SE4E4_CODIGO.AsString <> '001') AND (C5_DESC1.Text.ToDouble > 0) then
   Begin
      ShowMessage('Desconto apenas para pagamento À vista');
      _data.SC5C5_DESC1.Value := 0;
      Exit;
   End
   Else
    Begin
      if C5_DESC1.Text.ToDouble > 15 then
       Begin
         _data.SC5C5_DESC1.Value := 15;
         ShowMessage('O desconto geral não pode ser superior a 15%');
       End;
    End;

 End;

end;

procedure TForm5.FormClose(Sender: TObject; var Action: TCloseAction);
begin
action:=TCloseAction.caFree;
end;

procedure TForm5.FormCreate(Sender: TObject);
var IniFile  : String ;
    emp,fil:String;

procedure ConfiguraRegiaoBR;
var
  WFormatoBR: TFormatSettings;
begin
  WFormatoBR                     := TFormatSettings.Create;
  WFormatoBR.DecimalSeparator    := ',';
  WFormatoBR.ThousandSeparator   := '.';
  WFormatoBR.CurrencyDecimals    := 2;
  WFormatoBR.DateSeparator       := '/';
  WFormatoBR.ShortDateFormat     := 'dd/mm/yyyy';
  WFormatoBR.LongDateFormat      := 'dd/mm/yyyy';
  WFormatoBR.TimeSeparator       := ':';
  WFormatoBR.TimeAMString        := 'AM';
  WFormatoBR.TimePMString        := 'PM';
  WFormatoBR.ShortTimeFormat     := 'hh:nn';
  WFormatoBR.LongTimeFormat      := 'hh:nn:ss';
  WFormatoBR.CurrencyString      := 'R$';
  System.SysUtils.FormatSettings := WFormatoBR;
end;
begin

 { gend.Latitude:=_data.Latitude;
  gend.Longitude:=_data.Longitude;
  gend.LaunchReverseGeocoding;

  memo1.Lines.Clear;
  memo1.Lines.Add('Você está em: ');
  memo1.Lines.Add(gend.ResultAddress.FormattedAddress);}

 //image2.Bitmap:=form1.Image1.Bitmap;
    //c6_entreg.Date:=now;

    _data.SE4.Open();
   _data.SE4.First;

   c5_condpag.Items.Clear;
   while not _data.SE4.Eof do
    Begin
     c5_condpag.Items.Add(_data.SE4E4_DESCRI.AsString);
     _data.SE4.Next;
    End;

     _data.SE4.First;

 //getWindow().addFlags(WindowManager.LayoutParams.FLAG_KEEP_SCREEN_ON);
 ConfiguraRegiaoBR;


  if _data.SC5.Active then
   Begin
    _data.SC6.Close;
    _data.SC6.SQL.Text:='Select * from SC6010 where C6_NUM='+#39+_DATA.SC5C5_NUM.AsString+#39;
    _data.SC6.Open();

      if _data.sc5.FieldByName('C5_OK').AsString ='2' then
         sinc.IsChecked:=true
      else
        sinc.IsChecked:=false;


      if _data.sc5C5_LIBEROK.AsString ='T'  then
         pode.IsChecked:=true
      else
         pode.IsChecked:=false;

    c5_emissao.Date:=now;

    C5_NUM.Text:=_data.SC5C5_NUM.AsString;

    C5_TIPO.ItemIndex:=0;

    if _data.SC5C5_TIPO.AsString ='N' then
        C5_TIPO.ItemIndex:=0;
    if _data.SC5C5_TIPO.AsString ='C' then
        C5_TIPO.ItemIndex:=1;


    A1_COD.Text:=_data.sc5c5_cliente.AsString;
    A1_NOME.Text:=_data.SC5C5_ZZNOMEC.AsString;



        _data.TPG.Open();

     _data.TPG.First;
{     cbTPG.Items.Clear;
     while not _data.TPG.Eof do
      Begin
        cbTPG.Items.Add(_data.TPGDESCRICAO.AsString);
        _data.TPG.Next;
      End;}


    //C5_CONDPAG.ItemIndex:=0;
    C5_VOLUME1.Text:=_data.SC5C5_VOLUME1.AsString;
    C5_MENNOTA.Text:=_data.SC5C5_MENNOTA.AsString;

    _data.emps.close;
    _data.emps.open;

     c5_filial.Items.Clear;
    _data.emps.First;

    while not _data.emps.Eof do
     Begin
      c5_filial.Items.Add(_data.emps.FieldByName('NOME').AsString);
      _data.emps.Next;
     End;


    _data.emps.Locate('FILIAL',_DATA.SC5C5_FILIAL.AsString,[]);
    c5_filial.ItemIndex:=_data.emps.RecNo-1;


     {if _data.tpg.Locate('CODIGO', _data.SC5c5_numorg.AsString,[]) then
       cbTPG.ItemIndex:=_data.tpg.RecNo-1; }

    if  _data.SE4.Locate('E4_CODIGO',_data.SC5C5_CONDPAG.AsString,[]) then
       c5_condpag.ItemIndex:=_data.SE4.RecNo-1;


   End;
end;

procedure TForm5.FormShow(Sender: TObject);
begin
      if _data.sc5C5_DATA3.AsString ='T'  then
         pdesc.IsChecked:=true
      else
         pdesc.IsChecked:=false;
end;

procedure TForm5.gsc6ButtonClick(Sender: TObject;
  CellAttributes: TwwCellAttributes; AFieldName: string);
begin
Application.CreateForm(Tfrmdetv, frmdetv);
if _data.SC6.State = dsBrowse then
   _data.SC6.Edit;

frmdetv.Show;
end;

procedure TForm5.TabControl1Change(Sender: TObject);
begin
    _data.SC6.Close;
    _data.SC6.SQL.Text:='Select * from SC6010 where C6_NUM='+#39+_DATA.SC5C5_NUM.AsString+#39;
    _data.SC6.Open();

    if tabControl1.TabIndex = 2 then
      Begin
        if fileExists(GetHOmePath + PathDelim+'ass'+_data.SC5c5_num.AsString+'.ass') then
            assina.LoadFromFile(GetHOmePath + PathDelim+'ass'+_data.SC5c5_num.AsString+'.ass')
              else
                assina.Clear;
      End;

end;

procedure TForm5.TMSFMXButton1Click(Sender: TObject);
begin
  Application.CreateForm(TfrmVendaR, frmVendaR);
  frmVendar._novo:=false;
  frmVendar.a1_cli.Text:=_data.SC5c5_cliente.AsString;
  frmVendaR.Show;
end;

procedure TForm5.TMSFMXButton2Click(Sender: TObject);
begin
  Application.CreateForm(Tfrmbcli, frmbcli);

  frmbcli.Show;
end;

procedure TForm5.TMSFMXButton3Click(Sender: TObject);
Var val2,resto,val1:Real;
begin
 _data.AUX.Close;
 _data.AUX.SQL.Text:='Select sum(C6_SLDALIB/C6_QTDVEN) as MO, sum(C6_QTDEMP2) as PESO, (sum(C6_VALDESC)+sum(ifnull(C6_SLDALIB,0))) as TOT from SC6010 where c6_num='+#39+ _data.SC5C5_NUM.AsString +#39;
 _data.AUX.Open();

 if _data.SC5.State = dsBrowse then
   _data.SC5.Edit;


if not _data.AUX.FieldByName('MO').IsNull then
 _data.SC5C5_MO.AsFloat:=ROUNDTO(_data.AUX.FieldByName('MO').AsFloat,-2);


if not _data.AUX.FieldByName('TOT').IsNull then
 _data.SC5C5_VOLUME1.AsFloat:=ROUNDTO(_data.AUX.FieldByName('TOT').AsFloat,-2);

if _DATA.SC5C5_DESC1.AsFloat > 0 then
 _data.SC5C5_VOLUME1.AsFloat:=ROUNDTO(_data.SC5C5_VOLUME1.AsFloat - (_data.SC5C5_VOLUME1.AsFloat * (_DATA.SC5C5_DESC1.AsFloat/100)),-2);

if _DATA.SC5C5_FRETE.AsFloat > 0 then
 _data.SC5C5_VOLUME1.AsFloat:=ROUNDTO(_data.SC5C5_VOLUME1.AsFloat - (_data.SC5C5_VOLUME1.AsFloat * (_DATA.SC5C5_FRETE.AsFloat/100)),-2);

if (not _data.AUX.FieldByName('PESO').IsNull) and (_data.AUX.FieldByName('PESO').AsFloat > 0) then
begin
 _data.SC5C5_PESOL.AsFloat:=ROUNDTO(_data.AUX.FieldByName('PESO').AsFloat,-2);
 _data.SC5C5_VOLUME4.AsFloat:=ROUNDTO(_data.AUX.FieldByName('TOT').AsFloat / _data.AUX.FieldByName('PESO').AsFloat,-2);
end
else
begin
 _data.SC5C5_PESOL.AsFloat:=0;
 _data.SC5C5_VOLUME4.AsFloat:=0;
end;

 _data.SE4.RecNo := c5_condpag.ItemIndex+1;


 IF _data.emps.Locate('FILIAL',_DATA.SC5C5_FILIAL.AsString,[]) THEN
   c5_filial.ItemIndex:=_data.emps.RecNo-1;

if c5_filial.ItemIndex < 0 then
  BEgin
    ShowMessage('Escolha uma empresa');
    Exit;
  End;



if _data.SC5.State = dsBrowse then
   _data.SC5.Edit;

//  _DATA.SC5c5_vend1.AsString:=codvend;
  _data.SC5C5_NUM.AsString:=c5_num.Text;
 // _data.SC5C5_FILIAL.AsString:='001';
  _data.SC5C5_TIPO.AsString:=copy(c5_tipo.Items.Strings[c5_tipo.ItemIndex],1,1);
  _data.SC5C5_CLIENTE.AsString:=a1_cod.Text;
  _data.SC5C5_ZZNOMEC.AsString:=a1_nome.Text;
  _data.SC5C5_EMISSAO.AsString:=formatDateTime('YYYYMMDD',c5_emissao.Date);

  _data.SC5C5_CONDPAG.AsString:=_DATA.SE4E4_CODIGO.AsString;

  _data.SC5c5_numorg.AsString:=_DATA.TPGCODIGO.AsString;
  _data.SC5C5_VOLUME1.AsString:=C5_VOLUME1.Text;
  _data.SC5C5_MENNOTA.AsString :=C5_MENNOTA.Lines.Text;
  _data.SC5C5_OK.AsString:='0';

//  ShowMessage(_data.empsFILIAL.AsString);
  _data.SC5C5_FILIAL.AsString:=_data.empsFILIAL.AsString;
//  c5_filial.ItemIndex:=_data.emps.RecNo-1;


  if pode.IsChecked then
    _data.sc5C5_LIBEROK.AsString:='T'
  else
    _data.sc5C5_LIBEROK.AsString:='F';


  if pdesc.IsChecked then
    _data.sc5C5_DATA3.AsString:='T'
  else
    _data.sc5C5_DATA3.AsString:='F';

  _data.SC5.Post;


  _DATA.SC6.First;

  while not _data.SC6.Eof do
    begin
     _data.SC6.edit;
    //Analise 1
    with _data do
     BEgin

          _data.AUX.Close;
          _data.AUX.SQL.Text:='Select * from regra where codigo = '+#39+_data.SC6C6_PRODUTO.AsString+#39+' and CLIENTE ='+#39+_DATA.SC5C5_CLIENTE.AsString+#39+' and TIPO ='+#39+'UN'+#39;
          _data.AUX.Open();

          if _DATA.AUX.RecordCount > 0 then
           Begin
          //    ShowMessage('Achou');
               val1:=aux.FieldByName('VALOR').AsFloat;
               val2:=_data.SC6C6_QTDVEN.AsFloat+1;
               resto:=(val2 / val1);

               _data.SC6C6_VALOR.Value:=roundTo(_data.SC6C6_PRCVEN.Value * (_data.SC6C6_QTDVEN.Value),-2);

               if resto > 1 then
                 Begin
                   _data.SC6C6_VALDESC.Value:=RoundTo(_data.SC6C6_VALOR.Value - ((aux.FieldByName('DESCONTO').AsInteger * _data.SC6C6_PRCVEN.Value)*trunc(resto)) ,-2);
                   _data.SC6c6_descont.Value:=(((_data.SC6C6_VALOR.Value - _data.SC6C6_VALDESC.Value))/_data.SC6C6_VALOR.Value) *100;
                 End
                Else
                 _data.SC6C6_VALDESC.Value:=RoundTo(_data.SC6C6_PRCVEN.Value * _data.SC6C6_QTDVEN.Value,-2);

               _data.SC6C6_QTDEMP2.AsFloat:= _data.SC6C6_QTDEMP.AsFloat * _data.SC6C6_QTDVEN.Value;
               Exit;
           End;

           _data.AUX.Close;
           _data.AUX.SQL.Text:='Select * from regra where codigo = '+#39+_data.SC6C6_PRODUTO.AsString+#39+' and CLIENTE ='+#39+_DATA.SC5C5_CLIENTE.AsString+#39+' and TIPO ='+#39+'QU'+#39+' AND VALOR >= '+TRUNC(_data.SC6C6_QTDVEN.AsFloat).ToString()+' order by VALOR ASC';
           _data.AUX.Open();

          if _DATA.AUX.RecordCount = 0 then
           BEGIN
           _data.AUX.Close;
           _data.AUX.SQL.Text:='Select * from regra where codigo = '+#39+_data.SC6C6_PRODUTO.AsString+#39+'  and CLIENTE = '+#39+#39+' and TIPO ='+#39+'QU'+#39+' AND VALOR >= '+TRUNC(_data.SC6C6_QTDVEN.AsFloat).ToString()+' order by VALOR ASC';
           _data.AUX.Open();

           eND;

          if _DATA.AUX.RecordCount > 0 then
           Begin

                val1:=aux.FieldByName('DESCONTO').AsFloat;
               _data.SC6C6_PRCVEN.Value:=VAL1;

           End;


           Begin
           _data.SC6C6_VALOR.Value:=_data.SC6C6_PRCVEN.Value * _data.SC6C6_QTDVEN.Value;

          IF _data.SC6C6_DESCONT.Value > 0 THEN
           _data.SC6C6_VALDESC.Value:=RoundTo(_data.SC6C6_VALOR.Value - (_data.SC6C6_VALOR.Value * (_data.SC6C6_DESCONT.Value/100)),-2)
          ELSE
            _data.SC6C6_VALDESC.Value:=RoundTo(_data.SC6C6_VALOR.Value,-2);
            _data.SC6C6_QTDEMP2.AsFloat:= _data.SC6C6_QTDEMP.AsFloat * _data.SC6C6_QTDVEN.Value;
           End;
          End;

    //Analise 1

       _data.AUX.Close;
       _data.AUX.SQL.Text:='Select * from regra where codigo = '+#39+_data.SC6C6_PRODUTO.AsString+#39+' and CLIENTE ='+#39+_DATA.SC5C5_CLIENTE.AsString+#39+' and TIPO ='+#39+'PT'+#39+' AND VALOR <= '+TRUNC(_data.auxSC6PESO.AsFloat).ToString()+' order by VALOR desc';
       _data.AUX.Open();

      if _DATA.AUX.RecordCount = 0 then
       BEGIN
         _data.AUX.Close;
         _data.AUX.SQL.Text:='Select * from regra where codigo = '+#39+_data.SC6C6_PRODUTO.AsString+#39+'  and CLIENTE = '+#39+#39+' and TIPO ='+#39+'PT'+#39+' AND VALOR <= '+TRUNC(_data.auxSC6PESO.AsFloat).ToString()+' order by VALOR desc';
         _data.AUX.Open();
       eND;


          if _DATA.AUX.RecordCount > 0 then
           Begin

                val1:=_DATA.aux.FieldByName('DESCONTO').AsFloat;

               _data.SC6c6_descont.AsFloat:=val1;

           End;

           _data.SC6C6_VALOR.Value:=_data.SC6C6_PRCVEN.Value * _data.SC6C6_QTDVEN.Value;


          IF _data.SC6C6_DESCONT.Value > 0 THEN
           _data.SC6C6_VALDESC.Value:=RoundTo(_data.SC6C6_VALOR.Value - (_data.SC6C6_VALOR.Value * (_data.SC6C6_DESCONT.Value/100)),-2)
          ELSE
           _data.SC6C6_VALDESC.Value:=RoundTo(_data.SC6C6_VALOR.Value,-2);



       _data.SC6.post;
      _data.SC6.Next;
    end;


end;

procedure TForm5.TMSFMXButton4Click(Sender: TObject);
begin
 if _data.SC5.State <> dsBrowse  then
    _data.SC5.post;

 close;
end;

procedure TForm5.TMSFMXButton5Click(Sender: TObject);
var i:Integer;
begin
  MessageDlg('Você deseja gerar um novo pedido igual a este?',
    System.UITypes.TMsgDlgType.mtInformation, [System.UITypes.TMsgDlgBtn.mbYes,
    System.UITypes.TMsgDlgBtn.mbNo], 0,
    procedure(const AResult: System.UITypes.TModalResult)
    begin
      case AResult of
        mrYES:
          begin
            _DATA.cSC5.Close;
            _data.cSC5.SQL.Text:='Select * from sc5010 where c5_num='+#39+_data.SC5c5_num.AsString+#39;
            _data.cSC5.Open();


            _DATA.cSC6.Close;
            _data.cSC6.SQL.Text:='Select * from sc6010 where c6_num='+#39+_data.SC5c5_num.AsString+#39;
            _data.cSC6.Open();


            _data.AUX.Close;
            _data.AUX.SQL.Text := 'Select MAX(C5_NUM) AS NUM FROM SC5010';
            _data.AUX.Open();


            _data.sc5.Append;
            i:=0;

            while i < _data.cSC5.FieldCount do
              Begin
                _data.SC5.FieldByName(_data.cSC5.Fields[i].FieldName).Value:=_data.cSC5.Fields[i].Value;
                i:=i+1;
              End;

              _data.SC5c5_num.Text := FormatFloat('#000000',_data.AUX.FieldByName('NUM').AsInteger + 1);
              _data.SC5c5_emissao.AsString:=FormatDateTime('yyyymmdd',date);

               if pdesc.IsChecked then
                  _data.sc5C5_DATA3.AsString:='T'
              else
                  _data.sc5C5_DATA3.AsString:='F';



              _data.SC5.Post;

              _data.cSC6.First;

              while not _data.cSC6.Eof do
               Begin
                  try
                  _data.sc6.Append;
                  i:=0;

                  while i < _data.cSC6.FieldCount do
                    Begin
                      _data.SC6.FieldByName(_data.cSC6.Fields[i].FieldName).Value:=_data.cSC6.Fields[i].Value;
                      i:=i+1;
                    End;

                    _data.SC6c6_num.AsString := _data.SC5c5_num.AsString;


                    _data.SC6.Post;
                   except
                   on e:Exception do
                    Begin
                      ShowMEssage(e.Message);
                    End;
                   end;
                _data.cSC6.Next;
               End;

              ShowMessage('Duplicação Finalizada');
            // caso sim
          end;
        mrNo:
          // caso não
        end;
      end);
    end;

    procedure TForm5.TMSFMXButton6Click(Sender: TObject);
begin
 TMSFMXButton3Click(TMSFMXButton3);

 if _data.SC5.State = dsBrowse then
    _data.SC5.Edit;

  if pode.IsChecked then
    _data.sc5C5_LIBEROK.AsString:='T'
  else
    _data.sc5C5_LIBEROK.AsString:='F';


    try

                     if pdesc.IsChecked then
                        _data.sc5C5_DATA3.AsString:='T'
                     else
                        _data.sc5C5_DATA3.AsString:='F';

     _data.SC5.Post;
    Except

    end;

 {if _data.SC6.State <> dsBrowse then
    _data.SC6.Post;

    _data.SC6.Close;
    _data.SC6.SQL.Text:='Select * from SC6010 where C6_NUM='+#39+_DATA.SC5C5_NUM.AsString+#39;
    _data.SC6.Open();

  if _data.SC6.RecordCount > 0 then
  Begin
    _data.SC6.First;

    while not _data.SC6.Eof do
     Begin
      _data.SC6.Edit;
      _data.SC6c6_filial.AsString:=_data.SC5c5_filial.AsString;
      _data.SC6.Post;
      _data.SC6.Next;
     End;

  End;}
end;

procedure TForm5.TMSFMXButton7Click(Sender: TObject);
begin
assina.SaveToFile(GetHOmePath + PathDelim+'ass'+_data.SC5c5_num.AsString+'.ass');
end;

end.
