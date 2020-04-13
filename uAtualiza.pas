unit uAtualiza;

interface

uses
  System.SysUtils,System.Threading,  System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.StdCtrls,
  FMX.TMSButton, FMX.Controls.Presentation, FMX.Objects, FMX.Layouts,
  FMX.TMSBaseControl, FMX.TMSGauge, Data.DB, FMX.ScrollBox, FMX.Memo,
  FireDAC.Comp.BatchMove.DataSet, FireDAC.Comp.BatchMove, FireDAC.Stan.Intf,
  Datasnap.DBClient, IdThreadComponent, IdBaseComponent;

type
  TfrmAtualiza = class(TForm)
    ScrollBox1: TScrollBox;
    Image3: TImage;
    Label4: TLabel;
    TMSFMXButton1: TTMSFMXButton;
    Label5: TLabel;
    TMSFMXButton3: TTMSFMXButton;
    TMSFMXButton2: TTMSFMXButton;
    TMSFMXButton4: TTMSFMXButton;
    TMSFMXButton5: TTMSFMXButton;
    TMSFMXButton6: TTMSFMXButton;
    TMSFMXButton7: TTMSFMXButton;
    TMSFMXButton8: TTMSFMXButton;
    dt: TDataSource;
    lblStatus: TLabel;
    pr: TProgressBar;
    bach: TFDBatchMove;
    FDBatchMoveDataSetReader1: TFDBatchMoveDataSetReader;
    FDBatchMoveDataSetWriter1: TFDBatchMoveDataSetWriter;
    TMSFMXButton9: TTMSFMXButton;
    TMSFMXButton10: TTMSFMXButton;
    ani: TAniIndicator;
    idProd: TIdThreadComponent;
    idCli: TIdThreadComponent;
    idtab: TIdThreadComponent;
    iPreco: TIdThreadComponent;
    TMSFMXButton11: TTMSFMXButton;
    Image1: TImage;
    pr2: TProgressBar;
    TMSFMXButton12: TTMSFMXButton;
    procedure TMSFMXButton1Click(Sender: TObject);
    procedure dtDataChange(Sender: TObject; Field: TField);
    procedure TMSFMXButton3Click(Sender: TObject);
    procedure TMSFMXButton2Click(Sender: TObject);
    procedure TMSFMXButton4Click(Sender: TObject);
    procedure TMSFMXButton7Click(Sender: TObject);
    procedure TMSFMXButton6Click(Sender: TObject);
    procedure TMSFMXButton8Click(Sender: TObject);
    procedure TMSFMXButton10Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure TMSFMXButton9Click(Sender: TObject);
    procedure TMSFMXButton5Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure idProdRun(Sender: TIdThreadComponent);
    procedure idCliRun(Sender: TIdThreadComponent);
    procedure idtabRun(Sender: TIdThreadComponent);
    procedure iPrecoRun(Sender: TIdThreadComponent);
    procedure TMSFMXButton11Click(Sender: TObject);
    procedure idtabStopped(Sender: TIdThreadComponent);
    procedure TMSFMXButton12Click(Sender: TObject);
  private
    { Private declarations }
  public
    procedure importap(tabela,sigla:String);
    procedure inuvem(tabela,sigla:String);
    { Public declarations }
  end;

var
  frmAtualiza: TfrmAtualiza;

implementation

{$R *.fmx}

uses udata, uMenu, uprinc;


Procedure TFrmAtualiza.inuvem(tabela: string; sigla: string);
var
aTask: ITask;
i:Integer;
d:TClientDataSet;
begin
pr.Value:=0;

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

     _data.aux.Close;
    //_data.aux.Connection:=O;
    _data.aux.SQL.text:='delete from sa1010';
    _data.aux.ExecSQL;

    _data.aux.Close;
    _data.aux.SQL.Text:='Select * from sa1010';
    _data.aux.Open;

//    _data.ExecSQL('delete from alertas where vendedor = "'+form1.codvend+'"   and tabela ="'+tabela+'" ','EX','N');

