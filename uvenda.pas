unit uvenda;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.ListBox,
  FMX.Edit, FMX.Controls.Presentation, FMX.StdCtrls, FMX.Layouts, FMX.TMSButton,
  FMX.wwRecPanel, FMX.wwColumnTypes, FMX.wwDataGrid, FMX.wwLayouts,
  FMX.wwBaseGrid, FMX.TabControl, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, Data.Bind.EngExt, Fmx.Bind.DBEngExt, System.Rtti,
  System.Bindings.Outputs, Fmx.Bind.Editors, Data.Bind.Components,
  Data.Bind.DBScope, Data.DB, FireDAC.Comp.DataSet,math, FireDAC.Comp.Client,
  FMX.Objects, Data.Bind.Controls, Fmx.Bind.Navigator, FMX.MultiView;

type
  TfrmVendaR = class(TForm)
    TabControl2: TTabControl;
    TabItem1: TTabItem;
    TabItem2: TTabItem;
    wwDataGrid1: TwwDataGrid;
    wwDataGrid1Unbound: TwwGridColumn;
    wwDataGrid1da1_codpro: TwwGridColumn;
    wwDataGrid1da1_descri: TwwGridColumn;
    wwDataGrid1da1_prcven: TwwGridColumn;
    TabControl3: TTabControl;
    TabItem3: TTabItem;
    gsc6: TwwDataGrid;
    gsc6c6_produto: TwwGridColumn;
    gsc6c6_descri: TwwGridColumn;
    gsc6c6_um: TwwGridColumn;
    gsc6c6_qtdven: TwwGridColumn;
    gsc6c6_prcven: TwwGridColumn;
    gsc6c6_valor: TwwGridColumn;
    TabItem4: TTabItem;
    wwRecordViewPanel1: TwwRecordViewPanel;
    wwRecordViewPanel1c6_produto: TwwRecordViewItem;
    wwRecordViewPanel1c6_um: TwwRecordViewItem;
    wwRecordViewPanel1c6_qtdven: TwwRecordViewItem;
    wwRecordViewPanel1c6_prcven: TwwRecordViewItem;
    wwRecordViewPanel1c6_valor: TwwRecordViewItem;
    DataSource1: TDataSource;
    SC6: TFDMemTable;
    SC6c6_op: TStringField;
    SC6c6_barra: TStringField;
    SC6c6_ok: TStringField;
    SC6c6_nfori: TStringField;
    SC6c6_seriori: TStringField;
    SC6c6_itemori: TStringField;
    SC6c6_ipidev: TFloatField;
    SC6c6_identb6: TStringField;
    SC6c6_blq: TStringField;
    SC6c6_picmret: TFloatField;
    SC6c6_codiss: TStringField;
    SC6c6_grade: TStringField;
    SC6c6_itemgrd: TStringField;
    SC6c6_lotectl: TStringField;
    SC6c6_numlote: TStringField;
    SC6c6_dtvalid: TStringField;
    SC6c6_numorc: TStringField;
    SC6c6_chassi: TStringField;
    SC6c6_opc: TStringField;
    SC6c6_localiz: TStringField;
    SC6c6_numseri: TStringField;
    SC6c6_numop: TStringField;
    SC6c6_itemop: TStringField;
    SC6c6_clasfis: TStringField;
    SC6c6_qtdrese: TFloatField;
    SC6c6_contrat: TStringField;
    SC6c6_numos: TStringField;
    SC6c6_numosfa: TStringField;
    SC6c6_codfab: TStringField;
    SC6c6_lojafa: TStringField;
    SC6c6_itemcon: TStringField;
    SC6c6_tpop: TStringField;
    SC6c6_revisao: TStringField;
    SC6c6_servic: TStringField;
    SC6c6_endpad: TStringField;
    SC6c6_tpestr: TStringField;
    SC6c6_contrt: TStringField;
    SC6c6_tpcontr: TStringField;
    SC6c6_itcontr: TStringField;
    SC6c6_geroupv: TStringField;
    SC6c6_projpms: TStringField;
    SC6c6_edtpms: TStringField;
    SC6c6_taskpms: TStringField;
    SC6c6_trt: TStringField;
    SC6c6_qtdemp: TFloatField;
    SC6c6_qtdemp2: TFloatField;
    SC6c6_projet: TStringField;
    SC6c6_itproj: TStringField;
    SC6c6_potenci: TFloatField;
    SC6c6_licita: TStringField;
    SC6c6_regwms: TStringField;
    SC6c6_mopc: TStringField;
    SC6c6_numcp: TStringField;
    SC6c6_filial: TStringField;
    SC6c6_item: TStringField;
    SC6c6_produto: TStringField;
    SC6c6_um: TStringField;
    SC6c6_qtdven: TFloatField;
    SC6c6_prcven: TFloatField;
    SC6c6_valor: TFloatField;
    SC6c6_qtdlib: TFloatField;
    SC6c6_qtdlib2: TFloatField;
    SC6c6_segum: TStringField;
    SC6c6_sldalib: TFloatField;
    SC6c6_oper: TStringField;
    SC6c6_tes: TStringField;
    SC6c6_unsven: TFloatField;
    SC6c6_local: TStringField;
    SC6c6_cf: TStringField;
    SC6c6_qtdent: TFloatField;
    SC6c6_qtdent2: TFloatField;
    SC6c6_cli: TStringField;
    SC6c6_valdesc: TFloatField;
    SC6c6_entreg: TStringField;
    SC6c6_la: TStringField;
    SC6c6_loja: TStringField;
    SC6c6_nota: TStringField;
    SC6c6_serie: TStringField;
    SC6c6_datfat: TStringField;
    SC6c6_num: TStringField;
    SC6c6_comis1: TFloatField;
    SC6c6_comis2: TFloatField;
    SC6c6_comis3: TFloatField;
    SC6c6_comis4: TFloatField;
    SC6c6_comis5: TFloatField;
    SC6c6_pedcli: TStringField;
    SC6c6_descri: TStringField;
    SC6c6_prunit: TFloatField;
    SC6c6_bloquei: TStringField;
    SC6c6_reserva: TStringField;
    SC6r_e_c_n_o_: TIntegerField;
    SC6r_e_c_d_e_l_: TIntegerField;
    SC6d_e_l_e_t_: TStringField;
    SC6c6_referencia: TStringField;
    SC6c6_descont: TFloatField;
    BSC6: TBindSourceDB;
    BindingsList1: TBindingsList;
    BindSourceDB1: TBindSourceDB;
    LinkFillControlToField1: TLinkFillControlToField;
    BindSourceDB2: TBindSourceDB;
    LinkFillControlToField2: TLinkFillControlToField;
    BindSourceDB3: TBindSourceDB;
    LinkFillControlToField3: TLinkFillControlToField;
    bda1: TBindSourceDB;
    Panel1: TPanel;
    TMSFMXButton4: TTMSFMXButton;
    BindNavigator1: TBindNavigator;
    mv: TMultiView;
    SC: TScrollBox;
    bcpBusca: TEdit;
    Label60: TLabel;
    TMSFMXButton1: TTMSFMXButton;
    TMSFMXButton3: TTMSFMXButton;
    a1_cli: TEdit;
    Label1: TLabel;
    TMSFMXButton2: TTMSFMXButton;
    ToolBar1: TToolBar;
    TMSFMXButton5: TTMSFMXButton;
    TMSFMXButton6: TTMSFMXButton;
    Label2: TLabel;
    Label3: TLabel;
    cbEmp: TComboBox;
    BindSourceDB4: TBindSourceDB;
    LinkFillControlToField4: TLinkFillControlToField;
    mv2: TMultiView;
    wwDataGrid2: TwwDataGrid;
    wwGridColumn1: TwwGridColumn;
    wwGridColumn2: TwwGridColumn;
    wwGridColumn3: TwwGridColumn;
    wwGridColumn4: TwwGridColumn;
    wwGridColumn5: TwwGridColumn;
    wwGridColumn6: TwwGridColumn;
    Panel2: TPanel;
    TMSFMXButton7: TTMSFMXButton;
    BindNavigator2: TBindNavigator;
    procedure TMSFMXButton1Click(Sender: TObject);
    procedure wwDataGrid1ButtonClick(Sender: TObject;
      CellAttributes: TwwCellAttributes; AFieldName: string);
    procedure SC6c6_qtdvenChange(Sender: TField);
    procedure TMSFMXButton2Click(Sender: TObject);
    procedure TMSFMXButton4Click(Sender: TObject);
    procedure TabControl2Change(Sender: TObject);
    procedure TMSFMXButton6Click(Sender: TObject);
    procedure cbEmpChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
  PODE,_novo: boolean;
    { Public declarations }
  end;

