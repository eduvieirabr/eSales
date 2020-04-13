unit ucatalago;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.StdCtrls,
  FMX.Objects, FMX.Controls.Presentation, FMX.TMSCustomEdit, FMX.TMSSearchEdit,
  FMX.TMSBaseControl, FMX.TMSTileList, FMX.TMSButton, Data.DB, Datasnap.DBClient,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  FMX.MultiView, FMX.Edit, FMX.EditBox, FMX.SpinBox,System.Threading,
  FMX.TMSGraphicCheckLabel, System.Actions, FMX.ActnList, FMX.StdActns,
  FMX.MediaLibrary.Actions, System.Rtti, Data.Bind.EngExt, Fmx.Bind.DBEngExt,
  Fmx.Bind.Grid, System.Bindings.Outputs, Fmx.Bind.Editors,
  Data.Bind.Components, Data.Bind.Grid, Data.Bind.DBScope, FMX.Layouts, FMX.Grid,
  FMX.TMSSlider, Data.Bind.Controls, Fmx.Bind.Navigator, FireDAC.UI.Intf,
  FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Phys, FireDAC.Phys.SQLite,
  FireDAC.Phys.SQLiteDef, FireDAC.Stan.ExprFuncs, FireDAC.FMXUI.Wait,
  FireDAC.Phys.SQLiteVDataSet, FMX.NumberBox, FMX.ListBox, FMX.Grid.Style,
  FMX.ScrollBox;