aTask := TTask.Create (procedure ()
   begin
    //ts.Show;
    _data.prepara(_data.transfer,'Select * from transfer where visual_cli="'+form1.codcli+'" and tabela="'+sigla+'" AND usuario="'+form1.codvend+'"','N');

     _data.transferdados.SaveToFile(GetHOmePath + PathDelim+'dados.zip');
     lblStatus.Text:='Aguarde, Descompactando XML';
     _data.decompress(GetHOmePath + PathDelim+'dados.zip',GetHOmePath + PathDelim+'dados');
     lblStatus.Text:='Aguarde, abrindo XML';
     _data._sa1.LoadFromFile(GetHOmePath + PathDelim+'dados.xml');


    _data.prepara(_data.transfer,'Select * from transfer where visual_cli="'+form1.codcli+'" and tabela="'+tabela+'" ','N');

     _data.transferdados.SaveToFile(GetHOmePath + PathDelim+'dados.zip');
     lblStatus.Text:='Aguarde, Descompactando XML';
     _data.decompress(GetHOmePath + PathDelim+'dados.zip',GetHOmePath + PathDelim+'dados');
     lblStatus.Text:='Aguarde, abrindo XML';

     d:=TClientDataSet.Create(self);
     d.LoadFromFile(GetHOmePath + PathDelim+'dados.xml');


     _data._sa1.First;
      lblStatus.Text:='Importando!!';

      while not _data._sa1.Eof do
      Begin
        _data.DTAB.Filtered:=false;
        _data.DTAB.Filter:=' a1_cod = '+#39+_data._sa1.FieldByName('cliente').AsString+#39;
        _data.DTAB.Filtered:=true;
        if _data.DTAB.RecordCount > 0 then
         Begin
           pr.Max:=_data.DTAB.RecordCount;
          _data.depara(_data.DTAB,_data.aux);
         End;
         _data._sa1.Next;
//        lblStatus.Text:='Finalizado!!';
      End;
      lblStatus.Text:='Finalizado!!';
      _data.DTAB.Filtered:=false;
      //GroupBox1.Enabled:=true;
      end);
   aTask.Start;
  End;


procedure TfrmAtualiza.iPrecoRun(Sender: TIdThreadComponent);
var d:TClientDataSet;
begin
      lblStatus.Text:=('Conectando ao Servidor');
   begin
    try

  pr.Value:=0;
  lblStatus.Text:='';
  if not _data._SQL.Connected then
  Begin
    try
      _data._SQL.Open;
      _data.SetAmbiente.ExecuteMethod;
    Except
      lblStatus.Text:=('Erro de conexao, tente novamente');
      Exit;
    end;
  End;

  lblStatus.Text:=('Conectado ao Servidor');


   // _data.ExecSQL('delete from alertas where vendedor = "'+form1.codvend+'"   and tabela ="UVENDA" and visual_cli="'+form1.codcli+'"','EX','N');


    _data.aux.Close;
    //_data.aux.Connection:=O;
    _data.aux.SQL.text:='delete from UVENDA';
    _data.aux.ExecSQL;

    _data.aux.Close;
    _data.aux.SQL.Text:='Select * from UVENDA';
    _data.aux.Open;

     ani.Enabled:=true;
    d:=TClientDataSet.Create(self);

     lblStatus.Text:='Aguarde, Buscando dados';
     _data.prepara(_data.transfer,'Select * from transfer where visual_cli="'+form1.codcli+'" and tabela="UPRECO" ','N');
    if _data.transfer.RecNo > 0  then
    Begin
     _data.transferdados.SaveToFile(GetHOmePath + PathDelim+'dados.zip');
     lblStatus.Text:='Aguarde, Descompactando XML';
     _data.decompress(GetHOmePath + PathDelim+'dados.zip',GetHOmePath + PathDelim+'dados');
     lblStatus.Text:='Aguarde, abrindo XML';
     d.LoadFromFile(GetHOmePath + PathDelim+'dados.xml');

     d.First;
     lblStatus.Text:='Importando';
     pr.Max:=d.RecordCount;
     _data.depara(d,_data.aux);
    End;
    _data.aux.Close;
    _data.aux.SQL.Text:='Select count(*) as T from UVENDA';
    _data.aux.Open;

     lblStatus.Text:='Finalizado, '+_data.AUX.FieldByName('t').AsString+', Importados';
     ani.Enabled:=false;
     d.Close;
     d.Free;
    Except
      on e:Exception do
        Begin
          lblStatus.Text:=e.Message;
          ani.Enabled:=false;
        End;
    end;
      //GroupBox1.Enabled:=true;
      end;
 ipreco.Stop;
