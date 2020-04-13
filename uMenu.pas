unit uMenu;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.StdCtrls,
  FMX.TMSButton, FMX.Controls.Presentation, FMX.Objects, FMX.Layouts,
  SpeechRecognition, AndroidTTS;

type
  TMenuState = (Top, Color, Reset, FullScreen);
  TfrmMenu = class(TForm)
    ScrollBox1: TScrollBox;
    Image3: TImage;
    Label4: TLabel;
    TMSFMXButton1: TTMSFMXButton;
    TMSFMXButton2: TTMSFMXButton;
    Label5: TLabel;
    TMSFMXButton10: TTMSFMXButton;
    TMSFMXButton3: TTMSFMXButton;
    Image2: TImage;

    TTS: TAndroidTTS;
    SpeechRecognition1: TSpeechRecognition;

    TMSFMXButton19: TTMSFMXButton;
    procedure TMSFMXButton2Click(Sender: TObject);
    procedure TMSFMXButton1Click(Sender: TObject);
    procedure TMSFMXButton10Click(Sender: TObject);
    procedure TMSFMXButton3Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);

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
  frmMenu: TfrmMenu;

implementation

{$R *.fmx}

uses udata, uprinc, uAtualiza, uvenda, ubcli, uvendaP, ucatalago, UcLIENTE;

procedure TfrmMenu.FormCreate(Sender: TObject);
begin
 image2.Bitmap:=form1.Image1.Bitmap;
end;

procedure TfrmMenu.FormShow(Sender: TObject);
begin
//Application.ProcessMessages;
  if _data._voz = true then
      SpeechRecognition1.ListenFor(FMenuItems[FMenuState]);

end;

procedure TfrmMenu.SpeechRecognition1RecognitionEx(Sender: TObject;
  Guesses: TGuesses);
var i:Integer;
Begin
  for i := 0 to Length(Guesses) - 1 do
  Begin

    if (LOWERcase(Guesses[i]) = 'vendas') or (LOWERcase(Guesses[i]) = 'meus pedidos') then
     Begin
        //tts.Speak('Abrindo tela de vendas');
        TMSFMXButton1Click(TMSFMXButton1);

     End
     else
    if (LOWERcase(Guesses[i]) = 'atualizações')  or (LOWERcase(Guesses[i]) = 'atualizacoes') then
     Begin
        //tts.Speak('Abrindo tela de vendas');
        TMSFMXButton2Click(TMSFMXButton2);

     End
     else
    if (LOWERcase(Guesses[i]) = 'clientes') or (LOWERcase(Guesses[i]) = 'cliente') then
     Begin
        //tts.Speak('Abrindo tela de vendas');
        TMSFMXButton10Click(TMSFMXButton10);

     End
     else


  End;

end;

procedure TfrmMenu.TMSFMXButton10Click(Sender: TObject);
begin
 Close;
 form1.Close;
end;

procedure TfrmMenu.TMSFMXButton19Click(Sender: TObject);
begin
  _data._voz:=true;
  SpeechRecognition1.ListenFor(FMenuItems[FMenuState]);

end;

procedure TfrmMenu.TMSFMXButton1Click(Sender: TObject);
begin
 // _data.lc.Active:=true;
  Application.CreateForm(TfrmVendaP, frmVendaP);
  frmVendaP.Show;

end;

procedure TfrmMenu.TMSFMXButton2Click(Sender: TObject);
begin

TMSFMXButton2.Text:='Aguarde..';
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

  TMSFMXButton2.Text:='Atualizacoes';
  Application.CreateForm(TfrmAtualiza, frmAtualiza);
  frmAtualiza.Show;
end;

procedure TfrmMenu.TMSFMXButton3Click(Sender: TObject);
begin
//  _data.lc.Active:=true;
  Application.CreateForm(Tfrmcli, frmCli);
  frmCli.Show;
end;

end.
