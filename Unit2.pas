unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, sEdit, sButton, winsock, WSockets,
  HTTPGet, bass, IdBaseComponent, IdComponent, IdTCPConnection, IdTCPClient,
  IdHTTP;

type
  TForm2 = class(TForm)
    Image1: TImage;
    Timer1: TTimer;
    Timer2: TTimer;
    procedure FormCreate(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure Timer2Timer(Sender: TObject);
  private
    { Private declarations }
    FRegion: THandle;
    function CreateRegion(Bmp: TBitmap): THandle;
  public
    { Public declarations }

    procedure TCPClient1Data(Sender: TObject; Socket: Integer);   //game server
    procedure TCPClient2Data(Sender: TObject; Socket: Integer);   //lobby server
    procedure UDPClient1Data(Sender: TObject; Socket: Integer);
    procedure UDPClient2Data(Sender: TObject; Socket: Integer);

    procedure HTTPGet1DoneFile(Sender: TObject; FileName: String; FileSize: Integer);

  end;

type
  TStringArray = array of string;

var
  Form2: TForm2;

  TCPClient1: TTCPClient;
  TCPClient2: TTCPClient;
  UDPClient1: TUDPClient;
  UDPClient2: TUDPClient;
  IdHTTP1: TIdHTTP;
  HTTPGet1: THTTPGet;

  sounds: array [0..10] of DWORD;

  //tätä käytetään dublikaatti viestien estoon
  recent_msg: array [1..10000, 1..3] of integer;

  freePractiseMode: boolean;

  procedure play_sound(p_index: byte);
  procedure stop_sound;
  procedure load_sounds;

implementation

uses Unit1, proseduurit,mtypet, muuttujat, Unit3;

{$R *.dfm}

procedure load_sounds;
begin
          
  if Settings.soundsLoaded then exit;
  Settings.soundsLoaded:=true;
{
  0 default
  1 app
  2 boo
  3 finalwhis
  4 goal
  5 goal2
  6 horn
  7 kick
  8 near
  9 post
  10 whis
}
  sounds[0]:=BASS_StreamCreateFile(FALSE, PChar('data/sounds/default.wav'), 0, 0, BASS_SAMPLE_LOOP);
  sounds[1]:=BASS_StreamCreateFile(FALSE, PChar('data/sounds/app.wav'), 0, 0, BASS_SAMPLE_FX);
  sounds[2]:=BASS_StreamCreateFile(FALSE, PChar('data/sounds/boo.wav'), 0, 0, BASS_SAMPLE_FX);
  sounds[3]:=BASS_StreamCreateFile(FALSE, PChar('data/sounds/finalwhis.wav'), 0, 0, BASS_SAMPLE_FX);
  sounds[4]:=BASS_StreamCreateFile(FALSE, PChar('data/sounds/goal.wav'), 0, 0, BASS_SAMPLE_FX);
  sounds[5]:=BASS_StreamCreateFile(FALSE, PChar('data/sounds/goal2.wav'), 0, 0, BASS_SAMPLE_FX);
  sounds[6]:=BASS_StreamCreateFile(FALSE, PChar('data/sounds/horn.wav'), 0, 0, BASS_SAMPLE_FX);
  sounds[7]:=BASS_StreamCreateFile(FALSE, PChar('data/sounds/kick.wav'), 0, 0, BASS_SAMPLE_FX);
  sounds[8]:=BASS_StreamCreateFile(FALSE, PChar('data/sounds/near.wav'), 0, 0, BASS_SAMPLE_FX);
  sounds[9]:=BASS_StreamCreateFile(FALSE, PChar('data/sounds/post.wav'), 0, 0, BASS_SAMPLE_FX);
  sounds[10]:=BASS_StreamCreateFile(FALSE, PChar('data/sounds/whis.wav'), 0, 0, BASS_SAMPLE_FX);

end;

procedure play_sound(p_index: byte);
begin
  if Settings.sounds then
    BASS_ChannelPlay(sounds[p_index], true);
end;

procedure stop_sound;
var i: integer;
begin
  if Settings.sounds=false then exit;
  for i:=0 to 10 do
    BASS_ChannelStop(sounds[i]);
end;

function TForm2.CreateRegion(Bmp: TBitmap): THandle;
var
  X, Y, StartX: Integer;
  Cool: tPoint;
  Excl: THandle;
  Row: PRGBArray;
  TransparentColor: TRGBTriple;
begin
  Bmp.PixelFormat := pf24Bit;
  GetCursorpos(cool);
  cool.X := bmp.Height;
  cool.Y := bmp.Width;
  Result := CreateRectRGN(0, 0, Bmp.Width, Bmp.Height);

  for Y := 0 to Bmp.Height - 1 do
  begin
    Row := Bmp.Scanline[Y];

    StartX := -1;

    if Y = 0 then
    begin
      TransparentColor := Row[0];
    end;

    for X := 0 to Bmp.Width - 1 do
    begin
      if (Row[X].rgbtRed = TransparentColor.rgbtRed) and
         (Row[X].rgbtGreen = TransparentColor.rgbtGreen) and
         (Row[X].rgbtBlue = TransparentColor.rgbtBlue) then
      begin
        if StartX = -1 then StartX := X;
      end else
      begin
        if StartX > -1 then
        begin
          Excl := CreateRectRGN(StartX, Y, X, Y + 1);
          try
            CombineRGN(Result, Result, Excl, RGN_DIFF);
            StartX := -1;
          finally
            DeleteObject(Excl);
          end;
        end;
      end;
    end;

    if StartX > -1 then
    begin
      Excl := CreateRectRGN(StartX, Y, Bmp.Width, Y + 1);
      try
        CombineRGN(Result, Result, Excl, RGN_DIFF);
      finally
        DeleteObject(Excl);
      end;
    end;
  end;
end;

procedure TForm2.FormCreate(Sender: TObject);
var
  Bmp: TBitmap;
  texttied: textfile;
  searchResult : TSearchRec;
begin

  if FindFirst('qprocky.txt', faAnyFile, searchResult) = 0 then begin
    IP_osoite:='127.0.0.1';
    local_comp:=true;
  end else begin
    IP_osoite:='5.9.1.48';
    local_comp:=false;
  end;
  FindClose(searchResult);

  //vanha banni systeemi
  //if FindFirst('c:\clog.txt', faAnyFile, searchResult) = 0 then exit;

  if local_comp=false then begin
    if OpenMutex(MUTEX_ALL_ACCESS, False, '2573648239') = 0 then CreateMutex(nil, False, '2573648239')
    else begin
      ShowMessage('Netsoccer 2 already running.');
      Halt;
    end;
  end;

  //tallennetaan viimeisin toimiva versio
  assignfile(texttied,'data/cver.txt');
  rewrite(texttied);
  writeln(texttied,versio);
  closefile(texttied);

  lataa_chat_settings;
  lataaSettings;

  Bmp := TBitmap.Create;
  try
    Bmp.Assign(Image1.Picture);
    FRegion := CreateRegion(Bmp);
    SetWindowRGN(Handle, FRegion, True);
    application.ProcessMessages;
  finally
    Bmp.Free;
  end;

//******************************************************************************

  UDPClient1:= TUDPClient.Create(Self);
  with UDPClient1 do begin
    OnData:= UDPClient1Data;
  end;
  UDPClient1.Port:='14473';

  UDPClient2:= TUDPClient.Create(Self);
  with UDPClient2 do begin
    OnData:= UDPClient2Data;
  end;
  UDPClient2.Port:='14474';

  TCPClient1:= TTCPClient.Create(Self);
  with TCPClient1 do begin
    OnData:= TCPClient1Data;
  end;
  TCPClient1.Port:='14473';

  TCPClient2:= TTCPClient.Create(Self);
  with TCPClient2 do begin
    OnData:= TCPClient2Data;
  end;

  TCPClient2.Host:=IP_osoite;
  TCPClient2.Port:='14472';

  HTTPGet1:=THTTPGet.Create(Self);
  with HTTPGet1 do begin
    OnDoneFile:=HTTPGet1DoneFile;
    BinaryData:=true;
  end;

//******************************************************************************


  timer1.Enabled:=true;

  idHTTP1:=TidHttp.create(nil);

  randomize;

end;

procedure TForm2.UDPClient1Data(Sender: TObject; Socket: Integer);
begin
           
  if Ingame_data.maxPlayers=5 then UDPRead5;
  if Ingame_data.maxPlayers=6 then UDPRead6;
  if Ingame_data.maxPlayers=7 then UDPRead7;
  if Ingame_data.maxPlayers=8 then UDPRead8;
  if Ingame_data.maxPlayers=9 then UDPRead9;
  if Ingame_data.maxPlayers=10 then UDPRead10;

end;

procedure TForm2.UDPClient2Data(Sender: TObject; Socket: Integer);
begin        
  if Ingame_data.maxPlayers=5 then UDPReadSpec5;
  if Ingame_data.maxPlayers=6 then UDPReadSpec6;
  if Ingame_data.maxPlayers=7 then UDPReadSpec7;
  if Ingame_data.maxPlayers=8 then UDPReadSpec8;
  if Ingame_data.maxPlayers=9 then UDPReadSpec9;
  if Ingame_data.maxPlayers=10 then UDPReadSpec10;
end;

procedure TForm2.TCPClient1Data(Sender: TObject; Socket: Integer); //GAMESERVER
var mtype: word;
begin

  TCPClient1.ReadBuffer(@mtype,sizeof(mtype));   //GAMESERVER

  if mtype=4 then begin //yhdistetty gameservulle
    mtype_4(Socket,mtype);
    exit;
  end;

  if mtype=223 then begin // chat - game public
    mtype_223;
    exit;
  end;

  if mtype=224 then begin // chat - game own team
    mtype_224;
    exit;
  end;

  if mtype=225 then begin // chat - PM
    mtype_225;
    exit;
  end;

  if mtype=226 then begin // chat - to team
    mtype_226;
    exit;
  end;

  if mtype=227 then begin // chat - to ownteam
    mtype_227;
    exit;
  end;

  if mtype=2623 then begin //gameserver ilmottaa mahtuuko servulle (public&challenge)
    mtype_2623;
    exit;
  end;

  if mtype=2626 then begin //gameserver ilmottaa, että join done (public)
    mtype_2626;
    exit;
  end;

  if mtype=2630 then begin //broadcastaus joinauksessta
    mtype_2630;
    exit;
  end;

  if mtype=3000 then begin //ilmoitus disconnectaajasta
    mtype_3000;
    exit;
  end;

  if mtype=3001 then begin //client on klikannut ready nappia, ja nyt vastaanotetaan muutos dataa
    mtype_3001;
    exit;
  end;

  if mtype=3002 then begin //client on swapannut joukkuetta
    mtype_3002;
    exit;
  end;

  if mtype=3003 then begin //aika enabled, true/ false
    mtype_3003;
    exit;
  end;

  if mtype=3004 then begin //gamestatus vastaanotto
    mtype_3004;
    exit;
  end;

  if mtype=3015 then begin //sound broadcast
    mtype_3015;
    exit;
  end;

  if mtype=3016 then begin //ilmoitus maalista
    mtype_3016;
    exit;
  end;

  if mtype=3022 then begin //homealoituspuoli
    mtype_3022;
    exit;
  end;

  if mtype=3023 then begin //ref liputukset
    mtype_3023;
    exit;
  end;

  if mtype=4000 then begin //vastaan otetaan dataa spektausta varten
    mtype_4000;
    exit;
  end;

  if mtype=5005 then begin //vastaanotetaan administratorin broadcast msg (joka tulee gameserverin kautta)
    mtype_5005;
    exit;
  end;

  if mtype=5007 then begin //info viesti, että challenge on luotu (joka tulee gameserverin kautta)
    mtype_5007;
    exit;
  end;

  if mtype=9004 then begin //info viesti gameservun kautta
    mtype_9004(Socket,mtype);
    exit;
  end;

  if mtype=9009 then begin //vastaanotetaan /team  (gameserverin kautta)
    mtype_9009(Socket,mtype);
    exit;
  end;

  if mtype=9012 then begin //vastaanotetaan /info  (gameserverin kautta)
    mtype_9012(Socket,mtype);
    exit;
  end;

  if mtype=9014 then begin //vastaanotetaan puoliaika dataa
    mtype_9014(Socket,mtype);
    exit;
  end;

  if mtype=9026 then begin //invalid password (privaservuun)
    mtype_9026(Socket,mtype);
    exit;
  end;

end;

procedure TForm2.TCPClient2Data(Sender: TObject; Socket: Integer); //LOBBY SERVER
var mtype: word;
begin

  TCPClient2.ReadBuffer(@mtype,sizeof(mtype));   //LOBBYSERVER

  if mtype=7 then begin //vastaanotetaan public servereitä
    mtype_7;
    exit;
  end;

  if mtype=13 then begin //vastaanotetaan publan tarkat tiedot
    mtype_13;
    exit;
  end;

  if mtype=15 then begin //invalid username or password duging login
    mtype_15;
    exit;
  end;

  if mtype=16 then begin //vastaan otetaan ilmoitus loginin onnistumisesta
    mtype_16;
    exit;
  end;

  if mtype=18 then begin //pelaaja rekisteröinti epäonnistui, koska nimi on jo käytössä
    mtype_18;
    exit;
  end;

  if mtype=21 then begin //joukkue rekisteröinti epäonnistui, koska nimi on jo käytössä
    mtype_21;
    exit;
  end;

  if mtype=22 then begin //joukkue rekisteröinti onnistui
    mtype_22;
    exit;
  end;

  if mtype=24 then begin //vastaanotetaan joukkue data
    mtype_24;
    exit;
  end;

  if mtype=28 then begin //vastaan otetaan public chat msg
    mtype_28;
    exit;
  end;

  if mtype=30 then begin //vastaan otetaan pelaaja data
    mtype_30;
    exit;
  end;

  if mtype=31 then begin //vastaan otetaan search
    mtype_31;
    exit;
  end;


  if mtype=34 then begin //vastaanotetaan oman pelaajan dataa
    mtype_34;
    exit;
  end;

  if mtype=35 then begin //ilmoitus inviten onnistumisesta
    mtype_35;
    exit;
  end;

  if mtype=36 then begin //ilmoitus inviten accept/rejectistä
    mtype_36;
    exit;
  end;

  if mtype=37 then begin //vastaanotetaan loppudata omasta pelaajasta
    mtype_37;
    exit;
  end;

  if mtype=38 then begin //vastaanotettiin pelaaja status muunnos
    mtype_38;
    exit;
  end;

  if mtype=39 then begin //pleasewait false
    mtype_39;
    exit;
  end;

  if mtype=40 then begin //joukkue jätetty
    mtype_40;
    exit;
  end;

  if mtype=41 then begin //invite peruutettu
    mtype_41;
    exit;
  end;

  if mtype=42 then begin //vastaan otetaan team loppudata1
    mtype_42;
    exit;
  end;

  if mtype=43 then begin //vastaan otetaan team loppudata2
    mtype_43;
    exit;
  end;

  if mtype=44 then begin //vastaan otetaan team loppudata3
    mtype_44;
    exit;
  end;

  if mtype=51 then begin //vastaan otetaan challenge listaa
    mtype_51(Socket,mtype);
    exit;
  end;

  if mtype=52 then begin //vastaanotetaan tietoja haastettavasta
    mtype_52;
    exit;
  end;

  if mtype=54 then begin // dataa challenge panel kakkoseen (missä paidat)
    mtype_54;
    exit;
  end;

  if mtype=57 then begin // receiving list of livescores
    mtype_57(Socket,mtype);
    exit;
  end;

  if mtype=58 then begin // tarkemmat tiedot haastematsista
    mtype_58;
    exit;
  end;

  if mtype=228 then begin //vastaan otetaan chat PM
    mtype_228;
    exit;
  end;

  if mtype=229 then begin //vastaan otetaan chat (to team PM)
    mtype_229;
    exit;
  end;

  if mtype=230 then begin //vastaan otetaan chat (to own team)
    mtype_230;
    exit;
  end;

  if mtype=235 then begin //vastaan otetaan pelaaja loppudataa
    mtype_235;
    exit;
  end;

  if mtype=239 then begin //lobbyserver on toimittanut version
    mtype_239;
    exit;
  end;

  if mtype=243 then begin //password change onnistui
    mtype_243(Socket,mtype);
    exit;
  end;

  if mtype=621 then begin //handshake
    mtype_621;
    exit;
  end;

  if mtype=5000 then begin // receiving 10 player stats
    mtype_5000;
    exit;
  end;

  if mtype=5004 then begin //vastaanotetaan administratorin broadcast msg
    mtype_5004;
    exit;
  end;

  if mtype=5006 then begin //info viesti, että challenge on luotu
    mtype_5006;
    exit;
  end;

  if mtype=5008 then begin //vip transfer done
    mtype_5008;
    exit;
  end;

  if mtype=5011 then begin //mainserver käskee pyytämään jotain tavaraa uudelleen
    mtype_5011;
    exit;
  end;

  if mtype=5014 then begin //superadmin vastaanottaa listan pelaajista
    mtype_5014(Socket,mtype);
    exit;
  end;

  if mtype=9000 then begin // receiving 10 public chatter names
    mtype_9000;
    exit;
  end;

  if mtype=9001 then begin // user joined to public chat
    mtype_9001(Socket,mtype);
    exit;
  end;

  if mtype=9002 then begin // user quits from public chat
    mtype_9002;
    exit;
  end;

  if mtype=9003 then begin //info viesti masterservun kautta
    mtype_9003(Socket,mtype);
    exit;
  end;

  if mtype=9007 then begin //vastaanotetaan /team
    mtype_9007(Socket,mtype);
    exit;
  end;

  if mtype=9010 then begin //vastaanotetaan /info
    mtype_9010(Socket,mtype);
    exit;
  end;

  if mtype=9013 then begin //username changed
    mtype_9013(Socket,mtype);
    exit;
  end;

  if mtype=9015 then begin //vastaanotetaan matchDetails (teamdata)
    mtype_9015(Socket,mtype);
    exit;
  end;

  if mtype=9016 then begin //vastaanotetaan matchDetails (pelaaja dataa)
    mtype_9016(Socket,mtype);
    exit;
  end;

  if mtype=9017 then begin //vastaanotetaan matchDetails (goal dataa)
    mtype_9017(Socket,mtype);
    exit;
  end;

  if mtype=9020 then begin //pelaajat samalta ip:ltä
    mtype_9020(Socket,mtype);
    exit;
  end;

  if mtype=9023 then begin //panaania
    mtype_9023(Socket,mtype);
    exit;
  end;

  if mtype=9024 then begin //vastaanotetaan lista gameservereistä
    mtype_9024(Socket,mtype);
    exit;
  end;

  if mtype=9025 then begin //privaservu luotu
    mtype_9025(Socket,mtype);
    exit;
  end;

end;


procedure TForm2.Timer1Timer(Sender: TObject);
begin
  Timer1.Enabled:=false;
  TCPClient2.Open;
end;

procedure TForm2.HTTPGet1DoneFile(Sender: TObject; FileName: String;
  FileSize: Integer);
begin       
  if httpkohde=1 then begin
    form1.Image8.Picture.LoadFromFile('data/logo.gif');
    form1.Image8.Visible:=true;
  end;

  if httpkohde=2 then begin
    form1.Image17.Picture.LoadFromFile('data/logo.gif');
    form1.Image17.Visible:=true;
  end;

end;

procedure TForm2.FormDestroy(Sender: TObject);
begin
  TCPClient1.Free;
  TCPClient2.Free;
  UDPClient1.Free;

  if Settings.sounds then Bass_Stop();
  if Settings.soundsLoaded then BASS_Free();

end;

procedure TForm2.Timer2Timer(Sender: TObject);
begin
  //täällä estetään, ettei saada dublikaatti viestejä
  ZeroMemory(@recent_msg, SizeOf(recent_msg));
end;

end.