end;

procedure TfrmAtualiza.idCliRun(Sender: TIdThreadComponent);
var i:Integer;
d:TClientDataSet;
begin
pr.Value:=0;
lblStatus.Text:='';

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



   begin
   try
    lblStatus.Text:='Aguarde';
     _data.aux.Close;
    //_data.aux.Connection:=O;
    _data.aux.SQL.text:='delete from sa1010';
    _data.aux.ExecSQL;

    _data.aux.Close;
    _data.aux.SQL.Text:='Select * from sa1010';
    _data.aux.Open;

//    _data.ExecSQL('delete from alertas where vendedor = "'+form1.codvend+'"   and tabela ="CLI" ','EX','N');

    //ts.Show;
    //  ani.Enabled:=true;
     _data.prepara(_data.transfer,'Select * from transfer where visual_cli="'+form1.codcli+'" and tabela="CARTEIRA" AND usuario="'+form1.codvend+'"','N');
     //ShowMessage('Select * from transfer where visual_cli="'+form1.codcli+'" and tabela="CARTEIRA" AND usuario="'+form1.codvend+'"');
     if _data.transfer.RecordCount > 0 then
      Begin
       _data.transferdados.SaveToFile(GetHOmePath + PathDelim+'dados.zip');
       lblStatus.Text:='Aguarde, Descompactando XML';
     //  application.ProcessMessages;
       _data.decompress(GetHOmePath + PathDelim+'dados.zip',GetHOmePath + PathDelim+'dados');
       lblStatus.Text:='Aguarde, abrindo XML';
     //  application.ProcessMessages;
       _data._sa1.LoadFromFile(GetHOmePath + PathDelim+'dados.xml');
      End;



     _data.prepara(_data.transfer,'Select * from transfer where visual_cli="'+form1.codcli+'" and tabela="SA1" ','N');

     _data.transferdados.SaveToFile(GetHOmePath + PathDelim+'dados.zip');
     lblStatus.Text:='Aguarde, Descompactando XML';
   //  application.ProcessMessages;
     _data.decompress(GetHOmePath + PathDelim+'dados.zip',GetHOmePath + PathDelim+'dados');
     lblStatus.Text:='Aguarde, abrindo XML';
   //  application.ProcessMessages;

     d:=TClientDataSet.Create(self);
     D.LoadFromFile(GetHOmePath + PathDelim+'dados.xml');
     d.Open;

    if _data._sa1.Active then
    Begin
       _data._sa1.First;

     lblStatus.Text:='Importando!!';
    // application.ProcessMessages;

      while not _data._sa1.Eof do
      Begin
     //   application.ProcessMessages;
        D.Filtered:=false;
        D.Filter:=' a1_cod = '+#39+_data._sa1.FieldByName('cliente').AsString+#39;
        D.Filtered:=true;

        pr.Max:=_data._sa1.RecordCount;
        pr.Value:=0;

        if D.RecordCount > 0 then
         Begin
           pr.Max:=d.RecordCount;
          _data.deparau(d,_data.aux);
        //  application.ProcessMessages;
         End;
         _data._sa1.Next;
         pr.Value:=pr.Value+1;
//        lblStatus.Text:='Finalizado!!';
      End;
    End
      else
        begin
     pr.Max:=d.RecordCount;
     pr.Value:=0;

        lblStatus.Text:='Importando!!';
          if D.RecordCount > 0 then
          Begin
           d.First;
           pr.Max:=d.RecordCount;
           i:=1;
           lblStatus.Text:='Importando: '+d.RECNO.ToString()+'/'+pr.Max.ToString();

           while not d.Eof do
             Begin
              //  application.ProcessMessages;

               _data.deparau(d,_data.aux);
               d.Next;
               i:=i+1;
               if i = 200 then
               Begin
                // pr.Value:=d.RecNo;
                 i:=0;
                 TRY
                  lblStatus.Text:='Importando: '+d.RECNO.ToString()+'/'+pr.Max.ToString();
                 EXCEPT

                 END;
               End;
              // lblStatus.Text:='Importando: '+pr.Value.ToString()+'/'+pr.Max.ToString();
             End;
           End;

        end;
      lblStatus.Text:='Finalizado!!';
      d.Close;
      d.Free;
   //   ani.Enabled:=false;
   Except
   on e:Exception do
   Begin
    lblStatus.Text:='Erro '+e.Message;
   End;
   end;
      //GroupBox1.Enabled:=true;
      end;
  //    idCli.Stop;