var
  frmVendaR: TfrmVendaR;

implementation

{$R *.fmx}

uses uAtualiza, udata, uMenu, uprinc, ubcli, Unit2, uvendaP;

procedure TfrmVendaR.cbEmpChange(Sender: TObject);
begin
 if cbEmp.ItemIndex >=0 then
    _data.emps.RecNo:=cbEmp.ItemIndex+1;
end;

procedure TfrmVendaR.FormCreate(Sender: TObject);
begin
 mv.Width:=self.ClientWidth-30;
 mv2.Width:=self.ClientWidth-30;
end;

procedure TfrmVendaR.FormShow(Sender: TObject);
begin
 mv.ShowMaster;
 TMSFMXButton2Click(TMSFMXButton2);
end;

procedure TfrmVendaR.SC6c6_qtdvenChange(Sender: TField);
begin

  SC6C6_VALOR.Value:=SC6C6_PRCVEN.Value * SC6C6_QTDVEN.Value;


IF SC6C6_DESCONT.Value > 0 THEN
 SC6C6_VALDESC.Value:=RoundTo(SC6C6_VALOR.Value - (SC6C6_VALOR.Value * (SC6C6_DESCONT.Value/100)),-2)
ELSE
 SC6C6_VALDESC.Value:=RoundTo(SC6C6_VALOR.Value,-2);

 SC6C6_QTDEMP2.AsFloat:= SC6C6_QTDEMP.AsFloat * SC6C6_QTDVEN.Value;
