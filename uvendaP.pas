unit uvendaP;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Objects,
  FMX.StdCtrls, FMX.TMSButton, FMX.ListBox, FMX.Controls.Presentation, FMX.Edit,
  FMX.Layouts, FMX.DateTimeCtrls, Data.Bind.Components, Data.Bind.DBScope,
  FMX.wwColumnTypes, FMX.wwDataGrid, FMX.wwLayouts, FMX.wwBaseGrid,DB,
  FMX.MultiView, SpeechRecognition, AndroidTTS;

type
TMenuState = (Top, Color, Reset, FullScreen);
  TfrmVendaP = class(TForm)
    wwDataGrid1: TwwDataGrid;
    wwDataGrid1Unbound: TwwGridColumn;
    BSC5: TBindSourceDB;
    wwDataGrid1c5_num: TwwGridColumn;
    wwDataGrid1c5_filial: TwwGridColumn;
    wwDataGrid1c5_cliente: TwwGridColumn;
    wwDataGrid1c5_emissao: TwwGridColumn;
    wwDataGrid1c5_zznomec: TwwGridColumn;
    Panel1: TPanel;
    TMSFMXButton3: TTMSFMXButton;
    TMSFMXButton10: TTMSFMXButton;
    mv: TMultiView;
    ScrollBox1: TScrollBox;
    TMSFMXButton1: TTMSFMXButton;
    bcli: TEdit;
    Image2: TImage;
    Label1: TLabel;
    TMSFMXButton2: TTMSFMXButton;
    ckemi: TCheckBox;
    e1: TDateEdit;
    e2: TDateEdit;
    cbusca: TComboBox;
    Label2: TLabel;
    Label3: TLabel;
    tbusca: TEdit;
    FFIM: TSwitch;
    Label66: TLabel;
    Label37: TLabel;
    FSINC: TSwitch;
    ToolBar1: TToolBar;
    TMSFMXButton4: TTMSFMXButton;
    TMSFMXButton5: TTMSFMXButton;
    TTS: TAndroidTTS;
    SpeechRecognition1: TSpeechRecognition;
    TMSFMXButton19: TTMSFMXButton;
    procedure TMSFMXButton2Click(Sender: TObject);
    procedure TMSFMXButton4Click(Sender: TObject);
    procedure TMSFMXButton1Click(Sender: TObject);
    procedure wwDataGrid1ButtonClick(Sender: TObject;
      CellAttributes: TwwCellAttributes; AFieldName: string);
    procedure TMSFMXButton10Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure TMSFMXButton3Click(Sender: TObject);
    procedure SpeechRecognition1RecognitionEx(Sender: TObject;
      Guesses: TGuesses);
    procedure FormShow(Sender: TObject);
    procedure TMSFMXButton19Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
         FMenuState: TMenuState;
    FMenuItems: array [TMenuState] of TGuesses;
  end;

var
  frmVendaP: TfrmVendaP;
    pedp:boolean;
implementation

{$R *.fmx}

uses uAtualiza, ubcli, udata, uMenu, uprinc, uvenda, Unit2;

procedure TfrmVendaP.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 action:= TCloseAction.caFree;
end;

procedure TfrmVendaP.FormShow(Sender: TObject);
begin
  if _data._voz = true then
      SpeechRecognition1.ListenFor(FMenuItems[FMenuState]);
end;

procedure TfrmVendaP.SpeechRecognition1RecognitionEx(Sender: TObject;
  Guesses: TGuesses);