end;

procedure TfrmAtualiza.idProdRun(Sender: TIdThreadComponent);
var d:TClientDataSet;
begin
//pr.Value:=0;
lblStatus.Text:='';

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




//    _data.ExecSQL('delete from alertas where vendedor = "'+form1.codvend+'"   and tabela ="PROD" and visual_cli="'+form1.codcli+'"','EX','N');

//aTask := TTask.Create (procedure ()
   begin
    try
  //  ani.Enabled:=true;

     _data.aux.Close;
    //_data.aux.Connection:=O;
    _data.aux.SQL.text:='delete from sb1010';
    _data.aux.ExecSQL;

    _data.aux.Close;
    _data.aux.SQL.Text:='Select * from sb1010';
    _data.aux.Open;

    d:=TClientDataSet.Create(self);


    _data.prepara(_data.transfer,'Select * from transfer where visual_cli="'+form1.codcli+'" and tabela="SB1" ','N');

     _data.transferdados.SaveToFile(GetHOmePath + PathDelim+'dados.zip');
     lblStatus.Text:='Aguarde, Descompactando XML';
     _data.decompress(GetHOmePath + PathDelim+'dados.zip',GetHOmePath + PathDelim+'dados');
     lblStatus.Text:='Aguarde, abrindo XML';

      D.LoadFromFile(GetHOmePath + PathDelim+'dados.xml');

  {if (D.RecordCount <= 0) then
  Begin
       lblStatus.Text:='Aguarde, abrindo';
      _data.prepara(_data.DTAB,'SELECT * FROM SB1010  where visual_cli="'+form1.codcli+'"  ','N');
     // ShowMessage('SELECT * FROM SB1010  where visual_cli="'+form1.codcli+'"  ');
  End;}
     d.First;
     lblStatus.Text:='Importando';
     pr.Max:=d.RecordCount;

     while not d.Eof do
     Begin
     try
      _data.deparau(d,_data.aux);

    //  if (d.RecNo mod 200)=0 then
      //  frmAtualiza.lblStatus.Text:='Importando: '+d.RecNo.ToString+' de '+d.RecordCount.ToString;
      except
       on e:Exception do
        Begin
           //lblStatus.Text:=e.Message;
        End;
      end;

      d.Next;
     End;

      lblStatus.Text:='Finalizado!!';



     //lblStatus.Text:='Finalizado!!';

   //  d.Close;
   //  d.Free;
   //  ani.Enabled:=false;

      Except
       on e:Exception do
        Begin
         // lblStatus.Text:=e.Message;
        End;
    end;
      //GroupBox1.Enabled:=true;
      end;//);
  // idProd.Stop;
end;

procedure TfrmAtualiza.idtabRun(Sender: TIdThreadComponent);

var d:TClientDataSet;

begin
try
lblStatus.Text:='';
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


   begin

    _data.aux.Close;
    //_data.aux.Connection:=O;
    _data.aux.SQL.text:='delete from da1010';
    _data.aux.ExecSQL;
    // dt.DataSet:= _data._da1 ;
    _data.aux.Close;
    _data.aux.SQL.Text:='Select * from da1010';
    _data.aux.Open;