end;

procedure TfrmVendaR.TabControl2Change(Sender: TObject);
begin
 if TabCOntrol2.TabIndex = 1 then
    sc.Visible:=false
 else
    sc.Visible:=true;

end;

procedure TfrmVendaR.TMSFMXButton1Click(Sender: TObject);
var campoV,b,cli,O:String;
begin

   _DATA.SA1.CLOSE;
   _data.SA1.sql.text:='Select * from SA1010 Where A1_COD ='+#39+a1_cli.Text+#39;
   _data.SA1.open;

    cli:=' ';
    campoV:='DA1_PRCVEN';

    b:=' (DA1_CODPRO like '+#39+bcpBusca.text+'%'+#39+' OR DA1_DESCRI LIKE '+#39+bcpBusca.text+'%'+#39+')';
    O:=' DA1_DESCRI ';



     if trim(_data.SA1A1_TABELA.AsString) <> '' then
        b:=b+' and DA1_CODTAB='+#39+_data.SA1A1_TABELA.AsString+#39;

  // InputBox('','','Select DA1010.* from DA1010,SB1010 Where B1_COD = DA1_CODPRO '+b+CLI+' ORDER BY '+O+' limit 100');

   _DATA.DA1.CLOSE;
   _data.DA1.sql.text:='Select distinct DA1010.*  '+
       ' from DA1010,SB1010 Where DA1_FILIAL='+#39+_DATA.empsFILIAL.AsString+#39+' and  '+campov+'>0 and ('+b+') and DA1_ESTADO='+#39+_DATA.SA1A1_EST.AsString+#39+' and B1_COD = DA1_CODPRO ORDER BY '+O+' limit 150';

   _data.DA1.open;

   if _data.DA1.recordCount = 0 then
    Begin

        b:=' (DA1_CODPRO like '+#39+bcpBusca.text+'%'+#39+' OR DA1_DESCRI LIKE '+#39+bcpBusca.text+'%'+#39+')';
        O:=' DA1_DESCRI ';



  // InputBox('','','Select DA1010.* from DA1010,SB1010 Where B1_COD = DA1_CODPRO '+b+CLI+' ORDER BY '+O+' limit 100');

      _DATA.DA1.CLOSE;
      _data.DA1.sql.text:='Select distinct DA1010.*  '+
       ' from DA1010,SB1010 Where '+campov+'>0 and ('+b+') and DA1_ESTADO='+#39+_DATA.SA1A1_EST.AsString+#39+' and B1_COD = DA1_CODPRO ORDER BY '+O+' limit 150';
      _data.DA1.open;

    End;



   mv.HideMaster;
   //iNPUTbOX('','',(_data.DA1.sql.text));
end;

procedure TfrmVendaR.TMSFMXButton2Click(Sender: TObject);
begin
  Application.CreateForm(Tfrmbcli, frmbcli);
  frmbcli.Buscar:=true;
  frmbcli.Show;
end;

procedure TfrmVendaR.TMSFMXButton4Click(Sender: TObject);
var
  i: Integer;