var i:Integer;
Begin
  for i := 0 to Length(Guesses) - 1 do
  Begin

    if (LOWERcase(Guesses[i]) = 'nova') or (LOWERcase(Guesses[i]) = 'nova venda') then
     Begin
        //tts.Speak('Abrindo tela de vendas');
        TMSFMXButton4Click(TMSFMXButton4);

     End
     else
    if (LOWERcase(Guesses[i]) = 'atualizações')  or (LOWERcase(Guesses[i]) = 'atualizacoes') then
     Begin
        //tts.Speak('Abrindo tela de vendas');
        TMSFMXButton2Click(TMSFMXButton2);

     End
     else
    if (LOWERcase(Guesses[i]) = 'buscar')  then
     Begin
        //tts.Speak('Abrindo tela de vendas');
        mv.ShowMaster;

     End
     else
   if (LOWERcase(Guesses[i]) = 'sincronizar') then
     Begin
        //tts.Speak('Abrindo tela de vendas');
        TMSFMXButton3Click(TMSFMXButton3);

     End
     else
   if (LOWERcase(Guesses[i]) = 'sair') then
     Begin
        //tts.Speak('Abrindo tela de vendas');
        TMSFMXButton10Click(TMSFMXButton10);

     End;

  End;

end;

procedure TfrmVendaP.TMSFMXButton10Click(Sender: TObject);
begin
 close;
end;

procedure TfrmVendaP.TMSFMXButton19Click(Sender: TObject);
begin
  _data._voz:=true;
  SpeechRecognition1.ListenFor(FMenuItems[FMenuState]);
end;

procedure TfrmVendaP.TMSFMXButton1Click(Sender: TObject);
VAR F:sTRING;
begin

//Pedido
//Cliente
//Emissao
 F:='';

 if ckEmi.isChecked then
   f:=' and C5_EMISSAO >='+#39+FormatDateTime('YYYYMMDD',e1.Date)+#39+' and C5_EMISSAO <='+#39+FormatDateTime('YYYYMMDD',e2.Date)+#39;

 if trim(BCLI.Text) <>'' then
   f:=' and C5_CLIENTE ='+#39+BCLI.Text+#39;

{Pedido
Cliente
Placa
Prefixo
Sinistro
Produto}

 if CBUSCA.ItemIndex = 0 then
    F:=F+' and C5_NUM LIKE '+#39+TBUSCA.Text+'%'+#39;

 if CBUSCA.ItemIndex = 1 then
    F:=F+' and C5_ZZNOMEC LIKE '+#39+TBUSCA.Text+'%'+#39;

 if CBUSCA.ItemIndex = 2 then
    F:=F+' and C5_TRANSP LIKE '+#39+TBUSCA.Text+'%'+#39;

 if CBUSCA.ItemIndex = 3 then
    F:=F+' and c5_prefixo LIKE '+#39+TBUSCA.Text+'%'+#39;

 if CBUSCA.ItemIndex = 4 then
    F:=F+' and c5_sinistro LIKE '+#39+TBUSCA.Text+'%'+#39;

 if CBUSCA.ItemIndex = 5 then
    F:=F+' and c5_NUM in (Select c6_num from sc6010 where c6_produto LIKE '+#39+TBUSCA.Text+'%'+#39+')';


 if FSINC.isChecked then
   f:=f+' and C5_LIBEROK = '+#39+'T'+#39;

  if FFIM.isChecked then
   f:=f+' and C5_LIBEROK = '+#39+'E'+#39;



    _data.SC5.Close;
    _data.SC5.SQL.Text:='Select * from SC5010 WHERE 1=1 '+f+' ORDER BY C5_NUM DESC';
    _data.SC5.Open;
    mv.HideMaster;

end;

procedure TfrmVendaP.TMSFMXButton2Click(Sender: TObject);
begin
  Application.CreateForm(Tfrmbcli, frmbcli);
  frmbcli.Busca:=true;
  frmbcli.Show;

end;

procedure TfrmVendaP.TMSFMXButton3Click(Sender: TObject);
var
  i: Integer;