//    _data.ExecSQL('delete from alertas where vendedor = "'+form1.codvend+'"   and tabela ="TABP" and visual_cli="'+form1.codcli+'"','EX','N');

    lblStatus.Text:='';


     lblStatus.Text:='Aguarde, abrindo';
     ani.Enabled:=true;
     d:=TClientDataSet.Create(self);

     try
     lblStatus.Text:='Aguarde, Localizando dados.';
     _data.prepara(_data.transfer,'Select * from transfer where visual_cli="'+form1.codcli+'" and tabela="VENDTAB" AND USUARIO="'+form1.codvend+'"','N');

     if _data.transfer.RecordCount=0 then
      Begin
        lblStatus.Text:='Aguarde, Localizando todos os dados.';
       _data.prepara(_data.transfer,'Select * from transfer where visual_cli="'+form1.codcli+'" and tabela="DA1" ','N');
      End;


     _data.transferdados.SaveToFile(GetHOmePath + PathDelim+'dados.zip');
     lblStatus.Text:='Aguarde, Descompactando XML';
     _data.decompress(GetHOmePath + PathDelim+'dados.zip',GetHOmePath + PathDelim+'dados');
     lblStatus.Text:='Aguarde, abrindo XML';


     d.LoadFromFile(GetHOmePath + PathDelim+'dados.xml');

      lblStatus.Text:='Aguarde. importando';

     d.First;
     lblStatus.Text:='Importando';
     pr.Max:=d.RecordCount;

     while not d.Eof do
     Begin
     try
      _data.deparau(d,_data.aux);

      if (d.RecNo mod 100)=0 then
        frmAtualiza.lblStatus.Text:='Importando: '+d.RecNo.ToString+' de '+d.RecordCount.ToString;
      except
       on e:Exception do
        Begin
        //   lblStatus.Text:=e.Message;
        End;
      end;

      d.Next;
     // application.ProcessMessages;
     End;

          lblStatus.Text:='Finalizado!!';

      ani.Enabled:=false;
     Except
        on e:exception do
          Begin
             lblStatus.Text:='Err: '+(e.message);
          End;
     end;
      end;
Except
   on e:Exception do
    Begin
             lblStatus.Text:='Err: '+(e.message);

    End;
end;
idTab.Stop;
end;

procedure TfrmAtualiza.idtabStopped(Sender: TIdThreadComponent);
begin
//importap('REGRA','REG');
end;

Procedure TFrmAtualiza.importap;
var
aTask: ITask;
begin
pr.Value:=0;
lblStatus.Text:='';

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


     _data.aux.Close;
    //_data.aux.Connection:=O;
    _data.aux.SQL.text:='delete from '+tabela;
    _data.aux.ExecSQL;


   try
    _data.aux.Close;
    _data.aux.SQL.Text:='Select * from '+tabela;
    _data.aux.Open;
   Except
      lblStatus.Text:='Erro ao Destino';
      Exit;
   end;

//    _data.ExecSQL('delete from alertas where vendedor = "'+form1.codvend+'"   and tabela ="'+sigla+'" and visual_cli="'+form1.codcli+'"','EX','N');

  aTask := TTask.Create (procedure ()
   begin
   lblStatus.Text:='Abrindo origem!!';
   ani.Enabled:=true;

   _data.prepara(_data.DTAB,'SELECT * FROM '+tabela+' where visual_cli="'+form1.codcli+'" ','N');

   if not _data.DTAB.Active then
    Begin
      lblStatus.Text:='Erro ao Abrir Origem';
      Exit;
    End;


    lblStatus.Text:='Importando dados!!';
   _data.DTAB.First;
  // pr.Max:=_data.DTAB.RecordCount;
   _data.depara(_data.DTAB,_data.aux);
    lblStatus.Text:='Finalizado!!';
    ani.Enabled:=false;
      //GroupBox1.Enabled:=true;
      end);
  aTask.Start;
end;

procedure TfrmAtualiza.dtDataChange(Sender: TObject; Field: TField);
var m:Integer;
begin

  if dt.DataSet.Active then
  Begin
  if dt.DataSet.RecordCount > 0 then
   Begin


   if dt.DataSet.Eof then
    Begin
      lblStatus.Text:='Finalizado';
//      ScrollBox1.Visible:=true;
    End;

    pr.Max:=_data.DTAB.RecordCount;
    pr.Value :=dt.DataSet.RecNo;///dt.DataSet.RecordCount)*100)) ;
    //lblStatus.Text:=dt.DataSet.RecNo.ToString()+'/'+dt.DataSet.RecordCount.ToString();
   End;
  End;