type
  TfrmCat = class(TForm)
    tProds: TTMSFMXTileList;
    prod: TFDQuery;
    MultiView1: TMultiView;
    sLinhas: TSpinBox;
    Label1: TLabel;
    sColunas: TSpinBox;
    Label2: TLabel;
    saldo: TFDQuery;
    ActionList1: TActionList;
    TakePhotoFromCameraAction1: TTakePhotoFromCameraAction;
    carrinho: TFDMemTable;
    carrinhoCODIGO: TStringField;
    carrinhoDESCRICAO: TStringField;
    carrinhoQTD: TFloatField;
    carrinhoPRECO: TFloatField;
    Grid1: TGrid;
    BindSourceDB1: TBindSourceDB;
    BindingsList1: TBindingsList;
    LinkGridToDataSourceBindSourceDB1: TLinkGridToDataSource;
    Panel3: TPanel;
    TMSFMXButton2: TTMSFMXButton;
    sClique: TTMSFMXSlider;
    Label3: TLabel;
    BindNavigator1: TBindNavigator;
    Label4: TLabel;
    lblTot: TLabel;
    FdCon: TFDConnection;
    localSQL: TFDLocalSQL;
    _tot: TFDQuery;
    BindSourceDB2: TBindSourceDB;
    LinkPropertyToFieldText: TLinkPropertyToField;
    carrinhoTOTAL: TFloatField;
    Panel4: TPanel;
    Button1: TButton;
    Label8: TLabel;
    Button3: TButton;
    buscaCli: TButton;
    bCesta: TTMSFMXButton;
    eBusca: TTMSFMXSearchEdit;
    Button2: TButton;
    MultiView3: TMultiView;
    ScrollBox1: TScrollBox;
    Label5: TLabel;
    Edit1: TEdit;
    Button5: TButton;
    bCli: TButton;
    Grid2: TGrid;
    Button4: TButton;
    lbCli: TLabel;
    carrinhoPESO: TFloatField;
    lblPeso: TLabel;
    Label7: TLabel;
    LinkPropertyToFieldText2: TLinkPropertyToField;
    carrinhoPESOU: TFloatField;
    info: TCalloutPanel;
    Panel1: TPanel;
    lblProd: TLabel;
    lblPreco: TLabel;
    lblEstoque: TLabel;
    Panel2: TPanel;
    iCar: TTMSFMXGraphicCheckLabel;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    Image2: TImageControl;
    QClique: TNumberBox;
    TMSFMXButton1: TTMSFMXButton;
    sQuant: TEdit;
    Button6: TButton;
    Button7: TButton;
    Label36: TLabel;
    C5_FILIAL: TComboBox;
    carrinhoUM: TStringField;
    Image1: TImage;
    BindSourceDB3: TBindSourceDB;
    LinkGridToDataSource1: TLinkGridToDataSource;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure sLinhasChange(Sender: TObject);
    procedure sColunasChange(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure tProdsTileClick(Sender: TObject; ATile: TTMSFMXTile);
    procedure TakePhotoFromCameraAction1DidFinishTaking(Image: TBitmap);
    procedure SpeedButton3Click(Sender: TObject);
    procedure iCarClick(Sender: TObject);
    procedure TMSFMXButton2Click(Sender: TObject);
    procedure buscaCliClick(Sender: TObject);
    procedure carrinhoBeforePost(DataSet: TDataSet);
    procedure carrinhoBeforeDelete(DataSet: TDataSet);
    procedure carrinhoAfterCancel(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure carrinhoAfterDelete(DataSet: TDataSet);
    procedure carrinhoAfterPost(DataSet: TDataSet);
    procedure MultiView2Shown(Sender: TObject);
    procedure bCliClick(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    CLI:sTRING;
  end;

var
  frmCat: TfrmCat;
  tot:Double;
  _it:Integer;
implementation

{$R *.fmx}

uses uData, uPrinc, uAtualiza, ubcli, udetvenda, uMenu, Unit2, uvenda, uvendaP;

procedure TfrmCat.bCliClick(Sender: TObject);
begin
 _data.SA1.Close;
 _data.SA1.SQL.Text:='Select * from sa1010 where a1_nome like '+#39+edit1.Text+'%'+#39;
 _data.SA1.Open();
end;

procedure TfrmCat.Button1Click(Sender: TObject);
begin
 frmCat.close;
end;

procedure TfrmCat.Button2Click(Sender: TObject);
var i:Integer;
aTask: ITask;
cl:String;
begin
//  if eBusca.Text.Length > 4 then



  if not _data.SA1.Active then
    Begin
      ShowMessage('Por favor, selecione o cliente');
      Exit;
    End;

  if _data.SA1.RecordCount = 0  then
    Begin
      ShowMessage('Por favor, selecione o cliente');
      Exit;
    End;


//aTask := TTask.Create (procedure ()
   begin

    //ind1.Visible:=true;
     //cl:=' and DA1_CODTAB = '+#39+_data.SA1.FieldByName('A1_COD').AsString+#39;
       CL:='';
     prod.Close;
     prod.SQL.Text:='Select * from da1010 where (da1_descri like '+#39+eBusca.Text+'%'+#39+' or DA1_CODPRO LIKE '+#39+eBusca.Text+'%'+#39+') '+cl+' order by da1_descri limit 50';
     try
       prod.Open();

       if prod.RecordCount = 0 then
         Begin
           prod.Close;
           prod.SQL.Text:='Select * from da1010 where (da1_descri like '+#39+eBusca.Text+'%'+#39+' or DA1_CODPRO LIKE '+#39+eBusca.Text+'%'+#39+') and DA1_CODTAB='+#39+#39+' order by da1_descri limit 50';
           prod.Open();
        End;


       tprods.Tiles.Clear;

       i:=0;
       while not prod.Eof do
        Begin
         try
          saldo.Close;
          saldo.SQL.Text:='Select * from SB2010 where b2_cod = '#39+prod.FieldByName('da1_codpro').AsString+#39;
          saldo.Open();



          tprods.Tiles.Add;
          tProds.Tiles[i].Caption:=prod.FieldByName('da1_DESCri').AsString;

       if carrinho.Active then
         if carrinho.Locate('CODIGO',prod.FieldByName('DA1_CODPRO').AsString,[]) then
          tProds.Tiles[i].Badge:=CarrinhoQtd.AsString+' - Carrinho';

           if fileExists(GetHomePath + PathDelim + 'icons' +PathDelim+prod.FieldByName('DA1_CODPRO').AsString+'.jpg') then
             tProds.Tiles[i].Bitmap.LoadFromFile(GetHomePath + PathDelim + 'icons' +PathDelim+prod.FieldByName('DA1_CODPRO').AsString+'.jpg')
           else
             tProds.Tiles[i].Bitmap:=Image1.Bitmap;

            tProds.Tiles[i].Notes:='Itens estoque:'+saldo.FieldByName('b2_qatu').AsString+#10+'Preço unitario: R$ '+FormatFloat(',.0',prod.FieldByName('DA1_PRCVEN').AsFloat);
         except
         on e:Exception do
          Begin
           // ShowMessage(e.Message);
          End;
         end;
          prod.Next;
          i:=i+1;
        End;
     { if prod.RecordCount > 0 then
         tBusca.Visible:=false;}
     Except
     on e:Exception do
      Begin
        ShowMessage(e.Message);
      End;

     end;
        //ind1.Visible:=false;
   end;//);
 //  aTask.Start;

end;

procedure TfrmCat.Button4Click(Sender: TObject);
begin
 lbCli.Text:=_data.SA1.FieldByName('A1_NOME').AsString;
 CLI:=_data.SA1.FieldByName('A1_COD').AsString;
 MultiView3.HideMaster;
end;

procedure TfrmCat.Button6Click(Sender: TObject);
begin
 if sQuant.Text.ToInteger > 1 then
    sQuant.Text:=IntToStr(sQuant.Text.ToInteger()-1);
end;

procedure TfrmCat.Button7Click(Sender: TObject);
begin
    sQuant.Text:=IntToStr(sQuant.Text.ToInteger()+1);

end;

procedure TfrmCat.buscaCliClick(Sender: TObject);
begin
 //tBusca.Visible:=true;
end;

procedure TfrmCat.carrinhoAfterCancel(DataSet: TDataSet);
begin
   tot:=tot-carriNhoTotal.AsFloat;
end;

procedure TfrmCat.carrinhoAfterDelete(DataSet: TDataSet);
begin
 try
   _tot.Close();
   _tot.Open();
  // ShowMessage(_tot.RecordCount.ToString()+' - '+_tot.Fields[0].AsString);
   lblTOt.Text:='R$ '+_tot.Fields[0].AsString;
 Except
   on e:Exception do
    Begin
      ShowMessage(e.Message);
    End;
 end;
end;

procedure TfrmCat.carrinhoAfterPost(DataSet: TDataSet);
begin
  try
   _tot.Close();
   _tot.Open();
  // ShowMessage(_tot.RecordCount.ToString()+' - '+_tot.Fields[0].AsString);
      lblTOt.Text:='R$ '+_tot.Fields[0].AsString;
 Except
   on e:Exception do
    Begin
      ShowMessage(e.Message);
    End;
 end;
end;

procedure TfrmCat.carrinhoBeforeDelete(DataSet: TDataSet);
begin
  try
   _tot.Close();
   _tot.Open();
  // ShowMessage(_tot.RecordCount.ToString()+' - '+_tot.Fields[0].AsString);
   if trim(_tot.FieldByName('TOT').AsString) <> '' then
     //lblTot.Text:='R$ '+FormatFloat('#.,',_tot.FieldByName('TOT').AsFloat);
     lblTot.Text:='R$ '+_tot.FieldByName('TOT').AsString;
 Except
   on e:Exception do
    Begin
      ShowMessage(e.Message);
    End;
 end;
end;

procedure TfrmCat.carrinhoBeforePost(DataSet: TDataSet);
begin
 carriNhoTotal.AsFloat:=carrinhoPRECO.AsFloat * carrinhoQTD.AsFloat;
 carriNhoPESO.AsFloat:=carrinhoPESOU.AsFloat * carrinhoQTD.AsFloat;
// tot:=tot+ carriNhoTotal.AsFloat;


end;

procedure TfrmCat.FormCreate(Sender: TObject);
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
 ConfiguraRegiaoBR;
 carrinho.Open;

 FdCon.Close();
 LocalSQL.Active:=true;
 FdCon.OPen;

 {    c5_filial.Items.Clear;
    _data.emps.First;

    while not _data.emps.Eof do
     Begin
      c5_filial.Items.Add(_data.emps.FieldByName('NOME').AsString);
      _data.emps.Next;
     End; }


end;

procedure TfrmCat.iCarClick(Sender: TObject);
begin
 if icar.Checked then
  Begin
    carrinho.Append;
    carrinho.FieldByName('CODIGO').AsString:=prod.FieldByName('da1_codpro').AsString;
    carrinho.FieldByName('DESCRICAO').AsString:=prod.FieldByName('da1_DESCRI').AsString;
    CARRINHO.FieldByName('QTD').AsString:=sQuant.Text;
    carrinho.FieldByName('PRECO').AsFloat:=prod.FieldByName('DA1_PRCVEN').AsFloat;

    _data.SB1.Close;
    _data.SB1.SQL.Text:='Select * from SB1010 WHERE B1_COD = '+#39+prod.FieldByName('da1_codpro').AsString+#39;
    _data.SB1.Open();

    CARRINHOPESOU.AsFloat:=_data.SB1.FieldByName('b1_peso').AsFloat;
    CARRINHOUM.AsString:=_data.SB1.FieldByName('b1_um').AsString;
    carrinho.Post;
    tProds.Tiles[_it].Badge:=CarrinhoQtd.AsString+' - Carrinho'
  End
 Else
  Begin
    sQuant.Text:='0';
    if carrinho.Locate('CODIGO',prod.FieldByName('da1_codpro').AsString,[]) then
      Begin
       carrinho.Delete;
       tProds.Tiles[carrinho.RecNo-1].Badge:='';

      End;

  End;
end;

procedure TfrmCat.MultiView2Shown(Sender: TObject);
begin
 carrinho.First;
 tot:=0;
 while not carrinho.Eof do
  Begin
    tot:=tot+carrinhoTOTAL.AsFloat;
    carrinho.Next;
  End;
  lblTot.Text:='R$ '+FormatFloat('#.,',tot);
end;

procedure TfrmCat.sColunasChange(Sender: TObject);
begin
 tProds.Columns:=sColunas.Text.ToInteger();
end;

procedure TfrmCat.sLinhasChange(Sender: TObject);
begin
 tProds.Rows:=sLinhas.Text.ToInteger();
end;

procedure TfrmCat.SpeedButton1Click(Sender: TObject);
begin
 info.Visible:=false;
end;

procedure TfrmCat.SpeedButton3Click(Sender: TObject);
begin
 if not DirectoryExists(GetHomePath + PathDelim + 'icons') then
     CreateDir(GetHomePath + PathDelim + 'icons');

  if image2.Bitmap <> nil then
     image2.Bitmap.SaveToFile(GetHomePath + PathDelim + 'icons' +PathDelim+prod.FieldByName('DA1_CODPRO').AsString+'.jpg');
end;

procedure TfrmCat.TakePhotoFromCameraAction1DidFinishTaking(Image: TBitmap);
begin
 image2.Bitmap:=Image;
end;

procedure TfrmCat.TMSFMXButton2Click(Sender: TObject);
var i:Integer;
begin

    _data.SC5.Close;
    if _data.SC5.Active = false then
    Begin

      _data.SC5.SQL.Text := 'Select * from sc5010 where 1=2';
      _data.SC5.Open;
    End;

    TRY
      _data.SC5.Insert;
    eXCEPT
      TRY
        _data.SC5.cancel;
        _data.SC5.append;
      eXCEPT

      END;

    END;
    _data.prep(_data.SC5);

    _data.SC5c5_cliente.AsString := _data.SA1A1_cod.AsString;
    _data.sc5c5_zznomec.AsString := _data.SA1A1_NOME.AsString;
    _data.SC5c5_vend1.AsString := _data.SA1A1_VEND.AsString;

    if trim(_data.SA1A1_CONDPAG.AsString) <> '' then
      _data.SC5c5_condpag.AsString := _data.SA1A1_CONDPAG.AsString;

    _data.AUX.Close;
    _data.AUX.SQL.Text := 'Select MAX(C5_NUM) AS NUM FROM SC5010';
    _data.AUX.Open();

    _data.SC6.Close;
    _data.SC6.SQL.Text := 'Select * from SC6010 where 1=2';
    _data.SC6.Open();

    if _data.AUX.Active then
    Begin
      if _data.AUX.FieldByName('NUM').AsString <> '' then
        _data.SC5c5_num.Text := FormatFloat('#000000',
          _data.AUX.FieldByName('NUM').AsInteger + 1)
      else
        _data.SC5c5_num.Text := '000001';
    End
    else
      _data.SC5c5_num.Text := '000001';

    Application.CreateForm(TForm5, Form5);
    Carrinho.First;

    i := 1;

  while not Carrinho.eof do
  Begin
    TRY


      _data.SC6.append;
      _data.SC6c6_produto.AsString := carrinhoCODIGO.AsString;

      if _data.DA1DA1_PRCBAS.AsFloat > 0 then
      bEGIN
        _data.SC6c6_servic.AsString := 'True';
        _data.SC6c6_mopc.AsString := '0000';
      end;

      _data.SB1.Close;
      _data.SB1.SQL.Text := 'Select * from SB1010 WHERE B1_COD = ' + #39 +
        _data.SC6c6_produto.AsString + #39;
      _data.SB1.Open();


      _data.SC6c6_qtdven.AsFloat := carrinhoQTD.AsFloat;
      _data.SC6c6_qtdemp.AsFloat := _data.SB1.FieldByName('b1_peso').AsFloat;
      _data.SC6c6_qtdemp2.AsFloat := _data.SB1.FieldByName('b1_peso').AsFloat;
      _data.SC6c6_um.AsString := _data.SB1.FieldByName('b1_um').AsString;
      _data.SC6c6_op.AsString := _data.SB1.FieldByName('b1_LOCPAD').AsString;

      _data.SC6.Post;
    Except
    on e:Exception do
      Begin
        ShowMessage(e.Message);
      End;
    END;
    Carrinho.Next;
    i := i + 1;
  End;

  Form5.Show;
  frmCat.close;

{if C5_FILIAL.ItemIndex < 0  then
   Begin
     ShowMessage('Escolha a empresa');
     Exit;
   end;

     form1.tab1.TabIndex := 5;
    _data.SC5.Close;
    _data.SC5.SQL.Text:='Select * from SC5010 WHERE C5_LIBEROK ='+#39+#39;
    _data.SC5.Open;




 form1.Button9Click(form1.Button9);
 form1.Button18Click(form1.Button18);
 _data.SC5.Edit;
 form1.A1_COD.Text:=_data.SA1.FieldByName('A1_COD').AsString;
 form1.A1_NOME.Text:=_data.SA1.FieldByName('A1_NOME').AsString;
 form1.C5_VOLUME1.Text:=StringReplace(_tot.FieldByName('TOT').AsString,'.',',',[rfReplaceAll,rfIgnoreCase]);
 form1.C5_FILIAL.ItemIndex:=C5_FILIAl.ItemIndex;

 _DATA.emps.RecNo:=c5_filial.ItemIndex+1;
 _data.SC5.FieldByName('C5_FILIAL').AsString:=_data.empsFILIAL.AsString;


 carrinho.First;

 while not Carrinho.Eof do
  Begin
     //form1.Button20Click(nil);
    _data.SC6.Insert;
    _data.prep( _data.SC6);

    _data.SC6C6_PRODUTO.AsString:=carrinhoCODIGO.AsString;
    _data.SC6C6_DESCRI.AsString:=carrinhoDESCRICAO.AsString;
    _data.SC6C6_QTDVEN.AsFloat:=carrinhoQTD.AsFloat;
    _data.SC6C6_PRCVEN.AsFloat:=carrinhoPRECO.AsFloat;
    _data.SC6C6_VALOR.AsFloat:=carrinhoQTD.AsFloat * carrinhoPRECO.AsFloat;
    _data.SC6C6_ITEM.AsString:=Carrinho.RecNo.ToString();

    _data.SC6C6_QTDEMP.AsFloat:=carrinhoPESOU.AsFloat;
    _data.SC6C6_QTDEMP2.AsFloat:=carrinhoPESO.AsFloat;
    _data.SC6C6_UM.AsString:=carrinhoUM.AsString;

    form1.Button26Click(nil);
    carrinho.Next;
  End;
  close; }
end;

procedure TfrmCat.tProdsTileClick(Sender: TObject; ATile: TTMSFMXTile);
begin
 _it:=Atile.Index;

 if sClique.State = ssOn  then
  Begin
    if not carrinho.Active then
       carrinho.Open;

      prod.RecNo:=Atile.Index+1;

      if carrinho.Locate('CODIGO',prod.FieldByName('da1_codpro').AsString,[]) then
      Begin
       carrinho.Delete;
       tProds.Tiles[prod.RecNo-1].Badge:='';

      End
    Else
    Begin
     carrinho.Append;
     carrinho.FieldByName('CODIGO').AsString:=prod.FieldByName('da1_codpro').AsString;
     carrinho.FieldByName('DESCRICAO').AsString:=prod.FieldByName('da1_DESCRI').AsString;
     CARRINHO.FieldByName('QTD').AsString:=QClique.Text;
     carrinho.FieldByName('PRECO').AsFloat:=prod.FieldByName('DA1_PRCVEN').AsFloat;

     _data.SB1.Close;
     _data.SB1.SQL.Text:='Select * from SB1010 WHERE B1_COD = '+#39+prod.FieldByName('da1_codpro').AsString+#39;
     _data.SB1.Open();

     CARRINHOPESOU.AsFloat:=_data.SB1.FieldByName('b1_peso').AsFloat;
     CARRINHOUM.AsString:=_data.SB1.FieldByName('b1_um').AsString;



    carrinho.Post;
    tProds.Tiles[prod.RecNo-1].Badge:=CarrinhoQtd.AsString+' - Carrinho' ;
    End;
  end
 Else
 Begin
 info.Visible:=true;
 prod.RecNo:=Atile.Index+1;
 sQuant.Text:='0';

 saldo.Close;
 saldo.SQL.Text:='Select * from SB2010 where b2_cod = '#39+prod.FieldByName('da1_codpro').AsString+#39;
 saldo.Open();

 lblProd.Text:=prod.FieldByName('da1_descri').AsString;
 lblPreco.Text:='R$ '+FormatFloat(',.0',prod.FieldByName('DA1_PRCVEN').AsFloat);
 lblEstoque.Text:='Itens estoque:'+saldo.FieldByName('b2_qatu').AsString;

 if fileExists(GetHomePath + PathDelim + 'icons' +PathDelim+prod.FieldByName('DA1_CODPRO').AsString+'.jpg') then
   image2.Bitmap.LoadFromFile(GetHomePath + PathDelim + 'icons' +PathDelim+prod.FieldByName('DA1_CODPRO').AsString+'.jpg')
 else
   image2.Bitmap:=nil;

   if not carrinho.Active then
      carrinho.Open;

   if carrinho.Locate('CODIGO',prod.FieldByName('DA1_CODPRO').AsString,[]) then
    Begin
      sQuant.Text:=carrinhoQTD.AsString;
      iCar.Checked:=true;
    End
    Else
    Begin
      sQuant.Text:='0';
      iCar.Checked:=False;
    End;
 End;

end;

end.