begin


  MessageDlg('Você deseja gerar um pedido?',
    System.UITypes.TMsgDlgType.mtInformation, [System.UITypes.TMsgDlgBtn.mbYes,
    System.UITypes.TMsgDlgBtn.mbNo], 0,
    procedure(const AResult: System.UITypes.TModalResult)
    begin
      case AResult of
        mrYES:
          begin
 if _novo then
  Begin
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
    _data.SC5c5_filial.AsString:=_data.empsFILIAL.AsString;


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

  end;

  SC6.First;
  i := 1;

  while not SC6.eof do
  Begin
    TRY


      _data.SC6.append;
      _data.SC6c6_produto.AsString := SC6c6_produto.AsString;

      if _data.DA1DA1_PRCBAS.AsFloat > 0 then
      bEGIN
        _data.SC6c6_servic.AsString := 'True';
        _data.SC6c6_mopc.AsString := '0000';
      end;

      _data.SB1.Close;
      _data.SB1.SQL.Text := 'Select * from SB1010 WHERE B1_COD = ' + #39 +
        _data.SC6c6_produto.AsString + #39;
      _data.SB1.Open();


      _data.SC6c6_qtdven.AsFloat := SC6c6_qtdven.AsFloat;
      _data.SC6c6_qtdemp.AsFloat := _data.SB1.FieldByName('b1_peso').AsFloat;
      _data.SC6c6_qtdemp2.AsFloat := _data.SB1.FieldByName('b1_peso').AsFloat*SC6c6_qtdven.AsFloat;
      _data.SC6c6_um.AsString := _data.SB1.FieldByName('b1_um').AsString;
      _data.SC6c6_op.AsString := _data.SB1.FieldByName('b1_LOCPAD').AsString;

      _data.SC6.Post;
    Except
    on e:Exception do
      Begin
        ShowMessage('Erro ao incluir: '+e.Message);
      End;
    END;
    SC6.Next;
    i := i + 1;
  End;
  PODE := true;
  //form5.TMSFMXButton6Click(form5.TMSFMXButton6);
  form5.TMSFMXButton6Click(form5.TMSFMXButton6);
  Form5.Show;
  frmVendaR.close;
            // caso sim
          end;
        mrNo:
          // caso não
        end;
      end);



end;

procedure TfrmVendaR.TMSFMXButton6Click(Sender: TObject);
begin
 close;

end;

procedure TfrmVendaR.wwDataGrid1ButtonClick(Sender: TObject;
  CellAttributes: TwwCellAttributes; AFieldName: string);
begin

        if not sc6.Active then
            sc6.Open;


        if sc6.Locate('C6_PRODUTO',_data.da1DA1_CODPRO.AsString,[]) then
        bEGIN
            SC6.Edit;
            SC6C6_QTDVEN.AsFloat:=SC6C6_QTDVEN.AsFloat+1;
            sc6c6_VALOR.AsFloat:= SC6C6_QTDVEN.AsFloat * _data.da1DA1_PRCVEN.Value ;
            SC6.Post;
        end
        eLSE
        bEGIN
         SC6.Append;
         SC6C6_PRODUTO.AsString:=_data.da1DA1_CODPRO.AsString;
         SC6C6_DESCRI.AsString:=_data.da1DA1_DESCRI.AsString;
         SC6C6_PRCVEN.AsFloat :=_data.da1DA1_PRCVEN.Value;
         SC6C6_POTENCI.AsFloat:=_data.DA1DA1_PRCBAS.AsFloat;

         if _data.DA1DA1_PRCBAS.AsFloat > 0 then
          Begin
            SC6C6_SERVIC.AsString:='True';
            SC6C6_MOPC.AsString:='0000';
          End;

         _data.SB1.Close;
         _data.SB1.SQL.Text:='Select * from SB1010 WHERE B1_COD = '+#39+SC6C6_PRODUTO.AsString+#39;
         _data.SB1.Open();

         _data.SB2.Close;
         _data.SB2.SQL.Text:='Select * from SB2010 WHERE B2_COD = '+#39+SC6C6_PRODUTO.AsString+#39;
         _data.SB2.Open();

         if _DATA.SB2B2_QATU.AsString <> ''  then
           SC6C6_SLDALIB.AsFloat:=_DATA.SB2B2_QATU.AsFloat
         else
           SC6C6_SLDALIB.AsFloat:=0;

         SC6C6_QTDVEN.AsFloat:=1;
         SC6C6_QTDEMP.AsFloat:=_data.SB1.FieldByName('b1_peso').AsFloat;
         SC6C6_QTDEMP2.AsFloat:=_data.SB1.FieldByName('b1_peso').AsFloat;
         SC6C6_UM.AsString:=_data.SB1.FieldByName('b1_um').AsString;
         SC6C6_OP.AsString:=_data.SB1.FieldByName('b1_LOCPAD').AsString;
         sc6c6_VALOR.AsFloat:= SC6C6_QTDVEN.AsFloat * _data.da1DA1_PRCVEN.Value ;
          SC6.Post;
        end;
end;

end.
