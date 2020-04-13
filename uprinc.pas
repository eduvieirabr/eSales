unit uprinc;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Objects,
  FMX.Controls.Presentation, FMX.StdCtrls, FMX.Edit, FMX.TMSButton, FMX.Layouts,
  FMX.ScrollBox, FMX.Memo,Androidapi.JNI.Telephony, Androidapi.JNI.Provider ,
  Androidapi.JNIBridge,
  FMX.Helpers.Android,androidapi.JNI.GraphicsContentViewText,
  androidapi.jni.JavaTypes,
  Androidapi.Helpers, SpeechRecognition, AndroidTTS,
  Androidapi.JNI.NEt,Androidapi.JNI.app, System.Sensors,
  System.Sensors.Components;

type
  TForm1 = class(TForm)
    Memo1: TMemo;
    ScrollBox2: TScrollBox;
    TMSFMXButton1: TTMSFMXButton;
    Label1: TLabel;
    uEmp: TEdit;
    Label2: TLabel;
    uSu: TEdit;
    Label3: TLabel;
    uSenha: TEdit;
    TMSFMXButton2: TTMSFMXButton;
    TMSFMXButton3: TTMSFMXButton;
    Image1: TImage;
    Label5: TLabel;
    Label4: TLabel;
    Panel1: TPanel;
    TMSFMXButton18: TTMSFMXButton;
    Label6: TLabel;
    lc: TLocationSensor;
    StyleBook1: TStyleBook;
    procedure FormCreate(Sender: TObject);
    procedure TMSFMXButton1Click(Sender: TObject);
    procedure TMSFMXButton2Click(Sender: TObject);
    procedure TMSFMXButton3Click(Sender: TObject);
    procedure TMSFMXButton18Click(Sender: TObject);
    procedure lcLocationChanged(Sender: TObject; const OldLocation,
      NewLocation: TLocationCoord2D);
  private
    { Private declarations }
  public

   var codcli,codvend,CAMPOA,CDA1:String;
   pedp,podes:Boolean;
   vend:String;

    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.fmx}

uses udata, uMenu;

procedure TForm1.FormCreate(Sender: TObject);
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
{ IniFile :='c:\virtus\conf.conf' ;
 Ini := TIniFile.Create( IniFile );
 Emp:=Ini.ReadString( 'EMPRESA','Emp' ,'');
 Fil:=Ini.ReadString( 'EMPRESA','Filial' ,'');
 codcli:=Ini.ReadString( 'Usuario','Registro' ,'');}

  if FileExists(GetHOmePath + PathDelim+'conf.txt') then
    Begin
      memo1.Lines.LoadFromFile(GetHOmePath + PathDelim+'conf.txt');
      uemp.Text:=memo1.Lines.Strings[0];
      usu.Text:=memo1.Lines.Strings[1];
      usenha.Text:='';
    End;

      _data.GRUPO.Open();
     _data.TPG.Open();

     _data.TPG.First;

     lc.Active:=true;
end;

procedure TForm1.lcLocationChanged(Sender: TObject; const OldLocation,
  NewLocation: TLocationCoord2D);
begin
 _data.Latitude:= NewLocation.Latitude;
 _data.Longitude:=NewLocation.Longitude;

 lc.Active:=false;

// ShowMessage(_data.Latitude.ToString()+','+_data.Longitude.ToString());

end;

procedure TForm1.TMSFMXButton18Click(Sender: TObject);
var Intent: JIntent;
begin
  Intent := TJIntent.Create;
  Intent.setAction(TJIntent.JavaClass.ACTION_VIEW);
  Intent.setData(StrToJURI('http://www.visualbusiness.com.br/neSales.apk'));
  SharedActivity.startActivity(Intent);

end;

procedure TForm1.TMSFMXButton1Click(Sender: TObject);
begin


if memo1.Lines.Text='' then
Begin
if not _data._SQL.Connected then
 begin
  _data._SQL.Open;
  _data.SetAmbiente.ExecuteMethod;
 end;

  _data.prepara(_data.EMPRESA,'Select * from EMPRESA Where visual_cli="'+ uEmp.Text +'" and D_E_L_E_T_=""','N');
  if _data.EMPRESA.RecordCount <= 0 then
    Begin
      ShowMessage('Empresa não localizada');
      Exit;
    End;

  _data.prepara(_data.USUARIO ,'Select * from USUARIO Where USUARIO="'+USU.Text+'" AND SENHA="'+USENHA.Text+'" AND  visual_cli="'+ uEmp.Text +'" and D_E_L_E_T_=""','N');
  if _data.USUARIO.RecordCount <= 0 then
    Begin
      ShowMessage('Usuario não localizada');
      Exit;
    End;

 memo1.Lines.Clear;
 memo1.Lines.Add(uemp.Text);
 memo1.Lines.Add(usu.Text);
 memo1.Lines.Add(usenha.Text);
 memo1.Lines.Add(_data.USUARIO.FieldByName('FUNCIONARIO').AsString);

 memo1.Lines.SaveToFile(GetHOmePath + PathDelim+'conf.txt');

       Application.CreateForm(TfrmMenu, frmMenu);
      frmMenu.Show;

 End
 Else
  Begin
    if usenha.Text <> memo1.Lines.Strings[2] then
      Begin
        ShowMessage('Senha errada');
        Exit;
      End;

    codcli:=memo1.Lines.Strings[0];
    codvend:=memo1.Lines.Strings[3];




      Application.CreateForm(TfrmMenu, frmMenu);
      frmMenu.Show;
  End;


end;

procedure TForm1.TMSFMXButton2Click(Sender: TObject);
begin
memo1.Lines.Text:='';
uemp.Text:='';
usu.Text:='';
usenha.Text:='';
end;

procedure TForm1.TMSFMXButton3Click(Sender: TObject);
begin
memo1.Lines.Text:='';
uemp.Text:='';
usu.Text:='';
usenha.Text:='';
end;

end.
