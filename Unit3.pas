unit Unit3;

interface
                 
uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, math, MMSystem,
  omegatimer,StdCtrls,
  sEdit,omegainput, OmegaScreen, OmegaBitmapFont, OmegaImageList;

type
  TForm3 = class(TForm)
    OmegaScreen1: TOmegaScreen;
    OmegaTimer1: TOmegaTimer;
    OmegaInput1: TOmegaInput;
    OmegaBitmapFont1: TOmegaBitmapFont;
    OmegaImageList1: TOmegaImageList;
    OmegaBitmapFont2: TOmegaBitmapFont;
    procedure FormCreate(Sender: TObject);
    procedure FormMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure FormClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure OmegaTimer1Timer(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;

implementation

uses Unit1, muuttujat, proseduurit, mtypet, Unit2;

{$R *.dfm}


procedure TForm3.FormCreate(Sender: TObject);
begin

  Caption:='Netsoccer '+versio;
  cursor:=crnone;
  width:=1024;
  Height:=768;

  OmegaScreen1.Width := 1024;
  OmegaScreen1.Height := 768;

  OmegaScreen1.Init;

  ladataan_tekstuurit;

  OmegaImagelist1.Init;
  omegainput1.Initialize;
                          
end;

procedure TForm3.FormMouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin                             
  Ingame_data.mouse_naytto[1]:=round(1024/form3.ClientWidth*X);
  Ingame_data.mouse_naytto[2]:=round(768/form3.ClientHeight*Y);
end;

procedure TForm3.FormClick(Sender: TObject);
type
  TQuitPaketti = record
    mtype: word;
  end;
  TPaketti = record
    mtype: word;
    mtype2: word;
    ra: word;
    sID: smallint;
    pID: byte;
    tID: byte;
  end;
var
  QuitPaketti: TQuitPaketti;
  Paketti: TPaketti;
begin

  // quit panel
  if (Ingame_data.mouse_naytto[1]>310) and (Ingame_data.mouse_naytto[1]<405) and
     (Ingame_data.mouse_naytto[2]>600) and (Ingame_data.mouse_naytto[2]<621) then begin
			// quit panel
			if (Ingame_data.quitPanel) or (Ingame_data.gameStatus=0) then begin

        //OmegaScreen1.ToggleFullscreen;
        form3.Visible:=false;
        form3.omegatimer1.Enabled:=false;

        form1.Timer1.Enabled:=false;
        stop_sound;
        please_Wait(false);

        form1.Visible:=true;

        UDPClient1.Close;

        QuitPaketti.mtype:=3000;
        TCPClient1.WriteBuffer(@Paketti,sizeof(Paketti));

        TCPClient1.Close;
        TCPClient2.Open;
        Ingame_data.quitPanel:=false;

      end;
  end;


  if Ingame_data.gameStatus=0 then begin
    //ready button
    if (Ingame_data.mouse_naytto[1]>200) and (Ingame_data.mouse_naytto[1]<295) and
       (Ingame_data.mouse_naytto[2]>540) and (Ingame_data.mouse_naytto[2]<561) then begin
          Paketti.mtype:=3001;
          Paketti.mtype2:=3001;
          Paketti.ra:=random(55000)+1;
          Paketti.sID:=selectedServerID;
          Paketti.pID:=Ingame_data.omaPeliIndex;
          Paketti.tID:=Ingame_data.omaPeliTeamIndex;
          TCPClient1.WriteBuffer(@Paketti,sizeof(Paketti));
    end;

    //change team
    if (Ingame_data.mouse_naytto[1]>200) and (Ingame_data.mouse_naytto[1]<295) and
       (Ingame_data.mouse_naytto[2]>570) and (Ingame_data.mouse_naytto[2]<591) then begin
          if selectedGameType=2 then exit;
          if onkoJoReady then exit;
          Paketti.mtype:=3002;
          Paketti.mtype2:=3002;
          Paketti.ra:=random(55000)+1;
          Paketti.sID:=selectedServerID;
          Paketti.pID:=Ingame_data.omaPeliIndex;
          Paketti.tID:=Ingame_data.omaPeliTeamIndex;
          TCPClient1.WriteBuffer(@Paketti,sizeof(Paketti));
    end;


  end;

//******************************************************************************

  if (chat_mode=5) or (chat_mode=6) then begin
    if (Ingame_data.mouse_naytto[1]>10) and (Ingame_data.mouse_naytto[1]<210) and
       (Ingame_data.mouse_naytto[2]>710) and (Ingame_data.mouse_naytto[2]<730) then
        chat_selected_textfield:=1;

    if (Ingame_data.mouse_naytto[1]>10) and (Ingame_data.mouse_naytto[1]<710) and
       (Ingame_data.mouse_naytto[2]>736) and (Ingame_data.mouse_naytto[2]<756) then
        chat_selected_textfield:=2;
  end;

//******************************************************************************

end;

procedure TForm3.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var i: integer;
begin

  if(freePractiseMode) and (key=VK_ESCAPE) then freePractiseQuit;

  //quitataan spectator modesta
  if (selectedGameType=3) and (key=VK_ESCAPE) then begin
    quitIlmoitusSpecModesta;

    //OmegaScreen1.ToggleFullscreen;
    form3.Visible:=false;
    form3.omegatimer1.Enabled:=false;
    stop_sound;
    please_Wait(false);
    form1.Visible:=true;
    UDPClient2.Close;
    TCPClient1.Close;
    TCPClient2.Open;
    Ingame_data.quitPanel:=false;
  end;


  if key=VK_F2 then begin
    if replyName='' then exit;
		chat_lause:='';
		chat_mode:=5;
		chat_selected_textfield:=2;
    chat_kenelle:=replyName;
  end;

  if key=VK_F5 then begin
		chat_lause:='';
		chat_mode:=5;
		chat_selected_textfield:=2;
  end;

  if key=VK_F6 then begin
		chat_lause:='';
		chat_mode:=6;
		chat_selected_textfield:=2;
  end;

  if (key=VK_F7) and (oma_team>0) then begin
		chat_lause:='';
		chat_mode:=7;
    chat_selected_textfield:=2;
  end;

  if key=VK_F8 then begin
    Ingame_data.shirtStyle[1]:=0;
    for i:=1 to 4 do begin
      Ingame_data.shirtColors[i,1,1]:=255;
      Ingame_data.shirtColors[i,2,1]:=0;
      Ingame_data.shirtColors[i,3,1]:=0;
    end;
    Ingame_data.shirtStyle[2]:=0;
    for i:=1 to 4 do begin
      Ingame_data.shirtColors[i,1,2]:=0;
      Ingame_data.shirtColors[i,2,2]:=0;
      Ingame_data.shirtColors[i,3,2]:=255;
    end;
  end;

  if key=VK_F9 then begin //hide chat
    if chatVisible then chatVisible:=false else chatVisible:=true;
  end;


  if selectedGameType=3 then exit;


  if freePractiseMode=false then begin
    if key=VK_ESCAPE then
      if Ingame_data.quitPanel then
        Ingame_data.quitPanel:=false
      else
        Ingame_data.quitPanel:=true;
  end;

//******************************************************************************


  //*******************************************
  if freePractiseMode=false then begin
    if key=VK_F3 then begin
		  chat_lause:='';
		  chat_mode:=3;
		  chat_selected_textfield:=2;
    end;

    if key=VK_F4 then begin
		  chat_lause:='';
		  chat_mode:=4;
		  chat_selected_textfield:=2;
    end;
  end;
  //*******************************************

end;

procedure TForm3.FormKeyPress(Sender: TObject; var Key: Char);
var s: string;
    i: integer;
begin

  if Integer(key)=VK_RETURN then begin
    if kickAdminKicksIngame(chat_lause) then exit;
    if freePractiseMode then sendChatFromFreePractise else laheta_peli_chat;
    exit;
  end;

//******************************************************************************
  if chat_selected_textfield=1 then begin
		if Integer(key)=VK_BACK then begin
				s:='';
        for i:=1 to length(chat_kenelle)-1 do
          s:=s+chat_kenelle[i];
        chat_kenelle:=s;
    end
    else begin
      chat_kenelle:=chat_kenelle+key;
    end;
  end;

//******************************************************************************

  if chat_selected_textfield=2 then begin
		if Integer(key)=VK_BACK then begin
				s:='';
        for i:=1 to length(chat_lause)-1 do
          s:=s+chat_lause[i];
        chat_lause:=s;
    end
    else begin
      chat_lause:=chat_lause+key;
    end;
  end;
//******************************************************************************

end;

procedure TForm3.FormKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
//  if key=65 then Ingame_data.action_key[1]:=false;
end;

procedure TForm3.OmegaTimer1Timer(Sender: TObject);
var i: integer;
begin
  if not OmegaScreen1.CanDraw then exit;
  Omegascreen1.BeginRender;
  OmegaImageList1.BeginDraw;
  OmegaScreen1.ClearScreen(0,0,0,0);
  OmegaInput1.Update;

  for i:=1 to 3 do Ingame_data.mouseButtons[i]:=false;

  if Settings.control=1 then begin
    if integer(oisButton1 in form3.OmegaInput1.Mouse.States)>0 then
      Ingame_data.mouseButtons[1]:=true else Ingame_data.mouseButtons[1]:=false;

    if integer(oisButton2 in form3.OmegaInput1.Mouse.States)>0 then
      Ingame_data.mouseButtons[2]:=true else Ingame_data.mouseButtons[2]:=false;

    if integer(oisButton3 in form3.OmegaInput1.Mouse.States)>0 then
      Ingame_data.mouseButtons[3]:=true else Ingame_data.mouseButtons[3]:=false;
  end;
                                   
  for i:=1 to 4 do Ingame_data.keys[i]:=false;
  for i:=1 to 2 do Ingame_data.action_key[i]:=false;

  if Settings.control=0 then begin
    if oisLeft in OmegaInput1.Keyboard.States then Ingame_data.keys[1]:=true;
    if oisRight in OmegaInput1.Keyboard.States then Ingame_data.keys[2]:=true;
    if oisUp in OmegaInput1.Keyboard.States then Ingame_data.keys[3]:=true;
    if oisDown in OmegaInput1.Keyboard.States then Ingame_data.keys[4]:=true;

    if oisButton1 in OmegaInput1.Keyboard.States then Ingame_data.mouseButtons[1]:=true;
    if oisButton2 in OmegaInput1.Keyboard.States then Ingame_data.mouseButtons[2]:=true;
    if oisButton4 in OmegaInput1.Keyboard.States then Ingame_data.action_key[2]:=true;
  end;

  if oisButton3 in OmegaInput1.Keyboard.States then Ingame_data.action_key[1]:=true;

  updateRutiini;

  //OmegaInput1.Update;
  OmegaScreen1.EndRender;
end;

procedure TForm3.FormShow(Sender: TObject);
begin
  //OmegaScreen1.ToggleFullscreen;
end;

end.