begin

  if pedp then
  Begin
    ShowMessage('Aguarde, pedidos em andamento!!');
    Exit;

  End;

  _data.SC5.close;
  _data.SC5.SQL.Text := 'Select * from SC5010 WHERE C5_LIBEROK=' + #39 +
    'T' + #39;
  _data.SC5.Open;

  Begin

    Begin

      if not _data._SQL.Connected then
      Begin
        try
          _data._SQL.Open;
          _data.SetAmbiente.ExecuteMethod;
        Except
          ShowMessage('Off-line');
          Exit;
        end;
      End;

    End;

    with _data do
    Begin

      try
        pedp := true;

        i := 0;
        while not SC5.Eof do
        Begin

           ExecSQL('Delete from SC5010 where c5_num="'+sc5.FieldByName('C5_NUM').AsString+'" and C5_FILIAL="'+sc5.FieldByName('C5_FILIAL').AsString+'" AND VISUAL_CLI="'+FORM1.codcli+'" AND C5_VEND1="'+sc5.FieldByName('C5_VEND1').AsString+'"','EX','N');
           ExecSQL('Delete from SC6010 where c6_num="'+sc5.FieldByName('C5_NUM').AsString+'" and C6_FILIAL="'+sc5.FieldByName('C5_FILIAL').AsString+'" AND VISUAL_CLI="'+FORM1.codcli+'" AND C6_CLI="'+sc5.FieldByName('C5_VEND1').AsString+'"','EX','N');


          if _data.SC5.FieldByName('C5_OK').AsString = '2' then
          Begin
            ShowMessage('Pedido ' + _data.SC5.FieldByName('C5_OK').AsString +
              ' já enviado, impossivel continuar');
            break;
          End;

          if trim(_data.SC5c5_cliente.Text) = '' then
          Begin
            ShowMessage('Selecione o cliente pedido: ' +
              _data.SC5.FieldByName('C5_OK').AsString);
            break;
          End;

          _data.Prepara(_data._sc5, 'Select * from sc5010 where 1=2', 'N');

          SC6.close;
          SC6.SQL.Text := 'Select * from SC6010 WHERE C6_NUM=' + #39 +
            SC5.FieldByName('C5_NUM').AsString + #39;
          SC6.Open;



          if SC6.RecordCount > 0 then
          Begin
            _AUX.close;
            ExecSQL('delete from sc6010 where c6_num = "' +
              SC5.FieldByName('C5_NUM').AsString + '" and c6_cli="' +
              form1.codvend + '" and visual_cli="'+form1.codcli+'"', 'EX', 'N');

            Prepara(_AUX, 'Select * from sc6010 where 1=2', 'N');
            depara2(TDataSet(SC6), TDataSet(_AUX));
            // ShowMessage('Enviando itens');

            ExecSQL('delete from sc5010 where c5_num = "' +
              SC5.FieldByName('C5_NUM').AsString + '" and c5_VEND1="' +
              form1.codvend + '"  and visual_cli="'+form1.codcli+'"', 'EX', 'N');
            depara4(TDataSet(SC5), TDataSet(_sc5));

            Prepara(_data._sc5, 'Select *  from sc5010 where c5_num = "' +
              SC5.FieldByName('C5_NUM').AsString + '" and c5_VEND1="' +
              form1.codvend + '"  ', 'N');

            if _data._sc5.RecordCount > 0 then
            Begin
              SC5.Edit;
              SC5.FieldByName('C5_LIBEROK').AsString := 'E';
              SC5.FieldByName('C5_OK').AsString := '2';
              SC5.Post;
              i := i + 1;
            End;

          End
          Else
            ShowMessage('Pedido ' + SC5C5_NUM.AsString + ', esta sem itens');

          SC5.Next;
        End;

        ShowMessage('Pedidos enviados');
        pedp := false;

      Except
        on e: Exception do
        Begin
          ShowMessage(e.Message);
        End;
        // _data._SQL.Close;
      End;

    End;

  End;
end;

procedure TfrmVendaP.TMSFMXButton4Click(Sender: TObject);
begin
  if not _data.emps.active then
         _data.emps.open;

  Application.CreateForm(TfrmVendaR, frmVendaR);
  frmVendar._novo:=true;
  if _data.emps.RecordCount > 0 then
     frmVendaR.cbEmp.ItemIndex:=0;

  frmVendaR.Show;



end;

procedure TfrmVendaP.wwDataGrid1ButtonClick(Sender: TObject;
  CellAttributes: TwwCellAttributes; AFieldName: string);
begin
  Application.CreateForm(TForm5, Form5);
  Form5.Show;
end;

end.