end;

procedure TfrmAtualiza.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 action:= TCloseAction.caFree;
end;

procedure TfrmAtualiza.FormCreate(Sender: TObject);
begin
 //image2.Bitmap:=form1.Image1.Bitmap;
end;

procedure TfrmAtualiza.TMSFMXButton10Click(Sender: TObject);
begin
 Close;
end;

procedure TfrmAtualiza.TMSFMXButton11Click(Sender: TObject);
bEGIN
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

   _data.aux.Close;
    //_data.aux.Connection:=O;
    _data.aux.SQL.text:='delete from conf';
    _data.aux.ExecSQL;

    _data.aux.Close;
    _data.aux.SQL.Text:='Select * from conf';
    _data.aux.Open;

//    _data.ExecSQL('delete from alertas where vendedor = "'+form1.codvend+'"   and tabela ="COR" ','EX','N');

 //aTask := TTask.Create (procedure ()
   begin
    lblStatus.Text:='Aguarde. importando';
   _data.prepara(_data.DTAB,'SELECT * FROM conf where visual_cli="'+form1.codcli+'" ','N');


      _data.DTAB.First;

      _data.depara(_data.DTAB,_data.aux);

      //GroupBox1.Enabled:=true;
      end;//);
 //aTask.Start;

end;

procedure TfrmAtualiza.TMSFMXButton12Click(Sender: TObject);
begin
  importap('REGRA','REG');
end;

procedure TfrmAtualiza.TMSFMXButton1Click(Sender: TObject);
var
 aTask: ITask;
Begin
// idCli.Start;

 aTask := TTask.Create (procedure ()
   begin
      idCliRun(idCli);
   end);
   aTask.Start;
//

  End;




procedure TfrmAtualiza.TMSFMXButton2Click(Sender: TObject);
var
 aTask: ITask;
Begin
// idCli.Start;

 {aTask := TTask.Create (procedure ()
   begin
      idTabRun(idTab);
      importap('REGRA','REG');
   end);
   aTask.Start;}
//
  idTab.Start;
end;

procedure TfrmAtualiza.TMSFMXButton3Click(Sender: TObject);
var d:TClientDataSet;
var
 aTask: ITask;
Begin
// idCli.Start;


      //pr.Value:=0;
lblStatus.Text:='';

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




//    _data.ExecSQL('delete from alertas where vendedor = "'+form1.codvend+'"   and tabela ="PROD" and visual_cli="'+form1.codcli+'"','EX','N');

aTask := TTask.Create (procedure ()
   begin
    try
  //  ani.Enabled:=true;
     lblStatus.Text:='Aguarde';
     _data.aux.Close;
    //_data.aux.Connection:=O;
    _data.aux.SQL.text:='delete from sb1010';
    _data.aux.ExecSQL;

    _data.aux.Close;
    _data.aux.SQL.Text:='Select * from sb1010';
    _data.aux.Open;

    d:=TClientDataSet.Create(self);


    _data.prepara(_data.transfer,'Select * from transfer where visual_cli="'+form1.codcli+'" and tabela="SB1" ','N');

     _data.transferdados.SaveToFile(GetHOmePath + PathDelim+'dados.zip');
     lblStatus.Text:='Aguarde, Descompactando XML';
    // application.ProcessMessages;
     _data.decompress(GetHOmePath + PathDelim+'dados.zip',GetHOmePath + PathDelim+'dados');
     lblStatus.Text:='Aguarde, abrindo XML';
  //   application.ProcessMessages;
      D.LoadFromFile(GetHOmePath + PathDelim+'dados.xml');

  {if (D.RecordCount <= 0) then
  Begin
       lblStatus.Text:='Aguarde, abrindo';
      _data.prepara(_data.DTAB,'SELECT * FROM SB1010  where visual_cli="'+form1.codcli+'"  ','N');
     // ShowMessage('SELECT * FROM SB1010  where visual_cli="'+form1.codcli+'"  ');
  End;}
     d.First;
     lblStatus.Text:='Importando';
    // application.ProcessMessages;
     pr.Max:=d.RecordCount;

     while not d.Eof do
     Begin
     try
      _data.deparau(d,_data.aux);
   //  application.ProcessMessages;
      if (d.RecNo mod 100)=0 then
       Begin
        frmAtualiza.lblStatus.Text:='Importando: '+d.RecNo.ToString+' de '+d.RecordCount.ToString;
    //     application.ProcessMessages;
       End;
      except
       on e:Exception do
        Begin
           lblStatus.Text:=e.Message;
       //         application.ProcessMessages;
        End;
      end;

      d.Next;
    //       application.ProcessMessages;
     End;

      lblStatus.Text:='Finalizado!!';



     //lblStatus.Text:='Finalizado!!';

   //  d.Close;
   //  d.Free;
   //  ani.Enabled:=false;

      Except
       on e:Exception do
        Begin
         // lblStatus.Text:=e.Message;
        End;
    end;
      //GroupBox1.Enabled:=true;
   end);
  aTask.Start;
//

// idprod.Start;
// aTask.Start;
end;

procedure TfrmAtualiza.TMSFMXButton4Click(Sender: TObject);
begin
importap('se4010','COND');
//importap('tpg','TPG');

end;

procedure TfrmAtualiza.TMSFMXButton5Click(Sender: TObject);
begin
importap('sb2010','SB2');
end;

procedure TfrmAtualiza.TMSFMXButton6Click(Sender: TObject);
begin
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

   _data.aux.Close;
    //_data.aux.Connection:=O;
    _data.aux.SQL.text:='delete from cor';
    _data.aux.ExecSQL;

    _data.aux.Close;
    _data.aux.SQL.Text:='Select * from cor';
    _data.aux.Open;

//    _data.ExecSQL('delete from alertas where vendedor = "'+form1.codvend+'"   and tabela ="COR" ','EX','N');

 //aTask := TTask.Create (procedure ()
   begin
    lblStatus.Text:='Aguarde. importando';
   _data.prepara(_data.DTAB,'SELECT * FROM COR','N');


      _data.DTAB.First;

      _data.depara(_data.DTAB,_data.aux);

      //GroupBox1.Enabled:=true;
      end;//);
 //aTask.Start;

end;

procedure TfrmAtualiza.TMSFMXButton7Click(Sender: TObject);
begin
importap('EMPRESA','EMP');
end;

procedure TfrmAtualiza.TMSFMXButton8Click(Sender: TObject);

//importap('grupo','GRP');

var
aTask: ITask;
begin
pr.Value:=0;

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


     _data.aux.Close;
    //_data.aux.Connection:=O;
    _data.aux.SQL.text:='delete from grupo';
    _data.aux.ExecSQL;

    _data.aux.Close;
    _data.aux.SQL.Text:='Select * from grupo';
    _data.aux.Open;

//    _data.ExecSQL('delete from alertas where vendedor = "'+form1.codvend+'"   and tabela ="GRP" and visual_cli="'+form1.codcli+'"','EX','N');

//aTask := TTask.Create (procedure ()
   begin

    _data.prepara(_data.transfer,'Select * from transfer where visual_cli="'+form1.codcli+'" and tabela="GRUPO" ','N');

     _data.transferdados.SaveToFile(GetHOmePath + PathDelim+'dados.zip');
     lblStatus.Text:='Aguarde, Descompactando XML';
     _data.decompress(GetHOmePath + PathDelim+'dados.zip',GetHOmePath + PathDelim+'dados');
     lblStatus.Text:='Aguarde, abrindo XML';

     _data.DTAB.Close;
     _data.DTAB.Fields.Clear;
     _data.DTAB.FieldDefs.Clear;
     _data.DTAB.LoadFromFile(GetHOmePath + PathDelim+'dados.xml');


      _data.DTAB.First;
      lblStatus.Text:='Importando';
      pr.Max:=_data.DTAB.RecordCount;
      _data.depara(_data.DTAB,_data.aux);
      lblStatus.Text:='Finalizado!!';

      //GroupBox1.Enabled:=true;
      end;//);
// aTask.Start;
end;

procedure TfrmAtualiza.TMSFMXButton9Click(Sender: TObject);
Begin
iPreco.Start;

end;

end.
