unit proseduurit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, sSkinProvider, sSkinManager, ExtCtrls, sPanel, StdCtrls,
  sComboBox, pngimage, sButton, sEdit, sLabel, sAlphaListBox, sCheckBox,
  sMemo, ComCtrls, acProgressBar, sTrackBar, sUpDown, Buttons, sBitBtn,
  sScrollBar, sGroupBox, sTreeView, sScrollBox, sFrameBar, ImgList, Menus,
  gifimage, sRichEdit,MMSystem,
  math, omegatimer,omegainput, typet, OmegaScreen,unit2,freepractise;

procedure panelit_kohdalleen;
procedure lataa_lobby_kuvat;
function tarkasta_login_register(pstr: string): boolean;
function tarkastetaan_ettei_invalid_kirjaimia(paik_nimi: string): boolean;
function tarkastetaan_kirjain(paik_kirj: string): boolean;
procedure please_wait(paik_bool: boolean);
procedure lataa_logo(p_str: string; paik_kohde: byte);
procedure tallenna_chat_settings(p_kohde, p_arvo: byte; clColor : TColor);
procedure lataa_favs_ja_ignores;
procedure lataa_chat_settings;
procedure aseta_chat_settings;
function nation_int_to_strshort(p_ind: smallint): string;
function nation_int_to_strlong(p_ind: smallint): string;
function nation_str_to_int(p_str: string): smallint;
procedure aseta_rectit(paik_lippu: byte);
procedure panel_visiblet(p_byte: byte);
procedure pyyda_pelaajan_tiedot(p_str: string);
function search_type(p_byte: byte): string;
procedure search(p_name, p_type: string);
procedure aseta_kit_colors(pimage: TImage; p_osa, p_style, pr1,pg1,pb1,pr2,pg2,pb2: byte);
procedure pyyda_joukkue_dataa(p_str: string; i_index: integer);
procedure muuta_invite_accrej(plabel: TsLabelFX; pbutton1, pbutton2: TsButton);
procedure vastaus_accrej(p_str: string; p_byte: byte);
procedure aseta_team_Players_General_info;
procedure aseta_team_Players_Administration;
procedure aseta_team_Records;
procedure aseta_team_Latest_scores;
procedure aseta_team_Invites;
procedure aseta_team_Settings;
procedure aseta_team_perustiedot;
function int_to_admin(p_byte: byte): string;
procedure liput_piiloon;
procedure label_putsaus;
procedure label_putsaus2;
procedure sorttaaChallengeTeams;
function explode(separator,value: string): TStringArray;
procedure onl_imaget_piiloon;
procedure admin_muutos(p_str, p_str2: string);
procedure muuta_admas_status(p_str: string; p_byte: byte);
function haePositio(yla,ala,vasen,oikea: integer): string;
procedure kit_colors;
procedure asun_varimuutos(p_osa,p_homeaway: byte);
procedure team_settings_visible(p_boolean: boolean);
procedure team_invites_piiloon;
procedure peruuta_invite(p_str: string);
procedure laskePelaajilleFramet;
procedure laskeGKFramet;
procedure ladataan_tekstuurit;
procedure hiiriRutiini;
procedure delayerit;
procedure searchByIndex(tyyppi: byte; id: string);
procedure piirraKentta;
procedure piirraKeeper(tID: byte);
function Angle(cx,cy,px,py: double): double;
function etaisyys(x1: real; y1: real; x2: real; y2: real): real;
procedure print(x, y: integer; nScale: single; ptext: string; pcol: TOmegaColor);
procedure printCenter(x, y: integer; nScale: single; ptext: string; pcol: TOmegaColor);
procedure pyydaPublanTarkatTiedot(labelID: integer);
procedure paivita_character;
procedure putsaaPublicServerLabelit;
procedure putsaaPlayerStatsLabelit;
procedure asun_varimuutosPrivateServer(p_osa,p_homeaway: byte);
procedure putsaaTeamStatsLabelit;
procedure lataaSettings;
procedure asetaPublicServers;
procedure aseta_challenge_kit_colors(pkit1,pkit2: byte);
procedure publicServersAlkuNollaukset;
function getphp(URL: string): string;
function laske_prossat(p1,p2: integer): string;
procedure aseta_career_datat;
procedure pyydaPublicServereita(nextI: integer);
procedure asetaPublicServer(pKer: integer; name: string; plrCount: byte; maxPlrs: byte; password: boolean);
procedure updateRutiini;
procedure piirraReadyPanel;
procedure draw2D(pPos_X,pPos_Y: integer; pImageName: string); overload;
procedure draw2D(pPos_X,pPos_Y,pPatternIndex: integer; pImageName: string; r,g,b: byte); overload;
procedure draw2D(pPos_X,pPos_Y,pPatternIndex: integer; pImageName: string); overload;
procedure UDPRead5;
procedure UDPRead6;
procedure UDPRead7;
procedure UDPRead8;
procedure UDPRead9;
procedure UDPRead10;
procedure UDPmsgSend;
procedure UDPmsgSendSpectator;
procedure UDPReadSpec5;
procedure UDPReadSpec6;
procedure UDPReadSpec7;
procedure UDPReadSpec8;
procedure UDPReadSpec9;
procedure UDPReadSpec10;
procedure deadReconing;
procedure kit_colors_privateServer;
procedure laskePelaajalleFrame(pID,tID: byte);
procedure laskeGKFrame(tID: byte);
procedure piirraPelaaja(pID, tID: byte);
procedure piirraPelaajat;
procedure piirraKeepers;
procedure piirraPelaajanOsa(pPos_X,pPos_Y: integer; pImageName: string; pPatternIndex, pBody,r,g,b: byte);
function getHairRGB(pID, tID: byte): TTripleByte;
function getSkinRGB(pID, tID: byte): TTripleByte;
function getShoeRGB(pID, tID: byte): TTripleByte;
procedure piirraPallo;
procedure siirraPalloaDeadReconing;
procedure pallonKorkeusLaskut(j: integer);
procedure piirraPowerBar;
procedure powerBarLaskut;
procedure piirraSmallfield;
procedure lRefRutiinit;
procedure laskeRefFrame(ID: byte);
function haeLocation(location: byte): string;
procedure piirraLinerefs;
procedure piirraQuitPanel;
function onkoJoReady: boolean;
procedure SendChatMsg(kohde: byte; kenelle, msg: string);
procedure AddChatMessage(p_name, p_team, p_msg: String; p_type: byte; kenelle: string);
procedure AddInfoMessage(msg: string);
procedure chatti_piirrot;
procedure chatKursori;
procedure laheta_peli_chat;
procedure aseta_chat_viesti_peli(pMSG: string; pColor: byte);
procedure textDraws;
procedure piirraChat(i: byte);
procedure piirraPanelit;
procedure piirraKeeperSyoksy(tID: byte);
procedure laskeAika;
procedure piirraMaalit;
procedure piirraStatsPanel;
procedure challengePanelAlkuNollaukset;
procedure pyydaChallengeTietoja(nextI: integer);
procedure asetaChallengeTeams;
procedure asetaLivescoret;
procedure putsaaChallengeTeamsLabelit;
procedure asetaChallengeTeam(pKer: integer; name: string; plrOnl: byte; rank: word; playing: boolean; location: byte);
procedure challengeTeamClick(name: string);
function laske_ranking(rank1,rank2: word): TRankLasku;
procedure LiveScoresAlkuNollaukset;
procedure putsaaLiveScoresLabelit;
procedure pyydaLiveScores(nextI: integer);
procedure asetaLivescore(pKer: integer; time, score1, score2: byte; name1, name2: string);
procedure matchClick(ID: smallint);
procedure pyydaPlayerStats(gameType, stat,i, nation: byte);
procedure playerStatsAlkuNollaukset;
procedure teamStatsAlkuNollaukset;
procedure asetaPlayerStats;
procedure asetaTeamStats;
procedure asetaStatsi(pKer: integer; sija: byte; name, team: string; apps, gls, asts, pass, tck, head: integer);
procedure pyydaTeamStats(nextI: byte);
procedure asetaTeamstat(pKer: integer; sija: byte; team: string; rank: integer);
procedure nollaaSocket;
function parseta_date(day,month,year,hour,minute: integer): string; overload;
function parseta_date(day,month,year: integer): string; overload;
procedure asetaLatestLabelit(bool: boolean);
procedure asetaLatest(top, latest_vastus: integer; latestNameH,vs,latestNameA,latestTulos,latestRankMuutos,latestDate,matchDet: TsLabelFX);
procedure asetaLatestVisiblet(latestNameH,vs,latestNameA,latestTulos,latestRankMuutos,latestDate,matchDet: TsLabelFX; visible: boolean);
procedure tallennaSettings;
procedure perusNollauksia;
procedure forminAsettelua;
procedure piilotaKickNapit;
procedure kickPlayer(name: string);
procedure sorttaaOmanJoukkueenPelaajatUudelleen;
procedure vainVipit;
procedure asetacharacterSysteemit(i: integer);
function disable_recent_msg(paik_socket: integer; paik_msg,paik_rand: word): boolean;
procedure add_recent_msg(paik_socket: integer; paik_msg,paik_rand: word);
procedure tormaysTarkastus;
function teamCommand(str: string): boolean;
procedure sendTeamCommandMS;
procedure sendInfoCommandMS(str: string);
procedure sendInfoCommandGS(str: string);
function infoCommand(str: string): string;
procedure asetaTekstitControlNappeihin;
procedure controlVisiblet;
procedure asetaNappaimet;
procedure pyydaMatchDetails(mID: byte);
procedure pyydaMatchDetPelaajadata(nextI: integer; mID: byte);
procedure pyydaMatchDetGoaldata(nextI: integer; mID: byte);
procedure asetaMatchDetOverview;
function laskeMatchDetMaalit(tID: byte): byte;
function selvitaPelaajanTeamMatchDetails(pID: integer): byte;
procedure asetaMaalintekijatMatchDetails;
function parsiViimenenMerkki(pStr,merkki: string): string;
function selvitaPelaajanNameMatchDetails(pID: integer): string;
procedure actionzoneVisiblet(b: boolean);
procedure MDplayerstatsVisiblet(b: boolean);
procedure asetaMatchDetActionZones;
procedure laskeActionzonePros(ID: integer; panel: TsPanel; label1: TsLabelFX);
procedure asetteleMatchDetailsKohdilleen;
procedure asetaMatchDetPlayedStats(tID: byte);
procedure asetaMDplrStats(forI: integer; pas: TsLabelFX; pasb: TsLabelFX; tck: TsLabelFX; tckb: TsLabelFX; hea: TsLabelFX; heab: TsLabelFX; sho: TsLabelFX; shob: TsLabelFX; ast: TsLabelFX; gls: TsLabelFX; name: TsLabelFX; off: TsLabelFX; min: TsLabelFX);
function laskePelaajanMaalitMD(pID: integer): byte;
procedure overviewVisiblet(b: boolean);
function ValidEmail(email: string): boolean;
function kickAdminKicks(str: string): boolean;
function kickAdminKicksIngame(str: string): boolean;
function adminRequestListOfPlayers(str: string): boolean;
function superAdminBanRequest(str: string): boolean;
procedure forceKick;
function onkoNumero(str: string): boolean;
procedure freePractiseQuit;
procedure asetaPublaPlayerName(pID,tID: byte; username: string);
function isPersonIgnored(str: string): boolean;
procedure loadFilterSettings;
procedure saveFilterSettings;
procedure sendChatFromFreePractise;
procedure quitIlmoitusSpecModesta;

implementation

uses unit1, muuttujat, unit3, unit4;

procedure quitIlmoitusSpecModesta;
type
  TSpecQuit = record
    mtype: word;
    mtype2: word;
    ra: word;
  end;
var
  SpecQuit: TSpecQuit;
begin

  SpecQuit.mtype:=4001;
  SpecQuit.mtype2:=4001;
  SpecQuit.ra:=random(55000)+1;
  TCPClient1.WriteBuffer(@SpecQuit,sizeof(SpecQuit));

end;

function isPersonIgnored(str: string): boolean;
var i: integer;
begin
  result:=false;
  if str='' then exit;

  for i:=0 to form1.sListbox3.Count-1 do
    if form1.sListbox3.Items[i]=str then begin
      result:=true;
      exit;
    end;

end;

procedure asetaPublaPlayerName(pID,tID: byte; username: string);
begin

  if tID=1 then begin
    if pID=1 then form1.trainingPlrNameH1.Caption:=username;
    if pID=2 then form1.trainingPlrNameH2.Caption:=username;
    if pID=3 then form1.trainingPlrNameH3.Caption:=username;
    if pID=4 then form1.trainingPlrNameH4.Caption:=username;
    if pID=5 then form1.trainingPlrNameH5.Caption:=username;
    if pID=6 then form1.trainingPlrNameH6.Caption:=username;
    if pID=7 then form1.trainingPlrNameH7.Caption:=username;
    if pID=8 then form1.trainingPlrNameH8.Caption:=username;
    if pID=9 then form1.trainingPlrNameH9.Caption:=username;
    if pID=10 then form1.trainingPlrNameH10.Caption:=username;
  end;

  if tID=2 then begin
    if pID=1 then form1.trainingPlrNameA1.Caption:=username;
    if pID=2 then form1.trainingPlrNameA2.Caption:=username;
    if pID=3 then form1.trainingPlrNameA3.Caption:=username;
    if pID=4 then form1.trainingPlrNameA4.Caption:=username;
    if pID=5 then form1.trainingPlrNameA5.Caption:=username;
    if pID=6 then form1.trainingPlrNameA6.Caption:=username;
    if pID=7 then form1.trainingPlrNameA7.Caption:=username;
    if pID=8 then form1.trainingPlrNameA8.Caption:=username;
    if pID=9 then form1.trainingPlrNameA9.Caption:=username;
    if pID=10 then form1.trainingPlrNameA10.Caption:=username;
  end;

end;

procedure freePractiseQuit;
begin
  form3.OmegaScreen1.ToggleFullscreen;
  form3.Visible:=false;
  form3.omegatimer1.Enabled:=false;

  stop_sound;
  please_Wait(false);

  form1.Visible:=true;

end;

function onkoNumero(str: string): boolean;
begin

  result:=false;

  if str='0' then result:=true;
  if str='1' then result:=true;
  if str='2' then result:=true;
  if str='3' then result:=true;
  if str='4' then result:=true;
  if str='5' then result:=true;
  if str='6' then result:=true;
  if str='7' then result:=true;
  if str='8' then result:=true;
  if str='9' then result:=true;

end;

procedure forceKick;
type
  TPaketti = record
    mtype: word;
    mtype2: word;
    ra: word;
    sID: smallint;
    pID: byte;
    tID: byte;
  end;
var
  Paketti: TPaketti;
begin
  form3.OmegaScreen1.ToggleFullscreen;
  form3.Visible:=false;
  form3.omegatimer1.Enabled:=false;
        
  form1.Timer1.Enabled:=false;
  stop_sound;
  please_Wait(false);

  form1.Visible:=true;

  UDPClient1.Close;

  Paketti.mtype:=3000;
  Paketti.mtype2:=3000;
  Paketti.ra:=random(55000)+1;
  Paketti.sID:=selectedServerID;
  Paketti.pID:=Ingame_data.omaPeliIndex;
  Paketti.tID:=Ingame_data.omaPeliTeamIndex;
  TCPClient1.WriteBuffer(@Paketti,sizeof(Paketti));

  TCPClient1.Close;
  form1.sButton14.Visible:=false;
  form1.sButton14.enabled:=false;

  Ingame_data.quitPanel:=false;

end;

function superAdminBanRequest(str: string): boolean;
type
  TRequestPlayerBan = record
    mtype: word;
    mtype2: word;
    ra: word;
    username:string[15];
  end;
var
  RequestPlayerBan: TRequestPlayerBan;
  i: integer;
begin

  result:=false;
  if length(str)<6 then exit;
  if not (str[1]='/') or not (str[2]='b') or not (str[3]='a') or not (str[4]='n') or not
     (str[5]=' ') then exit;

  RequestPlayerBan.username:='';
  for i:=6 to length(str) do
    RequestPlayerBan.username:=RequestPlayerBan.username+str[i];

  RequestPlayerBan.mtype:=5015;
  RequestPlayerBan.mtype2:=5015;
  RequestPlayerBan.ra:=random(55000)+1;
  TCPClient2.WriteBuffer(@RequestPlayerBan,sizeof(RequestPlayerBan));

  form1.sedit1.Text:='';

  result:=true;

end;

function adminRequestListOfPlayers(str: string): boolean;
type
  TRequestPlayerList = record
    mtype: word;
    mtype2: word;
    ra: word;
    serverID: integer;
  end;
var
  RequestPlayerList: TRequestPlayerList;
  i: integer;
  pstr: string;
begin

  result:=false;
  if length(str)<7 then exit;
  if not (str[1]='/') or not (str[2]='l') or not (str[3]='i') or not (str[4]='s') or not
     (str[5]='t') or not (str[6]=' ') then exit;

  pstr:='';
  for i:=7 to length(str) do begin
    if onkoNumero(str[i])=false then exit;
    pstr:=pstr+str[i];
  end;

  RequestPlayerList.mtype:=5014;
  RequestPlayerList.mtype2:=5014;
  RequestPlayerList.ra:=random(55000)+1;
  RequestPlayerList.serverID:=strtoint(pstr);
  TCPClient2.WriteBuffer(@RequestPlayerList,sizeof(RequestPlayerList));

  form1.sedit1.Text:='';

  result:=true;

end;

function kickAdminKicks(str: string): boolean;
type
  TKickAdmin = record
    mtype: word;
    mtype2: word;
    ra: word;
    username: string[15];
  end;
var
  KickAdmin: TKickAdmin;
  i: integer;
begin

  result:=false;
  if length(str)<7 then exit;
  if not (str[1]='/') or not (str[2]='k') or not (str[3]='i') or not (str[4]='c') or not
     (str[5]='k') or not (str[6]=' ') then exit;

  KickAdmin.username:='';
  for i:=7 to length(str) do
    KickAdmin.username:=KickAdmin.username+str[i];

  KickAdmin.mtype:=5013;
  KickAdmin.mtype2:=5013;
  KickAdmin.ra:=random(55000)+1;
  TCPClient2.WriteBuffer(@KickAdmin,sizeof(KickAdmin));

  form1.sedit1.Text:='';

  result:=true;

end;

function kickAdminKicksIngame(str: string): boolean;
type
  TKickAdmin = record
    mtype: word;
    mtype2: word;
    ra: word;
    username: string[15];
    socket: integer;
  end;
var
  KickAdmin: TKickAdmin;
  i: integer;
begin

  result:=false;
  if length(str)<7 then exit;
  if not (str[1]='/') or not (str[2]='k') or not (str[3]='i') or not (str[4]='c') or not
     (str[5]='k') or not (str[6]=' ') then exit;

  KickAdmin.username:='';
  for i:=7 to length(str) do
    KickAdmin.username:=KickAdmin.username+str[i];

  KickAdmin.mtype:=5016;
  KickAdmin.mtype2:=5016;
  KickAdmin.ra:=random(55000)+1;
  KickAdmin.socket:=oma_socket;
  TCPClient1.WriteBuffer(@KickAdmin,sizeof(KickAdmin));

  chat_lause:='';
  chat_mode:=0;

  result:=true;

end;

procedure asetteleMatchDetailsKohdilleen;
begin
  form1.Image24.Left:=205;
  form1.Image24.top:=96;
  form1.Image24.width:=502;
  form1.Image24.height:=308;

  form1.acZone1.Left:=216;
  form1.acZone2.Left:=280;
  form1.acZone3.Left:=396;
  form1.acZone4.Left:=460;
  form1.acZone5.Left:=576;
  form1.acZone6.Left:=640;

  form1.acZoneLabel1.Left:=232;
  form1.acZoneLabel2.Left:=296;
  form1.acZoneLabel3.Left:=412;
  form1.acZoneLabel4.Left:=476;
  form1.acZoneLabel5.Left:=592;
  form1.acZoneLabel6.Left:=656;

  form1.acZoneLabel1.top:=384;
  form1.acZoneLabel2.top:=384;
  form1.acZoneLabel3.top:=384;
  form1.acZoneLabel4.top:=384;
  form1.acZoneLabel5.top:=384;
  form1.acZoneLabel6.top:=384;

  form1.MDpasb1.Left:=280;
  form1.MDpasb2.Left:=280;
  form1.MDpasb3.Left:=280;
  form1.MDpasb4.Left:=280;
  form1.MDpasb5.Left:=280;
  form1.MDpasb6.Left:=280;
  form1.MDpasb7.Left:=280;
  form1.MDpasb8.Left:=280;
  form1.MDpasb9.Left:=280;
  form1.MDpasb10.Left:=280;
  form1.MDpasb11.Left:=280;
  form1.MDpasb12.Left:=280;
  form1.MDpasb13.Left:=280;
  form1.MDpasb14.Left:=280;
  form1.MDpasb15.Left:=280;

  form1.MDtck1.Left:=312;
  form1.MDtck2.Left:=312;
  form1.MDtck3.Left:=312;
  form1.MDtck4.Left:=312;
  form1.MDtck5.Left:=312;
  form1.MDtck6.Left:=312;
  form1.MDtck7.Left:=312;
  form1.MDtck8.Left:=312;
  form1.MDtck9.Left:=312;
  form1.MDtck10.Left:=312;
  form1.MDtck11.Left:=312;
  form1.MDtck12.Left:=312;
  form1.MDtck13.Left:=312;
  form1.MDtck14.Left:=312;
  form1.MDtck15.Left:=312;

  form1.MDtckb1.Left:=336;
  form1.MDtckb2.Left:=336;
  form1.MDtckb3.Left:=336;
  form1.MDtckb4.Left:=336;
  form1.MDtckb5.Left:=336;
  form1.MDtckb6.Left:=336;
  form1.MDtckb7.Left:=336;
  form1.MDtckb8.Left:=336;
  form1.MDtckb9.Left:=336;
  form1.MDtckb10.Left:=336;
  form1.MDtckb11.Left:=336;
  form1.MDtckb12.Left:=336;
  form1.MDtckb13.Left:=336;
  form1.MDtckb14.Left:=336;
  form1.MDtckb15.Left:=336;

  form1.MDhea1.Left:=368;
  form1.MDhea2.Left:=368;
  form1.MDhea3.Left:=368;
  form1.MDhea4.Left:=368;
  form1.MDhea5.Left:=368;
  form1.MDhea6.Left:=368;
  form1.MDhea7.Left:=368;
  form1.MDhea8.Left:=368;
  form1.MDhea9.Left:=368;
  form1.MDhea10.Left:=368;
  form1.MDhea11.Left:=368;
  form1.MDhea12.Left:=368;
  form1.MDhea13.Left:=368;
  form1.MDhea14.Left:=368;
  form1.MDhea15.Left:=368;

  form1.MDheab1.Left:=392;
  form1.MDheab2.Left:=392;
  form1.MDheab3.Left:=392;
  form1.MDheab4.Left:=392;
  form1.MDheab5.Left:=392;
  form1.MDheab6.Left:=392;
  form1.MDheab7.Left:=392;
  form1.MDheab8.Left:=392;
  form1.MDheab9.Left:=392;
  form1.MDheab10.Left:=392;
  form1.MDheab11.Left:=392;
  form1.MDheab12.Left:=392;
  form1.MDheab13.Left:=392;
  form1.MDheab14.Left:=392;
  form1.MDheab15.Left:=392;

  form1.MDsho1.Left:=424;
  form1.MDsho2.Left:=424;
  form1.MDsho3.Left:=424;
  form1.MDsho4.Left:=424;
  form1.MDsho5.Left:=424;
  form1.MDsho6.Left:=424;
  form1.MDsho7.Left:=424;
  form1.MDsho8.Left:=424;
  form1.MDsho9.Left:=424;
  form1.MDsho10.Left:=424;
  form1.MDsho11.Left:=424;
  form1.MDsho12.Left:=424;
  form1.MDsho13.Left:=424;
  form1.MDsho14.Left:=424;
  form1.MDsho15.Left:=424;

  form1.MDshob1.Left:=448;
  form1.MDshob2.Left:=448;
  form1.MDshob3.Left:=448;
  form1.MDshob4.Left:=448;
  form1.MDshob5.Left:=448;
  form1.MDshob6.Left:=448;
  form1.MDshob7.Left:=448;
  form1.MDshob8.Left:=448;
  form1.MDshob9.Left:=448;
  form1.MDshob10.Left:=448;
  form1.MDshob11.Left:=448;
  form1.MDshob12.Left:=448;
  form1.MDshob13.Left:=448;
  form1.MDshob14.Left:=448;
  form1.MDshob15.Left:=448;

  form1.MDoff1.Left:=480;
  form1.MDoff2.Left:=480;
  form1.MDoff3.Left:=480;
  form1.MDoff4.Left:=480;
  form1.MDoff5.Left:=480;
  form1.MDoff6.Left:=480;
  form1.MDoff7.Left:=480;
  form1.MDoff8.Left:=480;
  form1.MDoff9.Left:=480;
  form1.MDoff10.Left:=480;
  form1.MDoff11.Left:=480;
  form1.MDoff12.Left:=480;
  form1.MDoff13.Left:=480;
  form1.MDoff14.Left:=480;
  form1.MDoff15.Left:=480;

  form1.MDast1.Left:=512;
  form1.MDast2.Left:=512;
  form1.MDast3.Left:=512;
  form1.MDast4.Left:=512;
  form1.MDast5.Left:=512;
  form1.MDast6.Left:=512;
  form1.MDast7.Left:=512;
  form1.MDast8.Left:=512;
  form1.MDast9.Left:=512;
  form1.MDast10.Left:=512;
  form1.MDast11.Left:=512;
  form1.MDast12.Left:=512;
  form1.MDast13.Left:=512;
  form1.MDast14.Left:=512;
  form1.MDast15.Left:=512;

  form1.MDgls1.Left:=536;
  form1.MDgls2.Left:=536;
  form1.MDgls3.Left:=536;
  form1.MDgls4.Left:=536;
  form1.MDgls5.Left:=536;
  form1.MDgls6.Left:=536;
  form1.MDgls7.Left:=536;
  form1.MDgls8.Left:=536;
  form1.MDgls9.Left:=536;
  form1.MDgls10.Left:=536;
  form1.MDgls11.Left:=536;
  form1.MDgls12.Left:=536;
  form1.MDgls13.Left:=536;
  form1.MDgls14.Left:=536;
  form1.MDgls15.Left:=536;

  form1.MDmin1.Left:=568;
  form1.MDmin2.Left:=568;
  form1.MDmin3.Left:=568;
  form1.MDmin4.Left:=568;
  form1.MDmin5.Left:=568;
  form1.MDmin6.Left:=568;
  form1.MDmin7.Left:=568;
  form1.MDmin8.Left:=568;
  form1.MDmin9.Left:=568;
  form1.MDmin10.Left:=568;
  form1.MDmin11.Left:=568;
  form1.MDmin12.Left:=568;
  form1.MDmin13.Left:=568;
  form1.MDmin14.Left:=568;
  form1.MDmin15.Left:=568;
end;

function haeLocation(location: byte): string;
begin
  result:='';
  if location=1 then result:='Europe';
  if location=2 then result:='South america';
end;

procedure asetaMatchDetOverview;
begin

  form1.sLabelFX161.Caption:=Matchdetails.name[1];
  form1.sLabelFX163.Caption:=Matchdetails.name[2];
  form1.sLabelFX162.Caption:=inttostr(laskeMatchDetMaalit(1));
  form1.sLabelFX164.Caption:=inttostr(laskeMatchDetMaalit(2));

  asetaMaalintekijatMatchDetails;

  MDplayerstatsVisiblet(false);
  actionzoneVisiblet(false);
  overviewVisiblet(true);

end;

procedure asetaMatchDetActionZones;
begin

  laskeActionzonePros(1,form1.acZone1,form1.acZoneLabel1);
  laskeActionzonePros(2,form1.acZone2,form1.acZoneLabel2);
  laskeActionzonePros(3,form1.acZone3,form1.acZoneLabel3);
  laskeActionzonePros(4,form1.acZone4,form1.acZoneLabel4);
  laskeActionzonePros(5,form1.acZone5,form1.acZoneLabel5);
  laskeActionzonePros(6,form1.acZone6,form1.acZoneLabel6);

  overviewVisiblet(false);
  MDplayerstatsVisiblet(false);
  actionzoneVisiblet(true);

end;

procedure asetaMatchDetPlayedStats(tID: byte);
var i: integer;
    pKer: byte;
begin

  overviewVisiblet(false);
  MDplayerstatsVisiblet(false);

  pKer:=0;

  for i:=0 to high(MatchDetails.id) do begin
    if selvitaPelaajanTeamMatchDetails(MatchDetails.id[i])=tID then begin
      inc(pKer);
      if pKer=1 then asetaMDplrStats(i,form1.MDpas1,form1.MDpasb1,form1.MDtck1,form1.MDtckb1,form1.MDhea1,form1.MDheab1,form1.MDsho1,form1.MDshob1,form1.MDast1,form1.MDgls1,form1.MDScorerH1,form1.MDoff1,form1.MDmin1);
      if pKer=2 then asetaMDplrStats(i,form1.MDpas2,form1.MDpasb2,form1.MDtck2,form1.MDtckb2,form1.MDhea2,form1.MDheab2,form1.MDsho2,form1.MDshob2,form1.MDast2,form1.MDgls2,form1.MDScorerH2,form1.MDoff2,form1.MDmin2);
      if pKer=3 then asetaMDplrStats(i,form1.MDpas3,form1.MDpasb3,form1.MDtck3,form1.MDtckb3,form1.MDhea3,form1.MDheab3,form1.MDsho3,form1.MDshob3,form1.MDast3,form1.MDgls3,form1.MDScorerH3,form1.MDoff3,form1.MDmin3);
      if pKer=4 then asetaMDplrStats(i,form1.MDpas4,form1.MDpasb4,form1.MDtck4,form1.MDtckb4,form1.MDhea4,form1.MDheab4,form1.MDsho4,form1.MDshob4,form1.MDast4,form1.MDgls4,form1.MDScorerH4,form1.MDoff4,form1.MDmin4);
      if pKer=5 then asetaMDplrStats(i,form1.MDpas5,form1.MDpasb5,form1.MDtck5,form1.MDtckb5,form1.MDhea5,form1.MDheab5,form1.MDsho5,form1.MDshob5,form1.MDast5,form1.MDgls5,form1.MDScorerH5,form1.MDoff5,form1.MDmin5);
      if pKer=6 then asetaMDplrStats(i,form1.MDpas6,form1.MDpasb6,form1.MDtck6,form1.MDtckb6,form1.MDhea6,form1.MDheab6,form1.MDsho6,form1.MDshob6,form1.MDast6,form1.MDgls6,form1.MDScorerH6,form1.MDoff6,form1.MDmin6);
      if pKer=7 then asetaMDplrStats(i,form1.MDpas7,form1.MDpasb7,form1.MDtck7,form1.MDtckb7,form1.MDhea7,form1.MDheab7,form1.MDsho7,form1.MDshob7,form1.MDast7,form1.MDgls7,form1.MDScorerH7,form1.MDoff7,form1.MDmin7);
      if pKer=8 then asetaMDplrStats(i,form1.MDpas8,form1.MDpasb8,form1.MDtck8,form1.MDtckb8,form1.MDhea8,form1.MDheab8,form1.MDsho8,form1.MDshob8,form1.MDast8,form1.MDgls8,form1.MDScorerH8,form1.MDoff8,form1.MDmin8);
      if pKer=9 then asetaMDplrStats(i,form1.MDpas9,form1.MDpasb9,form1.MDtck9,form1.MDtckb9,form1.MDhea9,form1.MDheab9,form1.MDsho9,form1.MDshob9,form1.MDast9,form1.MDgls9,form1.MDScorerH9,form1.MDoff9,form1.MDmin9);
      if pKer=10 then asetaMDplrStats(i,form1.MDpas10,form1.MDpasb10,form1.MDtck10,form1.MDtckb10,form1.MDhea10,form1.MDheab10,form1.MDsho10,form1.MDshob10,form1.MDast10,form1.MDgls10,form1.MDScorerH10,form1.MDoff10,form1.MDmin10);
      if pKer=11 then asetaMDplrStats(i,form1.MDpas11,form1.MDpasb11,form1.MDtck11,form1.MDtckb11,form1.MDhea11,form1.MDheab11,form1.MDsho11,form1.MDshob11,form1.MDast11,form1.MDgls11,form1.MDScorerH11,form1.MDoff11,form1.MDmin11);
      if pKer=12 then asetaMDplrStats(i,form1.MDpas12,form1.MDpasb12,form1.MDtck12,form1.MDtckb12,form1.MDhea12,form1.MDheab12,form1.MDsho12,form1.MDshob12,form1.MDast12,form1.MDgls12,form1.MDScorerH12,form1.MDoff12,form1.MDmin12);
      if pKer=13 then asetaMDplrStats(i,form1.MDpas13,form1.MDpasb13,form1.MDtck13,form1.MDtckb13,form1.MDhea13,form1.MDheab13,form1.MDsho13,form1.MDshob13,form1.MDast13,form1.MDgls13,form1.MDScorerH13,form1.MDoff13,form1.MDmin13);
      if pKer=14 then asetaMDplrStats(i,form1.MDpas14,form1.MDpasb14,form1.MDtck14,form1.MDtckb14,form1.MDhea14,form1.MDheab14,form1.MDsho14,form1.MDshob14,form1.MDast14,form1.MDgls14,form1.MDScorerH14,form1.MDoff14,form1.MDmin14);
      if pKer=15 then asetaMDplrStats(i,form1.MDpas15,form1.MDpasb15,form1.MDtck15,form1.MDtckb15,form1.MDhea15,form1.MDheab15,form1.MDsho15,form1.MDshob15,form1.MDast15,form1.MDgls15,form1.MDScorerH15,form1.MDoff15,form1.MDmin15);
    end;
  end;

  actionzoneVisiblet(false);

  form1.sLabelFX165.visible:=true;
  form1.sLabelFX166.visible:=true;
  form1.sLabelFX167.visible:=true;
  form1.sLabelFX168.visible:=true;
  form1.sLabelFX169.visible:=true;
  form1.sLabelFX170.visible:=true;
  form1.sLabelFX171.visible:=true;
  form1.sLabelFX172.visible:=true;
  form1.sLabelFX173.visible:=true;
  form1.sLabelFX174.visible:=true;
  form1.sLabelFX175.visible:=true;
  form1.sLabelFX176.visible:=true;

end;

//*********************************

procedure asetaMDplrStats(forI: integer; pas: TsLabelFX; pasb: TsLabelFX; tck: TsLabelFX; tckb: TsLabelFX; hea: TsLabelFX; heab: TsLabelFX; sho: TsLabelFX; shob: TsLabelFX; ast: TsLabelFX; gls: TsLabelFX; name: TsLabelFX; off: TsLabelFX; min: TsLabelFX);
var mins: integer;
begin

  mins:=MatchDetails.position[forI].pos[1]+MatchDetails.position[forI].pos[2];
  mins:=round(1/790*mins*90);
  //1580
  //150
  //1620
  name.caption:=MatchDetails.username[forI];
  pas.caption:=inttostr(MatchDetails.passing[forI].stats[1]);
  pasb.caption:=inttostr(MatchDetails.passing[forI].stats[2]);
  tck.caption:=inttostr(MatchDetails.tackling[forI].stats[1]);
  tckb.caption:=inttostr(MatchDetails.tackling[forI].stats[2]);
  hea.caption:=inttostr(MatchDetails.heading[forI].stats[1]+MatchDetails.heading[forI].stats[2]);
  heab.caption:=inttostr(MatchDetails.heading[forI].stats[2]);
  sho.caption:=inttostr(MatchDetails.shots[forI].stats[1]);
  shob.caption:=inttostr(MatchDetails.shots[forI].stats[2]);
  ast.caption:=inttostr(MatchDetails.assists[forI]);
  gls.caption:=inttostr(laskePelaajanMaalitMD(MatchDetails.id[forI]));
  off.caption:=inttostr(MatchDetails.offsides[forI]);
  min.caption:=inttostr(mins);

  name.Visible:=true;
  pas.Visible:=true;
  pasb.Visible:=true;
  tck.Visible:=true;
  tckb.Visible:=true;
  hea.Visible:=true;
  heab.Visible:=true;
  sho.Visible:=true;
  shob.Visible:=true;
  ast.Visible:=true;
  gls.Visible:=true;
  min.Visible:=true;
  off.Visible:=true;

end;

function laskePelaajanMaalitMD(pID: integer): byte;
var i: integer;
begin
  result:=0;

  if high(MatchDetails.scorerID)<0 then exit;

  for i:=0 to high(MatchDetails.scorerID) do begin
    if (MatchDetails.scorerID[i]=pID) and (MatchDetails.ownGoal[i]=0) then inc(result);
  end;

end;

procedure laskeActionzonePros(ID: integer; panel: TsPanel; label1: TsLabelFX);
var
  yht: integer;
  pros: integer;
  count: integer;
begin

  count:=0;

  if ID=1 then count:=MatchDetails.homeAreaPossession[1];
  if ID=2 then count:=MatchDetails.awayAreaPossession[2];
  if ID=3 then count:=MatchDetails.middleAreaPossession[1];
  if ID=4 then count:=MatchDetails.middleAreaPossession[2];
  if ID=5 then count:=MatchDetails.awayAreaPossession[1];
  if ID=6 then count:=MatchDetails.homeAreaPossession[2];

  if (ID=1) or (ID=3) or (ID=5) then
    panel.Color:=rgb(MatchDetails.shirt_colors[1,1],MatchDetails.shirt_colors[1,2],MatchDetails.shirt_colors[1,3]);
  if (ID=2) or (ID=4) or (ID=6) then
    panel.Color:=rgb(MatchDetails.shirt_colors[2,1],MatchDetails.shirt_colors[2,2],MatchDetails.shirt_colors[2,3]);

  yht:=MatchDetails.homeAreaPossession[1]+MatchDetails.homeAreaPossession[2]+MatchDetails.middleAreaPossession[1]+MatchDetails.middleAreaPossession[2]+MatchDetails.awayAreaPossession[1]+MatchDetails.awayAreaPossession[2];

  pros:=round(100/yht*count);
  label1.caption:=inttostr(pros)+'%';
  pros:=pros*3;

  panel.Height:=pros;
  panel.Top:=381-panel.Height;

end;

procedure asetaMaalintekijatMatchDetails;
type
  TTempMatchdetails = record
    scorerID: array of integer;
    aika: array of byte;
    ownGoal: array of byte;
  end;
var
  TempMatchdetails: TTempMatchdetails;
  i,j: integer;
  pID: integer;
  ownGoal: byte;
  str: string;
  strArray: array of string;
begin

  if high(Matchdetails.scorerID)<0 then exit;

//******************************************************************************

  setlength(strArray,0);
  setlength(TempMatchdetails.scorerID,high(Matchdetails.scorerID)+1);
  setlength(TempMatchdetails.aika,high(Matchdetails.scorerID)+1);
  setlength(TempMatchdetails.ownGoal,high(Matchdetails.scorerID)+1);
  for i:=0 to high(Matchdetails.scorerID) do begin
    TempMatchdetails.scorerID[i]:=Matchdetails.scorerID[i];
    TempMatchdetails.aika[i]:=Matchdetails.aika[i];
    TempMatchdetails.ownGoal[i]:=Matchdetails.ownGoal[i];
  end;

  for i:=0 to high(TempMatchdetails.scorerID) do begin
    str:='';
    if ((selvitaPelaajanTeamMatchDetails(TempMatchdetails.scorerID[i])=1) and (TempMatchdetails.owngoal[i]=0)) or
       ((selvitaPelaajanTeamMatchDetails(TempMatchdetails.scorerID[i])=2) and (TempMatchdetails.owngoal[i]=1)) then begin
    if TempMatchdetails.scorerID[i]>0 then begin

      str:=selvitaPelaajanNameMatchDetails(TempMatchdetails.scorerID[i]);
      pID:=TempMatchdetails.scorerID[i];
      ownGoal:=TempMatchdetails.ownGoal[i];
      if ownGoal=1 then str:=str+' own goal ';
      str:=str+' (';

      for j:=0 to high(TempMatchdetails.scorerID) do begin
        if TempMatchdetails.scorerID[j]>0 then begin
        if (TempMatchdetails.scorerID[j]=pID) and (TempMatchdetails.ownGoal[j]=ownGoal) then begin
          str:=str+inttostr(TempMatchdetails.aika[j])+',';
          TempMatchdetails.scorerID[j]:=0;
        end;
        end;
      end;
      str:=parsiViimenenMerkki(str,',');
      str:=str+')';
      setlength(strArray,high(strArray)+2);
      strArray[high(strArray)]:=str;
    end;
    end;
  end;

  if high(strArray)>-1 then form1.MDScorerH1.Caption:=strArray[0] else form1.MDScorerH1.Caption:='';
  if high(strArray)>0 then form1.MDScorerH2.Caption:=strArray[1] else form1.MDScorerH2.Caption:='';
  if high(strArray)>1 then form1.MDScorerH3.Caption:=strArray[2] else form1.MDScorerH3.Caption:='';
  if high(strArray)>2 then form1.MDScorerH4.Caption:=strArray[3] else form1.MDScorerH4.Caption:='';
  if high(strArray)>3 then form1.MDScorerH5.Caption:=strArray[4] else form1.MDScorerH5.Caption:='';
  if high(strArray)>4 then form1.MDScorerH6.Caption:=strArray[5] else form1.MDScorerH6.Caption:='';
  if high(strArray)>5 then form1.MDScorerH7.Caption:=strArray[6] else form1.MDScorerH7.Caption:='';
  if high(strArray)>6 then form1.MDScorerH8.Caption:=strArray[7] else form1.MDScorerH8.Caption:='';
  if high(strArray)>7 then form1.MDScorerH9.Caption:=strArray[8] else form1.MDScorerH9.Caption:='';
  if high(strArray)>8 then form1.MDScorerH10.Caption:=strArray[9] else form1.MDScorerH10.Caption:='';
  if high(strArray)>9 then form1.MDScorerH11.Caption:=strArray[10] else form1.MDScorerH11.Caption:='';
  if high(strArray)>10 then form1.MDScorerH12.Caption:=strArray[11] else form1.MDScorerH12.Caption:='';
  if high(strArray)>11 then form1.MDScorerH13.Caption:=strArray[12] else form1.MDScorerH13.Caption:='';
  if high(strArray)>12 then form1.MDScorerH14.Caption:=strArray[13] else form1.MDScorerH14.Caption:='';
  if high(strArray)>13 then form1.MDScorerH15.Caption:=strArray[14] else form1.MDScorerH15.Caption:='';

//******************************************************************************

  setlength(strArray,0);

  for i:=0 to high(TempMatchdetails.scorerID) do begin
    str:='';
    if ((selvitaPelaajanTeamMatchDetails(TempMatchdetails.scorerID[i])=2) and (TempMatchdetails.owngoal[i]=0)) or
       ((selvitaPelaajanTeamMatchDetails(TempMatchdetails.scorerID[i])=1) and (TempMatchdetails.owngoal[i]=1)) then begin
    if TempMatchdetails.scorerID[i]>0 then begin

      str:=selvitaPelaajanNameMatchDetails(TempMatchdetails.scorerID[i]);
      pID:=TempMatchdetails.scorerID[i];
      ownGoal:=TempMatchdetails.ownGoal[i];
      if ownGoal=1 then str:=str+' own goal ';
      str:=str+' (';

      for j:=0 to high(TempMatchdetails.scorerID) do begin
        if TempMatchdetails.scorerID[j]>0 then begin
        if (TempMatchdetails.scorerID[j]=pID) and (TempMatchdetails.ownGoal[j]=ownGoal) then begin
          str:=str+inttostr(TempMatchdetails.aika[j])+',';
          TempMatchdetails.scorerID[j]:=0;
        end;
        end;
      end;
      str:=parsiViimenenMerkki(str,',');
      str:=str+')';
      setlength(strArray,high(strArray)+2);
      strArray[high(strArray)]:=str;
    end;
    end;
  end;

  if high(strArray)>-1 then form1.MDScorerA1.Caption:=strArray[0] else form1.MDScorerA1.Caption:='';
  if high(strArray)>0 then form1.MDScorerA2.Caption:=strArray[1] else form1.MDScorerA2.Caption:='';
  if high(strArray)>1 then form1.MDScorerA3.Caption:=strArray[2] else form1.MDScorerA3.Caption:='';
  if high(strArray)>2 then form1.MDScorerA4.Caption:=strArray[3] else form1.MDScorerA4.Caption:='';
  if high(strArray)>3 then form1.MDScorerA5.Caption:=strArray[4] else form1.MDScorerA5.Caption:='';
  if high(strArray)>4 then form1.MDScorerA6.Caption:=strArray[5] else form1.MDScorerA6.Caption:='';
  if high(strArray)>5 then form1.MDScorerA7.Caption:=strArray[6] else form1.MDScorerA7.Caption:='';
  if high(strArray)>6 then form1.MDScorerA8.Caption:=strArray[7] else form1.MDScorerA8.Caption:='';
  if high(strArray)>7 then form1.MDScorerA9.Caption:=strArray[8] else form1.MDScorerA9.Caption:='';
  if high(strArray)>8 then form1.MDScorerA10.Caption:=strArray[9] else form1.MDScorerA10.Caption:='';
  if high(strArray)>9 then form1.MDScorerA11.Caption:=strArray[10] else form1.MDScorerA11.Caption:='';
  if high(strArray)>10 then form1.MDScorerA12.Caption:=strArray[11] else form1.MDScorerA12.Caption:='';
  if high(strArray)>11 then form1.MDScorerA13.Caption:=strArray[12] else form1.MDScorerA13.Caption:='';
  if high(strArray)>12 then form1.MDScorerA14.Caption:=strArray[13] else form1.MDScorerA14.Caption:='';
  if high(strArray)>13 then form1.MDScorerA15.Caption:=strArray[14] else form1.MDScorerA15.Caption:='';

end;

function laskeMatchDetMaalit(tID: byte): byte;
var i: integer;
begin
  result:=0;

  for i:=0 to high(Matchdetails.scorerID) do begin
    if selvitaPelaajanTeamMatchDetails(Matchdetails.scorerID[i])=tID then begin
      if Matchdetails.ownGoal[i]=0 then inc(result);
    end
    else begin
      if Matchdetails.ownGoal[i]=1 then inc(result);
    end;
  end;

end;

function selvitaPelaajanTeamMatchDetails(pID: integer): byte;
var i: integer;
begin

  result:=0;

  for i:=0 to high(Matchdetails.id) do
    if Matchdetails.id[i]=pID then begin
      result:=Matchdetails.joukkue[i];
      exit;
    end;

end;

function selvitaPelaajanNameMatchDetails(pID: integer): string;
var i: integer;
begin

  result:='';

  for i:=0 to high(Matchdetails.id) do
    if Matchdetails.id[i]=pID then begin
      result:=Matchdetails.username[i];
      exit;
    end;

end;

procedure asetaNappaimet;
begin
  Form3.OmegaInput1.Keyboard.KeyAssigns[oisLeft]:=VKtoDIK(Settings.controlDirections[1]);
  Form3.OmegaInput1.Keyboard.KeyAssigns[oisRight]:=VKtoDIK(Settings.controlDirections[2]);
  Form3.OmegaInput1.Keyboard.KeyAssigns[oisUp]:=VKtoDIK(Settings.controlDirections[3]);
  Form3.OmegaInput1.Keyboard.KeyAssigns[oisDown]:=VKtoDIK(Settings.controlDirections[4]);

  Form3.OmegaInput1.Keyboard.KeyAssigns[oisButton1]:=VKtoDIK(Settings.controlAction[1]);
  Form3.OmegaInput1.Keyboard.KeyAssigns[oisButton2]:=VKtoDIK(Settings.controlAction[2]);
  Form3.OmegaInput1.Keyboard.KeyAssigns[oisButton3]:=VKtoDIK(Settings.controlAction[3]);
  Form3.OmegaInput1.Keyboard.KeyAssigns[oisButton4]:=VKtoDIK(Settings.controlAction[4]);

end;

procedure sendTeamCommandGS;
type
  TTeamCmd = record
    mtype: word;
    mtype2: word;
    ra: word;
  end;
var
  TeamCmd: TTeamCmd;
begin

  TeamCmd.mtype:=9008;
  TeamCmd.mtype2:=9008;
  TeamCmd.ra:=random(55000)+1;
  TCPClient1.WriteBuffer(@TeamCmd,sizeof(TeamCmd));

end;

procedure sendInfoCommandMS(str: string);
type
  TInfoCmd = record
    mtype: word;
    mtype2: word;
    ra: word;
    name: string[15];
  end;
var
  InfoCmd: TInfoCmd;
begin

  InfoCmd.mtype:=9010;
  InfoCmd.mtype2:=9010;
  InfoCmd.ra:=random(55000)+1;
  InfoCmd.name:=str;
  TCPClient2.WriteBuffer(@InfoCmd,sizeof(InfoCmd));

end;

procedure sendInfoCommandGS(str: string);
type
  TInfoCmd = record
    mtype: word;
    mtype2: word;
    ra: word;
    name: string[15];
  end;
var
  InfoCmd: TInfoCmd;
begin

  InfoCmd.mtype:=9011;
  InfoCmd.mtype2:=9011;
  InfoCmd.ra:=random(55000)+1;
  InfoCmd.name:=str;
  TCPClient1.WriteBuffer(@InfoCmd,sizeof(InfoCmd));

end;

procedure sendTeamCommandMS;
type
  TTeamCmd = record
    mtype: word;
    mtype2: word;
    ra: word;
  end;
var
  TeamCmd: TTeamCmd;
begin

  TeamCmd.mtype:=9007;
  TeamCmd.mtype2:=9007;
  TeamCmd.ra:=random(55000)+1;
  TCPClient2.WriteBuffer(@TeamCmd,sizeof(TeamCmd));

end;

function teamCommand(str: string): boolean;
begin

  result:=false;
  if str='' then exit;
  if not (str[1]='/') then exit;
  str:=AnsiLowerCase(str);
  if oma_team=0 then exit;

  if length(str)=5 then
    if (str[2]='t') and
       (str[3]='e') and
       (str[4]='a') and
       (str[5]='m') then result:=true;

end;

function infoCommand(str: string): string;
var i: integer;
begin

  result:='';
  if str='' then exit;
  if not (str[1]='/') then exit;
  str:=AnsiLowerCase(str);

  if length(str)<7 then exit;

  if (str[2]='i') and
     (str[3]='n') and
     (str[4]='f') and
     (str[5]='o') then begin
     for i:=7 to length(str) do
      result:=result+str[i];
  end;

end;

function disable_recent_msg(paik_socket: integer; paik_msg,paik_rand: word): boolean;
var i: integer;
begin
  result:=false;

  for i:=1 to 10000 do begin
    if recent_msg[i,1]=paik_socket then begin
      if recent_msg[i,2]=paik_msg then begin
        if recent_msg[i,3]=paik_rand then begin
          result:=true;
          exit;
        end;
      end;
    end;
  end;

  add_recent_msg(paik_socket,paik_msg,paik_rand);

end;

procedure add_recent_msg(paik_socket: integer; paik_msg,paik_rand: word);
var i: integer;
begin

  for i:=1 to 10000 do begin
    if recent_msg[i,1]=0 then begin
      recent_msg[i,1]:=paik_socket;
      recent_msg[i,2]:=paik_msg;
      recent_msg[i,3]:=paik_rand;
      exit;
    end;
  end;

end;

procedure asetacharacterSysteemit(i: integer);
begin

  if i=-1 then begin
    form1.sLabelFX152.Caption:='Normal';
    form1.sLabelFX153.Caption:='Normal';
    form1.sLabelFX154.Caption:='Normal';
    form1.sLabelFX152.Kind.Color:=clYellow;
    form1.sLabelFX153.Kind.Color:=clYellow;
    form1.sLabelFX154.Kind.Color:=clYellow;
  end;

  if i=0 then begin
    form1.sLabelFX152.Caption:='Good';
    form1.sLabelFX153.Caption:='Poor';
    form1.sLabelFX154.Caption:='Poor';
    form1.sLabelFX152.Kind.Color:=clLime;
    form1.sLabelFX153.Kind.Color:=clRed;
    form1.sLabelFX154.Kind.Color:=clRed;
  end;

  if i=1 then begin
    form1.sLabelFX152.Caption:='Normal';
    form1.sLabelFX153.Caption:='Normal';
    form1.sLabelFX154.Caption:='Normal';
    form1.sLabelFX152.Kind.Color:=clYellow;
    form1.sLabelFX153.Kind.Color:=clYellow;
    form1.sLabelFX154.Kind.Color:=clYellow;
  end;

  if i=2 then begin
    form1.sLabelFX152.Caption:='Poor';
    form1.sLabelFX153.Caption:='Good';
    form1.sLabelFX154.Caption:='Good';
    form1.sLabelFX152.Kind.Color:=clRed;
    form1.sLabelFX153.Kind.Color:=clLime;
    form1.sLabelFX154.Kind.Color:=clLime;
  end;

end;

procedure vainVipit;
begin
  AddInfoMessage('This option is only for vip''s');
end;

procedure kickPlayer(name: string);
type
  TPlayerKick = record
    mtype: word;
    mtype2: word;
    ra: word;
    name: string[15];
  end;
var
  PlayerKick: TPlayerKick;
begin
  if oma_adminstatus<2 then exit;
  if please_wait_arvo=true then exit;
  if name='' then exit;
  if name=oma_login_name then exit;
  if not (form1.sLabelFX1.caption=oma_team_name) then exit;

  please_Wait(true);

  kickattavaNimi:=name;
  PlayerKick.mtype:=5012;
  PlayerKick.mtype2:=5012;
  PlayerKick.ra:=random(55000)+1;
  PlayerKick.name:=name;
  TCPClient2.WriteBuffer(@PlayerKick,sizeof(PlayerKick));

end;

procedure sorttaaOmanJoukkueenPelaajatUudelleen;
var i,j: integer;
begin

  for i:=1 to 50 do begin
    if Joukkue_data.Player_names[i]=kickattavaNimi then begin
      Joukkue_data.Player_names[i]:='';
      Joukkue_data.Player_index[i]:=0;
      Joukkue_data.Player_online[i]:=false;
      Joukkue_data.player_shirtnumber[i]:=0;
      Joukkue_data.player_nation[i]:=0;
      for j:=1 to 4 do Joukkue_data.position[i,j]:=0;
      for j:=1 to 3 do Joukkue_data.player_stats[i,j]:=0;
      Joukkue_data.Player_admins[i]:=0;

      kickattavaNimi:='';
    end;
  end;

  for i:=1 to 49 do begin
    if Joukkue_data.Player_names[i]='' then begin
      Joukkue_data.Player_names[i]:=Joukkue_data.Player_names[i+1];
      Joukkue_data.Player_index[i]:=Joukkue_data.Player_index[i+1];
      Joukkue_data.Player_online[i]:=Joukkue_data.Player_online[i+1];
      Joukkue_data.player_shirtnumber[i]:=Joukkue_data.player_shirtnumber[i+1];
      Joukkue_data.player_nation[i]:=Joukkue_data.player_nation[i+1];
      for j:=1 to 4 do Joukkue_data.position[i,j]:=Joukkue_data.position[i+1,j];
      for j:=1 to 3 do Joukkue_data.player_stats[i,j]:=Joukkue_data.player_stats[i+1,j];
      Joukkue_data.Player_admins[i]:=Joukkue_data.Player_admins[i+1];

      Joukkue_data.Player_names[i+1]:='';
      Joukkue_data.Player_index[i+1]:=0;
      Joukkue_data.Player_online[i+1]:=false;
      Joukkue_data.player_shirtnumber[i+1]:=0;
      Joukkue_data.player_nation[i+1]:=0;
      for j:=1 to 4 do Joukkue_data.position[i+1,j]:=0;
      for j:=1 to 3 do Joukkue_data.player_stats[i+1,j]:=0;
      Joukkue_data.Player_admins[i+1]:=0;
    end;
  end;

  aseta_team_Players_Administration;
  please_wait(false);


end;


procedure piilotaKickNapit;
begin
  form1.kick1.visible:=false;
  form1.kick2.visible:=false;
  form1.kick3.visible:=false;
  form1.kick4.visible:=false;
  form1.kick5.visible:=false;
  form1.kick6.visible:=false;
  form1.kick7.visible:=false;
  form1.kick8.visible:=false;
  form1.kick9.visible:=false;
  form1.kick10.visible:=false;
  form1.kick11.visible:=false;
  form1.kick12.visible:=false;
  form1.kick13.visible:=false;
  form1.kick14.visible:=false;
end;

procedure forminAsettelua;
begin
  form1.kick1.Left:=552;
  form1.kick2.Left:=552;
  form1.kick3.Left:=552;
  form1.kick4.Left:=552;
  form1.kick5.Left:=552;
  form1.kick6.Left:=552;
  form1.kick7.Left:=552;
  form1.kick8.Left:=552;
  form1.kick9.Left:=552;
  form1.kick10.Left:=552;
  form1.kick11.Left:=552;
  form1.kick12.Left:=552;
  form1.kick13.Left:=552;
  form1.kick14.Left:=552;
end;

procedure perusNollauksia;
var i: integer;
begin
  for i:=1 to 2 do begin
    Ingame_data.refLiputus[i]:=0;
    Ingame_data.refDelay[i]:=0;
  end;

  chat_mode:=0;
end;

procedure lataaSettings;
var searchResult : TSearchRec;
    texttied: textfile;
    i: integer;
    pstr: string;
begin

  if FindFirst('data\settings.dat', faAnyFile, searchResult)>0 then begin
    assignfile(texttied,'data\settings.dat');
    rewrite(texttied);
    for i:=1 to 20 do
      writeln(texttied,'');
    closefile(texttied);
  end;
  FindClose(searchResult);

  assignfile(texttied,'data\settings.dat');
  reset(texttied);

  readln(texttied,pstr);  //sounds
  if (pstr='') or (pstr='Sounds on') then Settings.sounds:=true else Settings.sounds:=false;

  readln(texttied,pstr);  //slow moving
  if (pstr='') or (pstr='Slow moving on') then Settings.slowMoving:=true else Settings.slowMoving:=false;

  readln(texttied,pstr);  //control
  if pstr='Keyboard' then Settings.control:=0;
  if (pstr='') or (pstr='Mouse') then Settings.control:=1;

  Settings.control:=1; //tällä poistetaan keyboardin mahdollisuus

  readln(texttied,pstr); //left
  if pstr='' then Settings.controlDirections[1]:=37 else Settings.controlDirections[1]:=strtoint(pstr);

  readln(texttied,pstr); //rigth
  if pstr='' then Settings.controlDirections[2]:=39 else Settings.controlDirections[2]:=strtoint(pstr);

  readln(texttied,pstr); //up
  if pstr='' then Settings.controlDirections[3]:=38 else Settings.controlDirections[3]:=strtoint(pstr);

  readln(texttied,pstr); //down
  if pstr='' then Settings.controlDirections[4]:=40 else Settings.controlDirections[4]:=strtoint(pstr);

  readln(texttied,pstr); //shooting
  if pstr='' then Settings.controlAction[1]:=68 else Settings.controlAction[1]:=strtoint(pstr);

  readln(texttied,pstr); //crossing
  if pstr='' then Settings.controlAction[2]:=65 else Settings.controlAction[2]:=strtoint(pstr);

  readln(texttied,pstr); //tackle
  if pstr='' then Settings.controlAction[3]:=87 else Settings.controlAction[3]:=strtoint(pstr);

  readln(texttied,pstr); //autopass
  if pstr='' then Settings.controlAction[4]:=83 else Settings.controlAction[4]:=strtoint(pstr);

  readln(texttied,pstr); //panaani
  if pstr='' then Settings.panaani:=false else Settings.panaani:=true;

  readln(texttied,pstr); //username
  Settings.username:=pstr;

  readln(texttied,pstr); //password
  Settings.password:=pstr;

  closefile(texttied);

end;

procedure tallennaSettings;
var texttied: textfile;
    i: integer;
begin
  assignfile(texttied,'data\settings.dat');
  rewrite(texttied);
  if Settings.sounds then writeln(texttied,'Sounds on') else writeln(texttied,'Sounds off');
  if Settings.slowMoving then writeln(texttied,'Slow moving on') else writeln(texttied,'Slow moving off');
  if Settings.control=0 then writeln(texttied,'Keyboard');
  if Settings.control=1 then writeln(texttied,'Mouse');
  writeln(texttied,inttostr(Settings.controlDirections[1]));
  writeln(texttied,inttostr(Settings.controlDirections[2]));
  writeln(texttied,inttostr(Settings.controlDirections[3]));
  writeln(texttied,inttostr(Settings.controlDirections[4]));
  writeln(texttied,inttostr(Settings.controlAction[1]));
  writeln(texttied,inttostr(Settings.controlAction[2]));
  writeln(texttied,inttostr(Settings.controlAction[3]));
  writeln(texttied,inttostr(Settings.controlAction[4]));
  if Settings.panaani then writeln(texttied,'82') else writeln(texttied,'');
  writeln(texttied,Settings.username);
  writeln(texttied,Settings.password);

  //HUOMAA AINA PIENENTÄÄ FOR SILMUKAN LOPPU ARVOA!!!!!!
  for i:=1 to 30 do      //(about 40 riviä)
    writeln(texttied,'');
  closefile(texttied);
  //HUOMAA AINA PIENENTÄÄ FOR SILMUKAN LOPPU ARVOA!!!!!!
end;

procedure asetaTekstitControlNappeihin;
begin
  form1.sButton15.Caption:=DIKToStr(VKToDIK(Settings.controlDirections[1]));
  form1.sButton16.Caption:=DIKToStr(VKToDIK(Settings.controlDirections[2]));
  form1.sButton17.Caption:=DIKToStr(VKToDIK(Settings.controlDirections[3]));
  form1.sButton18.Caption:=DIKToStr(VKToDIK(Settings.controlDirections[4]));

  form1.sButton19.Caption:=DIKToStr(VKToDIK(Settings.controlAction[1]));
  form1.sButton20.Caption:=DIKToStr(VKToDIK(Settings.controlAction[2]));
  form1.sButton21.Caption:=DIKToStr(VKToDIK(Settings.controlAction[3]));
  form1.sButton23.Caption:=DIKToStr(VKToDIK(Settings.controlAction[4]));
end;

procedure controlVisiblet;
begin

  form1.sComboBox3.ItemIndex:=Settings.control;

  if form1.sComboBox3.ItemIndex=0 then begin
    form1.sLabelFX108.Visible:=true;
    form1.sLabelFX114.Visible:=true;
    form1.sLabelFX115.Visible:=true;
    form1.sLabelFX116.Visible:=true;
    form1.sLabelFX117.Visible:=true;
    form1.sButton15.Visible:=true;
    form1.sButton16.Visible:=true;
    form1.sButton17.Visible:=true;
    form1.sButton18.Visible:=true;
    form1.sButton19.Visible:=true;
    form1.sButton20.Visible:=true;
    form1.sButton21.Visible:=true;
    form1.sButton23.Visible:=true;
    form1.sCheckBox6.Visible:=false;
  end;
  if form1.sComboBox3.ItemIndex=1 then begin
    form1.sLabelFX108.Visible:=false;
    form1.sLabelFX114.Visible:=false;
    form1.sLabelFX115.Visible:=false;
    form1.sLabelFX117.Visible:=false;
    form1.sButton15.Visible:=false;
    form1.sButton16.Visible:=false;
    form1.sButton17.Visible:=false;
    form1.sButton18.Visible:=false;
    form1.sButton19.Visible:=false;
    form1.sButton20.Visible:=false;
    form1.sButton23.Visible:=false;
    form1.sCheckBox6.Visible:=true;
  end;
end;

procedure pyydaTeamStats(nextI: byte);
type
  TPaketti = record
    mtype: word;
    mtype2: word;
    ra: word;
    nextI: byte;
  end;
var
  Paketti: TPaketti;
begin

  Paketti.mtype:=5001;
  Paketti.mtype2:=5001;
  Paketti.ra:=random(55000)+1;
  Paketti.nextI:=nextI;
  TCPClient2.WriteBuffer(@Paketti,sizeof(Paketti));

end;

procedure pyydaPlayerStats(gameType, stat,i, nation: byte);
type
  TPaketti = record
    mtype: word;
    mtype2: word;
    ra: word;
    gameType: byte;
    stat: byte;
    i: byte;
    nation: byte;
  end;
var
  Paketti: TPaketti;
begin
  //gameType 1=public, 2=challenge
  //stat     1=apps, 2=goals, 3=assists, 4=passing, 5=tackling, 6=heading
  //nation   255=kaikki nationit

  if gameType=0 then gametype:=PlayerStatMuisti.gametype;
  if stat=0 then stat:=PlayerStatMuisti.stat;
  if nation=0 then nation:=PlayerStatMuisti.nation;
  PlayerStatMuisti.gametype:=gameType;
  PlayerStatMuisti.stat:=stat;
  PlayerStatMuisti.nation:=nation;

  if (PlayerStatMuisti.stat=1) and (PlayerStatMuisti.gametype=1) then
    PlayerStatMuisti.stat:=2;

  Paketti.mtype:=5000;
  Paketti.mtype2:=5000;
  Paketti.ra:=random(55000)+1;
  Paketti.gameType:=gameType;
  Paketti.stat:=PlayerStatMuisti.stat;
  Paketti.i:=i;
  Paketti.nation:=nation;
  TCPClient2.WriteBuffer(@Paketti,sizeof(Paketti));

end;

function nation_int_to_strlong(p_ind: smallint): string;
begin

  result:='';

  if p_ind=0 then result:='United kingdom';
  if p_ind=1 then result:='United states';
  if p_ind=2 then result:='Bermuda';
  if p_ind=3 then result:='Sweden';
  if p_ind=4 then result:='Italy';
  if p_ind=5 then result:='Canada';
  if p_ind=6 then result:='Puerto rico';
  if p_ind=7 then result:='India';
  if p_ind=8 then result:='Bolivia';
  if p_ind=9 then result:='Netherlands';
  if p_ind=10 then result:='Germany';
  if p_ind=11 then result:='Switzerland';
  if p_ind=12 then result:='France';
  if p_ind=13 then result:='Israel';
  if p_ind=14 then result:='Spain';
  if p_ind=15 then result:='Chile';
  if p_ind=16 then result:='Bahamas';
  if p_ind=17 then result:='Argentina';
  if p_ind=18 then result:='Dominica';
  if p_ind=19 then result:='Belgium';
  if p_ind=20 then result:='Ireland';
  if p_ind=21 then result:='Japan';
  if p_ind=22 then result:='Australia';
  if p_ind=23 then result:='Thailand';
  if p_ind=24 then result:='China';
  if p_ind=25 then result:='Malaysia';
  if p_ind=26 then result:='Pakistan';
  if p_ind=27 then result:='New zealand';
  if p_ind=28 then result:='Korea rep';
  if p_ind=29 then result:='Hong kong';
  if p_ind=30 then result:='Singapore';
  if p_ind=31 then result:='Bangladesh';
  if p_ind=32 then result:='Ukraine';
  if p_ind=33 then result:='Indonesia';
  if p_ind=34 then result:='Philippines';
  if p_ind=35 then result:='Taiwan';
  if p_ind=36 then result:='Afghanistan';
  if p_ind=37 then result:='Viet nam';
  if p_ind=38 then result:='Vanuatu';
  if p_ind=39 then result:='Panama';
  if p_ind=40 then result:='New caledonia';
  if p_ind=41 then result:='Brunei';
  if p_ind=42 then result:='Greece';
  if p_ind=43 then result:='Saudi arabia';
  if p_ind=44 then result:='Poland';
  if p_ind=45 then result:='Czech republic';
  if p_ind=46 then result:='Russian';
  if p_ind=47 then result:='Denmark';
  if p_ind=48 then result:='Nigeria';
  if p_ind=49 then result:='Zimbabwe';
  if p_ind=50 then result:='Liberia';
  if p_ind=51 then result:='Iraq';
  if p_ind=52 then result:='Cameroon';
  if p_ind=53 then result:='Sudan';
  if p_ind=54 then result:='Ghana';
  if p_ind=55 then result:='Gabon';
  if p_ind=56 then result:='Cyprus';
  if p_ind=57 then result:='Norway';
  if p_ind=58 then result:='Austria';
  if p_ind=59 then result:='Tajikistan';
  if p_ind=60 then result:='Portugal';
  if p_ind=61 then result:='Turkey';
  if p_ind=62 then result:='Iran';
  if p_ind=63 then result:='Georgia';
  if p_ind=64 then result:='Belarus';
  if p_ind=65 then result:='Armenia';
  if p_ind=66 then result:='Lebanon';
  if p_ind=67 then result:='Moldova';
  if p_ind=68 then result:='Bulgaria';
  if p_ind=69 then result:='Finland';
  if p_ind=70 then result:='Mozambique';
  if p_ind=71 then result:='Angola';
  if p_ind=72 then result:='Kenya';
  if p_ind=73 then result:='Congo dem rep';
  if p_ind=74 then result:='Madagascar';
  if p_ind=75 then result:='Tanzania';
  if p_ind=76 then result:='Togo';
  if p_ind=77 then result:='Zambia';
  if p_ind=78 then result:='Oman';
  if p_ind=79 then result:='Latvia';
  if p_ind=80 then result:='Kazakhstan';
  if p_ind=81 then result:='Estonia';
  if p_ind=82 then result:='Slovakia';
  if p_ind=83 then result:='Jordan';
  if p_ind=84 then result:='Hungary';
  if p_ind=85 then result:='Kuwait';
  if p_ind=86 then result:='Albania';
  if p_ind=87 then result:='Lithuania';
  if p_ind=88 then result:='Swaziland';
  if p_ind=89 then result:='San marino';
  if p_ind=90 then result:='Romania';
  if p_ind=91 then result:='Czechoslovakia';
  if p_ind=92 then result:='Macedonia';
  if p_ind=93 then result:='Croatia';
  if p_ind=94 then result:='Morocco';
  if p_ind=95 then result:='Luxembourg';
  if p_ind=96 then result:='Algeria';
  if p_ind=97 then result:='Iceland';
  if p_ind=98 then result:='Liechtenstein';
  if p_ind=99 then result:='Costa rica';
  if p_ind=100 then result:='Malta';
  if p_ind=101 then result:='Gambia, the';
  if p_ind=102 then result:='South africa';
  if p_ind=103 then result:='Malawi';
  if p_ind=104 then result:='Slovenia';
  if p_ind=105 then result:='Falkland islands';
  if p_ind=106 then result:='Azerbaijan';
  if p_ind=107 then result:='Egypt';
  if p_ind=108 then result:='Monaco';
  if p_ind=109 then result:='Haiti';
  if p_ind=110 then result:='Guam';
  if p_ind=111 then result:='Ecuador';
  if p_ind=112 then result:='Mexico';
  if p_ind=113 then result:='Cayman islands';
  if p_ind=114 then result:='Peru';
  if p_ind=115 then result:='Colombia';
  if p_ind=116 then result:='Honduras';
  if p_ind=117 then result:='Sierra leone';
  if p_ind=118 then result:='Virgin islands, british';
  if p_ind=119 then result:='Dominican republic';
  if p_ind=120 then result:='Belize';
  if p_ind=121 then result:='Netherlands antilles';
  if p_ind=122 then result:='Trinidad and tobago';
  if p_ind=123 then result:='Venezuela';
  if p_ind=124 then result:='Antigua and barbuda';
  if p_ind=125 then result:='Northern mariana islands';
  if p_ind=126 then result:='Virgin islands, u.s.';
  if p_ind=127 then result:='Bosnia and herzegovina';
  if p_ind=128 then result:='Cuba';
  if p_ind=129 then result:='Congo, republic of';
  if p_ind=130 then result:='Brazil';
  if p_ind=131 then result:='El salvador';
  if p_ind=132 then result:='Saint lucia';
  if p_ind=133 then result:='Paraguay';
  if p_ind=134 then result:='Suriname';
  if p_ind=135 then result:='Nicaragua';
  if p_ind=136 then result:='Barbados';
  if p_ind=137 then result:='Saint kitts and nevis';
  if p_ind=138 then result:='Jamaica';
  if p_ind=139 then result:='Syrian arab republic';
  if p_ind=140 then result:='Bahrain';
  if p_ind=141 then result:='Serbia';
  if p_ind=142 then result:='Kyrgyzstan';
  if p_ind=143 then result:='Reunion';
  if p_ind=144 then result:='Mauritius';
  if p_ind=145 then result:='Ivory coast';
  if p_ind=146 then result:='Chad';
  if p_ind=147 then result:='Faeroe islands';
  if p_ind=148 then result:='Somalia';
  if p_ind=149 then result:='Mali';
  if p_ind=150 then result:='Palestinian';
  if p_ind=151 then result:='Burundi';
  if p_ind=152 then result:='Guinea';
  if p_ind=153 then result:='Uzbekistan';
  if p_ind=154 then result:='Ethiopia';
  if p_ind=155 then result:='Senegal';
  if p_ind=156 then result:='Nauru';
  if p_ind=157 then result:='Rwanda';
  if p_ind=158 then result:='Yemen';
  if p_ind=159 then result:='Comoros';
  if p_ind=160 then result:='United arab emirates';
  if p_ind=161 then result:='Namibia';
  if p_ind=162 then result:='Uganda';
  if p_ind=163 then result:='Benin';
  if p_ind=164 then result:='Lesotho';
  if p_ind=165 then result:='Mauritania';
  if p_ind=166 then result:='Libya';
  if p_ind=167 then result:='Qatar';
  if p_ind=168 then result:='Lao people''s democratic republic';
  if p_ind=169 then result:='Sri lanka';
  if p_ind=170 then result:='Nepal';
  if p_ind=171 then result:='Guyana';
  if p_ind=172 then result:='Tunisia';
  if p_ind=173 then result:='Martinique';
  if p_ind=174 then result:='Guadeloupe';
  if p_ind=175 then result:='Seychelles';
  if p_ind=176 then result:='Botswana';
  if p_ind=177 then result:='Niger';
  if p_ind=178 then result:='Vatican city';
  if p_ind=179 then result:='Turkmenistan';
  if p_ind=180 then result:='Jersey';
  if p_ind=181 then result:='Gibraltar';
  if p_ind=182 then result:='Mayotte';
  if p_ind=183 then result:='Burkina faso';
  if p_ind=184 then result:='Andorra';
  if p_ind=185 then result:='Montenegro';
  if p_ind=186 then result:='Macao';
  if p_ind=187 then result:='Antarctica';
  if p_ind=188 then result:='Greenland';
  if p_ind=189 then result:='Mongolia';
  if p_ind=190 then result:='Cambodia';
  if p_ind=191 then result:='French polynesia';
  if p_ind=192 then result:='Maldives';
  if p_ind=193 then result:='Fiji';
  if p_ind=194 then result:='Micronesia';
  if p_ind=195 then result:='Guatemala';
  if p_ind=196 then result:='Uruguay';
  if p_ind=197 then result:='Papua new guinea';
  if p_ind=198 then result:='Central african republic';
  if p_ind=199 then result:='Eritrea';
  if p_ind=200 then result:='Guinea-bissau';
  if p_ind=201 then result:='Djibouti';
  if p_ind=202 then result:='Equatorial guinea';
  if p_ind=203 then result:='&aring;land islands';
  if p_ind=204 then result:='Cape verde';
  if p_ind=205 then result:='Sao tome and principe';
  if p_ind=206 then result:='Saint vincent and the grenadines';
  if p_ind=207 then result:='Grenada';
  if p_ind=208 then result:='Aruba';
  if p_ind=209 then result:='French guiana';
  if p_ind=210 then result:='South georgia and the south sandwich islands';
  if p_ind=211 then result:='Solomon islands';
  if p_ind=212 then result:='Tuvalu';
  if p_ind=213 then result:='Samoa';
  if p_ind=214 then result:='Kiribati';
  if p_ind=215 then result:='Tonga';
  if p_ind=216 then result:='British indian ocean territory';
  if p_ind=217 then result:='Niue';
  if p_ind=218 then result:='Cook islands';
  if p_ind=219 then result:='American samoa';
  if p_ind=220 then result:='Timor-leste';
  if p_ind=221 then result:='Tokelau';
  if p_ind=222 then result:='Bhutan';
  if p_ind=223 then result:='Palau';
  if p_ind=224 then result:='Norfolk island';
  if p_ind=225 then result:='Myanmar';
  if p_ind=226 then result:='Anguilla';
  if p_ind=227 then result:='Montserrat';
  if p_ind=228 then result:='United states minor outlying islands';

  if p_ind=231 then result:='England';
  if p_ind=232 then result:='Scotland';
  if p_ind=233 then result:='Wales';

end;

function nation_str_to_int(p_str: string): smallint;
begin

  result:=-1;

  if p_str='United kingdom' then result:=0;
  if p_str='United states' then result:=1;
  if p_str='Bermuda' then result:=2;
  if p_str='Sweden' then result:=3;
  if p_str='Italy' then result:=4;
  if p_str='Canada' then result:=5;
  if p_str='Puerto rico' then result:=6;
  if p_str='India' then result:=7;
  if p_str='Bolivia' then result:=8;
  if p_str='Netherlands' then result:=9;
  if p_str='Germany' then result:=10;
  if p_str='Switzerland' then result:=11;
  if p_str='France' then result:=12;
  if p_str='Israel' then result:=13;
  if p_str='Spain' then result:=14;
  if p_str='Chile' then result:=15;
  if p_str='Bahamas' then result:=16;
  if p_str='Argentina' then result:=17;
  if p_str='Dominica' then result:=18;
  if p_str='Belgium' then result:=19;
  if p_str='Ireland' then result:=20;
  if p_str='Japan' then result:=21;
  if p_str='Australia' then result:=22;
  if p_str='Thailand' then result:=23;
  if p_str='China' then result:=24;
  if p_str='Malaysia' then result:=25;
  if p_str='Pakistan' then result:=26;
  if p_str='New zealand' then result:=27;
  if p_str='Korea rep' then result:=28;
  if p_str='Hong kong' then result:=29;
  if p_str='Singapore' then result:=30;
  if p_str='Bangladesh' then result:=31;
  if p_str='Ukraine' then result:=32;
  if p_str='Indonesia' then result:=33;
  if p_str='Philippines' then result:=34;
  if p_str='Taiwan' then result:=35;
  if p_str='Afghanistan' then result:=36;
  if p_str='Viet nam' then result:=37;
  if p_str='Vanuatu' then result:=38;
  if p_str='Panama' then result:=39;
  if p_str='New caledonia' then result:=40;
  if p_str='Brunei' then result:=41;
  if p_str='Greece' then result:=42;
  if p_str='Saudi arabia' then result:=43;
  if p_str='Poland' then result:=44;
  if p_str='Czech republic' then result:=45;
  if p_str='Russian' then result:=46;
  if p_str='Denmark' then result:=47;
  if p_str='Nigeria' then result:=48;
  if p_str='Zimbabwe' then result:=49;
  if p_str='Liberia' then result:=50;
  if p_str='Iraq' then result:=51;
  if p_str='Cameroon' then result:=52;
  if p_str='Sudan' then result:=53;
  if p_str='Ghana' then result:=54;
  if p_str='Gabon' then result:=55;
  if p_str='Cyprus' then result:=56;
  if p_str='Norway' then result:=57;
  if p_str='Austria' then result:=58;
  if p_str='Tajikistan' then result:=59;
  if p_str='Portugal' then result:=60;
  if p_str='Turkey' then result:=61;
  if p_str='Iran' then result:=62;
  if p_str='Georgia' then result:=63;
  if p_str='Belarus' then result:=64;
  if p_str='Armenia' then result:=65;
  if p_str='Lebanon' then result:=66;
  if p_str='Moldova' then result:=67;
  if p_str='Bulgaria' then result:=68;
  if p_str='Finland' then result:=69;
  if p_str='Mozambique' then result:=70;
  if p_str='Angola' then result:=71;
  if p_str='Kenya' then result:=72;
  if p_str='Congo dem rep' then result:=73;
  if p_str='Madagascar' then result:=74;
  if p_str='Tanzania' then result:=75;
  if p_str='Togo' then result:=76;
  if p_str='Zambia' then result:=77;
  if p_str='Oman' then result:=78;
  if p_str='Latvia' then result:=79;
  if p_str='Kazakhstan' then result:=80;
  if p_str='Estonia' then result:=81;
  if p_str='Slovakia' then result:=82;
  if p_str='Jordan' then result:=83;
  if p_str='Hungary' then result:=84;
  if p_str='Kuwait' then result:=85;
  if p_str='Albania' then result:=86;
  if p_str='Lithuania' then result:=87;
  if p_str='Swaziland' then result:=88;
  if p_str='San marino' then result:=89;
  if p_str='Romania' then result:=90;
  if p_str='Czechoslovakia' then result:=91;
  if p_str='Macedonia' then result:=92;
  if p_str='Croatia' then result:=93;
  if p_str='Morocco' then result:=94;
  if p_str='Luxembourg' then result:=95;
  if p_str='Algeria' then result:=96;
  if p_str='Iceland' then result:=97;
  if p_str='Liechtenstein' then result:=98;
  if p_str='Costa rica' then result:=99;
  if p_str='Malta' then result:=100;
  if p_str='Gambia, the' then result:=101;
  if p_str='South africa' then result:=102;
  if p_str='Malawi' then result:=103;
  if p_str='Slovenia' then result:=104;
  if p_str='Falkland islands' then result:=105;
  if p_str='Azerbaijan' then result:=106;
  if p_str='Egypt' then result:=107;
  if p_str='Monaco' then result:=108;
  if p_str='Haiti' then result:=109;
  if p_str='Guam' then result:=110;
  if p_str='Ecuador' then result:=111;
  if p_str='Mexico' then result:=112;
  if p_str='Cayman islands' then result:=113;
  if p_str='Peru' then result:=114;
  if p_str='Colombia' then result:=115;
  if p_str='Honduras' then result:=116;
  if p_str='Sierra leone' then result:=117;
  if p_str='Virgin islands, british' then result:=118;
  if p_str='Dominican republic' then result:=119;
  if p_str='Belize' then result:=120;
  if p_str='Netherlands antilles' then result:=121;
  if p_str='Trinidad and tobago' then result:=122;
  if p_str='Venezuela' then result:=123;
  if p_str='Antigua and barbuda' then result:=124;
  if p_str='Northern mariana islands' then result:=125;
  if p_str='Virgin islands, u.s.' then result:=126;
  if p_str='Bosnia and herzegovina' then result:=127;
  if p_str='Cuba' then result:=128;
  if p_str='Congo, republic of' then result:=129;
  if p_str='Brazil' then result:=130;
  if p_str='El salvador' then result:=131;
  if p_str='Saint lucia' then result:=132;
  if p_str='Paraguay' then result:=133;
  if p_str='Suriname' then result:=134;
  if p_str='Nicaragua' then result:=135;
  if p_str='Barbados' then result:=136;
  if p_str='Saint kitts and nevis' then result:=137;
  if p_str='Jamaica' then result:=138;
  if p_str='Syrian arab republic' then result:=139;
  if p_str='Bahrain' then result:=140;
  if p_str='Serbia' then result:=141;
  if p_str='Kyrgyzstan' then result:=142;
  if p_str='Reunion' then result:=143;
  if p_str='Mauritius' then result:=144;
  if p_str='Ivory coast' then result:=145;
  if p_str='Chad' then result:=146;
  if p_str='Faeroe islands' then result:=147;
  if p_str='Somalia' then result:=148;
  if p_str='Mali' then result:=149;
  if p_str='Palestinian' then result:=150;
  if p_str='Burundi' then result:=151;
  if p_str='Guinea' then result:=152;
  if p_str='Uzbekistan' then result:=153;
  if p_str='Ethiopia' then result:=154;
  if p_str='Senegal' then result:=155;
  if p_str='Nauru' then result:=156;
  if p_str='Rwanda' then result:=157;
  if p_str='Yemen' then result:=158;
  if p_str='Comoros' then result:=159;
  if p_str='United arab emirates' then result:=160;
  if p_str='Namibia' then result:=161;
  if p_str='Uganda' then result:=162;
  if p_str='Benin' then result:=163;
  if p_str='Lesotho' then result:=164;
  if p_str='Mauritania' then result:=165;
  if p_str='Libya' then result:=166;
  if p_str='Qatar' then result:=167;
  if p_str='Lao people''s democratic republic' then result:=168;
  if p_str='Sri lanka' then result:=169;
  if p_str='Nepal' then result:=170;
  if p_str='Guyana' then result:=171;
  if p_str='Tunisia' then result:=172;
  if p_str='Martinique' then result:=173;
  if p_str='Guadeloupe' then result:=174;
  if p_str='Seychelles' then result:=175;
  if p_str='Botswana' then result:=176;
  if p_str='Niger' then result:=177;
  if p_str='Vatican city' then result:=178;
  if p_str='Turkmenistan' then result:=179;
  if p_str='Jersey' then result:=180;
  if p_str='Gibraltar' then result:=181;
  if p_str='Mayotte' then result:=182;
  if p_str='Burkina faso' then result:=183;
  if p_str='Andorra' then result:=184;
  if p_str='Montenegro' then result:=185;
  if p_str='Macao' then result:=186;
  if p_str='Antarctica' then result:=187;
  if p_str='Greenland' then result:=188;
  if p_str='Mongolia' then result:=189;
  if p_str='Cambodia' then result:=190;
  if p_str='French polynesia' then result:=191;
  if p_str='Maldives' then result:=192;
  if p_str='Fiji' then result:=193;
  if p_str='Micronesia' then result:=194;
  if p_str='Guatemala' then result:=195;
  if p_str='Uruguay' then result:=196;
  if p_str='Papua new guinea' then result:=197;
  if p_str='Central african republic' then result:=198;
  if p_str='Eritrea' then result:=199;
  if p_str='Guinea-bissau' then result:=200;
  if p_str='Djibouti' then result:=201;
  if p_str='Equatorial guinea' then result:=202;
  if p_str='&aring;land islands' then result:=203;
  if p_str='Cape verde' then result:=204;
  if p_str='Sao tome and principe' then result:=205;
  if p_str='Saint vincent and the grenadines' then result:=206;
  if p_str='Grenada' then result:=207;
  if p_str='Aruba' then result:=208;
  if p_str='French guiana' then result:=209;
  if p_str='South georgia and the south sandwich islands' then result:=210;
  if p_str='Solomon islands' then result:=211;
  if p_str='Tuvalu' then result:=212;
  if p_str='Samoa' then result:=213;
  if p_str='Kiribati' then result:=214;
  if p_str='Tonga' then result:=215;
  if p_str='British indian ocean territory' then result:=216;
  if p_str='Niue' then result:=217;
  if p_str='Cook islands' then result:=218;
  if p_str='American samoa' then result:=219;
  if p_str='Timor-leste' then result:=220;
  if p_str='Tokelau' then result:=221;
  if p_str='Bhutan' then result:=222;
  if p_str='Palau' then result:=223;
  if p_str='Norfolk island' then result:=224;
  if p_str='Myanmar' then result:=225;
  if p_str='Anguilla' then result:=226;
  if p_str='Montserrat' then result:=227;
  if p_str='United states minor outlying islands' then result:=228;

  if p_str='England' then result:=231;
  if p_str='Scotland' then result:=232;
  if p_str='Wales' then result:=233;

end;

procedure matchClick(ID: smallint);
type
  TPaketti = record
    mtype: word;
    mtype2: word;
    ra: word;
    sID: smallint;
  end;
var
  Paketti: TPaketti;
begin

  if please_wait_arvo=true then exit;
  if high(LivescoreList.sID)<ID then exit;

  please_Wait(true);

  Paketti.mtype:=58;
  Paketti.mtype2:=58;
  Paketti.ra:=random(55000)+1;
  Paketti.sID:=LivescoreList.sID[ID];
  TCPClient2.WriteBuffer(@Paketti,sizeof(Paketti));

end;

function laske_ranking(rank1,rank2: word): TRankLasku;
var RankLasku: TRankLasku;
    r1,r2,r3: real;
begin

  if rank1=rank2 then begin
    RankLasku.rank[1,1]:=260;
    RankLasku.rank[1,2]:=260;
    RankLasku.rank[2,1]:=0;
    RankLasku.rank[2,2]:=0;
  end else begin
    if rank1>rank2 then r1:=(100/rank1)*rank2
      else r1:=(100/rank2)*rank1;
    r2:=(100-r1)*2;
    if r2>100 then r2:=100;
    if r2>0 then r2:=r2/100;
    r3:=250*r2;

    if rank1>rank2 then begin
      RankLasku.rank[1,1]:=250-round(r3)+10;
      RankLasku.rank[1,2]:=250+round(r3)+10;
      RankLasku.rank[2,1]:=RankLasku.rank[1,1]-RankLasku.rank[1,2];
      RankLasku.rank[2,2]:=RankLasku.rank[1,2]-RankLasku.rank[1,1];
      RankLasku.rank[2,1]:=round(RankLasku.rank[2,1]/2);
      RankLasku.rank[2,2]:=round(RankLasku.rank[2,2]/2);
    end else begin
      RankLasku.rank[1,2]:=250-round(r3)+10;
      RankLasku.rank[1,1]:=250+round(r3)+10;
      RankLasku.rank[2,2]:=RankLasku.rank[1,2]-RankLasku.rank[1,1];
      RankLasku.rank[2,1]:=RankLasku.rank[1,1]-RankLasku.rank[1,2];
      RankLasku.rank[2,1]:=round(RankLasku.rank[2,1]/2);
      RankLasku.rank[2,2]:=round(RankLasku.rank[2,2]/2);
    end;

  end;

  result:=RankLasku;

end;

procedure challengeTeamClick(name: string);
type
  TPaketti = record
    mtype: word;
    mtype2: word;
    ra: word;
    name: string[20];
  end;
var
  Paketti: TPaketti;
begin

  if please_wait_arvo=true then exit;
  if oma_team=0 then exit;
  if oma_adminstatus=0 then exit;
  if name='' then exit;
  if name=oma_team_name then exit;

  please_Wait(true);

  Paketti.mtype:=52;
  Paketti.mtype2:=52;
  Paketti.ra:=random(55000)+1;
  Paketti.name:=name;
  TCPClient2.WriteBuffer(@Paketti,sizeof(Paketti));

end;

procedure textDraws;
var i: integer;
    plr1, plr2: byte;
begin

  for i:=1 to 10 do
    piirraChat(i);

  if joinerDelay>0 then
    print(15,420,1,joiner,OmegaColor(clWhite));
  if scorerDelay>0 then
    print(15,460,1,scorer,OmegaColor(clWhite));

  plr1:=0;
  plr2:=0;
  for i:=1 to Ingame_data.maxPlayers do begin
    if not (Ingame_data.playerNames[i,1]='') then inc(plr1);
    if not (Ingame_data.playerNames[i,2]='') then inc(plr2);
  end;

  print(250,15,1,inttostr(plr1)+' vs '+inttostr(plr2),OmegaColor(clWhite));


end;

procedure piirraChat(i: byte);
var py: smallint;
begin

  if not (chatVisible) then exit;
  if peli_chat_msg[i]='' then exit;

  py:=525+(15*i);

  if peli_chat_color[i]=1 then print(15,py,0.8,peli_chat_msg[i],OmegaColor(clRed));
  if peli_chat_color[i]=2 then print(15,py,0.8,peli_chat_msg[i],OmegaColor(clLime));
  if peli_chat_color[i]=3 then print(15,py,0.8,peli_chat_msg[i],OmegaColor(clWhite));
  if peli_chat_color[i]=4 then print(15,py,0.8,peli_chat_msg[i],OmegaColor(clYellow));

end;

procedure sendChatFromFreePractise;
type
  TChatmsg = record
    mtype: word;
    mtype2: word;
    ra: word;
    kenelle: string[15];
    viesti: string[120];
  end;
  TChatmsg2 = record
    mtype: word;
    mtype2: word;
    ra: word;
    viesti: string[120];
  end;
  TChatmsg3 = record
    mtype: word;
    mtype2: word;
    ra: word;
    kenelle: string[20];
    viesti: string[120];
  end;
var
  Chatmsg: TChatmsg;
  Chatmsg2: TChatmsg2;
  Chatmsg3: TChatmsg3;
begin

  if spam=true then exit;
  if chat_mode=0 then exit;
  if (chat_mode=5) or (chat_mode=6) then
    if chat_kenelle='' then exit;

  if chat_lause='' then begin
    chat_mode:=0;
    chat_lause:='';
    exit;
  end;

//********************

  if chat_mode=5 then begin // PM
    if chat_kenelle=oma_login_name then exit;

    Chatmsg.mtype:=231;
    Chatmsg.mtype2:=231;
    Chatmsg.ra:=random(55000)+1;
    Chatmsg.kenelle:=chat_kenelle;
    Chatmsg.viesti:=chat_lause;
    TCPClient2.WriteBuffer(@Chatmsg,sizeof(Chatmsg));
    aseta_chat_viesti_peli(oma_login_name +' -- '+ chat_lause,1);
  end;

  if chat_mode=7 then begin // own team
    Chatmsg2.mtype:=233;
    Chatmsg2.mtype2:=233;
    Chatmsg2.ra:=random(55000)+1;
    Chatmsg2.viesti:=chat_lause;
    TCPClient2.WriteBuffer(@Chatmsg2,sizeof(Chatmsg2));
    aseta_chat_viesti_peli(oma_login_name +' -- '+ chat_lause,2);
  end;

  if chat_mode=6 then begin // to team
    if chat_kenelle=oma_team_name then exit;

    Chatmsg3.mtype:=232;
    Chatmsg3.mtype2:=232;
    Chatmsg3.ra:=random(55000)+1;
    Chatmsg3.kenelle:=chat_kenelle;
    Chatmsg3.viesti:=chat_lause;
    TCPClient2.WriteBuffer(@Chatmsg3,sizeof(Chatmsg3));
    aseta_chat_viesti_peli(oma_login_name +' -- '+ chat_lause,2);
  end;

  chat_mode:=0;
  chat_lause:='';
  spam:=true;

end;

procedure laheta_peli_chat;
type
  TChatMSG1 = record //223 & 224 & 227
    mtype: word;
    mtype2: word;
    viesti: string[120];
  end;
  TChatMSG2 = record //225
    mtype: word;
    mtype2: word;
    kenelle: string[15];
    viesti: string[120];
  end;
  TChatMSG3 = record //226
    mtype: word;
    mtype2: word;
    kenelle: string[20];
    viesti: string[120];
  end;
var
  ChatMSG1: TChatMSG1;
  ChatMSG2: TChatMSG2;
  ChatMSG3: TChatMSG3;
  str: string;
begin

  //if chat_lause='' then exit;
  if spam=true then exit;
  if chat_mode=0 then exit;
  if (chat_mode=5) or (chat_mode=6) then
    if chat_kenelle='' then exit;

  if chat_lause='' then begin
    chat_mode:=0;
    chat_lause:='';
    exit;
  end;

//********************

  //   /team
  if teamCommand(chat_lause) then begin
    chat_mode:=0;
    chat_lause:='';
    sendTeamCommandGS;
    exit;
  end;

  //  /info name
  str:=infoCommand(chat_lause);
  if not (str='') then begin
    chat_mode:=0;
    chat_lause:='';
    sendInfoCommandGS(str);
    exit;
  end;

  if chat_mode=3 then begin //viesti kaikille servulla olijoille
    ChatMSG1.mtype:=223;
    ChatMSG1.mtype2:=223;
    ChatMSG1.viesti:=chat_lause;
    TCPClient1.WriteBuffer(@ChatMSG1,sizeof(ChatMSG1));
  end;

  if chat_mode=4 then begin //viesti kaikille servulla olijoille, jotka samalla puolella
    ChatMSG1.mtype:=224;
    ChatMSG1.mtype2:=224;
    ChatMSG1.viesti:=chat_lause;
    TCPClient1.WriteBuffer(@ChatMSG1,sizeof(ChatMSG1));
  end;

  if chat_mode=5 then begin //PM
    if chat_kenelle=oma_login_name then exit;
    ChatMSG2.mtype:=225;
    ChatMSG2.mtype2:=225;
    ChatMSG2.kenelle:=chat_kenelle;
    ChatMSG2.viesti:=chat_lause;
    TCPClient1.WriteBuffer(@ChatMSG2,sizeof(ChatMSG2));
    aseta_chat_viesti_peli(oma_login_name +' -- '+ chat_lause,1);
  end;

  if chat_mode=6 then begin //to other team
		if chat_kenelle=oma_team_name then exit;
    ChatMSG3.mtype:=226;
    ChatMSG3.mtype2:=226;
    ChatMSG3.kenelle:=chat_kenelle;
    ChatMSG3.viesti:=chat_lause;
    TCPClient1.WriteBuffer(@ChatMSG3,sizeof(ChatMSG3));
    aseta_chat_viesti_peli(oma_login_name +' -- '+ chat_lause,2);
  end;

  if chat_mode=7 then begin //to own team
		if oma_team_name='' then exit;
    ChatMSG1.mtype:=227;
    ChatMSG1.mtype2:=227;
    ChatMSG1.viesti:=chat_lause;
    TCPClient1.WriteBuffer(@ChatMSG1,sizeof(ChatMSG1));
  end;


  chat_mode:=0;
  chat_lause:='';
  spam:=true;

end;

procedure aseta_chat_viesti_peli(pMSG: string; pColor: byte);
var i: integer;
begin
  //värit 1=red 2=green 3=white 4=yellow

  for i:=1 to 9 do begin
    peli_chat_msg[i]:=peli_chat_msg[i+1];
    peli_chat_color[i]:=peli_chat_color[i+1];
  end;

  peli_chat_msg[10]:=pMSG;
  peli_chat_color[10]:=pColor;

end;

procedure chatti_piirrot;
var
  p_chatcursor: array [1..2] of string;
begin

  if chat_mode>0 then begin

    if (chat_mode=5) or (chat_mode=6) then
      draw2D(10,710,'edit2');
    draw2D(10,736,'edit1');



    if chat_selected_textfield=1 then begin
      p_chatcursor[1]:='|';
      p_chatcursor[2]:='';
    end
    else begin
      p_chatcursor[1]:='';
      p_chatcursor[2]:='|';
    end;



    if (chat_mode=5) or (chat_mode=6) then begin
      if chat_kursori_delay<30 then
        print(15,710,1,chat_kenelle,OmegaColor(clwhite))
      else
        print(15,710,1,chat_kenelle+p_chatcursor[1],OmegaColor(clwhite));
    end;


    if chat_kursori_delay<30 then
      print(15,736,1,chat_lause,OmegaColor(clwhite))
    else
      print(15,736,1,chat_lause+p_chatcursor[2],OmegaColor(clwhite));

  end;

end;

procedure chatKursori;
begin
  inc(chat_kursori_delay);
  if chat_kursori_delay>60 then chat_kursori_delay:=0;
end;

procedure AddInfoMessage(msg: string);
begin
  form1.sRichEdit1.SelStart:=form1.sRichEdit1.GetTextLen;
  form1.sRichEdit1.SelAttributes.Color:=Chat_settings.colors[5];
  form1.sRichEdit1.Lines.Add(msg);
  SendMessage(form1.srichedit1.Handle, WM_VSCROLL, SB_BOTTOM, 0);
end;

procedure AddChatMessage(p_name, p_team, p_msg: String; p_type: byte; kenelle: string);
var sRichEdit: TsRichEdit;
    clColor: TColor;
    p_str: string;
begin

//  if ((p_type=0) or (p_type=2)) and (kenelle='') then exit;

  if p_type=3 then
    sRichEdit:=form1.sRichEdit2
  else
    sRichEdit:=form1.sRichEdit1;


  if p_type=0 then
    clColor:=Chat_settings.colors[1]
  else if p_type=1 then
    clColor:=Chat_settings.colors[2]
  else if p_type=2 then
    clColor:=Chat_settings.colors[3]
  else if p_type=3 then
    clColor:=Chat_settings.colors[4]
  else
    clColor:=Chat_settings.colors[5];

  p_str:=TimeToStr(Time)+' '+p_name+' ';
  if not (p_team='') and not (p_team=oma_team_name) then
    p_str:=p_str+'('+p_team+') ';

  if (p_type=0) or (p_type=2) then
    if not (kenelle='') then
      p_str:=p_str+'-> '+kenelle+' ';
  p_str:=p_str+'-- '+p_msg;

  sRichEdit.SelStart:=sRichEdit.GetTextLen;
  sRichEdit.SelAttributes.Color:=clColor;
  sRichEdit.Lines.Add(p_str);
  SendMessage(srichedit.Handle, WM_VSCROLL, SB_BOTTOM, 0);

end;

procedure SendChatMsg(kohde: byte; kenelle, msg: string);
type
  TChatmsg = record
    mtype: word;
    mtype2: word;
    ra: word;
    kenelle: string[15];
    viesti: string[120];
  end;
  TChatmsg2 = record
    mtype: word;
    mtype2: word;
    ra: word;
    viesti: string[120];
  end;
  TChatmsg3 = record
    mtype: word;
    mtype2: word;
    ra: word;
    kenelle: string[20];
    viesti: string[120];
  end;
var
  Chatmsg: TChatmsg;
  Chatmsg2: TChatmsg2;
  Chatmsg3: TChatmsg3;
begin

  if kohde=1 then begin // PM
    if kenelle='' then exit;
    if kenelle=oma_login_name then exit;

    Chatmsg.mtype:=231;
    Chatmsg.mtype2:=231;
    Chatmsg.ra:=random(55000)+1;
    Chatmsg.kenelle:=kenelle;
    Chatmsg.viesti:=msg;
    TCPClient2.WriteBuffer(@Chatmsg,sizeof(Chatmsg));
  end;

  if kohde=2 then begin // own team
    Chatmsg2.mtype:=233;
    Chatmsg2.mtype2:=233;
    Chatmsg2.ra:=random(55000)+1;
    Chatmsg2.viesti:=msg;
    TCPClient2.WriteBuffer(@Chatmsg2,sizeof(Chatmsg2));
  end;

  if kohde=3 then begin // to team
    if kenelle='' then exit;
    if kenelle=oma_team_name then exit;

    Chatmsg3.mtype:=232;
    Chatmsg3.mtype2:=232;
    Chatmsg3.ra:=random(55000)+1;
    Chatmsg3.kenelle:=kenelle;
    Chatmsg3.viesti:=msg;
    TCPClient2.WriteBuffer(@Chatmsg3,sizeof(Chatmsg3));
  end;

  if kohde=4 then begin   //public
    Chatmsg2.mtype:=28;
    Chatmsg2.mtype2:=28;
    Chatmsg2.ra:=random(55000)+1;
    Chatmsg2.viesti:=msg;
    TCPClient2.WriteBuffer(@Chatmsg2,sizeof(Chatmsg2));
  end;

end;

function onkoJoReady: boolean;
begin
  result:=Ingame_data.ready[Ingame_data.omaPeliIndex,Ingame_data.omaPeliTeamIndex];
end;

procedure piirraQuitPanel;
begin
  draw2D(112,134,'panel1');

  if not (selectedGameType=3) then
    draw2D(310,600,'button1');

  if not (selectedGameType=3) then
    print(320,601,1,'Quit',OmegaColor(clwhite));

end;

procedure lRefRutiinit;
var i: integer;
    paikLiike: real;
begin

  for i:=1 to 2 do begin
    if Ingame_data.refLiputus[i]=2 then begin
      inc(Ingame_data.refDelay[i]);
      if Ingame_data.refDelay[i]>100 then begin
        Ingame_data.refDelay[i]:=0;
        Ingame_data.refLiputus[i]:=0;
      end;
    end;
  end;


	Ingame_data.lRefCoordsKohdeY[1]:= 0;
	Ingame_data.lRefCoordsKohdeY[2]:= 0;

  if Ingame_data.homeAloituspuoli=1 then begin
    for i:=1 to 10 do begin
      if not (Ingame_data.playerNames[i,1]='') then
        if Ingame_data.plrCoords[i,1,2]<Ingame_data.lRefCoordsKohdeY[1] then
          Ingame_data.lRefCoordsKohdeY[1]:=Ingame_data.plrCoords[i,1,2];
    end;
    for i:=1 to 10 do begin
      if not (Ingame_data.playerNames[i,2]='') then
        if Ingame_data.plrCoords[i,2,2]>Ingame_data.lRefCoordsKohdeY[2] then
          Ingame_data.lRefCoordsKohdeY[2]:=Ingame_data.plrCoords[i,2,2];
    end;
  end
  else begin
	  for i:=1 to 10 do begin
      if not (Ingame_data.playerNames[i,2]='') then
        if Ingame_data.plrCoords[i,2,2]<Ingame_data.lRefCoordsKohdeY[1] then
          Ingame_data.lRefCoordsKohdeY[1]:=Ingame_data.plrCoords[i,2,2];
		end;
		for i:=1 to 10 do begin
      if not (Ingame_data.playerNames[i,1]='') then
        if Ingame_data.plrCoords[1,1,2]>Ingame_data.lRefCoordsKohdeY[2] then
          Ingame_data.lRefCoordsKohdeY[2]:=Ingame_data.plrCoords[i,1,2];
		end;
  end;



//******************************************************************************

  // lRefSuunta
  for i:=1 to 2 do begin
	  if Ingame_data.lRefCoordsY[i] > Ingame_data.lRefCoordsKohdeY[i] then
      Ingame_data.lRefSuunta[i]:=270
		else
			Ingame_data.lRefSuunta[i]:=90;

    if etaisyys(0,Ingame_data.lRefCoordsY[i],0,Ingame_data.lRefCoordsKohdeY[i])>5 then
      Ingame_data.refNopeus[i]:=2
    else
      Ingame_data.refNopeus[i]:=0;

    if Ingame_data.refLiputus[i]>0 then
      Ingame_data.refNopeus[i]:=0;

    paikLiike:=sin(ToRad*Ingame_data.lRefSuunta[i])*Ingame_data.refNopeus[i];
    Ingame_data.lRefCoordsY[i]:=Ingame_data.lRefCoordsY[i]+paikLiike;
  end;

//******************************************************************************

  for i:=1 to 2 do
    laskeRefFrame(i);

end;

procedure laskeRefFrame(ID: byte);
var paikSuunta,paikAsentoKerroin: integer;
    pFrameSuunta: real;
begin

  paikAsentoKerroin:=0;
  paikSuunta:=0;

  pFrameSuunta:=Ingame_data.lRefSuunta[ID];
  Ingame_data.refframePotit[ID]:=Ingame_data.refframePotit[ID]+Ingame_data.refNopeus[ID];
  if Ingame_data.refframePotit[ID] > 20 then begin
    inc(Ingame_data.refasentoKerroin[ID]);
    Ingame_data.refframePotit[ID]:=0;
  end;

  if Ingame_data.refasentoKerroin[ID]=4 then
    Ingame_data.refasentoKerroin[ID]:=0;

  if Ingame_data.refNopeus[ID] <= 0 then begin
    Ingame_data.refasentoKerroin[ID]:=0;
    Ingame_data.refframePotit[ID]:=0;
  end;

  if (pFrameSuunta >= 247) and (pFrameSuunta < 292) then
    paikSuunta := 3;
  if (pFrameSuunta >= 67) and (pFrameSuunta < 112) then
    paikSuunta := 0;

  if Ingame_data.refasentoKerroin[ID] = 0 then
    paikAsentoKerroin := 0;
  if Ingame_data.refasentoKerroin[ID] = 1 then
    paikAsentoKerroin := 1;
  if Ingame_data.refasentoKerroin[ID] = 2 then
    paikAsentoKerroin := 0;
  if Ingame_data.refasentoKerroin[ID] = 3 then
    paikAsentoKerroin := 2;

  Ingame_data.patternIndexLRef[ID] := paikSuunta + paikAsentoKerroin;

  if ID=1 then begin
    if Ingame_data.refLiputus[ID]=1 then
      Ingame_data.patternIndexLRef[ID]:=8;
    if Ingame_data.refLiputus[ID]=2 then
      Ingame_data.patternIndexLRef[ID]:=6;
	end;
  if ID=2 then begin
    if Ingame_data.refLiputus[ID]=1 then
      Ingame_data.patternIndexLRef[ID]:=9;
    if Ingame_data.refLiputus[ID]=2 then
      Ingame_data.patternIndexLRef[ID]:=7;
  end;

end;

procedure piirraLinerefs;
var px,py: smallint;
begin

  px:=Ingame_data.ukonNaytto[1]-Ingame_data.kenttaXY[1] - 522;
  py:=round(Ingame_data.ukonNaytto[2]-Ingame_data.kenttaXY[2] + Ingame_data.lRefCoordsY[1]);
  draw2D(px-20,py-28,Ingame_data.patternIndexLRef[1],'lref');

  // *********

  px:=Ingame_data.ukonNaytto[1]-Ingame_data.kenttaXY[1] + 522;
  py:=round(Ingame_data.ukonNaytto[2]-Ingame_data.kenttaXY[2] + Ingame_data.lRefCoordsY[2]);
  draw2D(px-20,py-28,Ingame_data.patternIndexLRef[2],'lref');

end;

procedure piirraSmallfield;
var i,j: integer;
    pX, pY: smallint;
begin
  draw2D(10,73,'smallfield');

  //rinkulat
  for i:=1 to Ingame_data.maxPlayers do begin
    for j:=1 to 2 do begin
      if not (Ingame_data.playerNames[i,j]='') then begin
        pX:=111+round(Ingame_data.plrCoords[i,j,1]/5);
        pY:=200+round(Ingame_data.plrCoords[i,j,2]/5);
        if (i=Ingame_data.omaPeliIndex) and (j=Ingame_data.omaPeliTeamIndex) then begin
          draw2D(pX,pY,0,'pradar');
          draw2D(pX,pY,2,'pradar',Ingame_data.shirtColors[1,1,j],Ingame_data.shirtColors[1,2,j],Ingame_data.shirtColors[1,3,j]);
        end
        else begin
          draw2D(pX,pY,1,'pradar');
          draw2D(pX,pY,2,'pradar',Ingame_data.shirtColors[1,1,j],Ingame_data.shirtColors[1,2,j],Ingame_data.shirtColors[1,3,j]);
        end;
      end;
    end;
  end;

  pX:=111+round(Ingame_data.ballCoords[1]/5);
  pY:=200+round(Ingame_data.ballCoords[2]/5);
  draw2D(pX,pY,3,'pradar');

//******************************************************************************
//molari rinkulkat

  if Ingame_data.homeAloituspuoli=1 then begin
    for j:=1 to 2 do begin
      pX:=111+round(Ingame_data.keeperCoords[j,1]/5);
      pY:=200+round(Ingame_data.keeperCoords[j,2]/5);
      draw2D(pX,pY,1,'pradar');
      draw2D(pX,pY,2,'pradar',Ingame_data.shirtColors[1,1,j],Ingame_data.shirtColors[1,2,j],Ingame_data.shirtColors[1,3,j]);
    end;
  end
  else begin
    pX:=111+round(Ingame_data.keeperCoords[1,1]/5);
    pY:=200+round(Ingame_data.keeperCoords[1,2]/5);
    draw2D(pX,pY,1,'pradar');
    draw2D(pX,pY,2,'pradar',Ingame_data.shirtColors[1,1,2],Ingame_data.shirtColors[1,2,2],Ingame_data.shirtColors[1,3,2]);

    pX:=111+round(Ingame_data.keeperCoords[2,1]/5);
    pY:=200+round(Ingame_data.keeperCoords[2,2]/5);
    draw2D(pX,pY,1,'pradar');
    draw2D(pX,pY,2,'pradar',Ingame_data.shirtColors[1,1,1],Ingame_data.shirtColors[1,2,1],Ingame_data.shirtColors[1,3,1]);

  end;


end;

procedure powerBarLaskut;
begin

//**********************  keyboard  ********************************************
  if Settings.control=0 then begin
    if (Ingame_data.mouseButtons[1]=false) and (Ingame_data.mouseButtons[2]=false) then begin
      Ingame_data.powerBool:=false;
      Ingame_data.powerbar:=0;
    end;

    if (Ingame_data.mouseButtons[1]=true) or (Ingame_data.mouseButtons[2]=true) then begin
      if Ingame_data.powerBool=false then begin
      Ingame_data.powerbar:=Ingame_data.powerbar-4;
        if Ingame_data.powerbar<0 then begin
          Ingame_data.powerbar:=0;
          Ingame_data.powerBool:=true;
        end;
      end;

      if Ingame_data.powerBool=true then begin
        Ingame_data.powerbar:=Ingame_data.powerbar+4;
        if Ingame_data.powerbar>150 then begin
          Ingame_data.powerbar:=150;
          Ingame_data.powerBool:=false;
        end;
      end;
    end;
  end;
//******************************************************************************
//*************************  mouse  ********************************************
  if Settings.control=1 then begin
    if Ingame_data.mouseButtons[1]=false then begin
      Ingame_data.powerBool:=false;
      Ingame_data.powerbar:=0;
    end;

    if Ingame_data.mouseButtons[1]=true then begin
      if Ingame_data.powerBool=false then begin
      Ingame_data.powerbar:=Ingame_data.powerbar-4;
        if Ingame_data.powerbar<0 then begin
          Ingame_data.powerbar:=0;
          Ingame_data.powerBool:=true;
        end;
      end;

      if Ingame_data.powerBool=true then begin
        Ingame_data.powerbar:=Ingame_data.powerbar+4;
        if Ingame_data.powerbar>150 then begin
          Ingame_data.powerbar:=150;
          Ingame_data.powerBool:=false;
        end;
      end;
    end;
  end;

end;


procedure piirraPowerBar;
begin

  draw2D(437,710,'powerback');

  if Ingame_data.powerbar=0 then exit;

  form3.Omegaimagelist1.imagelist.Find('power').TileWidth:=round(Ingame_data.powerbar);
  draw2D(437,710,'power');

end;

procedure siirraPalloaDeadReconing;
var paikLiike: real;
    kitka: real;
begin
  if Ingame_data.ballNopeus>230 then exit;

  paikLiike:=cos(ToRad*Ingame_data.ballAngle)*Ingame_data.ballNopeus;
  Ingame_data.ballCoords[1]:=round(Ingame_data.ballCoords[1]+paikLiike);
  paikLiike:=sin(ToRad*Ingame_data.ballAngle)*Ingame_data.ballNopeus;
  Ingame_data.ballCoords[2]:=round(Ingame_data.ballCoords[2]+paikLiike);

  pallonKorkeusLaskut(1);

  kitka := 0.05;

  if Ingame_data.ballKorkeus <= 0 then
    Ingame_data.ballNopeus:= Ingame_data.ballNopeus - kitka;

  if Ingame_data.ballNopeus < 0 then
    Ingame_data.ballNopeus:= 0;

end;

procedure pallonKorkeusLaskut(j: integer);
var a1,b1,b2: real;
    paikLiike: real;
begin

  if (Ingame_data.palloKeeperilla[1]) or (Ingame_data.palloKeeperilla[2]) then exit;

  if j=1 then begin
    b1:=0.933;   //0.942
    b2:=1.052;   //1.058
    a1:=8;       //7
  end else begin
    b1:=0.9933;
    b2:=1.0052;
    a1:=0.8;
  end;

  if not (Ingame_data.ballHeAngle=0) then begin
    paikLiike:=sin(ToRad*Ingame_data.ballHeAngle)*a1;
    Ingame_data.ballKorkeus:=Ingame_data.ballKorkeus+paikLiike;
    if Ingame_data.ballKorkeus < 0 then
      Ingame_data.ballKorkeus:= 0;
  end;

  if Ingame_data.ballHeAngle>0 then begin
    Ingame_data.ballHeAngle:=Ingame_data.ballHeAngle*b1;
    if Ingame_data.ballHeAngle<4 then
      Ingame_data.ballHeAngle:=-3.67;
  end;

  if Ingame_data.ballHeAngle<0 then begin
    if Ingame_data.ballHeAngle>-3.67 then
      Ingame_data.ballHeAngle:=-3.67;
    Ingame_data.ballHeAngle:=Ingame_data.ballHeAngle*b2;    //ok
  end;

  if Ingame_data.ballHeAngle>90 then
    Ingame_data.ballHeAngle:=90;
  if Ingame_data.ballHeAngle<-90 then
    Ingame_data.ballHeAngle:=-90;

  if Ingame_data.ballKorkeus>0 then begin
    if (Ingame_data.ballHeAngle<0.1) and (Ingame_data.ballHeAngle>-0.1) then
      Ingame_data.ballHeAngle:=-4;
  end;

  if (Ingame_data.ballKorkeus<=0) and (Ingame_data.ballHeAngle<0) then begin // pomppu maasta
    Ingame_data.ballHeAngle:=Ingame_data.ballHeAngle*0.63; // rullaus maata pitkin
    Ingame_data.ballKorkeus:=0;
    Ingame_data.ballHeAngle:=0-Ingame_data.ballHeAngle;
    if Ingame_data.ballHeAngle<4 then
      Ingame_data.ballHeAngle:=0
    else
      Ingame_data.ballNopeus:=Ingame_data.ballNopeus-1;
  end;

end;

procedure laskePelaajilleFramet;
var i,j: integer;
begin
  for i:=1 to Ingame_data.maxPlayers do
    for j:=1 to 2 do
      laskePelaajalleFrame(i,j);

end;

procedure laskePelaajalleFrame(pID,tID: byte);
var
  paikSuunta, paikAsentoKerroin: integer;
  pFrameSuunta: real;
begin

  paikSuunta:=0;
  paikAsentoKerroin:=0;
  pFrameSuunta:=Ingame_data.plrAngle[pID,tID];

  if pFrameSuunta<0 then
    pFrameSuunta:=360 + pFrameSuunta;
  if pFrameSuunta>360 then
    pFrameSuunta:=pFrameSuunta-360;


  Ingame_data.framePotit[pID][tID]:= Ingame_data.framePotit[pID][tID] + Ingame_data.plrNopeus[pID][tID];
  if Ingame_data.framePotit[pID][tID] > 20 then begin
    inc(Ingame_data.asentoKerroin[pID][tID]);
    Ingame_data.framePotit[pID][tID]:= 0;
  end;

  if Ingame_data.asentoKerroin[pID][tID] = 4 then
    Ingame_data.asentoKerroin[pID][tID] := 0;

  if Ingame_data.plrNopeus[pID][tID] <= 0 then begin
    Ingame_data.asentoKerroin[pID][tID]:= 0;
    Ingame_data.framePotit[pID][tID]:= 0;
  end;


  if (pFrameSuunta >= 247) and (pFrameSuunta < 292) then
    paikSuunta := 9;
  if (pFrameSuunta >= 292) and (pFrameSuunta < 337) then
    paikSuunta := 12;
  if (pFrameSuunta >= 337) or (pFrameSuunta < 22) then
    paikSuunta := 0;
  if (pFrameSuunta >= 22) and (pFrameSuunta < 67) then
    paikSuunta := 18;
  if (pFrameSuunta >= 67) and (pFrameSuunta < 112) then
    paikSuunta := 6;
  if (pFrameSuunta >= 112) and (pFrameSuunta < 157) then
    paikSuunta := 21;
  if (pFrameSuunta >= 157) and (pFrameSuunta < 202) then
    paikSuunta := 3;
  if (pFrameSuunta >= 202) and (pFrameSuunta < 247) then
    paikSuunta := 15;


  if Ingame_data.asentoKerroin[pID][tID] = 0 then
    paikAsentoKerroin := 0;
  if Ingame_data.asentoKerroin[pID][tID] = 1 then
    paikAsentoKerroin := 1;
  if Ingame_data.asentoKerroin[pID][tID] = 2 then
    paikAsentoKerroin := 0;
  if Ingame_data.asentoKerroin[pID][tID] = 3 then
    paikAsentoKerroin := 2;

  Ingame_data.patternIndex[pID][tID] := paikSuunta + paikAsentoKerroin;


  if (Ingame_data.heittaja[1]=pID) and (Ingame_data.heittaja[2]=tID) then begin
    if (pFrameSuunta >= 247) and (pFrameSuunta < 292) then
      Ingame_data.patternIndex[pID][tID] := 25;
    if (pFrameSuunta >= 292) and (pFrameSuunta < 337) then
      Ingame_data.patternIndex[pID][tID] := 26;
    if (pFrameSuunta >= 337) or (pFrameSuunta < 22) then
      Ingame_data.patternIndex[pID][tID] := 30;
    if (pFrameSuunta >= 22) and (pFrameSuunta < 67) then
      Ingame_data.patternIndex[pID][tID] := 29;
    if (pFrameSuunta >= 67) and (pFrameSuunta < 112) then
      Ingame_data.patternIndex[pID][tID] := 24;
    if (pFrameSuunta >= 112) and (pFrameSuunta < 157) then
      Ingame_data.patternIndex[pID][tID] := 28;
    if (pFrameSuunta >= 157) and (pFrameSuunta < 202) then
      Ingame_data.patternIndex[pID][tID] := 31;
    if (pFrameSuunta >= 202) and (pFrameSuunta < 247) then
      Ingame_data.patternIndex[pID][tID] := 27;
  end;

  if Ingame_data.liukkari[pID,tID] then begin
    if (pFrameSuunta >= 247) and (pFrameSuunta < 292) then
      Ingame_data.patternIndex[pID][tID] := 33;
    if (pFrameSuunta >= 292) and (pFrameSuunta < 337) then
      Ingame_data.patternIndex[pID][tID] := 39;
    if (pFrameSuunta >= 337) or (pFrameSuunta < 22) then
      Ingame_data.patternIndex[pID][tID] := 34;
    if (pFrameSuunta >= 22) and (pFrameSuunta < 67) then
      Ingame_data.patternIndex[pID][tID] := 37;
    if (pFrameSuunta >= 67) and (pFrameSuunta < 112) then
      Ingame_data.patternIndex[pID][tID] := 32;
    if (pFrameSuunta >= 112) and (pFrameSuunta < 157) then
      Ingame_data.patternIndex[pID][tID] := 36;
    if (pFrameSuunta >= 157) and (pFrameSuunta < 202) then
      Ingame_data.patternIndex[pID][tID] := 35;
    if (pFrameSuunta >= 202) and (pFrameSuunta < 247) then
      Ingame_data.patternIndex[pID][tID] := 38;
  end;

  if Ingame_data.kaatunut[pID,tID] then begin
    if (pFrameSuunta >= 247) and (pFrameSuunta < 292) then
      Ingame_data.patternIndex[pID][tID] := 43;
    if (pFrameSuunta >= 292) and (pFrameSuunta < 337) then
      Ingame_data.patternIndex[pID][tID] := 44;
    if (pFrameSuunta >= 337) or (pFrameSuunta < 22) then
      Ingame_data.patternIndex[pID][tID] := 40;
    if (pFrameSuunta >= 22) and (pFrameSuunta < 67) then
      Ingame_data.patternIndex[pID][tID] := 46;
    if (pFrameSuunta >= 67) and (pFrameSuunta < 112) then
      Ingame_data.patternIndex[pID][tID] := 42;
    if (pFrameSuunta >= 112) and (pFrameSuunta < 157) then
      Ingame_data.patternIndex[pID][tID] := 47;
    if (pFrameSuunta >= 157) and (pFrameSuunta < 202) then
      Ingame_data.patternIndex[pID][tID] := 41;
    if (pFrameSuunta >= 202) and (pFrameSuunta < 247) then
      Ingame_data.patternIndex[pID][tID] := 45;
  end;


end;

procedure laskeGKFramet;
var j: integer;
begin

  for j:=1 to 2 do
    laskeGKFrame(j);

end;

procedure laskeGKFrame(tID: byte);
var
  paikSuunta, paikAsentoKerroin: integer;
  pFrameSuunta: real;
begin

  paikSuunta:=0;
  paikAsentoKerroin:=0;
  pFrameSuunta:=Ingame_data.keeperAngle[tID];

  if pFrameSuunta<0 then
    pFrameSuunta:=360 + pFrameSuunta;
  if pFrameSuunta>360 then
    pFrameSuunta:=pFrameSuunta-360;


  Ingame_data.keeperframePotit[tID]:= Ingame_data.keeperframePotit[tID] + Ingame_data.keeperNopeus[tID];
  if Ingame_data.keeperframePotit[tID] > 20 then begin
    inc(Ingame_data.keeperasentoKerroin[tID]);
    Ingame_data.keeperframePotit[tID]:= 0;
  end;

  if Ingame_data.keeperasentoKerroin[tID] = 4 then
    Ingame_data.keeperasentoKerroin[tID] := 0;

  if Ingame_data.keeperNopeus[tID] <= 0 then begin
    Ingame_data.keeperasentoKerroin[tID]:= 0;
    Ingame_data.keeperframePotit[tID]:= 0;
  end;


  if (pFrameSuunta >= 247) and (pFrameSuunta < 292) then
    paikSuunta := 9;
  if (pFrameSuunta >= 292) and (pFrameSuunta < 337) then
    paikSuunta := 12;
  if (pFrameSuunta >= 337) or (pFrameSuunta < 22) then
    paikSuunta := 0;
  if (pFrameSuunta >= 22) and (pFrameSuunta < 67) then
    paikSuunta := 18;
  if (pFrameSuunta >= 67) and (pFrameSuunta < 112) then
    paikSuunta := 6;
  if (pFrameSuunta >= 112) and (pFrameSuunta < 157) then
    paikSuunta := 21;
  if (pFrameSuunta >= 157) and (pFrameSuunta < 202) then
    paikSuunta := 3;
  if (pFrameSuunta >= 202) and (pFrameSuunta < 247) then
    paikSuunta := 15;


  if Ingame_data.keeperasentoKerroin[tID] = 0 then
    paikAsentoKerroin := 0;
  if Ingame_data.keeperasentoKerroin[tID] = 1 then
    paikAsentoKerroin := 1;
  if Ingame_data.keeperasentoKerroin[tID] = 2 then
    paikAsentoKerroin := 0;
  if Ingame_data.keeperasentoKerroin[tID] = 3 then
    paikAsentoKerroin := 2;

  Ingame_data.keeperpatternIndex[tID] := paikSuunta + paikAsentoKerroin;


end;

procedure deadReconing;
var i,j: integer;
    paikLiike: real;
begin

  for i:=1 to 2 do begin
    paikLiike:=cos(ToRad*Ingame_data.keeperAngle[i])*Ingame_data.keeperNopeus[i];
    Ingame_data.keeperCoords[i,1]:=round(Ingame_data.keeperCoords[i,1]+paikLiike);
    paikLiike:=sin(ToRad*Ingame_data.keeperAngle[i])*Ingame_data.keeperNopeus[i];
    Ingame_data.keeperCoords[i,2]:=round(Ingame_data.keeperCoords[i,2]+paikLiike);
  end;

  for i:=1 to Ingame_data.maxPlayers do
    for j:=1 to 2 do begin
      paikLiike:=cos(ToRad*Ingame_data.plrAngle[i,j])*Ingame_data.plrNopeus[i,j];
      Ingame_data.plrCoords[i,j,1]:=round(Ingame_data.plrCoords[i,j,1]+paikLiike);
      paikLiike:=sin(ToRad*Ingame_data.plrAngle[i,j])*Ingame_data.plrNopeus[i,j];
      Ingame_data.plrCoords[i,j,2]:=round(Ingame_data.plrCoords[i,j,2]+paikLiike);
    end;

  tormaysTarkastus;

end;

procedure tormaysTarkastus;
var i,j,k: integer;
    pAng, paikLiike,pET: real;
    old: array [1..2] of real;
    collisionArea: byte;
begin

  if Ingame_data.autoRunning>0 then exit;

  collisionArea:=14;

  for i:=1 to Ingame_data.maxPlayers do begin
    if Ingame_data.playerNames[i,1]='' then continue;
    if Ingame_data.liukkari[i,1]=true then continue;
    if Ingame_data.kaatunut[i,1]=true then continue;

    for j:=1 to Ingame_data.maxPlayers do begin
      if Ingame_data.playerNames[j,2]='' then continue;
      if Ingame_data.liukkari[j,2]=true then continue;
      if Ingame_data.kaatunut[j,2]=true then continue;


      //törmäys tapahtu
      pET:=etaisyys(Ingame_data.plrCoords[i,1,1],Ingame_data.plrCoords[i,1,2],Ingame_data.plrCoords[j,2,1],Ingame_data.plrCoords[j,2,2]);
      if pET<collisionArea then begin
        //kotipelaaja vahvempi
        if Ingame_data.character[i,1,3]>Ingame_data.character[j,2,3] then begin
          pAng:=angle(Ingame_data.plrCoords[i,1,1],Ingame_data.plrCoords[i,1,2],Ingame_data.plrCoords[j,2,1],Ingame_data.plrCoords[j,2,2]);
          paikLiike:=cos(ToRad*pAng)*collisionArea;
          Ingame_data.plrCoords[j,2,1]:=round(Ingame_data.plrCoords[i,1,1]+paikLiike);
          paikLiike:=sin(ToRad*pAng)*collisionArea;
          Ingame_data.plrCoords[j,2,2]:=round(Ingame_data.plrCoords[i,1,2]+paikLiike);
        end;

        //vieraspelaaja vahvempi
        if Ingame_data.character[j,2,3]>Ingame_data.character[i,1,3] then begin
          pAng:=angle(Ingame_data.plrCoords[j,2,1],Ingame_data.plrCoords[j,2,2],Ingame_data.plrCoords[i,1,1],Ingame_data.plrCoords[i,1,2]);
          paikLiike:=cos(ToRad*pAng)*collisionArea;
          Ingame_data.plrCoords[i,1,1]:=round(Ingame_data.plrCoords[j,2,1]+paikLiike);
          paikLiike:=sin(ToRad*pAng)*collisionArea;
          Ingame_data.plrCoords[i,1,2]:=round(Ingame_data.plrCoords[j,2,2]+paikLiike);
        end;

        //yhtä vahvoja
        if Ingame_data.character[i,1,3]=Ingame_data.character[j,2,3] then begin
          pAng:=angle(Ingame_data.plrCoords[i,1,1],Ingame_data.plrCoords[i,1,2],Ingame_data.plrCoords[j,2,1],Ingame_data.plrCoords[j,2,2]);
          paikLiike:=cos(ToRad*pAng)*collisionArea;
          old[1]:=Ingame_data.plrCoords[j,2,1];
          old[2]:=Ingame_data.plrCoords[j,2,2];

          Ingame_data.plrCoords[j,2,1]:=round(Ingame_data.plrCoords[i,1,1]+paikLiike);
          paikLiike:=sin(ToRad*pAng)*collisionArea;
          Ingame_data.plrCoords[j,2,2]:=round(Ingame_data.plrCoords[i,1,2]+paikLiike);

          pAng:=angle(Ingame_data.plrCoords[j,2,1],Ingame_data.plrCoords[j,2,2],Ingame_data.plrCoords[i,1,1],Ingame_data.plrCoords[i,1,2]);
          paikLiike:=cos(ToRad*pAng)*collisionArea;
          Ingame_data.plrCoords[i,1,1]:=round(old[1]+paikLiike);
          paikLiike:=sin(ToRad*pAng)*collisionArea;
          Ingame_data.plrCoords[i,1,2]:=round(old[2]+paikLiike);
        end;
      end;


    end;
  end;

//******************************************************************************
  for k:=1 to 2 do begin
  for i:=1 to Ingame_data.maxPlayers do begin
    if Ingame_data.playerNames[i,k]='' then continue;
    if Ingame_data.liukkari[i,k]=true then continue;
    if Ingame_data.kaatunut[i,k]=true then continue;

    for j:=1 to Ingame_data.maxPlayers do begin
      if Ingame_data.playerNames[j,k]='' then continue;
      if Ingame_data.liukkari[j,k]=true then continue;
      if Ingame_data.kaatunut[j,k]=true then continue;
      if i=j then continue;


      //törmäys tapahtu
      pET:=etaisyys(Ingame_data.plrCoords[i,k,1],Ingame_data.plrCoords[i,k,2],Ingame_data.plrCoords[j,k,1],Ingame_data.plrCoords[j,k,2]);
      if pET<collisionArea then begin
        //i pelaaja vahvempi
        if Ingame_data.character[i,k,3]>Ingame_data.character[j,k,3] then begin
          pAng:=angle(Ingame_data.plrCoords[i,k,1],Ingame_data.plrCoords[i,k,2],Ingame_data.plrCoords[j,k,1],Ingame_data.plrCoords[j,k,2]);
          paikLiike:=cos(ToRad*pAng)*collisionArea;
          Ingame_data.plrCoords[j,k,1]:=round(Ingame_data.plrCoords[i,k,1]+paikLiike);
          paikLiike:=sin(ToRad*pAng)*collisionArea;
          Ingame_data.plrCoords[j,k,2]:=round(Ingame_data.plrCoords[i,k,2]+paikLiike);
        end;

        //j pelaaja vahvempi
        if Ingame_data.character[j,k,3]>Ingame_data.character[i,k,3] then begin
          pAng:=angle(Ingame_data.plrCoords[j,k,1],Ingame_data.plrCoords[j,k,2],Ingame_data.plrCoords[i,k,1],Ingame_data.plrCoords[i,k,2]);
          paikLiike:=cos(ToRad*pAng)*collisionArea;
          Ingame_data.plrCoords[i,k,1]:=round(Ingame_data.plrCoords[j,k,1]+paikLiike);
          paikLiike:=sin(ToRad*pAng)*collisionArea;
          Ingame_data.plrCoords[i,k,2]:=round(Ingame_data.plrCoords[j,k,2]+paikLiike);
        end;

        //yhtä vahvoja
        if Ingame_data.character[i,k,3]=Ingame_data.character[j,k,3] then begin
          pAng:=angle(Ingame_data.plrCoords[i,k,1],Ingame_data.plrCoords[i,k,2],Ingame_data.plrCoords[j,k,1],Ingame_data.plrCoords[j,k,2]);
          paikLiike:=cos(ToRad*pAng)*collisionArea;
          old[1]:=Ingame_data.plrCoords[j,k,1];
          old[2]:=Ingame_data.plrCoords[j,k,2];

          Ingame_data.plrCoords[j,k,1]:=round(Ingame_data.plrCoords[i,k,1]+paikLiike);
          paikLiike:=sin(ToRad*pAng)*collisionArea;
          Ingame_data.plrCoords[j,k,2]:=round(Ingame_data.plrCoords[i,k,2]+paikLiike);

          pAng:=angle(Ingame_data.plrCoords[j,k,1],Ingame_data.plrCoords[j,k,2],Ingame_data.plrCoords[i,k,1],Ingame_data.plrCoords[i,k,2]);
          paikLiike:=cos(ToRad*pAng)*collisionArea;
          Ingame_data.plrCoords[i,k,1]:=round(old[1]+paikLiike);
          paikLiike:=sin(ToRad*pAng)*collisionArea;
          Ingame_data.plrCoords[i,k,2]:=round(old[2]+paikLiike);
        end;
      end;


    end;
  end;
  end;


end;

procedure piirraPelaajat;
var i,j: integer;
begin

  for i:=1 to Ingame_data.maxPlayers do
    for j:=1 to 2 do
      if not (Ingame_data.playerNames[i,j]='') then
        piirraPelaaja(i,j);

end;

procedure piirraKeepers;
var i: integer;
begin

  for i:=1 to 2 do begin
    piirraKeeper(i);
    piirraKeeperSyoksy(i);
  end;

end;

procedure piirraKeeperSyoksy(tID: byte);
var paik_x,paik_y: smallint;
    paik_pattern: integer;
begin

  paik_pattern:=0;

  if Ingame_data.keeperAnim[tID]=0 then exit;

  if tID=1 then begin
    if Ingame_data.keeperAnim[tID]=11 then paik_pattern:=1;
    if Ingame_data.keeperAnim[tID]=12 then paik_pattern:=3;
    if Ingame_data.keeperAnim[tID]=13 then paik_pattern:=5;
    if Ingame_data.keeperAnim[tID]=14 then paik_pattern:=5;

    if Ingame_data.keeperAnim[tID]=15 then paik_pattern:=0;
    if Ingame_data.keeperAnim[tID]=16 then paik_pattern:=2;
    if Ingame_data.keeperAnim[tID]=17 then paik_pattern:=4;
    if Ingame_data.keeperAnim[tID]=18 then paik_pattern:=4;
  end;

  if tID=2 then begin
    if Ingame_data.keeperAnim[tID]=11 then paik_pattern:=13;
    if Ingame_data.keeperAnim[tID]=12 then paik_pattern:=15;
    if Ingame_data.keeperAnim[tID]=13 then paik_pattern:=17;
    if Ingame_data.keeperAnim[tID]=14 then paik_pattern:=17;

    if Ingame_data.keeperAnim[tID]=15 then paik_pattern:=12;
    if Ingame_data.keeperAnim[tID]=16 then paik_pattern:=14;
    if Ingame_data.keeperAnim[tID]=17 then paik_pattern:=16;
    if Ingame_data.keeperAnim[tID]=18 then paik_pattern:=16;
  end;

  paik_x:=Ingame_data.ukonNaytto[1]-Ingame_data.kenttaXY[1] + Ingame_data.keeperCoords[tID,1]-20;
  paik_y:=Ingame_data.ukonNaytto[2]-Ingame_data.kenttaXY[2] + Ingame_data.keeperCoords[tID,2]-28;

  draw2D(paik_x,paik_y,paik_pattern,'keepers');

  

end;

procedure piirraKeeper(tID: byte);
var paik_x,paik_y: smallint;
    paik_pattern: integer;
    pBody: byte;
    tb: TTripleByte;
begin

  if Ingame_data.keeperAnim[tID]>0 then exit;

  paik_pattern:=Ingame_data.keeperpatternIndex[tID];
  pBody:=1;

  paik_x:=Ingame_data.ukonNaytto[1]-Ingame_data.kenttaXY[1] + Ingame_data.keeperCoords[tID,1]-20;
  paik_y:=Ingame_data.ukonNaytto[2]-Ingame_data.kenttaXY[2] + Ingame_data.keeperCoords[tID,2]-28;

  piirraPelaajanOsa(paik_x,paik_y,'pshadow',paik_pattern,pBody,255,255,255);

  tb.b1:=0;tb.b2:=0;tb.b3:=0;
  piirraPelaajanOsa(paik_x,paik_y,'hairs',paik_pattern,pBody,tb.b1,tb.b2,tb.b3);
  tb.b1:=255;tb.b2:=195;tb.b3:=141;
  piirraPelaajanOsa(paik_x,paik_y,'skins',paik_pattern,pBody,tb.b1,tb.b2,tb.b3);
  piirraPelaajanOsa(paik_x,paik_y,'shirts1',paik_pattern,pBody,189,170,88);

  piirraPelaajanOsa(paik_x,paik_y,'pants',paik_pattern,pBody,0,0,0);
  piirraPelaajanOsa(paik_x,paik_y,'socks',paik_pattern,pBody,0,0,0);
  tb.b1:=0;tb.b2:=0;tb.b3:=0;
  piirraPelaajanOsa(paik_x,paik_y,'shoes',paik_pattern,pBody,tb.b1,tb.b2,tb.b3);
  piirraPelaajanOsa(paik_x,paik_y,'norgb',paik_pattern,pBody,255,255,255);


//******************************************************************************
//piirretään pallo, jos se keeperillä hallussa
  if Ingame_data.palloKeeperilla[1] then begin

    paik_x:=Ingame_data.ukonNaytto[1]-Ingame_data.kenttaXY[1] + Ingame_data.ballCoords[1];
    paik_y:=Ingame_data.ukonNaytto[2]-Ingame_data.kenttaXY[2] + Ingame_data.ballCoords[2];

    draw2D(paik_x-3,paik_y-3-10,0,'ball');
  end;


end;

function getHairRGB(pID, tID: byte): TTripleByte;
var tb: TTripleByte;
begin

  result.b1:=0;
  result.b2:=0;
  result.b3:=0;

  if Ingame_data.character[pID,tID,2]=0 then begin
    result.b1:=0;
    result.b2:=0;
    result.b3:=0;
  end;

  if Ingame_data.character[pID,tID,2]=1 then begin
    result.b1:=91;
    result.b2:=77;
    result.b3:=11;
  end;

  if Ingame_data.character[pID,tID,2]=2 then begin
    result.b1:=142;
    result.b2:=125;
    result.b3:=8;
  end;

  if Ingame_data.character[pID,tID,2]=3 then begin
    result.b1:=222;
    result.b2:=161;
    result.b3:=78;
  end;

  if Ingame_data.character[pID,tID,2]=4 then begin
    result.b1:=255;
    result.b2:=215;
    result.b3:=146;
  end;

  if Ingame_data.character[pID,tID,2]=5 then begin
    tb:=getSkinRGB(pID,tID);
    result.b1:=tb.b1;
    result.b2:=tb.b2;
    result.b3:=tb.b3;
  end;


end;

function getSkinRGB(pID, tID: byte): TTripleByte;
begin

  result.b1:=0;
  result.b2:=0;
  result.b3:=0;

  if Ingame_data.character[pID,tID,1]=0 then begin
    result.b1:=255;
    result.b2:=195;
    result.b3:=141;
  end;

  if Ingame_data.character[pID,tID,1]=1 then begin
    result.b1:=217;
    result.b2:=130;
    result.b3:=85;
  end;

  if Ingame_data.character[pID,tID,1]=2 then begin
    result.b1:=91;
    result.b2:=77;
    result.b3:=11;
  end;

end;

function getShoeRGB(pID, tID: byte): TTripleByte;
begin

  result.b1:=0;
  result.b2:=0;
  result.b3:=0;

  if Ingame_data.character[pID,tID,4]=0 then begin
    result.b1:=0;
    result.b2:=0;
    result.b3:=0;
  end;

  if Ingame_data.character[pID,tID,4]=1 then begin
    result.b1:=220;
    result.b2:=220;
    result.b3:=220;
  end;

  if Ingame_data.character[pID,tID,4]=2 then begin
    result.b1:=0;
    result.b2:=0;
    result.b3:=220;
  end;

  if Ingame_data.character[pID,tID,4]=3 then begin
    result.b1:=0;
    result.b2:=220;
    result.b3:=0;
  end;

  if Ingame_data.character[pID,tID,4]=4 then begin
    result.b1:=220;
    result.b2:=0;
    result.b3:=0;
  end;

  if Ingame_data.character[pID,tID,4]=5 then begin
    result.b1:=220;
    result.b2:=220;
    result.b3:=0;
  end;

  if Ingame_data.character[pID,tID,4]=6 then begin
    result.b1:=220;
    result.b2:=0;
    result.b3:=220;
  end;

  if Ingame_data.character[pID,tID,4]=7 then begin
    result.b1:=0;
    result.b2:=220;
    result.b3:=220;
  end;

end;

procedure piirraPelaaja(pID, tID: byte);
var paik_x,paik_y: smallint;
    paik_pattern: integer;
    pBody: byte;
    tb: TTripleByte;
    numberStr: string;
begin

  paik_pattern:=Ingame_data.patternIndex[pID,tID];
  pBody:=Ingame_data.character[pID,tID,3];

  if (pID=Ingame_data.omaPeliIndex) and (tID=Ingame_data.omaPeliTeamIndex) then begin
    paik_x:=Ingame_data.ukonNaytto[1]-20;
    paik_y:=Ingame_data.ukonNaytto[2]-28;
  end
  else begin
    paik_x:=Ingame_data.ukonNaytto[1]-Ingame_data.kenttaXY[1] + Ingame_data.plrCoords[pID][tID][1]-20;
    paik_y:=Ingame_data.ukonNaytto[2]-Ingame_data.kenttaXY[2] + Ingame_data.plrCoords[pID][tID][2]-28;
  end;

  piirraPelaajanOsa(paik_x,paik_y,'pshadow',paik_pattern,pBody,255,255,255);
  if (pID=Ingame_data.omaPeliIndex) and (tID=Ingame_data.omaPeliTeamIndex) then
    draw2D(paik_x,paik_y+6,'circle');

  tb:=getHairRGB(pID,tID);
  piirraPelaajanOsa(paik_x,paik_y,'hairs',paik_pattern,pBody,tb.b1,tb.b2,tb.b3);
  tb:=getSkinRGB(pID,tID);
  piirraPelaajanOsa(paik_x,paik_y,'skins',paik_pattern,pBody,tb.b1,tb.b2,tb.b3);
  piirraPelaajanOsa(paik_x,paik_y,'shirts1',paik_pattern,pBody,Ingame_data.shirtColors[1,1,tID],Ingame_data.shirtColors[1,2,tID],Ingame_data.shirtColors[1,3,tID]);
  if Ingame_data.shirtStyle[tID]=1 then
    piirraPelaajanOsa(paik_x,paik_y,'shirts2',paik_pattern,pBody,Ingame_data.shirtColors[2,1,tID],Ingame_data.shirtColors[2,2,tID],Ingame_data.shirtColors[2,3,tID]);
  if Ingame_data.shirtStyle[tID]=2 then
    piirraPelaajanOsa(paik_x,paik_y,'shirts3',paik_pattern,pBody,Ingame_data.shirtColors[2,1,tID],Ingame_data.shirtColors[2,2,tID],Ingame_data.shirtColors[2,3,tID]);
  if Ingame_data.shirtStyle[tID]=3 then
    piirraPelaajanOsa(paik_x,paik_y,'shirts4',paik_pattern,pBody,Ingame_data.shirtColors[2,1,tID],Ingame_data.shirtColors[2,2,tID],Ingame_data.shirtColors[2,3,tID]);
  piirraPelaajanOsa(paik_x,paik_y,'pants',paik_pattern,pBody,Ingame_data.shirtColors[3,1,tID],Ingame_data.shirtColors[3,2,tID],Ingame_data.shirtColors[3,3,tID]);
  piirraPelaajanOsa(paik_x,paik_y,'socks',paik_pattern,pBody,Ingame_data.shirtColors[4,1,tID],Ingame_data.shirtColors[4,2,tID],Ingame_data.shirtColors[4,3,tID]);
  tb:=getShoeRGB(pID,tID);
  piirraPelaajanOsa(paik_x,paik_y,'shoes',paik_pattern,pBody,tb.b1,tb.b2,tb.b3);
  piirraPelaajanOsa(paik_x,paik_y,'norgb',paik_pattern,pBody,255,255,255);


  if (pID=Ingame_data.omaPeliIndex) and (tID=Ingame_data.omaPeliTeamIndex) then
    paik_x:=Ingame_data.ukonNaytto[1]
  else
    paik_x:=Ingame_data.ukonNaytto[1]-Ingame_data.kenttaXY[1] + Ingame_data.plrCoords[pID][tID][1];

  if Ingame_data.character[pID,tID,5]>0 then numberStr:=inttostr(Ingame_data.character[pID,tID,5])+' '
  else numberStr:='';

  if Ingame_data.vip[pID,tID] then
    printCenter(paik_x,paik_y-27,0.6,numberStr+Ingame_data.playerNames[pID,tID],OmegaColor(clyellow))
  else
    printCenter(paik_x,paik_y-27,0.6,numberStr+Ingame_data.playerNames[pID,tID],OmegaColor(clwhite));

end;

procedure piirraPelaajanOsa(pPos_X,pPos_Y: integer; pImageName: string; pPatternIndex, pBody,r,g,b: byte);
var nScale: single;
begin

  nScale:=1.0;
  if pBody=0 then pPos_Y:=pPos_Y+2;
  if pBody=2 then pPos_Y:=pPos_Y-3;
  if pBody=0 then nScale:=0.9;
  if pBody=1 then nScale:=1.0;
  if pBody=2 then nScale:=1.1;

  form3.Omegaimagelist1.imagelist.find(pImageName).Draw(pPos_X,pPos_Y,0,0,0,1,nScale,OmegaColor(r,g,b),pPatternIndex);

end;


procedure draw2D(pPos_X,pPos_Y: integer; pImageName: string); overload;
begin

  form3.Omegaimagelist1.imagelist.find(pImageName).Draw(pPos_X,pPos_Y,0);

end;

procedure draw2D(pPos_X,pPos_Y,pPatternIndex: integer; pImageName: string; r,g,b: byte); overload;
begin

  form3.Omegaimagelist1.imagelist.find(pImageName).Draw(pPos_X,pPos_Y,0,0,0,1,1,OmegaColor(r,g,b),pPatternIndex);

{  form3.DJX_Fast2D.DrawTexture2D(
  pPos_X,pPos_Y,pPos_X+pImageWidth,pPos_Y,pPos_X+pImageWidth,pPos_Y+pImageHeight,pPos_X,pPos_Y+pImageHeight,
  OmegaColor(rgb(r,g,b)),0,0,0,0,0,
  form3.DJXTextureList1.find(pImageName),
  false,false,pPatternIndex,pImageWidth,pImageHeight);
  form3.DJX_Fast2D.Flush;
                                }
end;

procedure draw2D(pPos_X,pPos_Y,pPatternIndex: integer; pImageName: string); overload;
begin

  form3.Omegaimagelist1.imagelist.find(pImageName).Draw(pPos_X,pPos_Y,pPatternIndex);
{

  form3.DJX_Fast2D.DrawTexture2D(
    pPos_X,pPos_Y,pPos_X+pImageWidth,pPos_Y,pPos_X+pImageWidth,pPos_Y+pImageHeight,pPos_X,pPos_Y+pImageHeight,

  OmegaColor(clWhite),0,0,0,0,0,
  form3.DJXTextureList1.find(pImageName),
  false,false,pPatternIndex,pImageWidth,pImageHeight);
  form3.DJX_Fast2D.Flush;
                            }
end;

procedure piirraPallo;
var pX, pY: smallint;
begin

  Ingame_data.framepotti_pallo:=Ingame_data.framepotti_pallo+Ingame_data.ballNopeus;
  if Ingame_data.framepotti_pallo>10 then begin
    inc(Ingame_data.pallon_patternindex);
    Ingame_data.framepotti_pallo:=0;
  end;
  if Ingame_data.pallon_patternindex=4 then Ingame_data.pallon_patternindex:=0;

  pX:=Ingame_data.ukonNaytto[1]-Ingame_data.kenttaXY[1] + Ingame_data.ballCoords[1];
  pY:=Ingame_data.ukonNaytto[2]-Ingame_data.kenttaXY[2] + Ingame_data.ballCoords[2];

  draw2D(pX-20,pY-20,'ballshadow');

  if Ingame_data.palloKeeperilla[1] or Ingame_data.palloKeeperilla[2] then exit;

  draw2D(pX-3,pY-3-round(Ingame_data.ballKorkeus),Ingame_data.pallon_patternindex,'ball');

end;

procedure delayerit;
begin

  if scorerDelay>0 then dec(scorerDelay);
  if joinerDelay>0 then dec(joinerDelay);

end;

procedure laskeAika;
begin

  if Ingame_data.aikaEnabled=false then exit;

  inc(Ingame_data.aikaDelay);

  if Ingame_data.aikaDelay>500 then begin
    Ingame_data.aikaDelay:=0;
    inc(Ingame_data.aika);
    if Ingame_data.aika>95 then
      Ingame_data.aika:=95;
  end;

end;


procedure updateRutiini;
begin

  if freePractiseMode then begin
    freePractiseRutiini;
    exit;
  end;
//******************************************************************************

  chatKursori;
  delayerit;

  if Ingame_data.gameStatus=0 then begin
    piirraReadyPanel;
    chatti_piirrot;
    textDraws;
  end;

	if Ingame_data.gameStatus=1 then begin

    laskeAika;
    laskePelaajilleFramet;
    laskeGKFramet;
    powerBarLaskut;
    deadReconing;
    siirraPalloaDeadReconing;
    hiiriRutiini;
    lRefRutiinit;

    piirraKentta;
		piirraPallo;
    piirraPelaajat;
    piirraKeepers;
    piirraLinerefs;
    piirraMaalit;

    piirraSmallfield;


    piirraPowerBar;
    piirraPanelit;

    chatti_piirrot;
    textDraws;

    if Ingame_data.quitPanel then
      piirraQuitPanel;

    if selectedGameType=3 then
      UDPmsgSendSpectator
    else
      UDPmsgSend;


  end;

  if Ingame_data.gameStatus=2 then begin
    piirraStatsPanel;
    chatti_piirrot;
    textDraws;
  end;

 { print(200,150,1,floattostr(Ingame_data.lRefCoordsKohdeY[1])+' '+
  floattostr(Ingame_data.lRefCoordsY[1]),OmegaColor(clwhite));
  print(200,250,1,floattostr(Ingame_data.lRefCoordsKohdeY[2])+' '+
  floattostr(Ingame_data.lRefCoordsY[2]),OmegaColor(clwhite));     }
 // inttostr(Ingame_data.puoliaika)+' '+inttostr(Ingame_data.homeAloituspuoli),OmegaColor(clwhite));
{  print(200,200,1,inttostr(ingame_data.homeAloituspuoli),OmegaColor(clwhite));
  print(200,250,1,floattostr(ingame_data.lRefCoordsKohdeY[2])+' '+
  floattostr(ingame_data.lRefCoordsY[2]),OmegaColor(clwhite));
       }

  {if ingame_data.mouseButtons[1] then
    print(200,200,1,'O',OmegaColor(clwhite));
  if ingame_data.mouseButtons[2] then
    print(200,250,1,'V',OmegaColor(clwhite));}



  draw2D(Ingame_data.mouse_naytto[1]-15,Ingame_data.mouse_naytto[2]-15,'cursor');

end;

procedure piirraStatsPanel;
var totalPossession: integer;
    totalHeaders: integer;
begin

  draw2D(-119,-477,'field');
  draw2D(112,134,'panel1');


  print(220, 170,1,Ingame_data.teamNames[1]+' '+inttostr(Ingame_data.tulos[1]),OmegaColor(clwhite));
  print(620, 170,1,Ingame_data.teamNames[2]+' '+inttostr(Ingame_data.tulos[2]),OmegaColor(clwhite));


  print(480, 220,1,'Shots',OmegaColor(clwhite));
  print(480, 240,1,'On target',OmegaColor(clwhite));
  print(480, 260,1,'Off target',OmegaColor(clwhite));
  print(480, 280,1,'Goal kicks',OmegaColor(clwhite));
  print(480, 300,1,'Corners',OmegaColor(clwhite));
  print(480, 320,1,'Free kicks',OmegaColor(clwhite));
  print(480, 340,1,'Throw-ins',OmegaColor(clwhite));
  print(480, 360,1,'Offsides',OmegaColor(clwhite));
  print(480, 380,1,'Possession',OmegaColor(clwhite));
  print(480, 400,1,'Tackling',OmegaColor(clwhite));
  print(480, 420,1,'Heading',OmegaColor(clwhite));
  print(480, 440,1,'Passing',OmegaColor(clwhite));

  print(340, 220,1,inttostr(PuoliaikaStatsit.shots[1,1]+PuoliaikaStatsit.shots[1,2]),OmegaColor(clwhite));
  print(340, 240,1,inttostr(PuoliaikaStatsit.shots[1,1]),OmegaColor(clwhite));
  print(340, 260,1,inttostr(PuoliaikaStatsit.shots[1,2]),OmegaColor(clwhite));

  print(340, 280,1,inttostr(PuoliaikaStatsit.Goalkicks[1]),OmegaColor(clwhite));
  print(340, 300,1,inttostr(PuoliaikaStatsit.Corners[1]),OmegaColor(clwhite));
  print(340, 320,1,inttostr(PuoliaikaStatsit.Freekicks[1]),OmegaColor(clwhite));
  print(340, 340,1,inttostr(PuoliaikaStatsit.Throwins[1]),OmegaColor(clwhite));
  print(340, 360,1,inttostr(PuoliaikaStatsit.Offsides[1]),OmegaColor(clwhite));

  totalPossession:=PuoliaikaStatsit.Possession[1]+PuoliaikaStatsit.Possession[2];

  print(340, 380,1,laske_prossat(totalPossession,PuoliaikaStatsit.Possession[1]),OmegaColor(clwhite));

  totalHeaders:=PuoliaikaStatsit.Heading[1,1]+PuoliaikaStatsit.Heading[1,2];
  print(340, 400,1,'0',OmegaColor(clwhite));
  print(340, 420,1,laske_prossat(totalHeaders,PuoliaikaStatsit.Heading[1,1]),OmegaColor(clwhite));
  print(340, 440,1,'0',OmegaColor(clwhite));
  {print(340, 400,1,inttostr(PuoliaikaStatsit.Tackling[1]),OmegaColor(clwhite));
  print(340, 440,1,inttostr(PuoliaikaStatsit.Passing[1]),OmegaColor(clwhite));  }

//*********************************
//*********************************

  print(680, 220,1,inttostr(PuoliaikaStatsit.shots[2,1]+PuoliaikaStatsit.shots[2,2]),OmegaColor(clwhite));
  print(680, 240,1,inttostr(PuoliaikaStatsit.shots[2,1]),OmegaColor(clwhite));
  print(680, 260,1,inttostr(PuoliaikaStatsit.shots[2,2]),OmegaColor(clwhite));

  print(680, 280,1,inttostr(PuoliaikaStatsit.Goalkicks[2]),OmegaColor(clwhite));
  print(680, 300,1,inttostr(PuoliaikaStatsit.Corners[2]),OmegaColor(clwhite));
  print(680, 320,1,inttostr(PuoliaikaStatsit.Freekicks[2]),OmegaColor(clwhite));
  print(680, 340,1,inttostr(PuoliaikaStatsit.Throwins[2]),OmegaColor(clwhite));
  print(680, 360,1,inttostr(PuoliaikaStatsit.Offsides[2]),OmegaColor(clwhite));

  print(680, 380,1,laske_prossat(totalPossession,PuoliaikaStatsit.Possession[2]),OmegaColor(clwhite));

  totalHeaders:=PuoliaikaStatsit.Heading[2,1]+PuoliaikaStatsit.Heading[2,2];
  {print(680, 400,1,inttostr(PuoliaikaStatsit.Tackling[2]),OmegaColor(clwhite));
  print(680, 440,1,inttostr(PuoliaikaStatsit.Passing[2]),OmegaColor(clwhite));   }
  print(680, 400,1,'0',OmegaColor(clwhite));
  print(680, 420,1,laske_prossat(totalHeaders,PuoliaikaStatsit.Heading[2,1]),OmegaColor(clwhite));
  print(680, 440,1,'0',OmegaColor(clwhite));

end;

procedure piirraMaalit;
var px,py: smallint;
begin

  px:=Ingame_data.ukonNaytto[1]-Ingame_data.kenttaXY[1] - 98;
  py:=Ingame_data.ukonNaytto[2]-Ingame_data.kenttaXY[2] - 725;
  draw2D(px,py,'unet');

  px:=Ingame_data.ukonNaytto[1]-Ingame_data.kenttaXY[1] - 108;
  py:=Ingame_data.ukonNaytto[2]-Ingame_data.kenttaXY[2] + 593;
  draw2D(px,py,'lnet');

end;

procedure piirraPanelit;
begin

  draw2D(10,10,'panel2');
  draw2D(944,10,'panel3');
  


  if Ingame_data.gameStatus=1 then begin
    if (Ingame_data.puoliaika=1) and (Ingame_data.aika>45) then
      print(950,17,1,'OT',OmegaColor(clwhite))
    else if (Ingame_data.puoliaika=2) and (Ingame_data.aika>90) then
      print(950,17,1,'OT',OmegaColor(clwhite))
    else
      print(950,17,1,inttostr(Ingame_data.aika)+' mins',OmegaColor(clwhite));

    print(30,17,1,Ingame_data.teamNames[1]+' '+inttostr(Ingame_data.tulos[1]),OmegaColor(clwhite));
    print(30,37,1,Ingame_data.teamNames[2]+' '+inttostr(Ingame_data.tulos[2]),OmegaColor(clwhite));

  end;

end;

procedure piirraKentta;
var plrX, plrY: integer;
begin

  plrX:=Ingame_data.plrCoords[Ingame_data.omaPeliIndex,Ingame_data.omaPeliTeamIndex,1];
  plrY:=Ingame_data.plrCoords[Ingame_data.omaPeliIndex,Ingame_data.omaPeliTeamIndex,2];

  if selectedGameType=3 then begin
    plrX:=Ingame_data.ballCoords[1];
    plrY:=Ingame_data.ballCoords[2];
  end;

  Ingame_data.ukonNaytto[1]:=512;
  Ingame_data.ukonNaytto[2]:=384;

  Ingame_data.kenttaXY[1]:=plrX;
  Ingame_data.kenttaXY[2]:=plrY;


  if plrX < -119 then
    Ingame_data.ukonNaytto[1]:=512+plrX+119;

  if plrX > 119 then
    Ingame_data.ukonNaytto[1]:=512+(plrX-119);

  if plrY < -477 then
    Ingame_data.ukonNaytto[2]:=384+plrY+477;

  if plrY > 477 then
    Ingame_data.ukonNaytto[2]:=384+(plrY-477);

  draw2D(Ingame_data.ukonNaytto[1] - Ingame_data.kenttaXY[1]
				- 631, Ingame_data.ukonNaytto[2]
				- Ingame_data.kenttaXY[2] - 861,'field');

end;

procedure piirraReadyPanel;
var pKer,i: integer;
begin

  draw2D(-119,-477,'field');
  draw2D(112,134,'panel1');

  pker:=0;
  for i:=1 to ingame_data.maxPlayers do begin
    if not (ingame_data.playerNames[i,1]='') then begin
      if ingame_data.ready[i,1] then draw2D(170,200+pker,'readysign');
      if Ingame_data.nation[i,1]>-1 then draw2D(140,203+pker,Ingame_data.nation[i,1],'flags');
      pker:=pker+25;
    end;
  end;

  pker:=0;
  for i:=1 to ingame_data.maxPlayers do begin
    if not (ingame_data.playerNames[i,2]='') then begin
      if ingame_data.ready[i,2] then draw2D(570,200+pker,'readysign');
      if Ingame_data.nation[i,2]>-1 then draw2D(540,203+pker,Ingame_data.nation[i,2],'flags');
      pker:=pker+25;
    end;
  end;

  if not (selectedGameType=3) then begin
    draw2D(310,600,'button1');
    draw2D(200,540,'button1');
  end;

  if selectedGameType=1 then
    draw2D(200,570,'button1');




  pker:=0;
  for i:=1 to ingame_data.maxPlayers do begin
    if not (ingame_data.playerNames[i,1]='') then begin
      print(200,200+pKer,1,ingame_data.playerNames[i,1],OmegaColor(clwhite));
      pker:=pker+25;
    end;
  end;

  pker:=0;
  for i:=1 to ingame_data.maxPlayers do begin
    if not (ingame_data.playerNames[i,2]='') then begin
      print(600,200+pKer,1,ingame_data.playerNames[i,2],OmegaColor(clwhite));
      pker:=pker+25;
    end;
  end;

  if not (selectedGameType=3) then begin
    print(320,601,1,'Quit',OmegaColor(clwhite));
    print(210,541,1,'Ready',OmegaColor(clwhite));
  end;

  if selectedGameType=1 then
    print(210,571,1,'Change',OmegaColor(clwhite));


end;

procedure print(x, y: integer; nScale: single; ptext: string; pcol: TOmegaColor);
begin

  if ptext='' then exit;

  form3.OmegaBitmapFont1.Print(x,y,0,nScale,nScale,pcol,ptext);

end;

procedure printCenter(x, y: integer; nScale: single; ptext: string; pcol: TOmegaColor);
begin

  if ptext='' then exit;

  form3.OmegaBitmapFont2.Print(x,y,0,nScale,nScale,pcol,ptext);

end;

procedure pyydaPublanTarkatTiedot(labelID: integer);
type
  TPyydaPublicTarkatTiedot = record
    mtype: word;
    mtype2: word;
    ra: word;
    sID: smallint;
  end;
var
  PyydaPublicTarkatTiedot: TPyydaPublicTarkatTiedot;
begin

  if please_wait_arvo=true then exit;

  form1.sLabelFX186.Visible:=false;
  form1.trainingPlrNameH1.Visible:=false;
  form1.trainingPlrNameH2.Visible:=false;
  form1.trainingPlrNameH3.Visible:=false;
  form1.trainingPlrNameH4.Visible:=false;
  form1.trainingPlrNameH5.Visible:=false;
  form1.trainingPlrNameH6.Visible:=false;
  form1.trainingPlrNameH7.Visible:=false;
  form1.trainingPlrNameH8.Visible:=false;
  form1.trainingPlrNameH9.Visible:=false;
  form1.trainingPlrNameH10.Visible:=false;
  form1.trainingPlrNameA1.Visible:=false;
  form1.trainingPlrNameA2.Visible:=false;
  form1.trainingPlrNameA3.Visible:=false;
  form1.trainingPlrNameA4.Visible:=false;
  form1.trainingPlrNameA5.Visible:=false;
  form1.trainingPlrNameA6.Visible:=false;
  form1.trainingPlrNameA7.Visible:=false;
  form1.trainingPlrNameA8.Visible:=false;
  form1.trainingPlrNameA9.Visible:=false;
  form1.trainingPlrNameA10.Visible:=false;

  form1.trainingPlrNameH1.caption:='';
  form1.trainingPlrNameH2.caption:='';
  form1.trainingPlrNameH3.caption:='';
  form1.trainingPlrNameH4.caption:='';
  form1.trainingPlrNameH5.caption:='';
  form1.trainingPlrNameH6.caption:='';
  form1.trainingPlrNameH7.caption:='';
  form1.trainingPlrNameH8.caption:='';
  form1.trainingPlrNameH9.caption:='';
  form1.trainingPlrNameH10.caption:='';
  form1.trainingPlrNameA1.caption:='';
  form1.trainingPlrNameA2.caption:='';
  form1.trainingPlrNameA3.caption:='';
  form1.trainingPlrNameA4.caption:='';
  form1.trainingPlrNameA5.caption:='';
  form1.trainingPlrNameA6.caption:='';
  form1.trainingPlrNameA7.caption:='';
  form1.trainingPlrNameA8.caption:='';
  form1.trainingPlrNameA9.caption:='';
  form1.trainingPlrNameA10.caption:='';  

  labelID:=labelID-1+(form1.sScrollBar2.Position);
  if labelID>high(publicServersList.name) then exit;

  please_Wait(true);

  selectedServerID:=publicServersList.ID[labelID];

  PyydaPublicTarkatTiedot.mtype:=13;
  PyydaPublicTarkatTiedot.mtype2:=13;
  PyydaPublicTarkatTiedot.ra:=random(55000)+1;
  PyydaPublicTarkatTiedot.sID:=publicServersList.ID[labelID];
  TCPClient2.WriteBuffer(@PyydaPublicTarkatTiedot,sizeof(PyydaPublicTarkatTiedot));

end;

procedure sorttaaChallengeTeams;
var i,j: Integer;
    pname: string;
    pplrOnline: byte;
    pranking: word;
    pplaying: boolean;
    plocation: byte;
begin

  if high(ChallengeTeamsList.name)<0 then exit;

  for i:=High(ChallengeTeamsList.ranking) downto Low(ChallengeTeamsList.ranking) do
    for j:=Low(ChallengeTeamsList.ranking) to High(ChallengeTeamsList.ranking)-1 do
      if ChallengeTeamsList.ranking[j]<ChallengeTeamsList.ranking[j+1] then begin
        pname:=ChallengeTeamsList.name[j];
        pplrOnline:=ChallengeTeamsList.plrOnline[j];
        pranking:=ChallengeTeamsList.ranking[j];
        pplaying:=ChallengeTeamsList.playing[j];
        plocation:=ChallengeTeamsList.location[j];

        ChallengeTeamsList.name[j]:=ChallengeTeamsList.name[j+1];
        ChallengeTeamsList.plrOnline[j]:=ChallengeTeamsList.plrOnline[j+1];
        ChallengeTeamsList.ranking[j]:=ChallengeTeamsList.ranking[j+1];
        ChallengeTeamsList.playing[j]:=ChallengeTeamsList.playing[j+1];
        ChallengeTeamsList.location[j]:=ChallengeTeamsList.location[j+1];

        ChallengeTeamsList.name[j+1]:=pname;
        ChallengeTeamsList.plrOnline[j+1]:=pplrOnline;
        ChallengeTeamsList.ranking[j+1]:=pranking;
        ChallengeTeamsList.playing[j+1]:=pplaying;
        ChallengeTeamsList.location[j+1]:=plocation;
      end;

end;

procedure asetaChallengeTeams;
var i: integer;
    pKer: byte;
begin

  if high(ChallengeTeamsList.name)<0 then exit;

  pKer:=0;
  for i:=form1.sScrollBar3.Position to high(ChallengeTeamsList.name) do begin
    inc(pKer);
    asetaChallengeTeam(pKer,ChallengeTeamsList.name[i],ChallengeTeamsList.plrOnline[i],ChallengeTeamsList.ranking[i],ChallengeTeamsList.playing[i],ChallengeTeamsList.location[i]);
    if pKer=20 then break;
  end;

end;

procedure asetaLivescoret;
var i: integer;
    pKer: byte;
begin

  if high(LivescoreList.sID)<0 then exit;

  pKer:=0;
  for i:=form1.sScrollBar4.Position to high(LivescoreList.sID) do begin
    inc(pKer);
    asetaLivescore(pKer,LivescoreList.time[i],LivescoreList.score1[i],LivescoreList.score2[i],LivescoreList.name1[i],LivescoreList.name2[i]);
    if pKer=20 then break;
  end;

end;

procedure asetaPlayerStats;
var i: integer;
    pKer: byte;
begin

  if high(PlayerStatsList.name)<0 then exit;

  pKer:=0;
  for i:=form1.sScrollBar5.Position to high(PlayerStatsList.name) do begin
    inc(pKer);
    asetaStatsi(pKer,i,PlayerStatsList.name[i],PlayerStatsList.team[i],PlayerStatsList.apps[i],
      PlayerStatsList.gls[i],PlayerStatsList.asts[i],PlayerStatsList.pass[i],
      PlayerStatsList.tck[i],PlayerStatsList.head[i]);

    if pKer=20 then break;
  end;

end;

procedure asetaStatsi(pKer: integer; sija: byte; name, team: string; apps, gls, asts, pass, tck, head: integer);
begin

  inc(sija);

  if pKer=1 then begin
    form1.pssija1.Caption:=inttostr(sija);
    form1.psname1.Caption:=name;
    form1.psteam1.Caption:=team;
    form1.psapps1.Caption:=inttostr(apps);
    form1.psgls1.Caption:=inttostr(gls);
    form1.psasts1.Caption:=inttostr(asts);
    form1.pspass1.Caption:=inttostr(pass);
    form1.pstck1.Caption:=inttostr(tck);
    form1.pshead1.Caption:=inttostr(head);
  end;

  if pKer=2 then begin
    form1.pssija2.Caption:=inttostr(sija);
    form1.psname2.Caption:=name;
    form1.psteam2.Caption:=team;
    form1.psapps2.Caption:=inttostr(apps);
    form1.psgls2.Caption:=inttostr(gls);
    form1.psasts2.Caption:=inttostr(asts);
    form1.pspass2.Caption:=inttostr(pass);
    form1.pstck2.Caption:=inttostr(tck);
    form1.pshead2.Caption:=inttostr(head);
  end;

  if pKer=3 then begin
    form1.pssija3.Caption:=inttostr(sija);
    form1.psname3.Caption:=name;
    form1.psteam3.Caption:=team;
    form1.psapps3.Caption:=inttostr(apps);
    form1.psgls3.Caption:=inttostr(gls);
    form1.psasts3.Caption:=inttostr(asts);
    form1.pspass3.Caption:=inttostr(pass);
    form1.pstck3.Caption:=inttostr(tck);
    form1.pshead3.Caption:=inttostr(head);
  end;

  if pKer=4 then begin
    form1.pssija4.Caption:=inttostr(sija);
    form1.psname4.Caption:=name;
    form1.psteam4.Caption:=team;
    form1.psapps4.Caption:=inttostr(apps);
    form1.psgls4.Caption:=inttostr(gls);
    form1.psasts4.Caption:=inttostr(asts);
    form1.pspass4.Caption:=inttostr(pass);
    form1.pstck4.Caption:=inttostr(tck);
    form1.pshead4.Caption:=inttostr(head);
  end;

  if pKer=5 then begin
    form1.pssija5.Caption:=inttostr(sija);
    form1.psname5.Caption:=name;
    form1.psteam5.Caption:=team;
    form1.psapps5.Caption:=inttostr(apps);
    form1.psgls5.Caption:=inttostr(gls);
    form1.psasts5.Caption:=inttostr(asts);
    form1.pspass5.Caption:=inttostr(pass);
    form1.pstck5.Caption:=inttostr(tck);
    form1.pshead5.Caption:=inttostr(head);
  end;

  if pKer=6 then begin
    form1.pssija6.Caption:=inttostr(sija);
    form1.psname6.Caption:=name;
    form1.psteam6.Caption:=team;
    form1.psapps6.Caption:=inttostr(apps);
    form1.psgls6.Caption:=inttostr(gls);
    form1.psasts6.Caption:=inttostr(asts);
    form1.pspass6.Caption:=inttostr(pass);
    form1.pstck6.Caption:=inttostr(tck);
    form1.pshead6.Caption:=inttostr(head);
  end;

  if pKer=7 then begin
    form1.pssija7.Caption:=inttostr(sija);
    form1.psname7.Caption:=name;
    form1.psteam7.Caption:=team;
    form1.psapps7.Caption:=inttostr(apps);
    form1.psgls7.Caption:=inttostr(gls);
    form1.psasts7.Caption:=inttostr(asts);
    form1.pspass7.Caption:=inttostr(pass);
    form1.pstck7.Caption:=inttostr(tck);
    form1.pshead7.Caption:=inttostr(head);
  end;

  if pKer=8 then begin
    form1.pssija8.Caption:=inttostr(sija);
    form1.psname8.Caption:=name;
    form1.psteam8.Caption:=team;
    form1.psapps8.Caption:=inttostr(apps);
    form1.psgls8.Caption:=inttostr(gls);
    form1.psasts8.Caption:=inttostr(asts);
    form1.pspass8.Caption:=inttostr(pass);
    form1.pstck8.Caption:=inttostr(tck);
    form1.pshead8.Caption:=inttostr(head);
  end;

  if pKer=9 then begin
    form1.pssija9.Caption:=inttostr(sija);
    form1.psname9.Caption:=name;
    form1.psteam9.Caption:=team;
    form1.psapps9.Caption:=inttostr(apps);
    form1.psgls9.Caption:=inttostr(gls);
    form1.psasts9.Caption:=inttostr(asts);
    form1.pspass9.Caption:=inttostr(pass);
    form1.pstck9.Caption:=inttostr(tck);
    form1.pshead9.Caption:=inttostr(head);
  end;

  if pKer=10 then begin
    form1.pssija10.Caption:=inttostr(sija);
    form1.psname10.Caption:=name;
    form1.psteam10.Caption:=team;
    form1.psapps10.Caption:=inttostr(apps);
    form1.psgls10.Caption:=inttostr(gls);
    form1.psasts10.Caption:=inttostr(asts);
    form1.pspass10.Caption:=inttostr(pass);
    form1.pstck10.Caption:=inttostr(tck);
    form1.pshead10.Caption:=inttostr(head);
  end;

  if pKer=11 then begin
    form1.pssija11.Caption:=inttostr(sija);
    form1.psname11.Caption:=name;
    form1.psteam11.Caption:=team;
    form1.psapps11.Caption:=inttostr(apps);
    form1.psgls11.Caption:=inttostr(gls);
    form1.psasts11.Caption:=inttostr(asts);
    form1.pspass11.Caption:=inttostr(pass);
    form1.pstck11.Caption:=inttostr(tck);
    form1.pshead11.Caption:=inttostr(head);
  end;

  if pKer=12 then begin
    form1.pssija12.Caption:=inttostr(sija);
    form1.psname12.Caption:=name;
    form1.psteam12.Caption:=team;
    form1.psapps12.Caption:=inttostr(apps);
    form1.psgls12.Caption:=inttostr(gls);
    form1.psasts12.Caption:=inttostr(asts);
    form1.pspass12.Caption:=inttostr(pass);
    form1.pstck12.Caption:=inttostr(tck);
    form1.pshead12.Caption:=inttostr(head);
  end;

  if pKer=13 then begin
    form1.pssija13.Caption:=inttostr(sija);
    form1.psname13.Caption:=name;
    form1.psteam13.Caption:=team;
    form1.psapps13.Caption:=inttostr(apps);
    form1.psgls13.Caption:=inttostr(gls);
    form1.psasts13.Caption:=inttostr(asts);
    form1.pspass13.Caption:=inttostr(pass);
    form1.pstck13.Caption:=inttostr(tck);
    form1.pshead13.Caption:=inttostr(head);
  end;

  if pKer=14 then begin
    form1.pssija14.Caption:=inttostr(sija);
    form1.psname14.Caption:=name;
    form1.psteam14.Caption:=team;
    form1.psapps14.Caption:=inttostr(apps);
    form1.psgls14.Caption:=inttostr(gls);
    form1.psasts14.Caption:=inttostr(asts);
    form1.pspass14.Caption:=inttostr(pass);
    form1.pstck14.Caption:=inttostr(tck);
    form1.pshead14.Caption:=inttostr(head);
  end;

  if pKer=15 then begin
    form1.pssija15.Caption:=inttostr(sija);
    form1.psname15.Caption:=name;
    form1.psteam15.Caption:=team;
    form1.psapps15.Caption:=inttostr(apps);
    form1.psgls15.Caption:=inttostr(gls);
    form1.psasts15.Caption:=inttostr(asts);
    form1.pspass15.Caption:=inttostr(pass);
    form1.pstck15.Caption:=inttostr(tck);
    form1.pshead15.Caption:=inttostr(head);
  end;

  if pKer=16 then begin
    form1.pssija16.Caption:=inttostr(sija);
    form1.psname16.Caption:=name;
    form1.psteam16.Caption:=team;
    form1.psapps16.Caption:=inttostr(apps);
    form1.psgls16.Caption:=inttostr(gls);
    form1.psasts16.Caption:=inttostr(asts);
    form1.pspass16.Caption:=inttostr(pass);
    form1.pstck16.Caption:=inttostr(tck);
    form1.pshead16.Caption:=inttostr(head);
  end;

  if pKer=17 then begin
    form1.pssija17.Caption:=inttostr(sija);
    form1.psname17.Caption:=name;
    form1.psteam17.Caption:=team;
    form1.psapps17.Caption:=inttostr(apps);
    form1.psgls17.Caption:=inttostr(gls);
    form1.psasts17.Caption:=inttostr(asts);
    form1.pspass17.Caption:=inttostr(pass);
    form1.pstck17.Caption:=inttostr(tck);
    form1.pshead17.Caption:=inttostr(head);
  end;

  if pKer=18 then begin
    form1.pssija18.Caption:=inttostr(sija);
    form1.psname18.Caption:=name;
    form1.psteam18.Caption:=team;
    form1.psapps18.Caption:=inttostr(apps);
    form1.psgls18.Caption:=inttostr(gls);
    form1.psasts18.Caption:=inttostr(asts);
    form1.pspass18.Caption:=inttostr(pass);
    form1.pstck18.Caption:=inttostr(tck);
    form1.pshead18.Caption:=inttostr(head);
  end;

  if pKer=19 then begin
    form1.pssija19.Caption:=inttostr(sija);
    form1.psname19.Caption:=name;
    form1.psteam19.Caption:=team;
    form1.psapps19.Caption:=inttostr(apps);
    form1.psgls19.Caption:=inttostr(gls);
    form1.psasts19.Caption:=inttostr(asts);
    form1.pspass19.Caption:=inttostr(pass);
    form1.pstck19.Caption:=inttostr(tck);
    form1.pshead19.Caption:=inttostr(head);
  end;

  if pKer=20 then begin
    form1.pssija20.Caption:=inttostr(sija);
    form1.psname20.Caption:=name;
    form1.psteam20.Caption:=team;
    form1.psapps20.Caption:=inttostr(apps);
    form1.psgls20.Caption:=inttostr(gls);
    form1.psasts20.Caption:=inttostr(asts);
    form1.pspass20.Caption:=inttostr(pass);
    form1.pstck20.Caption:=inttostr(tck);
    form1.pshead20.Caption:=inttostr(head);
  end;

end;

procedure asetaLivescore(pKer: integer; time, score1, score2: byte; name1, name2: string);
begin

  if pKer=1 then begin
    form1.time1.Caption:=inttostr(time);
    form1.score1.Caption:=inttostr(score1)+'-'+inttostr(score2);
    form1.match1.Caption:=name1+'-'+name2;
  end;

  if pKer=2 then begin
    form1.time2.Caption:=inttostr(time);
    form1.score2.Caption:=inttostr(score1)+'-'+inttostr(score2);
    form1.match2.Caption:=name1+'-'+name2;
  end;

  if pKer=3 then begin
    form1.time3.Caption:=inttostr(time);
    form1.score3.Caption:=inttostr(score1)+'-'+inttostr(score2);
    form1.match3.Caption:=name1+'-'+name2;
  end;

  if pKer=4 then begin
    form1.time4.Caption:=inttostr(time);
    form1.score4.Caption:=inttostr(score1)+'-'+inttostr(score2);
    form1.match4.Caption:=name1+'-'+name2;
  end;

  if pKer=5 then begin
    form1.time5.Caption:=inttostr(time);
    form1.score5.Caption:=inttostr(score1)+'-'+inttostr(score2);
    form1.match5.Caption:=name1+'-'+name2;
  end;

  if pKer=6 then begin
    form1.time6.Caption:=inttostr(time);
    form1.score6.Caption:=inttostr(score1)+'-'+inttostr(score2);
    form1.match6.Caption:=name1+'-'+name2;
  end;

  if pKer=7 then begin
    form1.time7.Caption:=inttostr(time);
    form1.score7.Caption:=inttostr(score1)+'-'+inttostr(score2);
    form1.match7.Caption:=name1+'-'+name2;
  end;

  if pKer=8 then begin
    form1.time8.Caption:=inttostr(time);
    form1.score8.Caption:=inttostr(score1)+'-'+inttostr(score2);
    form1.match8.Caption:=name1+'-'+name2;
  end;

  if pKer=9 then begin
    form1.time9.Caption:=inttostr(time);
    form1.score9.Caption:=inttostr(score1)+'-'+inttostr(score2);
    form1.match9.Caption:=name1+'-'+name2;
  end;

  if pKer=10 then begin
    form1.time10.Caption:=inttostr(time);
    form1.score10.Caption:=inttostr(score1)+'-'+inttostr(score2);
    form1.match10.Caption:=name1+'-'+name2;
  end;

  if pKer=11 then begin
    form1.time11.Caption:=inttostr(time);
    form1.score11.Caption:=inttostr(score1)+'-'+inttostr(score2);
    form1.match11.Caption:=name1+'-'+name2;
  end;

  if pKer=12 then begin
    form1.time12.Caption:=inttostr(time);
    form1.score12.Caption:=inttostr(score1)+'-'+inttostr(score2);
    form1.match12.Caption:=name1+'-'+name2;
  end;

  if pKer=13 then begin
    form1.time13.Caption:=inttostr(time);
    form1.score13.Caption:=inttostr(score1)+'-'+inttostr(score2);
    form1.match13.Caption:=name1+'-'+name2;
  end;

  if pKer=14 then begin
    form1.time14.Caption:=inttostr(time);
    form1.score14.Caption:=inttostr(score1)+'-'+inttostr(score2);
    form1.match14.Caption:=name1+'-'+name2;
  end;

  if pKer=15 then begin
    form1.time15.Caption:=inttostr(time);
    form1.score15.Caption:=inttostr(score1)+'-'+inttostr(score2);
    form1.match15.Caption:=name1+'-'+name2;
  end;

  if pKer=16 then begin
    form1.time16.Caption:=inttostr(time);
    form1.score16.Caption:=inttostr(score1)+'-'+inttostr(score2);
    form1.match16.Caption:=name1+'-'+name2;
  end;

  if pKer=17 then begin
    form1.time17.Caption:=inttostr(time);
    form1.score17.Caption:=inttostr(score1)+'-'+inttostr(score2);
    form1.match17.Caption:=name1+'-'+name2;
  end;

  if pKer=18 then begin
    form1.time18.Caption:=inttostr(time);
    form1.score18.Caption:=inttostr(score1)+'-'+inttostr(score2);
    form1.match18.Caption:=name1+'-'+name2;
  end;

  if pKer=19 then begin
    form1.time19.Caption:=inttostr(time);
    form1.score19.Caption:=inttostr(score1)+'-'+inttostr(score2);
    form1.match19.Caption:=name1+'-'+name2;
  end;

  if pKer=20 then begin
    form1.time20.Caption:=inttostr(time);
    form1.score20.Caption:=inttostr(score1)+'-'+inttostr(score2);
    form1.match20.Caption:=name1+'-'+name2;
  end;

end;

procedure putsaaChallengeTeamsLabelit;
begin

  form1.chalteam1.Caption:='';
  form1.chalteam2.Caption:='';
  form1.chalteam3.Caption:='';
  form1.chalteam4.Caption:='';
  form1.chalteam5.Caption:='';
  form1.chalteam6.Caption:='';
  form1.chalteam7.Caption:='';
  form1.chalteam8.Caption:='';
  form1.chalteam9.Caption:='';
  form1.chalteam10.Caption:='';
  form1.chalteam11.Caption:='';
  form1.chalteam12.Caption:='';
  form1.chalteam13.Caption:='';
  form1.chalteam14.Caption:='';
  form1.chalteam15.Caption:='';
  form1.chalteam16.Caption:='';
  form1.chalteam17.Caption:='';
  form1.chalteam18.Caption:='';
  form1.chalteam19.Caption:='';
  form1.chalteam20.Caption:='';

  form1.plrs_onl1.Caption:='';
  form1.plrs_onl2.Caption:='';
  form1.plrs_onl3.Caption:='';
  form1.plrs_onl4.Caption:='';
  form1.plrs_onl5.Caption:='';
  form1.plrs_onl6.Caption:='';
  form1.plrs_onl7.Caption:='';
  form1.plrs_onl8.Caption:='';
  form1.plrs_onl9.Caption:='';
  form1.plrs_onl10.Caption:='';
  form1.plrs_onl11.Caption:='';
  form1.plrs_onl12.Caption:='';
  form1.plrs_onl13.Caption:='';
  form1.plrs_onl14.Caption:='';
  form1.plrs_onl15.Caption:='';
  form1.plrs_onl16.Caption:='';
  form1.plrs_onl17.Caption:='';
  form1.plrs_onl18.Caption:='';
  form1.plrs_onl19.Caption:='';
  form1.plrs_onl20.Caption:='';

  form1.ranking1.Caption:='';
  form1.ranking2.Caption:='';
  form1.ranking3.Caption:='';
  form1.ranking4.Caption:='';
  form1.ranking5.Caption:='';
  form1.ranking6.Caption:='';
  form1.ranking7.Caption:='';
  form1.ranking8.Caption:='';
  form1.ranking9.Caption:='';
  form1.ranking10.Caption:='';
  form1.ranking11.Caption:='';
  form1.ranking12.Caption:='';
  form1.ranking13.Caption:='';
  form1.ranking14.Caption:='';
  form1.ranking15.Caption:='';
  form1.ranking16.Caption:='';
  form1.ranking17.Caption:='';
  form1.ranking18.Caption:='';
  form1.ranking19.Caption:='';
  form1.ranking20.Caption:='';

  form1.playing1.Caption:='';
  form1.playing2.Caption:='';
  form1.playing3.Caption:='';
  form1.playing4.Caption:='';
  form1.playing5.Caption:='';
  form1.playing6.Caption:='';
  form1.playing7.Caption:='';
  form1.playing8.Caption:='';
  form1.playing9.Caption:='';
  form1.playing10.Caption:='';
  form1.playing11.Caption:='';
  form1.playing12.Caption:='';
  form1.playing13.Caption:='';
  form1.playing14.Caption:='';
  form1.playing15.Caption:='';
  form1.playing16.Caption:='';
  form1.playing17.Caption:='';
  form1.playing18.Caption:='';
  form1.playing19.Caption:='';
  form1.playing20.Caption:='';

  form1.location1.Caption:='';
  form1.location2.Caption:='';
  form1.location3.Caption:='';
  form1.location4.Caption:='';
  form1.location5.Caption:='';
  form1.location6.Caption:='';
  form1.location7.Caption:='';
  form1.location8.Caption:='';
  form1.location9.Caption:='';
  form1.location10.Caption:='';
  form1.location11.Caption:='';
  form1.location12.Caption:='';
  form1.location13.Caption:='';
  form1.location14.Caption:='';
  form1.location15.Caption:='';
  form1.location16.Caption:='';
  form1.location17.Caption:='';
  form1.location18.Caption:='';
  form1.location19.Caption:='';
  form1.location20.Caption:='';

end;

procedure putsaaLiveScoresLabelit;
begin

  form1.time1.Caption:='';
  form1.time2.Caption:='';
  form1.time3.Caption:='';
  form1.time4.Caption:='';
  form1.time5.Caption:='';
  form1.time6.Caption:='';
  form1.time7.Caption:='';
  form1.time8.Caption:='';
  form1.time9.Caption:='';
  form1.time10.Caption:='';
  form1.time11.Caption:='';
  form1.time12.Caption:='';
  form1.time13.Caption:='';
  form1.time14.Caption:='';
  form1.time15.Caption:='';
  form1.time16.Caption:='';
  form1.time17.Caption:='';
  form1.time18.Caption:='';
  form1.time19.Caption:='';
  form1.time20.Caption:='';

  form1.score1.Caption:='';
  form1.score2.Caption:='';
  form1.score3.Caption:='';
  form1.score4.Caption:='';
  form1.score5.Caption:='';
  form1.score6.Caption:='';
  form1.score7.Caption:='';
  form1.score8.Caption:='';
  form1.score9.Caption:='';
  form1.score10.Caption:='';
  form1.score11.Caption:='';
  form1.score12.Caption:='';
  form1.score13.Caption:='';
  form1.score14.Caption:='';
  form1.score15.Caption:='';
  form1.score16.Caption:='';
  form1.score17.Caption:='';
  form1.score18.Caption:='';
  form1.score19.Caption:='';
  form1.score20.Caption:='';

  form1.match1.Caption:='';
  form1.match2.Caption:='';
  form1.match3.Caption:='';
  form1.match4.Caption:='';
  form1.match5.Caption:='';
  form1.match6.Caption:='';
  form1.match7.Caption:='';
  form1.match8.Caption:='';
  form1.match9.Caption:='';
  form1.match10.Caption:='';
  form1.match11.Caption:='';
  form1.match12.Caption:='';
  form1.match13.Caption:='';
  form1.match14.Caption:='';
  form1.match15.Caption:='';
  form1.match16.Caption:='';
  form1.match17.Caption:='';
  form1.match18.Caption:='';
  form1.match19.Caption:='';
  form1.match20.Caption:='';

end;

procedure asetaChallengeTeam(pKer: integer; name: string; plrOnl: byte; rank: word; playing: boolean; location: byte);
begin

  if pKer=1 then begin
    form1.chalteam1.Caption:=name;
    form1.plrs_onl1.Caption:=inttostr(plrOnl);
    form1.ranking1.Caption:=inttostr(rank);
    if playing then
      form1.playing1.Caption:='Playing'
    else
      form1.playing1.Caption:='';
    form1.location1.Caption:=haeLocation(location);
  end;

  if pKer=2 then begin
    form1.chalteam2.Caption:=name;
    form1.plrs_onl2.Caption:=inttostr(plrOnl);
    form1.ranking2.Caption:=inttostr(rank);
    if playing then
      form1.playing2.Caption:='Playing'
    else
      form1.playing2.Caption:='';
    form1.location2.Caption:=haeLocation(location);
  end;

  if pKer=3 then begin
    form1.chalteam3.Caption:=name;
    form1.plrs_onl3.Caption:=inttostr(plrOnl);
    form1.ranking3.Caption:=inttostr(rank);
    if playing then
      form1.playing3.Caption:='Playing'
    else
      form1.playing3.Caption:='';
    form1.location3.Caption:=haeLocation(location);
  end;

  if pKer=4 then begin
    form1.chalteam4.Caption:=name;
    form1.plrs_onl4.Caption:=inttostr(plrOnl);
    form1.ranking4.Caption:=inttostr(rank);
    if playing then
      form1.playing4.Caption:='Playing'
    else
      form1.playing4.Caption:='';
    form1.location4.Caption:=haeLocation(location);
  end;

  if pKer=5 then begin
    form1.chalteam5.Caption:=name;
    form1.plrs_onl5.Caption:=inttostr(plrOnl);
    form1.ranking5.Caption:=inttostr(rank);
    if playing then
      form1.playing5.Caption:='Playing'
    else
      form1.playing5.Caption:='';
    form1.location5.Caption:=haeLocation(location);
  end;

  if pKer=6 then begin
    form1.chalteam6.Caption:=name;
    form1.plrs_onl6.Caption:=inttostr(plrOnl);
    form1.ranking6.Caption:=inttostr(rank);
    if playing then
      form1.playing6.Caption:='Playing'
    else
      form1.playing6.Caption:='';
    form1.location6.Caption:=haeLocation(location);
  end;

  if pKer=7 then begin
    form1.chalteam7.Caption:=name;
    form1.plrs_onl7.Caption:=inttostr(plrOnl);
    form1.ranking7.Caption:=inttostr(rank);
    if playing then
      form1.playing7.Caption:='Playing'
    else
      form1.playing7.Caption:='';
    form1.location7.Caption:=haeLocation(location);
  end;

  if pKer=8 then begin
    form1.chalteam8.Caption:=name;
    form1.plrs_onl8.Caption:=inttostr(plrOnl);
    form1.ranking8.Caption:=inttostr(rank);
    if playing then
      form1.playing8.Caption:='Playing'
    else
      form1.playing8.Caption:='';
    form1.location8.Caption:=haeLocation(location);
  end;

  if pKer=9 then begin
    form1.chalteam9.Caption:=name;
    form1.plrs_onl9.Caption:=inttostr(plrOnl);
    form1.ranking9.Caption:=inttostr(rank);
    if playing then
      form1.playing9.Caption:='Playing'
    else
      form1.playing9.Caption:='';
    form1.location9.Caption:=haeLocation(location);
  end;

  if pKer=10 then begin
    form1.chalteam10.Caption:=name;
    form1.plrs_onl10.Caption:=inttostr(plrOnl);
    form1.ranking10.Caption:=inttostr(rank);
    if playing then
      form1.playing10.Caption:='Playing'
    else
      form1.playing10.Caption:='';
    form1.location10.Caption:=haeLocation(location);
  end;

  if pKer=11 then begin
    form1.chalteam11.Caption:=name;
    form1.plrs_onl11.Caption:=inttostr(plrOnl);
    form1.ranking11.Caption:=inttostr(rank);
    if playing then
      form1.playing11.Caption:='Playing'
    else
      form1.playing11.Caption:='';
    form1.location11.Caption:=haeLocation(location);
  end;

  if pKer=12 then begin
    form1.chalteam12.Caption:=name;
    form1.plrs_onl12.Caption:=inttostr(plrOnl);
    form1.ranking12.Caption:=inttostr(rank);
    if playing then
      form1.playing12.Caption:='Playing'
    else
      form1.playing12.Caption:='';
    form1.location12.Caption:=haeLocation(location);
  end;

  if pKer=13 then begin
    form1.chalteam13.Caption:=name;
    form1.plrs_onl13.Caption:=inttostr(plrOnl);
    form1.ranking13.Caption:=inttostr(rank);
    if playing then
      form1.playing13.Caption:='Playing'
    else
      form1.playing13.Caption:='';
    form1.location13.Caption:=haeLocation(location);
  end;

  if pKer=14 then begin
    form1.chalteam14.Caption:=name;
    form1.plrs_onl14.Caption:=inttostr(plrOnl);
    form1.ranking14.Caption:=inttostr(rank);
    if playing then
      form1.playing14.Caption:='Playing'
    else
      form1.playing14.Caption:='';
    form1.location14.Caption:=haeLocation(location);
  end;

  if pKer=15 then begin
    form1.chalteam15.Caption:=name;
    form1.plrs_onl15.Caption:=inttostr(plrOnl);
    form1.ranking15.Caption:=inttostr(rank);
    if playing then
      form1.playing15.Caption:='Playing'
    else
      form1.playing15.Caption:='';
    form1.location15.Caption:=haeLocation(location);
  end;

  if pKer=16 then begin
    form1.chalteam16.Caption:=name;
    form1.plrs_onl16.Caption:=inttostr(plrOnl);
    form1.ranking16.Caption:=inttostr(rank);
    if playing then
      form1.playing16.Caption:='Playing'
    else
      form1.playing16.Caption:='';
    form1.location16.Caption:=haeLocation(location);
  end;

  if pKer=17 then begin
    form1.chalteam17.Caption:=name;
    form1.plrs_onl17.Caption:=inttostr(plrOnl);
    form1.ranking17.Caption:=inttostr(rank);
    if playing then
      form1.playing17.Caption:='Playing'
    else
      form1.playing17.Caption:='';
    form1.location17.Caption:=haeLocation(location);
  end;

  if pKer=18 then begin
    form1.chalteam18.Caption:=name;
    form1.plrs_onl18.Caption:=inttostr(plrOnl);
    form1.ranking18.Caption:=inttostr(rank);
    if playing then
      form1.playing18.Caption:='Playing'
    else
      form1.playing18.Caption:='';
    form1.location18.Caption:=haeLocation(location);
  end;

  if pKer=19 then begin
    form1.chalteam19.Caption:=name;
    form1.plrs_onl19.Caption:=inttostr(plrOnl);
    form1.ranking19.Caption:=inttostr(rank);
    if playing then
      form1.playing19.Caption:='Playing'
    else
      form1.playing19.Caption:='';
    form1.location19.Caption:=haeLocation(location);
  end;

  if pKer=20 then begin
    form1.chalteam20.Caption:=name;
    form1.plrs_onl20.Caption:=inttostr(plrOnl);
    form1.ranking20.Caption:=inttostr(rank);
    if playing then
      form1.playing20.Caption:='Playing'
    else
      form1.playing20.Caption:='';
    form1.location20.Caption:=haeLocation(location);
  end;


end;

procedure asetaTeamStats;
var i: integer;
    pKer: byte;
begin

  pKer:=0;
  for i:=form1.sScrollBar6.Position to 49 do begin
    inc(pKer);
    asetaTeamstat(pKer,i,RankingList.name[i],RankingList.rank[i]);
    if pKer=20 then break;
  end;

end;

procedure asetaTeamstat(pKer: integer; sija: byte; team: string; rank: integer);
begin

  inc(sija);

  if pKer=1 then begin
    form1.tssija1.Caption:=inttostr(sija);
    form1.tsteam1.Caption:=team;
    form1.tsrank1.Caption:=inttostr(rank);
  end;

  if pKer=2 then begin
    form1.tssija2.Caption:=inttostr(sija);
    form1.tsteam2.Caption:=team;
    form1.tsrank2.Caption:=inttostr(rank);
  end;

  if pKer=3 then begin
    form1.tssija3.Caption:=inttostr(sija);
    form1.tsteam3.Caption:=team;
    form1.tsrank3.Caption:=inttostr(rank);
  end;

  if pKer=4 then begin
    form1.tssija4.Caption:=inttostr(sija);
    form1.tsteam4.Caption:=team;
    form1.tsrank4.Caption:=inttostr(rank);
  end;

  if pKer=5 then begin
    form1.tssija5.Caption:=inttostr(sija);
    form1.tsteam5.Caption:=team;
    form1.tsrank5.Caption:=inttostr(rank);
  end;

  if pKer=6 then begin
    form1.tssija6.Caption:=inttostr(sija);
    form1.tsteam6.Caption:=team;
    form1.tsrank6.Caption:=inttostr(rank);
  end;

  if pKer=7 then begin
    form1.tssija7.Caption:=inttostr(sija);
    form1.tsteam7.Caption:=team;
    form1.tsrank7.Caption:=inttostr(rank);
  end;

  if pKer=8 then begin
    form1.tssija8.Caption:=inttostr(sija);
    form1.tsteam8.Caption:=team;
    form1.tsrank8.Caption:=inttostr(rank);
  end;

  if pKer=9 then begin
    form1.tssija9.Caption:=inttostr(sija);
    form1.tsteam9.Caption:=team;
    form1.tsrank9.Caption:=inttostr(rank);
  end;

  if pKer=10 then begin
    form1.tssija10.Caption:=inttostr(sija);
    form1.tsteam10.Caption:=team;
    form1.tsrank10.Caption:=inttostr(rank);
  end;

  if pKer=11 then begin
    form1.tssija11.Caption:=inttostr(sija);
    form1.tsteam11.Caption:=team;
    form1.tsrank11.Caption:=inttostr(rank);
  end;

  if pKer=12 then begin
    form1.tssija12.Caption:=inttostr(sija);
    form1.tsteam12.Caption:=team;
    form1.tsrank12.Caption:=inttostr(rank);
  end;

  if pKer=13 then begin
    form1.tssija13.Caption:=inttostr(sija);
    form1.tsteam13.Caption:=team;
    form1.tsrank13.Caption:=inttostr(rank);
  end;

  if pKer=14 then begin
    form1.tssija14.Caption:=inttostr(sija);
    form1.tsteam14.Caption:=team;
    form1.tsrank14.Caption:=inttostr(rank);
  end;

  if pKer=15 then begin
    form1.tssija15.Caption:=inttostr(sija);
    form1.tsteam15.Caption:=team;
    form1.tsrank15.Caption:=inttostr(rank);
  end;

  if pKer=16 then begin
    form1.tssija16.Caption:=inttostr(sija);
    form1.tsteam16.Caption:=team;
    form1.tsrank16.Caption:=inttostr(rank);
  end;

  if pKer=17 then begin
    form1.tssija17.Caption:=inttostr(sija);
    form1.tsteam17.Caption:=team;
    form1.tsrank17.Caption:=inttostr(rank);
  end;

  if pKer=18 then begin
    form1.tssija18.Caption:=inttostr(sija);
    form1.tsteam18.Caption:=team;
    form1.tsrank18.Caption:=inttostr(rank);
  end;

  if pKer=19 then begin
    form1.tssija19.Caption:=inttostr(sija);
    form1.tsteam19.Caption:=team;
    form1.tsrank19.Caption:=inttostr(rank);
  end;

  if pKer=20 then begin
    form1.tssija20.Caption:=inttostr(sija);
    form1.tsteam20.Caption:=team;
    form1.tsrank20.Caption:=inttostr(rank);
  end;

end;

procedure asetaPublicServers;
var i: integer;
    pKer: byte;
begin

  if high(publicServersList.name)<0 then exit;

  pKer:=0;
  for i:=form1.sScrollBar2.Position to high(publicServersList.name) do begin
    inc(pKer);
    asetaPublicServer(pKer,publicServersList.name[i],publicServersList.plrCount[i],publicServersList.maxPlrs[i],publicServersList.password[i]);
    if pKer=20 then break;
  end;

end;

procedure putsaaPublicServerLabelit;
begin
  form1.pserv1.Caption:='';
  form1.pserv2.Caption:='';
  form1.pserv3.Caption:='';
  form1.pserv4.Caption:='';
  form1.pserv5.Caption:='';
  form1.pserv6.Caption:='';
  form1.pserv7.Caption:='';
  form1.pserv8.Caption:='';
  form1.pserv9.Caption:='';
  form1.pserv10.Caption:='';
  form1.pserv11.Caption:='';
  form1.pserv12.Caption:='';
  form1.pserv13.Caption:='';
  form1.pserv14.Caption:='';
  form1.pserv15.Caption:='';
  form1.pserv16.Caption:='';
  form1.pserv17.Caption:='';
  form1.pserv18.Caption:='';
  form1.pserv19.Caption:='';
  form1.pserv20.Caption:='';

  form1.plrs1.Caption:='';
  form1.plrs2.Caption:='';
  form1.plrs3.Caption:='';
  form1.plrs4.Caption:='';
  form1.plrs5.Caption:='';
  form1.plrs6.Caption:='';
  form1.plrs7.Caption:='';
  form1.plrs8.Caption:='';
  form1.plrs9.Caption:='';
  form1.plrs10.Caption:='';
  form1.plrs11.Caption:='';
  form1.plrs12.Caption:='';
  form1.plrs13.Caption:='';
  form1.plrs14.Caption:='';
  form1.plrs15.Caption:='';
  form1.plrs16.Caption:='';
  form1.plrs17.Caption:='';
  form1.plrs18.Caption:='';
  form1.plrs19.Caption:='';
  form1.plrs20.Caption:='';
end;

procedure putsaaTeamstatsLabelit;
begin

  form1.tssija1.Caption:='';
  form1.tssija2.Caption:='';
  form1.tssija3.Caption:='';
  form1.tssija4.Caption:='';
  form1.tssija5.Caption:='';
  form1.tssija6.Caption:='';
  form1.tssija7.Caption:='';
  form1.tssija8.Caption:='';
  form1.tssija9.Caption:='';
  form1.tssija10.Caption:='';
  form1.tssija11.Caption:='';
  form1.tssija12.Caption:='';
  form1.tssija13.Caption:='';
  form1.tssija14.Caption:='';
  form1.tssija15.Caption:='';
  form1.tssija16.Caption:='';
  form1.tssija17.Caption:='';
  form1.tssija18.Caption:='';
  form1.tssija19.Caption:='';
  form1.tssija20.Caption:='';

  form1.tsteam1.Caption:='';
  form1.tsteam2.Caption:='';
  form1.tsteam3.Caption:='';
  form1.tsteam4.Caption:='';
  form1.tsteam5.Caption:='';
  form1.tsteam6.Caption:='';
  form1.tsteam7.Caption:='';
  form1.tsteam8.Caption:='';
  form1.tsteam9.Caption:='';
  form1.tsteam10.Caption:='';
  form1.tsteam11.Caption:='';
  form1.tsteam12.Caption:='';
  form1.tsteam13.Caption:='';
  form1.tsteam14.Caption:='';
  form1.tsteam15.Caption:='';
  form1.tsteam16.Caption:='';
  form1.tsteam17.Caption:='';
  form1.tsteam18.Caption:='';
  form1.tsteam19.Caption:='';
  form1.tsteam20.Caption:='';

  form1.tsrank1.Caption:='';
  form1.tsrank2.Caption:='';
  form1.tsrank3.Caption:='';
  form1.tsrank4.Caption:='';
  form1.tsrank5.Caption:='';
  form1.tsrank6.Caption:='';
  form1.tsrank7.Caption:='';
  form1.tsrank8.Caption:='';
  form1.tsrank9.Caption:='';
  form1.tsrank10.Caption:='';
  form1.tsrank11.Caption:='';
  form1.tsrank12.Caption:='';
  form1.tsrank13.Caption:='';
  form1.tsrank14.Caption:='';
  form1.tsrank15.Caption:='';
  form1.tsrank16.Caption:='';
  form1.tsrank17.Caption:='';
  form1.tsrank18.Caption:='';
  form1.tsrank19.Caption:='';
  form1.tsrank20.Caption:='';

end;

procedure putsaaPlayerstatsLabelit;
var pBool: boolean;
begin
  form1.pssija1.Caption:='';
  form1.pssija2.Caption:='';
  form1.pssija3.Caption:='';
  form1.pssija4.Caption:='';
  form1.pssija5.Caption:='';
  form1.pssija6.Caption:='';
  form1.pssija7.Caption:='';
  form1.pssija8.Caption:='';
  form1.pssija9.Caption:='';
  form1.pssija10.Caption:='';
  form1.pssija11.Caption:='';
  form1.pssija12.Caption:='';
  form1.pssija13.Caption:='';
  form1.pssija14.Caption:='';
  form1.pssija15.Caption:='';
  form1.pssija16.Caption:='';
  form1.pssija17.Caption:='';
  form1.pssija18.Caption:='';
  form1.pssija19.Caption:='';
  form1.pssija20.Caption:='';

  form1.psname1.Caption:='';
  form1.psname2.Caption:='';
  form1.psname3.Caption:='';
  form1.psname4.Caption:='';
  form1.psname5.Caption:='';
  form1.psname6.Caption:='';
  form1.psname7.Caption:='';
  form1.psname8.Caption:='';
  form1.psname9.Caption:='';
  form1.psname10.Caption:='';
  form1.psname11.Caption:='';
  form1.psname12.Caption:='';
  form1.psname13.Caption:='';
  form1.psname14.Caption:='';
  form1.psname15.Caption:='';
  form1.psname16.Caption:='';
  form1.psname17.Caption:='';
  form1.psname18.Caption:='';
  form1.psname19.Caption:='';
  form1.psname20.Caption:='';

  form1.psteam1.Caption:='';
  form1.psteam2.Caption:='';
  form1.psteam3.Caption:='';
  form1.psteam4.Caption:='';
  form1.psteam5.Caption:='';
  form1.psteam6.Caption:='';
  form1.psteam7.Caption:='';
  form1.psteam8.Caption:='';
  form1.psteam9.Caption:='';
  form1.psteam10.Caption:='';
  form1.psteam11.Caption:='';
  form1.psteam12.Caption:='';
  form1.psteam13.Caption:='';
  form1.psteam14.Caption:='';
  form1.psteam15.Caption:='';
  form1.psteam16.Caption:='';
  form1.psteam17.Caption:='';
  form1.psteam18.Caption:='';
  form1.psteam19.Caption:='';
  form1.psteam20.Caption:='';

  form1.psapps1.Caption:='';
  form1.psapps2.Caption:='';
  form1.psapps3.Caption:='';
  form1.psapps4.Caption:='';
  form1.psapps5.Caption:='';
  form1.psapps6.Caption:='';
  form1.psapps7.Caption:='';
  form1.psapps8.Caption:='';
  form1.psapps9.Caption:='';
  form1.psapps10.Caption:='';
  form1.psapps11.Caption:='';
  form1.psapps12.Caption:='';
  form1.psapps13.Caption:='';
  form1.psapps14.Caption:='';
  form1.psapps15.Caption:='';
  form1.psapps16.Caption:='';
  form1.psapps17.Caption:='';
  form1.psapps18.Caption:='';
  form1.psapps19.Caption:='';
  form1.psapps20.Caption:='';

  if PlayerStatMuisti.gameType=1 then pBool:=false else pBool:=true;

  form1.sLabelFX278.visible:=pBool;
  form1.psapps1.visible:=pBool;
  form1.psapps2.visible:=pBool;
  form1.psapps3.visible:=pBool;
  form1.psapps4.visible:=pBool;
  form1.psapps5.visible:=pBool;
  form1.psapps6.visible:=pBool;
  form1.psapps7.visible:=pBool;
  form1.psapps8.visible:=pBool;
  form1.psapps9.visible:=pBool;
  form1.psapps10.visible:=pBool;
  form1.psapps11.visible:=pBool;
  form1.psapps12.visible:=pBool;
  form1.psapps13.visible:=pBool;
  form1.psapps14.visible:=pBool;
  form1.psapps15.visible:=pBool;
  form1.psapps16.visible:=pBool;
  form1.psapps17.visible:=pBool;
  form1.psapps18.visible:=pBool;
  form1.psapps19.visible:=pBool;
  form1.psapps20.visible:=pBool;

  form1.psgls1.Caption:='';
  form1.psgls2.Caption:='';
  form1.psgls3.Caption:='';
  form1.psgls4.Caption:='';
  form1.psgls5.Caption:='';
  form1.psgls6.Caption:='';
  form1.psgls7.Caption:='';
  form1.psgls8.Caption:='';
  form1.psgls9.Caption:='';
  form1.psgls10.Caption:='';
  form1.psgls11.Caption:='';
  form1.psgls12.Caption:='';
  form1.psgls13.Caption:='';
  form1.psgls14.Caption:='';
  form1.psgls15.Caption:='';
  form1.psgls16.Caption:='';
  form1.psgls17.Caption:='';
  form1.psgls18.Caption:='';
  form1.psgls19.Caption:='';
  form1.psgls20.Caption:='';

  form1.psasts1.Caption:='';
  form1.psasts2.Caption:='';
  form1.psasts3.Caption:='';
  form1.psasts4.Caption:='';
  form1.psasts5.Caption:='';
  form1.psasts6.Caption:='';
  form1.psasts7.Caption:='';
  form1.psasts8.Caption:='';
  form1.psasts9.Caption:='';
  form1.psasts10.Caption:='';
  form1.psasts11.Caption:='';
  form1.psasts12.Caption:='';
  form1.psasts13.Caption:='';
  form1.psasts14.Caption:='';
  form1.psasts15.Caption:='';
  form1.psasts16.Caption:='';
  form1.psasts17.Caption:='';
  form1.psasts18.Caption:='';
  form1.psasts19.Caption:='';
  form1.psasts20.Caption:='';

  form1.pspass1.Caption:='';
  form1.pspass2.Caption:='';
  form1.pspass3.Caption:='';
  form1.pspass4.Caption:='';
  form1.pspass5.Caption:='';
  form1.pspass6.Caption:='';
  form1.pspass7.Caption:='';
  form1.pspass8.Caption:='';
  form1.pspass9.Caption:='';
  form1.pspass10.Caption:='';
  form1.pspass11.Caption:='';
  form1.pspass12.Caption:='';
  form1.pspass13.Caption:='';
  form1.pspass14.Caption:='';
  form1.pspass15.Caption:='';
  form1.pspass16.Caption:='';
  form1.pspass17.Caption:='';
  form1.pspass18.Caption:='';
  form1.pspass19.Caption:='';
  form1.pspass20.Caption:='';

  form1.pstck1.Caption:='';
  form1.pstck2.Caption:='';
  form1.pstck3.Caption:='';
  form1.pstck4.Caption:='';
  form1.pstck5.Caption:='';
  form1.pstck6.Caption:='';
  form1.pstck7.Caption:='';
  form1.pstck8.Caption:='';
  form1.pstck9.Caption:='';
  form1.pstck10.Caption:='';
  form1.pstck11.Caption:='';
  form1.pstck12.Caption:='';
  form1.pstck13.Caption:='';
  form1.pstck14.Caption:='';
  form1.pstck15.Caption:='';
  form1.pstck16.Caption:='';
  form1.pstck17.Caption:='';
  form1.pstck18.Caption:='';
  form1.pstck19.Caption:='';
  form1.pstck20.Caption:='';

  form1.pshead1.Caption:='';
  form1.pshead2.Caption:='';
  form1.pshead3.Caption:='';
  form1.pshead4.Caption:='';
  form1.pshead5.Caption:='';
  form1.pshead6.Caption:='';
  form1.pshead7.Caption:='';
  form1.pshead8.Caption:='';
  form1.pshead9.Caption:='';
  form1.pshead10.Caption:='';
  form1.pshead11.Caption:='';
  form1.pshead12.Caption:='';
  form1.pshead13.Caption:='';
  form1.pshead14.Caption:='';
  form1.pshead15.Caption:='';
  form1.pshead16.Caption:='';
  form1.pshead17.Caption:='';
  form1.pshead18.Caption:='';
  form1.pshead19.Caption:='';
  form1.pshead20.Caption:='';

end;

procedure asetaPublicServer(pKer: integer; name: string; plrCount: byte; maxPlrs: byte; password: boolean);
begin

  if pKer=1 then begin
    form1.pserv1.Caption:=name;
    form1.plrs1.Caption:=inttostr(plrCount)+'/'+inttostr(maxPlrs*2);
    if password then form1.passworded1.Caption:='Password' else form1.passworded1.Caption:='';
  end;

  if pKer=2 then begin
    form1.pserv2.Caption:=name;
    form1.plrs2.Caption:=inttostr(plrCount)+'/'+inttostr(maxPlrs*2);
    if password then form1.passworded2.Caption:='Password' else form1.passworded2.Caption:='';
  end;

  if pKer=3 then begin
    form1.pserv3.Caption:=name;
    form1.plrs3.Caption:=inttostr(plrCount)+'/'+inttostr(maxPlrs*2);
    if password then form1.passworded3.Caption:='Password' else form1.passworded3.Caption:='';
  end;

  if pKer=4 then begin
    form1.pserv4.Caption:=name;
    form1.plrs4.Caption:=inttostr(plrCount)+'/'+inttostr(maxPlrs*2);
    if password then form1.passworded4.Caption:='Password' else form1.passworded4.Caption:='';
  end;

  if pKer=5 then begin
    form1.pserv5.Caption:=name;
    form1.plrs5.Caption:=inttostr(plrCount)+'/'+inttostr(maxPlrs*2);
    if password then form1.passworded5.Caption:='Password' else form1.passworded5.Caption:='';
  end;

  if pKer=6 then begin
    form1.pserv6.Caption:=name;
    form1.plrs6.Caption:=inttostr(plrCount)+'/'+inttostr(maxPlrs*2);
    if password then form1.passworded6.Caption:='Password' else form1.passworded6.Caption:='';
  end;

  if pKer=7 then begin
    form1.pserv7.Caption:=name;
    form1.plrs7.Caption:=inttostr(plrCount)+'/'+inttostr(maxPlrs*2);
    if password then form1.passworded7.Caption:='Password' else form1.passworded7.Caption:='';
  end;

  if pKer=8 then begin
    form1.pserv8.Caption:=name;
    form1.plrs8.Caption:=inttostr(plrCount)+'/'+inttostr(maxPlrs*2);
    if password then form1.passworded8.Caption:='Password' else form1.passworded8.Caption:='';
  end;

  if pKer=9 then begin
    form1.pserv9.Caption:=name;
    form1.plrs9.Caption:=inttostr(plrCount)+'/'+inttostr(maxPlrs*2);
    if password then form1.passworded9.Caption:='Password' else form1.passworded9.Caption:='';
  end;

  if pKer=10 then begin
    form1.pserv10.Caption:=name;
    form1.plrs10.Caption:=inttostr(plrCount)+'/'+inttostr(maxPlrs*2);
    if password then form1.passworded10.Caption:='Password' else form1.passworded10.Caption:='';
  end;

  if pKer=11 then begin
    form1.pserv11.Caption:=name;
    form1.plrs11.Caption:=inttostr(plrCount)+'/'+inttostr(maxPlrs*2);
    if password then form1.passworded11.Caption:='Password' else form1.passworded11.Caption:='';
  end;

  if pKer=12 then begin
    form1.pserv12.Caption:=name;
    form1.plrs12.Caption:=inttostr(plrCount)+'/'+inttostr(maxPlrs*2);
    if password then form1.passworded12.Caption:='Password' else form1.passworded12.Caption:='';
  end;

  if pKer=13 then begin
    form1.pserv13.Caption:=name;
    form1.plrs13.Caption:=inttostr(plrCount)+'/'+inttostr(maxPlrs*2);
    if password then form1.passworded13.Caption:='Password' else form1.passworded13.Caption:='';
  end;

  if pKer=14 then begin
    form1.pserv14.Caption:=name;
    form1.plrs14.Caption:=inttostr(plrCount)+'/'+inttostr(maxPlrs*2);
    if password then form1.passworded14.Caption:='Password' else form1.passworded14.Caption:='';
  end;

  if pKer=15 then begin
    form1.pserv15.Caption:=name;
    form1.plrs15.Caption:=inttostr(plrCount)+'/'+inttostr(maxPlrs*2);
    if password then form1.passworded15.Caption:='Password' else form1.passworded15.Caption:='';
  end;

  if pKer=16 then begin
    form1.pserv16.Caption:=name;
    form1.plrs16.Caption:=inttostr(plrCount)+'/'+inttostr(maxPlrs*2);
    if password then form1.passworded16.Caption:='Password' else form1.passworded16.Caption:='';
  end;

  if pKer=17 then begin
    form1.pserv17.Caption:=name;
    form1.plrs17.Caption:=inttostr(plrCount)+'/'+inttostr(maxPlrs*2);
    if password then form1.passworded17.Caption:='Password' else form1.passworded17.Caption:='';
  end;

  if pKer=18 then begin
    form1.pserv18.Caption:=name;
    form1.plrs18.Caption:=inttostr(plrCount)+'/'+inttostr(maxPlrs*2);
    if password then form1.passworded18.Caption:='Password' else form1.passworded18.Caption:='';
  end;

  if pKer=19 then begin
    form1.pserv19.Caption:=name;
    form1.plrs19.Caption:=inttostr(plrCount)+'/'+inttostr(maxPlrs*2);
    if password then form1.passworded19.Caption:='Password' else form1.passworded19.Caption:='';
  end;

  if pKer=20 then begin
    form1.pserv20.Caption:=name;
    form1.plrs20.Caption:=inttostr(plrCount)+'/'+inttostr(maxPlrs*2);
    if password then form1.passworded20.Caption:='Password' else form1.passworded20.Caption:='';
  end;

end;

function parsiViimenenMerkki(pStr,merkki: string): string;
var pStr2: string;
    i: integer;
begin
  result:='';
  if length(pStr)=0 then exit;

  pStr2:='';
  if pStr[length(pStr)]=merkki then begin
    for i:=1 to length(pStr)-1 do
      pStr2:=pStr2+pStr[i];
    result:=pStr2;
  end
  else result:=pStr;

end;

procedure pyydaPublicServereita(nextI: integer);
type
  TPyydaPublicServers = record
    mtype: word;
    mtype2: word;
    ra: word;
    nextI: integer;
    noFull: boolean;
    noEmpty: boolean;
    location: byte;
    noPassword: boolean;
  end;
var
  PyydaPublicServers: TPyydaPublicServers;
begin

  PyydaPublicServers.mtype:=7;
  PyydaPublicServers.mtype2:=7;
  PyydaPublicServers.ra:=random(55000)+1;
  PyydaPublicServers.nextI:=nextI;
  PyydaPublicServers.noFull:=FilterSettings.noFull;
  PyydaPublicServers.noEmpty:=FilterSettings.noEmpty;
  PyydaPublicServers.location:=FilterSettings.location;
  PyydaPublicServers.noPassword:=FilterSettings.noPassword;
  TCPClient2.WriteBuffer(@PyydaPublicServers,sizeof(PyydaPublicServers));

end;

procedure loadFilterSettings;
var searchResult : TSearchRec;
    texttied: textfile;
    i: integer;
    pstr: string;
begin

  if FindFirst('data\filterSettings.dat', faAnyFile, searchResult)>0 then begin
    assignfile(texttied,'data\filterSettings.dat');
    rewrite(texttied);
    for i:=1 to 20 do
      writeln(texttied,'');
    closefile(texttied);
  end;
  FindClose(searchResult);

  assignfile(texttied,'data\filterSettings.dat');
  reset(texttied);

  readln(texttied,pstr);  //noFull
  if (pstr='') or (pstr='No full 0') then FilterSettings.noFull:=false else FilterSettings.noFull:=true;

  readln(texttied,pstr);  //noEmpty
  if (pstr='') or (pstr='No empty 0') then FilterSettings.noEmpty:=false else FilterSettings.noEmpty:=true;

  readln(texttied,pstr);  //location  0=kaikki, 1=eurooppa servut, 2=etelä-am. servut
  if (pstr='') or (pstr='0') then FilterSettings.location:=0 else FilterSettings.location:=strtoint(pstr);

  readln(texttied,pstr); //noPassword
  if (pstr='') or (pstr='No password 0') then FilterSettings.noPassword:=false else FilterSettings.noPassword:=true;

  closefile(texttied);

//******************************************************************************

  form1.sCheckBox18.Checked:=FilterSettings.noFull;
  form1.sCheckBox19.Checked:=FilterSettings.noEmpty;
  form1.sCheckBox20.Checked:=FilterSettings.noPassword;

  form1.sComboBox23.ItemIndex:=FilterSettings.location;

end;

procedure saveFilterSettings;
var texttied: textfile;
    pstr: string;
begin

  if form1.sComboBox23.ItemIndex<0 then form1.sComboBox23.ItemIndex:=0;

  FilterSettings.noFull:=form1.sCheckBox18.Checked;
  FilterSettings.noEmpty:=form1.sCheckBox19.Checked;
  FilterSettings.noPassword:=form1.sCheckBox20.Checked;
  FilterSettings.location:=form1.sComboBox23.ItemIndex;

  assignfile(texttied,'data\filterSettings.dat');
  rewrite(texttied);

  if FilterSettings.noFull then pstr:='No full 1' else pstr:='No full 0';
  writeln(texttied,pstr);
  if FilterSettings.noEmpty then pstr:='No empty 1' else pstr:='No empty 0';
  writeln(texttied,pstr);

  pstr:=inttostr(FilterSettings.location);
  writeln(texttied,pstr);

  if FilterSettings.noPassword then pstr:='No password 1' else pstr:='No password 0';
  writeln(texttied,pstr);

  closefile(texttied);

end;

procedure pyydaLiveScores(nextI: integer);
type
  TPaketti = record
    mtype: word;
    mtype2: word;
    ra: word;
    nextI: integer;
  end;
var
  Paketti: TPaketti;
begin

  Paketti.mtype:=57;
  Paketti.mtype2:=57;
  Paketti.ra:=random(55000)+1;
  Paketti.nextI:=nextI;
  TCPClient2.WriteBuffer(@Paketti,sizeof(Paketti));

end;

procedure pyydaChallengeTietoja(nextI: integer);
type
  TPyydaChallengeTiedot = record
    mtype: word;
    mtype2: word;
    ra: word;
    nextI: integer;
  end;
var
  PyydaChallengeTiedot: TPyydaChallengeTiedot;
begin

  PyydaChallengeTiedot.mtype:=51;
  PyydaChallengeTiedot.mtype2:=51;
  PyydaChallengeTiedot.ra:=random(55000)+1;
  PyydaChallengeTiedot.nextI:=nextI;
  TCPClient2.WriteBuffer(@PyydaChallengeTiedot,sizeof(PyydaChallengeTiedot));

end;

procedure publicServersAlkuNollaukset;
begin
  setLength(publicServersList.name,0);
  setLength(publicServersList.ID,0);
  setLength(publicServersList.plrCount,0);
  setLength(publicServersList.maxPlrs,0);
  setLength(publicServersList.password,0);
  putsaaPublicServerLabelit;
end;

procedure playerStatsAlkuNollaukset;
begin
  setLength(PlayerStatsList.name,0);
  setLength(PlayerStatsList.team,0);
  setLength(PlayerStatsList.apps,0);
  setLength(PlayerStatsList.gls,0);
  setLength(PlayerStatsList.asts,0);
  setLength(PlayerStatsList.pass,0);
  setLength(PlayerStatsList.tck,0);
  setLength(PlayerStatsList.head,0);
  putsaaplayerStatsLabelit;
end;

procedure teamStatsAlkuNollaukset;
begin
  ZeroMemory(@TeamStatsList, SizeOf(TeamStatsList));
  setLength(TeamStatsList.team,0);
  setLength(TeamStatsList.rank,0);
  putsaateamStatsLabelit;
end;

procedure challengePanelAlkuNollaukset;
begin
  setLength(ChallengeTeamsList.name,0);
  setLength(ChallengeTeamsList.plrOnline,0);
  setLength(ChallengeTeamsList.ranking,0);
  setLength(ChallengeTeamsList.playing,0);
  setLength(ChallengeTeamsList.location,0);
  putsaaChallengeTeamsLabelit;
end;

procedure LiveScoresAlkuNollaukset;
begin
  form1.sScrollBar4.Position:=0;
  form1.sButton27.Visible:=false;
  //form1.sButton588.Visible:=false;
  form1.sLabelFX127.Caption:='';
  form1.sLabelFX125.Visible:=false;

  setLength(LivescoreList.sID,0);
  setLength(LivescoreList.time,0);
  setLength(LivescoreList.score1,0);
  setLength(LivescoreList.score2,0);
  setLength(LivescoreList.name1,0);
  setLength(LivescoreList.name2,0);
  putsaaLiveScoresLabelit;
end;

function laske_prossat(p1,p2: integer): string;
var r: integer;
begin

  if (p1=0) or (p2=0) then begin
    result:='-';
    exit;
  end;

  r:=trunc(100/p1*p2);
  result:=inttostr(r);

end;

function Angle(cx,cy,px,py: double): double;
var i: double;
begin
  i:=ToDeg*arctan2(py-cy,px-cx);
  if i<0 then result:=i+360 else result:=i;
end;

function etaisyys(x1: real; y1: real; x2: real; y2: real): real;
begin
  result:=sqrt((x1-x2)*(x1-x2) + (y1-y2)*(y1-y2));
end;

procedure panelit_kohdalleen;
begin

  form1.Image1.Width:=911;
  form1.Image1.Height:=447;

  form1.sPanel1.Left:=16;
  form1.sPanel1.Top:=56;
  form1.sPanel1.Width:=913;
  form1.sPanel1.Height:=449;

  form1.sPanel4.Left:=16;
  form1.sPanel4.Top:=56;
  form1.sPanel4.Width:=913;
  form1.sPanel4.Height:=449;

  form1.sPanel5.left:=280;
  form1.sPanel5.top:=128;
  form1.sPanel5.width:=400;
  form1.sPanel5.Height:=250;

  form1.sPanel6.left:=280;
  form1.sPanel6.top:=128;
  form1.sPanel6.width:=400;
  form1.sPanel6.Height:=250;

  form1.sPanel7.Left:=16;
  form1.sPanel7.Top:=56;
  form1.sPanel7.Width:=913;
  form1.sPanel7.Height:=449;

  form1.sPanel8.Left:=16;
  form1.sPanel8.Top:=56;
  form1.sPanel8.Width:=913;
  form1.sPanel8.Height:=449;

  form1.sPanel9.Left:=104;
  form1.sPanel9.Top:=56;
  form1.sPanel9.Width:=729;
  form1.sPanel9.Height:=449;

  form1.sPanel10.Left:=104;
  form1.sPanel10.Top:=56;
  form1.sPanel10.Width:=729;
  form1.sPanel10.Height:=449;

  form1.sPanel11.Left:=16;
  form1.sPanel11.Top:=56;
  form1.sPanel11.Width:=913;
  form1.sPanel11.Height:=449;

  form1.sPanel12.Left:=16;
  form1.sPanel12.Top:=56;
  form1.sPanel12.Width:=913;
  form1.sPanel12.Height:=449;

  form1.sPanel13.Left:=16;
  form1.sPanel13.Top:=56;
  form1.sPanel13.Width:=913;
  form1.sPanel13.Height:=449;

  form1.sPanel14.Left:=16;
  form1.sPanel14.Top:=56;
  form1.sPanel14.Width:=913;
  form1.sPanel14.Height:=449;

  form1.sPanel15.Left:=16;
  form1.sPanel15.Top:=56;
  form1.sPanel15.Width:=913;
  form1.sPanel15.Height:=449;

  form1.sPanel16.Left:=16;
  form1.sPanel16.Top:=56;
  form1.sPanel16.Width:=913;
  form1.sPanel16.Height:=449;

  form1.sPanel17.Left:=16;
  form1.sPanel17.Top:=56;
  form1.sPanel17.Width:=913;
  form1.sPanel17.Height:=449;

  form1.sPanel18.Left:=16;
  form1.sPanel18.Top:=56;
  form1.sPanel18.Width:=913;
  form1.sPanel18.Height:=449;

  form1.sPanel19.Left:=16;
  form1.sPanel19.Top:=56;
  form1.sPanel19.Width:=913;
  form1.sPanel19.Height:=449;

  form1.sPanel20.Left:=16;
  form1.sPanel20.Top:=56;
  form1.sPanel20.Width:=913;
  form1.sPanel20.Height:=449;

  form1.sPanel21.Left:=16;
  form1.sPanel21.Top:=56;
  form1.sPanel21.Width:=913;
  form1.sPanel21.Height:=449;

  form1.sPanel22.Left:=16;
  form1.sPanel22.Top:=56;
  form1.sPanel22.Width:=913;
  form1.sPanel22.Height:=449;

  form1.sPanel23.Left:=16;
  form1.sPanel23.Top:=56;
  form1.sPanel23.Width:=913;
  form1.sPanel23.Height:=449;

  form1.sPanel24.Left:=16;
  form1.sPanel24.Top:=56;
  form1.sPanel24.Width:=913;
  form1.sPanel24.Height:=449;

  form1.sPanel25.Left:=16;
  form1.sPanel25.Top:=56;
  form1.sPanel25.Width:=913;
  form1.sPanel25.Height:=449;

  form1.sPanel26.Left:=16;
  form1.sPanel26.Top:=56;
  form1.sPanel26.Width:=913;
  form1.sPanel26.Height:=449;

  form1.sComboBox2.ItemIndex:=1;

end;

procedure lataa_lobby_kuvat;
var Ppng: TPNGobject;
begin

  form1.image1.Picture.LoadFromFile('data/Images/skins/'+selected_skin+'/pictures/team.png');
  form1.image2.Picture.LoadFromFile('data/Images/skins/'+selected_skin+'/pictures/top.png');
  form1.image3.Picture.LoadFromFile('data/Images/skins/'+selected_skin+'/pictures/createteam.png');
  form1.image4.Picture.LoadFromFile('data/Images/skins/'+selected_skin+'/pictures/chat.png');
  form1.image5.Picture.LoadFromFile('data/Images/skins/'+selected_skin+'/pictures/player.png');
  form1.image6.Picture.LoadFromFile('data/Images/skins/'+selected_skin+'/pictures/login.png');
  form1.image7.Picture.LoadFromFile('data/Images/skins/'+selected_skin+'/pictures/settings.png');

  form1.image10.Picture.LoadFromFile('data/Images/skins/'+selected_skin+'/pictures/search_result.png');
  form1.image11.Picture.LoadFromFile('data/Images/skins/'+selected_skin+'/pictures/chatsettings.png');
  form1.image12.Picture.LoadFromFile('data/Images/skins/'+selected_skin+'/pictures/ownplayer.png');
  form1.image13.Picture.LoadFromFile('data/Images/skins/'+selected_skin+'/pictures/public.png');
  form1.image14.Picture.LoadFromFile('data/Images/skins/'+selected_skin+'/pictures/challenge.png');
  form1.image15.Picture.LoadFromFile('data/Images/skins/'+selected_skin+'/pictures/challenge2.png');
  form1.image16.Picture.LoadFromFile('data/Images/skins/'+selected_skin+'/pictures/livescores.png');

  form1.image20.Picture.LoadFromFile('data/Images/skins/'+selected_skin+'/pictures/playerstats.png');
  form1.image21.Picture.LoadFromFile('data/Images/skins/'+selected_skin+'/pictures/teamstats.png');
  form1.image22.Picture.LoadFromFile('data/Images/skins/'+selected_skin+'/pictures/viptransfer.png');
  form1.image23.Picture.LoadFromFile('data/Images/skins/'+selected_skin+'/pictures/versionlog.png');

  form1.image24.Picture.LoadFromFile('data/Images/Game/minifield.png');
                             
  form1.image_arrow1.Picture.LoadFromFile('data/Images/skins/'+selected_skin+'/pictures/arrow_back.png');
  form1.image_arrow2.Picture.LoadFromFile('data/Images/skins/'+selected_skin+'/pictures/arrow_for.png');

  form1.image1.Align:=alClient;
  form1.image2.Align:=alClient;
  form1.image3.Align:=alClient;
  form1.image4.Align:=alClient;
  form1.image5.Align:=alClient;
  form1.image6.Align:=alClient;
  form1.image7.Align:=alClient;
  form1.image10.Align:=alClient;
  form1.image11.Align:=alClient;
  form1.image12.Align:=alClient;
  form1.image13.Align:=alClient;
  form1.image14.Align:=alClient;
  form1.image15.Align:=alClient;
  form1.image16.Align:=alClient;
  form1.image20.Align:=alClient;
  form1.image21.Align:=alClient;
  form1.image22.Align:=alClient;
  form1.image23.Align:=alClient;

//******************  Ladataan pelaajien onlinetila kuvake  ********************

  Ppng:=TPNGobject.Create;
  Ppng.LoadFromFile('data\Images\Game/online.png');

  form1.onl_Image1.Picture.Assign(Ppng);
  form1.onl_Image2.Picture.Assign(Ppng);
  form1.onl_Image3.Picture.Assign(Ppng);
  form1.onl_Image4.Picture.Assign(Ppng);
  form1.onl_Image5.Picture.Assign(Ppng);
  form1.onl_Image6.Picture.Assign(Ppng);
  form1.onl_Image7.Picture.Assign(Ppng);
  form1.onl_Image8.Picture.Assign(Ppng);
  form1.onl_Image9.Picture.Assign(Ppng);
  form1.onl_Image10.Picture.Assign(Ppng);
  form1.onl_Image11.Picture.Assign(Ppng);
  form1.onl_Image12.Picture.Assign(Ppng);
  form1.onl_Image13.Picture.Assign(Ppng);
  form1.onl_Image14.Picture.Assign(Ppng);

  Ppng.Free;

//******************************************************************************

end;

function tarkastetaan_kirjain(paik_kirj: string): boolean;
begin

  if (paik_kirj='a') or
     (paik_kirj='b') or
     (paik_kirj='c') or
     (paik_kirj='d') or
     (paik_kirj='e') or
     (paik_kirj='f') or
     (paik_kirj='g') or
     (paik_kirj='h') or
     (paik_kirj='i') or
     (paik_kirj='j') or
     (paik_kirj='k') or
     (paik_kirj='l') or
     (paik_kirj='m') or
     (paik_kirj='n') or
     (paik_kirj='o') or
     (paik_kirj='p') or
     (paik_kirj='q') or
     (paik_kirj='r') or
     (paik_kirj='s') or
     (paik_kirj='t') or
     (paik_kirj='u') or
     (paik_kirj='v') or
     (paik_kirj='w') or
     (paik_kirj='x') or
     (paik_kirj='y') or
     (paik_kirj='z') or
     (paik_kirj='A') or
     (paik_kirj='B') or
     (paik_kirj='C') or
     (paik_kirj='D') or
     (paik_kirj='E') or
     (paik_kirj='F') or
     (paik_kirj='G') or
     (paik_kirj='H') or
     (paik_kirj='I') or
     (paik_kirj='J') or
     (paik_kirj='K') or
     (paik_kirj='L') or
     (paik_kirj='M') or
     (paik_kirj='N') or
     (paik_kirj='O') or
     (paik_kirj='P') or
     (paik_kirj='Q') or
     (paik_kirj='R') or
     (paik_kirj='S') or
     (paik_kirj='T') or
     (paik_kirj='U') or
     (paik_kirj='W') or
     (paik_kirj='V') or
     (paik_kirj='X') or
     (paik_kirj='Y') or
     (paik_kirj='Z') or
     (paik_kirj=' ') or
     (paik_kirj='1') or
     (paik_kirj='2') or
     (paik_kirj='3') or
     (paik_kirj='4') or
     (paik_kirj='5') or
     (paik_kirj='6') or
     (paik_kirj='7') or
     (paik_kirj='8') or
     (paik_kirj='9') or
     (paik_kirj='0') or
     (paik_kirj='''') or
     (paik_kirj='_') or
     (paik_kirj='@') or
     (paik_kirj='.') or
     (paik_kirj='-') then result:=true else result:=false;

end;

function tarkastetaan_ettei_invalid_kirjaimia(paik_nimi: string): boolean;
var i: integer;
begin
  result:=true;

  for i:=1 to length(paik_nimi) do begin
    if tarkastetaan_kirjain(paik_nimi[i])=false then begin
      result:=false;
      break;
    end;
  end;

end;

function tarkasta_login_register(pstr: string): boolean;
begin
  result:=false;

  if form1.sEdit3.text='' then exit;
  if form1.sEdit4.text='' then exit;
  if form1.sEdit3.text[1]=' ' then begin
    showmessage('Username may not start with space');
    exit;
  end;
  if form1.sEdit3.text[length(form1.sEdit3.text)]=' ' then begin
    showmessage('Username may not end with space');
    exit;
  end;

  if tarkastetaan_ettei_invalid_kirjaimia(form1.sEdit3.text)=false then begin
    showmessage('Only following letters allowed: A-Z '' - _ @ .');
    exit;
  end;

  if pstr='Register' then begin
    if form1.sEdit5.text='' then exit;
    if ValidEmail(form1.sEdit5.text)=false then begin
      showmessage('Invalid email');
      exit;
    end;
  end;

  result:=true;
  
end;

procedure please_wait(paik_bool: boolean);
begin

  if paik_bool=true then begin
    form1.Caption:='Netsoccer 2.'+versio+' please wait...';
    please_wait_arvo:=true;
  end;

  if paik_bool=false then begin
    form1.Caption:='Netsoccer 2.'+versio;
    please_wait_arvo:=false;
  end;

end;

procedure lataa_logo(p_str: string; paik_kohde: byte);
begin
                
  httpkohde:=paik_kohde;

  if length(p_str)<4 then exit;

  p_str:=AnsiLowerCase(p_str);

  if not (p_str[length(p_str)]='f') then exit;
  if not (p_str[length(p_str)-1]='i') then exit;
  if not (p_str[length(p_str)-2]='g') then exit;
  if not (p_str[length(p_str)-3]='.') then exit;

  HTTPGet1.URL:=p_str;
  HTTPGet1.GetFile;

end;

procedure lataa_chat_settings;
var
  Chat_settings_tied: file of TChat_settings;
begin

  assignfile(Chat_settings_tied,'data/chat_settings.dat');
  reset(Chat_settings_tied);
  read(Chat_settings_tied,Chat_settings);
  closefile(Chat_settings_tied);

end;

procedure aseta_chat_settings;
begin

  form1.sColorBox1.Selected:=Chat_settings.colors[1];
  form1.sColorBox2.Selected:=Chat_settings.colors[2];
  form1.sColorBox3.Selected:=Chat_settings.colors[3];
  form1.sColorBox4.Selected:=Chat_settings.colors[4];
  form1.sColorBox5.Selected:=Chat_settings.colors[5];

end;

procedure tallenna_chat_settings(p_kohde, p_arvo: byte; clColor : TColor);
var
  Chat_settings_tied: file of TChat_settings;
begin

  if p_kohde=1 then Chat_settings.chat_boxes:=p_arvo;

  if p_kohde=2 then Chat_settings.colors[1]:=clColor;
  if p_kohde=3 then Chat_settings.colors[2]:=clColor;
  if p_kohde=4 then Chat_settings.colors[3]:=clColor;
  if p_kohde=5 then Chat_settings.colors[4]:=clColor;
  if p_kohde=6 then Chat_settings.colors[5]:=clColor;

  if p_kohde=7 then Chat_settings.chat_box[1]:=p_arvo;
  if p_kohde=8 then Chat_settings.chat_box[2]:=p_arvo;
  if p_kohde=9 then Chat_settings.chat_box[3]:=p_arvo;
  if p_kohde=10 then Chat_settings.chat_box[4]:=p_arvo;
  if p_kohde=11 then Chat_settings.chat_box[5]:=p_arvo;

  assignfile(Chat_settings_tied,'data/chat_settings.dat');
  rewrite(Chat_settings_tied);
  write(Chat_settings_tied,Chat_settings);
  closefile(Chat_settings_tied);

end;

procedure lataa_favs_ja_ignores;
var texttied: textfile;
    s: string;
begin

  form1.slistbox1.Items.Clear;
  assignfile(texttied,'data/pfav.txt');
  reset(texttied);
  while not Eof(texttied) do begin
    readln(texttied,s);
    form1.slistbox1.Items.Add(s);
  end;
  closefile(texttied);

  form1.slistbox2.Items.Clear;
  assignfile(texttied,'data/tfav.txt');
  reset(texttied);
  while not Eof(texttied) do begin
    readln(texttied,s);
    form1.slistbox2.Items.Add(s);
  end;
  closefile(texttied);

  form1.slistbox3.Items.Clear;
  assignfile(texttied,'data/ignlist.txt');
  reset(texttied);
  while not Eof(texttied) do begin
    readln(texttied,s);
    form1.slistbox3.Items.Add(s);
  end;
  closefile(texttied);

end;

function nation_int_to_strshort(p_ind: smallint): string;
begin

  result:='';

  if p_ind=0 then result:='GBR';
  if p_ind=1 then result:='USA';
  if p_ind=2 then result:='BER';
  if p_ind=3 then result:='SWE';
  if p_ind=4 then result:='ITA';
  if p_ind=5 then result:='CAN';
  if p_ind=6 then result:='PUR';
  if p_ind=7 then result:='IND';
  if p_ind=8 then result:='BOL';
  if p_ind=9 then result:='NED';
  if p_ind=10 then result:='GER';
  if p_ind=11 then result:='SUI';
  if p_ind=12 then result:='FRA';
  if p_ind=13 then result:='ISR';
  if p_ind=14 then result:='SPA';
  if p_ind=15 then result:='CHI';
  if p_ind=16 then result:='BAH';
  if p_ind=17 then result:='ARG';
  if p_ind=18 then result:='DMA';
  if p_ind=19 then result:='BEL';
  if p_ind=20 then result:='IRL';
  if p_ind=21 then result:='JPN';
  if p_ind=22 then result:='AUS';
  if p_ind=23 then result:='THA';
  if p_ind=24 then result:='CHN';
  if p_ind=25 then result:='MAS';
  if p_ind=26 then result:='PAK';
  if p_ind=27 then result:='NZL';
  if p_ind=28 then result:='KOR';
  if p_ind=29 then result:='HKG';
  if p_ind=30 then result:='SIN';
  if p_ind=31 then result:='BAN';
  if p_ind=32 then result:='UKR';
  if p_ind=33 then result:='INA';
  if p_ind=34 then result:='PHI';
  if p_ind=35 then result:='Taiwan';
  if p_ind=36 then result:='AFG';
  if p_ind=37 then result:='VIE';
  if p_ind=38 then result:='VAN';
  if p_ind=39 then result:='PAN';
  if p_ind=40 then result:='?';
  if p_ind=41 then result:='BRU';
  if p_ind=42 then result:='GRE';
  if p_ind=43 then result:='Saudi arabia';
  if p_ind=44 then result:='POL';
  if p_ind=45 then result:='CZE';
  if p_ind=46 then result:='RUS';
  if p_ind=47 then result:='DEN';
  if p_ind=48 then result:='NGR';
  if p_ind=49 then result:='ZIM';
  if p_ind=50 then result:='LBR';
  if p_ind=51 then result:='IRQ';
  if p_ind=52 then result:='CMR';
  if p_ind=53 then result:='SUD';
  if p_ind=54 then result:='GHA';
  if p_ind=55 then result:='GAB';
  if p_ind=56 then result:='CYP';
  if p_ind=57 then result:='NOR';
  if p_ind=58 then result:='AUT';
  if p_ind=59 then result:='TJK';
  if p_ind=60 then result:='POR';
  if p_ind=61 then result:='TUR';
  if p_ind=62 then result:='Iran';
  if p_ind=63 then result:='GEO';
  if p_ind=64 then result:='BLR';
  if p_ind=65 then result:='ARM';
  if p_ind=66 then result:='LIB';
  if p_ind=67 then result:='MDA';
  if p_ind=68 then result:='BUL';
  if p_ind=69 then result:='FIN';
  if p_ind=70 then result:='Mozambique';
  if p_ind=71 then result:='ANG';
  if p_ind=72 then result:='KEN';
  if p_ind=73 then result:='Congo dem rep';
  if p_ind=74 then result:='MAD';
  if p_ind=75 then result:='TAN';
  if p_ind=76 then result:='TOG';
  if p_ind=77 then result:='Zambia';
  if p_ind=78 then result:='OMA';
  if p_ind=79 then result:='LAT';
  if p_ind=80 then result:='KAZ';
  if p_ind=81 then result:='EST';
  if p_ind=82 then result:='SVK';
  if p_ind=83 then result:='Jordan';
  if p_ind=84 then result:='HUN';
  if p_ind=85 then result:='KUW';
  if p_ind=86 then result:='ALB';
  if p_ind=87 then result:='LTU';
  if p_ind=88 then result:='SWZ';
  if p_ind=89 then result:='SMR';
  if p_ind=90 then result:='ROM';
  if p_ind=91 then result:='Czechoslovakia';
  if p_ind=92 then result:='MKD';
  if p_ind=93 then result:='CRO';
  if p_ind=94 then result:='MAR';
  if p_ind=95 then result:='LUX';
  if p_ind=96 then result:='Algeria';
  if p_ind=97 then result:='ISL';
  if p_ind=98 then result:='LIE';
  if p_ind=99 then result:='CRI';
  if p_ind=100 then result:='MLT';
  if p_ind=101 then result:='GAM';
  if p_ind=102 then result:='South africa';
  if p_ind=103 then result:='MAW';
  if p_ind=104 then result:='SLO';
  if p_ind=105 then result:='Falkland islands';
  if p_ind=106 then result:='AZE';
  if p_ind=107 then result:='EGY';
  if p_ind=108 then result:='MON';
  if p_ind=109 then result:='HAI';
  if p_ind=110 then result:='GUM';
  if p_ind=111 then result:='ECU';
  if p_ind=112 then result:='MEX';
  if p_ind=113 then result:='CAY';
  if p_ind=114 then result:='PER';
  if p_ind=115 then result:='COL';
  if p_ind=116 then result:='HON';
  if p_ind=117 then result:='SLE';
  if p_ind=118 then result:='IVB';
  if p_ind=119 then result:='DOM';
  if p_ind=120 then result:='BIZ';
  if p_ind=121 then result:='AHO';
  if p_ind=122 then result:='TRI';
  if p_ind=123 then result:='VEN';
  if p_ind=124 then result:='ANT';
  if p_ind=125 then result:='Northern mariana islands';
  if p_ind=126 then result:='ISV';
  if p_ind=127 then result:='BIH';
  if p_ind=128 then result:='CUB';
  if p_ind=129 then result:='CGO';
  if p_ind=130 then result:='BRA';
  if p_ind=131 then result:='ESA';
  if p_ind=132 then result:='LCA';
  if p_ind=133 then result:='PAR';
  if p_ind=134 then result:='SUR';
  if p_ind=135 then result:='NCA';
  if p_ind=136 then result:='BAR';
  if p_ind=137 then result:='SKN';
  if p_ind=138 then result:='JAM';
  if p_ind=139 then result:='SYR';
  if p_ind=140 then result:='BRN';
  if p_ind=141 then result:='SRB';
  if p_ind=142 then result:='KGZ';
  if p_ind=143 then result:='Reunion';
  if p_ind=144 then result:='MRI';
  if p_ind=145 then result:='Ivory coast';
  if p_ind=146 then result:='Chad';
  if p_ind=147 then result:='Faeroe islands';
  if p_ind=148 then result:='SOM';
  if p_ind=149 then result:='MLI';
  if p_ind=150 then result:='Palestinian';
  if p_ind=151 then result:='BDI';
  if p_ind=152 then result:='GUI';
  if p_ind=153 then result:='UZB';
  if p_ind=154 then result:='ETH';
  if p_ind=155 then result:='SEN';
  if p_ind=156 then result:='NRU';
  if p_ind=157 then result:='RWA';
  if p_ind=158 then result:='Yemen';
  if p_ind=159 then result:='COM';
  if p_ind=160 then result:='UAE';
  if p_ind=161 then result:='NAM';
  if p_ind=162 then result:='UGA';
  if p_ind=163 then result:='BEN';
  if p_ind=164 then result:='LES';
  if p_ind=165 then result:='MTN';
  if p_ind=166 then result:='Libya';
  if p_ind=167 then result:='QAT';
  if p_ind=168 then result:='LAO';
  if p_ind=169 then result:='Sri lanka';
  if p_ind=170 then result:='NEP';
  if p_ind=171 then result:='GUY';
  if p_ind=172 then result:='TUN';
  if p_ind=173 then result:='Martinique';
  if p_ind=174 then result:='Guadeloupe';
  if p_ind=175 then result:='SEY';
  if p_ind=176 then result:='BOT';
  if p_ind=177 then result:='NIG';
  if p_ind=178 then result:='Vatican city';
  if p_ind=179 then result:='TKM';
  if p_ind=180 then result:='&nbsp;';
  if p_ind=181 then result:='Gibraltar';
  if p_ind=182 then result:='Mayotte';
  if p_ind=183 then result:='BUR';
  if p_ind=184 then result:='AND';
  if p_ind=185 then result:='MNE';
  if p_ind=186 then result:='Macao';
  if p_ind=187 then result:='Antarctica';
  if p_ind=188 then result:='Greenland';
  if p_ind=189 then result:='MGL';
  if p_ind=190 then result:='CAM';
  if p_ind=191 then result:='French polynesia';
  if p_ind=192 then result:='MDV';
  if p_ind=193 then result:='FIJ';
  if p_ind=194 then result:='Micronesia';
  if p_ind=195 then result:='GUA';
  if p_ind=196 then result:='URU';
  if p_ind=197 then result:='PNG';
  if p_ind=198 then result:='CAF';
  if p_ind=199 then result:='ERI';
  if p_ind=200 then result:='GBS';
  if p_ind=201 then result:='DJI';
  if p_ind=202 then result:='GEQ';
  if p_ind=203 then result:='&aring;land islands';
  if p_ind=204 then result:='CPV';
  if p_ind=205 then result:='STP';
  if p_ind=206 then result:='VIN';
  if p_ind=207 then result:='GRN';
  if p_ind=208 then result:='ARU';
  if p_ind=209 then result:='French guiana';
  if p_ind=210 then result:='South georgia and the south sandwich islands';
  if p_ind=211 then result:='SOL';
  if p_ind=212 then result:='Tuvalu';
  if p_ind=213 then result:='Samoa';
  if p_ind=214 then result:='KIR';
  if p_ind=215 then result:='TGA';
  if p_ind=216 then result:='British indian ocean territory';
  if p_ind=217 then result:='Niue';
  if p_ind=218 then result:='COK';
  if p_ind=219 then result:='ASA';
  if p_ind=220 then result:='Timor-leste';
  if p_ind=221 then result:='Tokelau';
  if p_ind=222 then result:='BHU';
  if p_ind=223 then result:='PLW';
  if p_ind=224 then result:='Norfolk island';
  if p_ind=225 then result:='Myanmar';
  if p_ind=226 then result:='Anguilla';
  if p_ind=227 then result:='Montserrat';
  if p_ind=228 then result:='United states minor outlying islands';
  if p_ind=229 then result:='';
  if p_ind=230 then result:='';

  if p_ind=231 then result:='ENG';
  if p_ind=232 then result:='SCO';
  if p_ind=233 then result:='WAL';

end;

procedure aseta_rectit(paik_lippu: byte);
var paik_x: integer;
begin

  paik_x:=0;

  if paik_lippu<=49 then begin
    Lipun_rect.mista.Top:=0;
    Lipun_rect.mista.Bottom:=15;
    paik_x:=paik_lippu;
  end;

  if (paik_lippu>49) and (paik_lippu<=99) then begin
    Lipun_rect.mista.Top:=15;
    Lipun_rect.mista.Bottom:=30;
    paik_x:=paik_lippu-50;
  end;

  if (paik_lippu>99) and (paik_lippu<=149) then begin
    Lipun_rect.mista.Top:=30;
    Lipun_rect.mista.Bottom:=45;
    paik_x:=paik_lippu-100;
  end;

  if (paik_lippu>149) and (paik_lippu<=199) then begin
    Lipun_rect.mista.Top:=45;
    Lipun_rect.mista.Bottom:=60;
    paik_x:=paik_lippu-150;
  end;

  if (paik_lippu>199) and (paik_lippu<=249) then begin
    Lipun_rect.mista.Top:=60;
    Lipun_rect.mista.Bottom:=75;
    paik_x:=paik_lippu-200;
  end;

  Lipun_rect.mista.Left:=paik_x*20;
  Lipun_rect.mista.Right:=paik_x*20+20;


  Lipun_rect.mihin.Left:=0;
  Lipun_rect.mihin.Top:=0;
  Lipun_rect.mihin.Right:=20;
  Lipun_rect.mihin.Bottom:=15;

end;

procedure panel_visiblet(p_byte: byte);
begin
  form1.sPanel1.Visible:=false;
  form1.sPanel4.Visible:=false;
  form1.sPanel5.Visible:=false;
  form1.sPanel6.Visible:=false;
  form1.sPanel7.Visible:=false;
  form1.sPanel8.Visible:=false;
  form1.sPanel9.Visible:=false;
  form1.sPanel10.Visible:=false;
  form1.sPanel11.Visible:=false;
  form1.sPanel12.Visible:=false;
  form1.sPanel13.Visible:=false;
  form1.sPanel14.Visible:=false;
  form1.sPanel15.Visible:=false;
  form1.sPanel16.Visible:=false;
  form1.sPanel17.Visible:=false;
  form1.sPanel18.Visible:=false;
  form1.sPanel19.Visible:=false;
  form1.sPanel20.Visible:=false;
  form1.sPanel21.Visible:=false;
  form1.sPanel22.Visible:=false;
  form1.sPanel23.Visible:=false;
  form1.sPanel24.Visible:=false;
  form1.sPanel25.Visible:=false;
  form1.sPanel26.Visible:=false;

  if p_byte=1 then form1.sPanel1.Visible:=true;
  if p_byte=4 then form1.sPanel4.Visible:=true;
  if p_byte=5 then form1.sPanel5.Visible:=true;
  if p_byte=6 then form1.sPanel6.Visible:=true;
  if p_byte=7 then form1.sPanel7.Visible:=true;
  if p_byte=8 then form1.sPanel8.Visible:=true;
  if p_byte=9 then form1.sPanel9.Visible:=true;
  if p_byte=10 then form1.sPanel10.Visible:=true;
  if p_byte=11 then form1.sPanel11.Visible:=true;
  if p_byte=12 then form1.sPanel12.Visible:=true;
  if p_byte=13 then form1.sPanel13.Visible:=true;
  if p_byte=14 then form1.sPanel14.Visible:=true;
  if p_byte=15 then form1.sPanel15.Visible:=true;
  if p_byte=16 then form1.sPanel16.Visible:=true;
  if p_byte=17 then form1.sPanel17.Visible:=true;
  if p_byte=18 then form1.sPanel18.Visible:=true;
  if p_byte=19 then form1.sPanel19.Visible:=true;
  if p_byte=20 then form1.sPanel20.Visible:=true;
  if p_byte=21 then form1.sPanel21.Visible:=true;
  if p_byte=22 then form1.sPanel22.Visible:=true;
  if p_byte=23 then form1.sPanel23.Visible:=true;
  if p_byte=24 then form1.sPanel24.Visible:=true;
  if p_byte=25 then form1.sPanel25.Visible:=true;
  if p_byte=26 then form1.sPanel26.Visible:=true;

  //livescores timer
  if form1.sPanel16.Visible then form1.Timer3.Enabled:=true else form1.Timer3.Enabled:=false;

end;

procedure pyyda_pelaajan_tiedot(p_str: string);
type
  TPyyda_pelaaja_data = record
    mtype: word;
    mtype2: word;
    ra: word;
    nimi: string[15];
  end;
var
  Pyyda_pelaaja_data: TPyyda_pelaaja_data;
begin

  if p_str='' then exit;
  if please_wait_arvo=true then exit;

  Pyyda_pelaaja_data.mtype:=30;
  Pyyda_pelaaja_data.mtype2:=30;
  Pyyda_pelaaja_data.ra:=random(55000)+1;
  Pyyda_pelaaja_data.nimi:=p_str;
  TCPClient2.WriteBuffer(@Pyyda_pelaaja_data,sizeof(Pyyda_pelaaja_data));
  please_wait(true);

end;

function search_type(p_byte: byte): string;
begin
  result:='';

  if p_byte=1 then result:='Player';
  if p_byte=2 then result:='Team';
  if p_byte=3 then result:='National team';

end;

procedure search(p_name, p_type: string);
type
  TSearching = record
    mtype: word;
    mtype2: word;
    ra: word;
    name: string[20];
    tyyppi: byte;
  end;
var
  Searching: TSearching;
  i: integer;
begin

  if p_name='' then exit;
  if please_wait_arvo=true then exit;

  if p_type='Player' then Searching.tyyppi:=1;
  if p_type='Team' then Searching.tyyppi:=2;
  if p_type='National team' then Searching.tyyppi:=3;

  if Searching.tyyppi>1 then begin //eka pyyntö
    ZeroMemory(@Joukkue_data, SizeOf(Joukkue_data));
    for i:=1 to 50 do
      Joukkue_data.player_nation[i]:=-1;
  end;

  Searching.name:=p_name;
  Searching.mtype:=32;
  Searching.mtype2:=32;
  Searching.ra:=random(55000)+1;

  TCPClient2.WriteBuffer(@Searching,sizeof(Searching));

  please_wait(true);

end;

function parseta_date(day,month,year,hour,minute: integer): string; overload;
var pStr: string;
begin

  result:='';
  if day=0 then exit;

  pStr:=inttostr(day)+'.';
  pStr:=pStr+inttostr(month)+'.';
  year:=year+2000;
  pStr:=pStr+inttostr(year)+' ';
  pStr:=pStr+inttostr(hour)+':';
  if minute<10 then
    pStr:=pStr+'0'+inttostr(minute)
  else
    pStr:=pStr+inttostr(minute);

  result:=pStr;

end;

function parseta_date(day,month,year: integer): string; overload;
var pStr: string;
begin

  result:='';
  if day=0 then exit;

  pStr:=inttostr(day)+'.';
  pStr:=pStr+inttostr(month)+'.';
  year:=year+2000;
  pStr:=pStr+inttostr(year);

  result:=pStr;

end;

procedure aseta_kit_colors(pimage: TImage; p_osa, p_style, pr1,pg1,pb1,pr2,pg2,pb2: byte);
var p_bmp1,p_bmp2: TBitmap;
    i,j: integer;
    Row1, Row2: pRGBTripleArray;
    paik_erotus, paik_erotus2: integer;
begin
  p_bmp2:=nil;
  Row2:=nil;

  p_bmp1:=TBitmap.Create;
  if p_osa=1 then begin
    p_bmp1.LoadFromFile('data\Images\Game\kits\shirt.bmp');
    p_bmp1.Width:=70;
    p_bmp1.Height:=60;
  end;
  if p_osa=2 then begin
    p_bmp1.LoadFromFile('data\Images\Game\kits\pants.bmp');
    p_bmp1.Width:=70;
    p_bmp1.Height:=35;
  end;
  if p_osa=3 then begin
    p_bmp1.LoadFromFile('data\Images\Game\kits\socks.bmp');
    p_bmp1.Width:=70;
    p_bmp1.Height:=25;
  end;
  p_bmp1.PixelFormat:=pf24bit;

  if p_style>0 then begin
    p_bmp2:=TBitmap.Create;
    p_bmp2.LoadFromFile('data\Images\Game\kits\shirt'+inttostr(p_style)+'.bmp');
    p_bmp2.PixelFormat:=pf24bit;
    p_bmp2.Width:=70;
    p_bmp2.Height:=60;
  end;

  for j := 0 to p_bmp1.Height-1 do begin
    Row1:=p_bmp1.Scanline[j];
    if p_style>0 then Row2:=p_bmp2.Scanline[j];
    for i := 0 to p_bmp1.Width-1 do begin

      if not (Row1[i].rgbtRed=255) or not (Row1[i].rgbtGreen=0) or not (Row1[i].rgbtBlue=255) then begin
        paik_erotus:=255-Row1[i].rgbtRed;
        paik_erotus2:=pr1-paik_erotus;
        if paik_erotus2<0 then paik_erotus2:=0;
        Row1[i].rgbtRed:=paik_erotus2;

        paik_erotus:=255-Row1[i].rgbtGreen;
        paik_erotus2:=pg1-paik_erotus;
        if paik_erotus2<0 then paik_erotus2:=0;
        Row1[i].rgbtGreen:=paik_erotus2;

        paik_erotus:=255-Row1[i].rgbtBlue;
        paik_erotus2:=pb1-paik_erotus;
        if paik_erotus2<0 then paik_erotus2:=0;
        Row1[i].rgbtBlue:=paik_erotus2;
      end;

      if p_style>0 then begin
        if not (Row2[i].rgbtRed=255) or not (Row2[i].rgbtGreen=0) or not (Row2[i].rgbtBlue=255) then begin
          paik_erotus:=255-Row2[i].rgbtRed;
          paik_erotus2:=pr2-paik_erotus;
          if paik_erotus2<0 then paik_erotus2:=0;
          Row1[i].rgbtRed:=paik_erotus2;

          paik_erotus:=255-Row2[i].rgbtGreen;
          paik_erotus2:=pg2-paik_erotus;
          if paik_erotus2<0 then paik_erotus2:=0;
          Row1[i].rgbtGreen:=paik_erotus2;

          paik_erotus:=255-Row2[i].rgbtBlue;
          paik_erotus2:=pb2-paik_erotus;
          if paik_erotus2<0 then paik_erotus2:=0;
          Row1[i].rgbtBlue:=paik_erotus2;
        end;
      end;

    end;
  end;

  pimage.Picture.Graphic:=p_bmp1;

  p_bmp1.Free;
  if p_style>0 then p_bmp2.Free;

end;

procedure pyyda_joukkue_dataa(p_str: string; i_index: integer);
type
  TPyydetaan_joukkueen_dataa = record
    mtype: word;
    mtype2: word;
    ra: word;
    team_name: string[20];
    i_index: integer;
  end;
var
  Pyydetaan_joukkueen_dataa: TPyydetaan_joukkueen_dataa;
  i: integer;
begin

  if p_str='' then exit;

  if i_index=1 then begin //eka pyyntö
    ZeroMemory(@Joukkue_data, SizeOf(Joukkue_data));
    for i:=1 to 50 do
      Joukkue_data.player_nation[i]:=-1;
  end;

  form1.image8.Visible:=false;
  please_wait(true);
  Pyydetaan_joukkueen_dataa.mtype:=23;
  Pyydetaan_joukkueen_dataa.mtype2:=23;
  Pyydetaan_joukkueen_dataa.ra:=random(55000)+1;
  Pyydetaan_joukkueen_dataa.team_name:=p_str;
  Pyydetaan_joukkueen_dataa.i_index:=i_index;
  TCPClient2.WriteBuffer(@Pyydetaan_joukkueen_dataa,sizeof(Pyydetaan_joukkueen_dataa));

end;

procedure muuta_invite_accrej(plabel: TsLabelFX; pbutton1, pbutton2: TsButton);
begin

  if plabel.Caption='' then begin
    pbutton1.Visible:=false;
    pbutton2.Visible:=false;
  end else begin
    pbutton1.Visible:=true;
    pbutton2.Visible:=true;
  end;

end;

procedure nollaaSocket;
type
  TPaketti = record
    mtype: word;
    mtype2: word;
    ra: word;
  end;
var
  Paketti: TPaketti;
begin

  Paketti.mtype:=5002;
  Paketti.mtype2:=5002;
  Paketti.ra:=random(55000)+1;
  TCPClient2.WriteBuffer(@Paketti,sizeof(Paketti));

end;

procedure vastaus_accrej(p_str: string; p_byte: byte);
type
  TVastaus_inviteen = record
    mtype: word;
    mtype2: word;
    ra: word;
    accrej: byte;
    name: string[20];
  end;
var
  Vastaus_inviteen: TVastaus_inviteen;
begin

  if please_wait_arvo=true then exit;
  if p_str='' then exit;
  if (oma_team>0) and (p_byte=1) then begin
    AddInfoMessage('You need to leave your current team first');
    exit;
  end;

  Vastaus_inviteen.mtype:=36;
  Vastaus_inviteen.mtype2:=36;
  Vastaus_inviteen.ra:=random(55000)+1;
  Vastaus_inviteen.accrej:=p_byte;
  Vastaus_inviteen.name:=p_str;
  TCPClient2.WriteBuffer(@Vastaus_inviteen,sizeof(Vastaus_inviteen));

  please_wait(true);

end;

procedure aseta_team_perustiedot;
begin

  form1.sLabelFX1.Caption:=Joukkue_data.name;
  form1.sLabelFX3.Caption:=inttostr(Joukkue_data.created[1])+'.'+inttostr(Joukkue_data.created[2])+'.'+inttostr(Joukkue_data.created[3]+2000);
  form1.sLabelFX5.Caption:=Joukkue_data.founder;
  form1.sLabelFX7.Caption:=inttostr(Joukkue_data.rank);
  form1.sLabelFX9.Caption:='Played: '+inttostr(Joukkue_data.stats[1])+', Wins: '+inttostr(Joukkue_data.stats[2])+', Draws: '+inttostr(Joukkue_data.stats[3])+', Losses: '+inttostr(Joukkue_data.stats[4]);
  form1.sLabelFX17.Caption:=inttostr(Joukkue_data.index);

  if Joukkue_data.allow_joining=true then
    form1.sButton4.Visible:=true else form1.sButton4.Visible:=false;

  form1.sMemo2.Lines.Clear;
  form1.sMemo2.Lines.Add(Joukkue_data.text);

  form1.sTrackBar1.Position:=Joukkue_data.shirt_style[1];
  form1.sTrackBar2.Position:=Joukkue_data.shirt_style[2];

  form1.sCheckBox5.Checked:=Joukkue_data.allow_joining;

  form1.sEdit8.Text:=Joukkue_data.text;
  form1.sEdit11.Text:=Joukkue_data.team_logo;

  kit_colors;

  form1.Image8.Visible:=false;
  if not (Joukkue_data.team_logo='') then lataa_logo(Joukkue_data.team_logo,1);

end;

procedure kit_colors;
begin

  aseta_kit_colors(form1.kit_image1,1,Joukkue_data.shirt_style[1],Joukkue_data.shirt_colors[1,1,1],Joukkue_data.shirt_colors[1,2,1],Joukkue_data.shirt_colors[1,3,1],Joukkue_data.shirt_colors[2,1,1],Joukkue_data.shirt_colors[2,2,1],Joukkue_data.shirt_colors[2,3,1]);
  aseta_kit_colors(form1.kit_image3,2,0,Joukkue_data.shirt_colors[3,1,1],Joukkue_data.shirt_colors[3,2,1],Joukkue_data.shirt_colors[3,3,1],0,0,0);
  aseta_kit_colors(form1.kit_image5,3,0,Joukkue_data.shirt_colors[4,1,1],Joukkue_data.shirt_colors[4,2,1],Joukkue_data.shirt_colors[4,3,1],0,0,0);
  aseta_kit_colors(form1.kit_image2,1,Joukkue_data.shirt_style[2],Joukkue_data.shirt_colors[1,1,2],Joukkue_data.shirt_colors[1,2,2],Joukkue_data.shirt_colors[1,3,2],Joukkue_data.shirt_colors[2,1,2],Joukkue_data.shirt_colors[2,2,2],Joukkue_data.shirt_colors[2,3,2]);
  aseta_kit_colors(form1.kit_image4,2,0,Joukkue_data.shirt_colors[3,1,2],Joukkue_data.shirt_colors[3,2,2],Joukkue_data.shirt_colors[3,3,2],0,0,0);
  aseta_kit_colors(form1.kit_image6,3,0,Joukkue_data.shirt_colors[4,1,2],Joukkue_data.shirt_colors[4,2,2],Joukkue_data.shirt_colors[4,3,2],0,0,0);

end;

procedure kit_colors_privateServer;
begin

  aseta_kit_colors(form1.kit_imageb1,1,PrivateServerSettings.shirt_style[1],PrivateServerSettings.shirt_colors[1,1,1],PrivateServerSettings.shirt_colors[1,2,1],PrivateServerSettings.shirt_colors[1,3,1],PrivateServerSettings.shirt_colors[2,1,1],PrivateServerSettings.shirt_colors[2,2,1],PrivateServerSettings.shirt_colors[2,3,1]);
  aseta_kit_colors(form1.kit_imageb3,2,0,PrivateServerSettings.shirt_colors[3,1,1],PrivateServerSettings.shirt_colors[3,2,1],PrivateServerSettings.shirt_colors[3,3,1],0,0,0);
  aseta_kit_colors(form1.kit_imageb5,3,0,PrivateServerSettings.shirt_colors[4,1,1],PrivateServerSettings.shirt_colors[4,2,1],PrivateServerSettings.shirt_colors[4,3,1],0,0,0);
  aseta_kit_colors(form1.kit_imageb2,1,PrivateServerSettings.shirt_style[2],PrivateServerSettings.shirt_colors[1,1,2],PrivateServerSettings.shirt_colors[1,2,2],PrivateServerSettings.shirt_colors[1,3,2],PrivateServerSettings.shirt_colors[2,1,2],PrivateServerSettings.shirt_colors[2,2,2],PrivateServerSettings.shirt_colors[2,3,2]);
  aseta_kit_colors(form1.kit_imageb4,2,0,PrivateServerSettings.shirt_colors[3,1,2],PrivateServerSettings.shirt_colors[3,2,2],PrivateServerSettings.shirt_colors[3,3,2],0,0,0);
  aseta_kit_colors(form1.kit_imageb6,3,0,PrivateServerSettings.shirt_colors[4,1,2],PrivateServerSettings.shirt_colors[4,2,2],PrivateServerSettings.shirt_colors[4,3,2],0,0,0);

end;

procedure aseta_challenge_kit_colors(pkit1,pkit2: byte);
begin
  aseta_kit_colors(form1.kit_image1b,1,Kits_muistiin.shirt_style[1,pkit1],Kits_muistiin.shirt_colors[1,1,1,pkit1],Kits_muistiin.shirt_colors[1,1,2,pkit1],Kits_muistiin.shirt_colors[1,1,3,pkit1],Kits_muistiin.shirt_colors[1,2,1,pkit1],Kits_muistiin.shirt_colors[1,2,2,pkit1],Kits_muistiin.shirt_colors[1,2,3,pkit1]);
  aseta_kit_colors(form1.kit_image3b,2,0,Kits_muistiin.shirt_colors[1,3,1,pkit1],Kits_muistiin.shirt_colors[1,3,2,pkit1],Kits_muistiin.shirt_colors[1,3,3,pkit1],0,0,0);
  aseta_kit_colors(form1.kit_image5b,3,0,Kits_muistiin.shirt_colors[1,4,1,pkit1],Kits_muistiin.shirt_colors[1,4,2,pkit1],Kits_muistiin.shirt_colors[1,4,3,pkit1],0,0,0);
  aseta_kit_colors(form1.kit_image2b,1,Kits_muistiin.shirt_style[2,pkit2],Kits_muistiin.shirt_colors[2,1,1,pkit2],Kits_muistiin.shirt_colors[2,1,2,pkit2],Kits_muistiin.shirt_colors[2,1,3,pkit2],Kits_muistiin.shirt_colors[2,2,1,pkit2],Kits_muistiin.shirt_colors[2,2,2,pkit2],Kits_muistiin.shirt_colors[2,2,3,pkit2]);
  aseta_kit_colors(form1.kit_image4b,2,0,Kits_muistiin.shirt_colors[2,3,1,pkit2],Kits_muistiin.shirt_colors[2,3,2,pkit2],Kits_muistiin.shirt_colors[2,3,3,pkit2],0,0,0);
  aseta_kit_colors(form1.kit_image6b,3,0,Kits_muistiin.shirt_colors[2,4,1,pkit2],Kits_muistiin.shirt_colors[2,4,2,pkit2],Kits_muistiin.shirt_colors[2,4,3,pkit2],0,0,0);

end;

procedure aseta_team_Players_General_info;
var i: integer;
    p_ker: byte;
begin
  if not (team_image=1) then begin
    form1.Image1.Picture.LoadFromFile('data/Images/skins/'+selected_skin+'/pictures/team.png');
    team_image:=1;
  end;

  form1.sScrollBar1.Visible:=true;

  p_ker:=0;
  for i:=1 to 50 do
    if not (Joukkue_data.Player_names[i]='') then inc(p_ker);

  if p_ker>14 then
    form1.sScrollBar1.Max:=p_ker-14 else form1.sScrollBar1.Max:=0;

  form1.top1.Caption:='Name';
  form1.top2.Caption:='Pos';
  form1.top3.Caption:='Nat';
  form1.top4.Caption:='Apps';
  form1.top5.Caption:='Gls';
  form1.top6.Caption:='Ast';

  if Joukkue_data.player_shirtnumber[1+form1.sScrollBar1.position]>0 then
    form1.sn1.Caption:=inttostr(Joukkue_data.player_shirtnumber[1+form1.sScrollBar1.position])
    else form1.sn1.Caption:='';
  if Joukkue_data.player_shirtnumber[2+form1.sScrollBar1.position]>0 then
    form1.sn2.Caption:=inttostr(Joukkue_data.player_shirtnumber[2+form1.sScrollBar1.position])
    else form1.sn2.Caption:='';
  if Joukkue_data.player_shirtnumber[3+form1.sScrollBar1.position]>0 then
    form1.sn3.Caption:=inttostr(Joukkue_data.player_shirtnumber[3+form1.sScrollBar1.position])
    else form1.sn3.Caption:='';
  if Joukkue_data.player_shirtnumber[4+form1.sScrollBar1.position]>0 then
    form1.sn4.Caption:=inttostr(Joukkue_data.player_shirtnumber[4+form1.sScrollBar1.position])
    else form1.sn4.Caption:='';
  if Joukkue_data.player_shirtnumber[5+form1.sScrollBar1.position]>0 then
    form1.sn5.Caption:=inttostr(Joukkue_data.player_shirtnumber[5+form1.sScrollBar1.position])
    else form1.sn5.Caption:='';
  if Joukkue_data.player_shirtnumber[6+form1.sScrollBar1.position]>0 then
    form1.sn6.Caption:=inttostr(Joukkue_data.player_shirtnumber[6+form1.sScrollBar1.position])
    else form1.sn6.Caption:='';
  if Joukkue_data.player_shirtnumber[7+form1.sScrollBar1.position]>0 then
    form1.sn7.Caption:=inttostr(Joukkue_data.player_shirtnumber[7+form1.sScrollBar1.position])
    else form1.sn7.Caption:='';
  if Joukkue_data.player_shirtnumber[8+form1.sScrollBar1.position]>0 then
    form1.sn8.Caption:=inttostr(Joukkue_data.player_shirtnumber[8+form1.sScrollBar1.position])
    else form1.sn8.Caption:='';
  if Joukkue_data.player_shirtnumber[9+form1.sScrollBar1.position]>0 then
    form1.sn9.Caption:=inttostr(Joukkue_data.player_shirtnumber[9+form1.sScrollBar1.position])
    else form1.sn9.Caption:='';
  if Joukkue_data.player_shirtnumber[10+form1.sScrollBar1.position]>0 then
    form1.sn10.Caption:=inttostr(Joukkue_data.player_shirtnumber[10+form1.sScrollBar1.position])
    else form1.sn10.Caption:='';
  if Joukkue_data.player_shirtnumber[11+form1.sScrollBar1.position]>0 then
    form1.sn11.Caption:=inttostr(Joukkue_data.player_shirtnumber[11+form1.sScrollBar1.position])
    else form1.sn11.Caption:='';
  if Joukkue_data.player_shirtnumber[12+form1.sScrollBar1.position]>0 then
    form1.sn12.Caption:=inttostr(Joukkue_data.player_shirtnumber[12+form1.sScrollBar1.position])
    else form1.sn12.Caption:='';
  if Joukkue_data.player_shirtnumber[13+form1.sScrollBar1.position]>0 then
    form1.sn13.Caption:=inttostr(Joukkue_data.player_shirtnumber[13+form1.sScrollBar1.position])
    else form1.sn13.Caption:='';
  if Joukkue_data.player_shirtnumber[14+form1.sScrollBar1.position]>0 then
    form1.sn14.Caption:=inttostr(Joukkue_data.player_shirtnumber[14+form1.sScrollBar1.position])
    else form1.sn14.Caption:='';
                             
  if Joukkue_data.Player_online[1+form1.sScrollBar1.position]=true then
    form1.onl_image1.Visible:=true else form1.onl_image1.Visible:=false;
  if Joukkue_data.Player_online[2+form1.sScrollBar1.position]=true then
    form1.onl_image2.Visible:=true else form1.onl_image2.Visible:=false;
  if Joukkue_data.Player_online[3+form1.sScrollBar1.position]=true then
    form1.onl_image3.Visible:=true else form1.onl_image3.Visible:=false;
  if Joukkue_data.Player_online[4+form1.sScrollBar1.position]=true then
    form1.onl_image4.Visible:=true else form1.onl_image4.Visible:=false;
  if Joukkue_data.Player_online[5+form1.sScrollBar1.position]=true then
    form1.onl_image5.Visible:=true else form1.onl_image5.Visible:=false;
  if Joukkue_data.Player_online[6+form1.sScrollBar1.position]=true then
    form1.onl_image6.Visible:=true else form1.onl_image6.Visible:=false;
  if Joukkue_data.Player_online[7+form1.sScrollBar1.position]=true then
    form1.onl_image7.Visible:=true else form1.onl_image7.Visible:=false;
  if Joukkue_data.Player_online[8+form1.sScrollBar1.position]=true then
    form1.onl_image8.Visible:=true else form1.onl_image8.Visible:=false;
  if Joukkue_data.Player_online[9+form1.sScrollBar1.position]=true then
    form1.onl_image9.Visible:=true else form1.onl_image9.Visible:=false;
  if Joukkue_data.Player_online[10+form1.sScrollBar1.position]=true then
    form1.onl_image10.Visible:=true else form1.onl_image10.Visible:=false;
  if Joukkue_data.Player_online[11+form1.sScrollBar1.position]=true then
    form1.onl_image11.Visible:=true else form1.onl_image11.Visible:=false;
  if Joukkue_data.Player_online[12+form1.sScrollBar1.position]=true then
    form1.onl_image12.Visible:=true else form1.onl_image12.Visible:=false;
  if Joukkue_data.Player_online[13+form1.sScrollBar1.position]=true then
    form1.onl_image13.Visible:=true else form1.onl_image13.Visible:=false;
  if Joukkue_data.Player_online[14+form1.sScrollBar1.position]=true then
    form1.onl_image14.Visible:=true else form1.onl_image14.Visible:=false;

  form1.na1.Caption:=nation_int_to_strshort(Joukkue_data.player_nation[1+form1.sScrollBar1.position]);
  form1.na2.Caption:=nation_int_to_strshort(Joukkue_data.player_nation[2+form1.sScrollBar1.position]);
  form1.na3.Caption:=nation_int_to_strshort(Joukkue_data.player_nation[3+form1.sScrollBar1.position]);
  form1.na4.Caption:=nation_int_to_strshort(Joukkue_data.player_nation[4+form1.sScrollBar1.position]);
  form1.na5.Caption:=nation_int_to_strshort(Joukkue_data.player_nation[5+form1.sScrollBar1.position]);
  form1.na6.Caption:=nation_int_to_strshort(Joukkue_data.player_nation[6+form1.sScrollBar1.position]);
  form1.na7.Caption:=nation_int_to_strshort(Joukkue_data.player_nation[7+form1.sScrollBar1.position]);
  form1.na8.Caption:=nation_int_to_strshort(Joukkue_data.player_nation[8+form1.sScrollBar1.position]);
  form1.na9.Caption:=nation_int_to_strshort(Joukkue_data.player_nation[9+form1.sScrollBar1.position]);
  form1.na10.Caption:=nation_int_to_strshort(Joukkue_data.player_nation[10+form1.sScrollBar1.position]);
  form1.na11.Caption:=nation_int_to_strshort(Joukkue_data.player_nation[11+form1.sScrollBar1.position]);
  form1.na12.Caption:=nation_int_to_strshort(Joukkue_data.player_nation[12+form1.sScrollBar1.position]);
  form1.na13.Caption:=nation_int_to_strshort(Joukkue_data.player_nation[13+form1.sScrollBar1.position]);
  form1.na14.Caption:=nation_int_to_strshort(Joukkue_data.player_nation[14+form1.sScrollBar1.position]);

  form1.plname1.Caption:=Joukkue_data.Player_names[1+form1.sScrollBar1.position];
  form1.plname2.Caption:=Joukkue_data.Player_names[2+form1.sScrollBar1.position];
  form1.plname3.Caption:=Joukkue_data.Player_names[3+form1.sScrollBar1.position];
  form1.plname4.Caption:=Joukkue_data.Player_names[4+form1.sScrollBar1.position];
  form1.plname5.Caption:=Joukkue_data.Player_names[5+form1.sScrollBar1.position];
  form1.plname6.Caption:=Joukkue_data.Player_names[6+form1.sScrollBar1.position];
  form1.plname7.Caption:=Joukkue_data.Player_names[7+form1.sScrollBar1.position];
  form1.plname8.Caption:=Joukkue_data.Player_names[8+form1.sScrollBar1.position];
  form1.plname9.Caption:=Joukkue_data.Player_names[9+form1.sScrollBar1.position];
  form1.plname10.Caption:=Joukkue_data.Player_names[10+form1.sScrollBar1.position];
  form1.plname11.Caption:=Joukkue_data.Player_names[11+form1.sScrollBar1.position];
  form1.plname12.Caption:=Joukkue_data.Player_names[12+form1.sScrollBar1.position];
  form1.plname13.Caption:=Joukkue_data.Player_names[13+form1.sScrollBar1.position];
  form1.plname14.Caption:=Joukkue_data.Player_names[14+form1.sScrollBar1.position];
         

  if Joukkue_data.player_nation[1+form1.sScrollBar1.position]=-1 then form1.li1.Visible:=false else begin
    aseta_rectit(Joukkue_data.player_nation[1+form1.sScrollBar1.position]);
    form1.li1.canvas.copyrect(Lipun_rect.mihin,bmp1.canvas,Lipun_rect.mista);
    form1.li1.Visible:=true;
  end;
  if Joukkue_data.player_nation[2+form1.sScrollBar1.position]=-1 then form1.li2.Visible:=false else begin
    aseta_rectit(Joukkue_data.player_nation[2+form1.sScrollBar1.position]);
    form1.li2.canvas.copyrect(Lipun_rect.mihin,bmp1.canvas,Lipun_rect.mista);
    form1.li2.Visible:=true;
  end;
  if Joukkue_data.player_nation[3+form1.sScrollBar1.position]=-1 then form1.li3.Visible:=false else begin
    aseta_rectit(Joukkue_data.player_nation[3+form1.sScrollBar1.position]);
    form1.li3.canvas.copyrect(Lipun_rect.mihin,bmp1.canvas,Lipun_rect.mista);
    form1.li3.Visible:=true;
  end;
  if Joukkue_data.player_nation[4+form1.sScrollBar1.position]=-1 then form1.li4.Visible:=false else begin
    aseta_rectit(Joukkue_data.player_nation[4+form1.sScrollBar1.position]);
    form1.li4.canvas.copyrect(Lipun_rect.mihin,bmp1.canvas,Lipun_rect.mista);
    form1.li4.Visible:=true;
  end;
  if Joukkue_data.player_nation[5+form1.sScrollBar1.position]=-1 then form1.li5.Visible:=false else begin
    aseta_rectit(Joukkue_data.player_nation[5+form1.sScrollBar1.position]);
    form1.li5.canvas.copyrect(Lipun_rect.mihin,bmp1.canvas,Lipun_rect.mista);
    form1.li5.Visible:=true;
  end;
  if Joukkue_data.player_nation[6+form1.sScrollBar1.position]=-1 then form1.li6.Visible:=false else begin
    aseta_rectit(Joukkue_data.player_nation[6+form1.sScrollBar1.position]);
    form1.li6.canvas.copyrect(Lipun_rect.mihin,bmp1.canvas,Lipun_rect.mista);
    form1.li6.Visible:=true;
  end;
  if Joukkue_data.player_nation[7+form1.sScrollBar1.position]=-1 then form1.li7.Visible:=false else begin
    aseta_rectit(Joukkue_data.player_nation[7+form1.sScrollBar1.position]);
    form1.li7.canvas.copyrect(Lipun_rect.mihin,bmp1.canvas,Lipun_rect.mista);
    form1.li7.Visible:=true;
  end;
  if Joukkue_data.player_nation[8+form1.sScrollBar1.position]=-1 then form1.li8.Visible:=false else begin
    aseta_rectit(Joukkue_data.player_nation[8+form1.sScrollBar1.position]);
    form1.li8.canvas.copyrect(Lipun_rect.mihin,bmp1.canvas,Lipun_rect.mista);
    form1.li8.Visible:=true;
  end;
  if Joukkue_data.player_nation[9+form1.sScrollBar1.position]=-1 then form1.li9.Visible:=false else begin
    aseta_rectit(Joukkue_data.player_nation[9+form1.sScrollBar1.position]);
    form1.li9.canvas.copyrect(Lipun_rect.mihin,bmp1.canvas,Lipun_rect.mista);
    form1.li9.Visible:=true;
  end;
  if Joukkue_data.player_nation[10+form1.sScrollBar1.position]=-1 then form1.li10.Visible:=false else begin
    aseta_rectit(Joukkue_data.player_nation[10+form1.sScrollBar1.position]);
    form1.li10.canvas.copyrect(Lipun_rect.mihin,bmp1.canvas,Lipun_rect.mista);
    form1.li10.Visible:=true;
  end;
  if Joukkue_data.player_nation[11+form1.sScrollBar1.position]=-1 then form1.li11.Visible:=false else begin
    aseta_rectit(Joukkue_data.player_nation[11+form1.sScrollBar1.position]);
    form1.li11.canvas.copyrect(Lipun_rect.mihin,bmp1.canvas,Lipun_rect.mista);
    form1.li11.Visible:=true;
  end;
  if Joukkue_data.player_nation[12+form1.sScrollBar1.position]=-1 then form1.li12.Visible:=false else begin
    aseta_rectit(Joukkue_data.player_nation[12+form1.sScrollBar1.position]);
    form1.li12.canvas.copyrect(Lipun_rect.mihin,bmp1.canvas,Lipun_rect.mista);
    form1.li12.Visible:=true;
  end;
  if Joukkue_data.player_nation[13+form1.sScrollBar1.position]=-1 then form1.li13.Visible:=false else begin
    aseta_rectit(Joukkue_data.player_nation[13+form1.sScrollBar1.position]);
    form1.li13.canvas.copyrect(Lipun_rect.mihin,bmp1.canvas,Lipun_rect.mista);
    form1.li13.Visible:=true;
  end;
  if Joukkue_data.player_nation[14+form1.sScrollBar1.position]=-1 then form1.li14.Visible:=false else begin
    aseta_rectit(Joukkue_data.player_nation[14+form1.sScrollBar1.position]);
    form1.li14.canvas.copyrect(Lipun_rect.mihin,bmp1.canvas,Lipun_rect.mista);
    form1.li14.Visible:=true;
  end;

  form1.po1.Caption:=haePositio(Joukkue_data.position[1+form1.sScrollBar1.position,1],Joukkue_data.position[1+form1.sScrollBar1.position,2],Joukkue_data.position[1+form1.sScrollBar1.position,3],Joukkue_data.position[1+form1.sScrollBar1.position,4]);
  form1.po2.Caption:=haePositio(Joukkue_data.position[2+form1.sScrollBar1.position,1],Joukkue_data.position[2+form1.sScrollBar1.position,2],Joukkue_data.position[2+form1.sScrollBar1.position,3],Joukkue_data.position[2+form1.sScrollBar1.position,4]);
  form1.po3.Caption:=haePositio(Joukkue_data.position[3+form1.sScrollBar1.position,1],Joukkue_data.position[3+form1.sScrollBar1.position,2],Joukkue_data.position[3+form1.sScrollBar1.position,3],Joukkue_data.position[3+form1.sScrollBar1.position,4]);
  form1.po4.Caption:=haePositio(Joukkue_data.position[4+form1.sScrollBar1.position,1],Joukkue_data.position[4+form1.sScrollBar1.position,2],Joukkue_data.position[4+form1.sScrollBar1.position,3],Joukkue_data.position[4+form1.sScrollBar1.position,4]);
  form1.po5.Caption:=haePositio(Joukkue_data.position[5+form1.sScrollBar1.position,1],Joukkue_data.position[5+form1.sScrollBar1.position,2],Joukkue_data.position[5+form1.sScrollBar1.position,3],Joukkue_data.position[5+form1.sScrollBar1.position,4]);
  form1.po6.Caption:=haePositio(Joukkue_data.position[6+form1.sScrollBar1.position,1],Joukkue_data.position[6+form1.sScrollBar1.position,2],Joukkue_data.position[6+form1.sScrollBar1.position,3],Joukkue_data.position[6+form1.sScrollBar1.position,4]);
  form1.po7.Caption:=haePositio(Joukkue_data.position[7+form1.sScrollBar1.position,1],Joukkue_data.position[7+form1.sScrollBar1.position,2],Joukkue_data.position[7+form1.sScrollBar1.position,3],Joukkue_data.position[7+form1.sScrollBar1.position,4]);
  form1.po8.Caption:=haePositio(Joukkue_data.position[8+form1.sScrollBar1.position,1],Joukkue_data.position[8+form1.sScrollBar1.position,2],Joukkue_data.position[8+form1.sScrollBar1.position,3],Joukkue_data.position[8+form1.sScrollBar1.position,4]);
  form1.po9.Caption:=haePositio(Joukkue_data.position[9+form1.sScrollBar1.position,1],Joukkue_data.position[9+form1.sScrollBar1.position,2],Joukkue_data.position[9+form1.sScrollBar1.position,3],Joukkue_data.position[9+form1.sScrollBar1.position,4]);
  form1.po10.Caption:=haePositio(Joukkue_data.position[10+form1.sScrollBar1.position,1],Joukkue_data.position[10+form1.sScrollBar1.position,2],Joukkue_data.position[10+form1.sScrollBar1.position,3],Joukkue_data.position[10+form1.sScrollBar1.position,4]);
  form1.po11.Caption:=haePositio(Joukkue_data.position[11+form1.sScrollBar1.position,1],Joukkue_data.position[11+form1.sScrollBar1.position,2],Joukkue_data.position[11+form1.sScrollBar1.position,3],Joukkue_data.position[11+form1.sScrollBar1.position,4]);
  form1.po12.Caption:=haePositio(Joukkue_data.position[12+form1.sScrollBar1.position,1],Joukkue_data.position[12+form1.sScrollBar1.position,2],Joukkue_data.position[12+form1.sScrollBar1.position,3],Joukkue_data.position[12+form1.sScrollBar1.position,4]);
  form1.po13.Caption:=haePositio(Joukkue_data.position[13+form1.sScrollBar1.position,1],Joukkue_data.position[13+form1.sScrollBar1.position,2],Joukkue_data.position[13+form1.sScrollBar1.position,3],Joukkue_data.position[13+form1.sScrollBar1.position,4]);
  form1.po14.Caption:=haePositio(Joukkue_data.position[14+form1.sScrollBar1.position,1],Joukkue_data.position[14+form1.sScrollBar1.position,2],Joukkue_data.position[14+form1.sScrollBar1.position,3],Joukkue_data.position[14+form1.sScrollBar1.position,4]);

  label_putsaus;
  piilotaKickNapit;
  team_settings_visible(false);
  team_invites_piiloon;
  asetaLatestLabelit(false);

  if not (Joukkue_data.Player_names[1+form1.sScrollBar1.position]='') then begin
    form1.a1.Caption:=inttostr(Joukkue_data.player_stats[1+form1.sScrollBar1.position,1]);
    form1.g1.Caption:=inttostr(Joukkue_data.player_stats[1+form1.sScrollBar1.position,2]);
    form1.as1.Caption:=inttostr(Joukkue_data.player_stats[1+form1.sScrollBar1.position,3]);
  end;
  if not (Joukkue_data.Player_names[2+form1.sScrollBar1.position]='') then begin
    form1.a2.Caption:=inttostr(Joukkue_data.player_stats[2+form1.sScrollBar1.position,1]);
    form1.g2.Caption:=inttostr(Joukkue_data.player_stats[2+form1.sScrollBar1.position,2]);
    form1.as2.Caption:=inttostr(Joukkue_data.player_stats[2+form1.sScrollBar1.position,3]);
  end;
  if not (Joukkue_data.Player_names[3+form1.sScrollBar1.position]='') then begin
    form1.a3.Caption:=inttostr(Joukkue_data.player_stats[3+form1.sScrollBar1.position,1]);
    form1.g3.Caption:=inttostr(Joukkue_data.player_stats[3+form1.sScrollBar1.position,2]);
    form1.as3.Caption:=inttostr(Joukkue_data.player_stats[3+form1.sScrollBar1.position,3]);
  end;
  if not (Joukkue_data.Player_names[4+form1.sScrollBar1.position]='') then begin
    form1.a4.Caption:=inttostr(Joukkue_data.player_stats[4+form1.sScrollBar1.position,1]);
    form1.g4.Caption:=inttostr(Joukkue_data.player_stats[4+form1.sScrollBar1.position,2]);
    form1.as4.Caption:=inttostr(Joukkue_data.player_stats[4+form1.sScrollBar1.position,3]);
  end;
  if not (Joukkue_data.Player_names[5+form1.sScrollBar1.position]='') then begin
    form1.a5.Caption:=inttostr(Joukkue_data.player_stats[5+form1.sScrollBar1.position,1]);
    form1.g5.Caption:=inttostr(Joukkue_data.player_stats[5+form1.sScrollBar1.position,2]);
    form1.as5.Caption:=inttostr(Joukkue_data.player_stats[5+form1.sScrollBar1.position,3]);
  end;
  if not (Joukkue_data.Player_names[6+form1.sScrollBar1.position]='') then begin
    form1.a6.Caption:=inttostr(Joukkue_data.player_stats[6+form1.sScrollBar1.position,1]);
    form1.g6.Caption:=inttostr(Joukkue_data.player_stats[6+form1.sScrollBar1.position,2]);
    form1.as6.Caption:=inttostr(Joukkue_data.player_stats[6+form1.sScrollBar1.position,3]);
  end;
  if not (Joukkue_data.Player_names[7+form1.sScrollBar1.position]='') then begin
    form1.a7.Caption:=inttostr(Joukkue_data.player_stats[7+form1.sScrollBar1.position,1]);
    form1.g7.Caption:=inttostr(Joukkue_data.player_stats[7+form1.sScrollBar1.position,2]);
    form1.as7.Caption:=inttostr(Joukkue_data.player_stats[7+form1.sScrollBar1.position,3]);
  end;
  if not (Joukkue_data.Player_names[8+form1.sScrollBar1.position]='') then begin
    form1.a8.Caption:=inttostr(Joukkue_data.player_stats[8+form1.sScrollBar1.position,1]);
    form1.g8.Caption:=inttostr(Joukkue_data.player_stats[8+form1.sScrollBar1.position,2]);
    form1.as8.Caption:=inttostr(Joukkue_data.player_stats[8+form1.sScrollBar1.position,3]);
  end;
  if not (Joukkue_data.Player_names[9+form1.sScrollBar1.position]='') then begin
    form1.a9.Caption:=inttostr(Joukkue_data.player_stats[9+form1.sScrollBar1.position,1]);
    form1.g9.Caption:=inttostr(Joukkue_data.player_stats[9+form1.sScrollBar1.position,2]);
    form1.as9.Caption:=inttostr(Joukkue_data.player_stats[9+form1.sScrollBar1.position,3]);
  end;
  if not (Joukkue_data.Player_names[10+form1.sScrollBar1.position]='') then begin
    form1.a10.Caption:=inttostr(Joukkue_data.player_stats[10+form1.sScrollBar1.position,1]);
    form1.g10.Caption:=inttostr(Joukkue_data.player_stats[10+form1.sScrollBar1.position,2]);
    form1.as10.Caption:=inttostr(Joukkue_data.player_stats[10+form1.sScrollBar1.position,3]);
  end;
  if not (Joukkue_data.Player_names[11+form1.sScrollBar1.position]='') then begin
    form1.a11.Caption:=inttostr(Joukkue_data.player_stats[11+form1.sScrollBar1.position,1]);
    form1.g11.Caption:=inttostr(Joukkue_data.player_stats[11+form1.sScrollBar1.position,2]);
    form1.as11.Caption:=inttostr(Joukkue_data.player_stats[11+form1.sScrollBar1.position,3]);
  end;
  if not (Joukkue_data.Player_names[12+form1.sScrollBar1.position]='') then begin
    form1.a12.Caption:=inttostr(Joukkue_data.player_stats[12+form1.sScrollBar1.position,1]);
    form1.g12.Caption:=inttostr(Joukkue_data.player_stats[12+form1.sScrollBar1.position,2]);
    form1.as12.Caption:=inttostr(Joukkue_data.player_stats[12+form1.sScrollBar1.position,3]);
  end;
  if not (Joukkue_data.Player_names[13+form1.sScrollBar1.position]='') then begin
    form1.a13.Caption:=inttostr(Joukkue_data.player_stats[13+form1.sScrollBar1.position,1]);
    form1.g13.Caption:=inttostr(Joukkue_data.player_stats[13+form1.sScrollBar1.position,2]);
    form1.as13.Caption:=inttostr(Joukkue_data.player_stats[13+form1.sScrollBar1.position,3]);
  end;
  if not (Joukkue_data.Player_names[14+form1.sScrollBar1.position]='') then begin
    form1.a14.Caption:=inttostr(Joukkue_data.player_stats[14+form1.sScrollBar1.position,1]);
    form1.g14.Caption:=inttostr(Joukkue_data.player_stats[14+form1.sScrollBar1.position,2]);
    form1.as14.Caption:=inttostr(Joukkue_data.player_stats[14+form1.sScrollBar1.position,3]);
  end;

end;

procedure aseta_team_Players_Administration;
var i: integer;
    p_ker: byte;
begin
  if not (team_image=2) then begin
    form1.Image1.Picture.LoadFromFile('data/Images/skins/'+selected_skin+'/pictures/team_adm.png');
    team_image:=2;
  end;


  form1.sScrollBar1.Visible:=true;

  p_ker:=0;
  for i:=1 to 50 do
    if not (Joukkue_data.Player_names[i]='') then inc(p_ker);

  if p_ker>14 then
    form1.sScrollBar1.Max:=p_ker-14 else form1.sScrollBar1.Max:=0;

  form1.top1.Caption:='Name';
  form1.top2.Caption:='Status';
  form1.top3.Caption:='';
  form1.top4.Caption:='';
  form1.top5.Caption:='';
  form1.top6.Caption:='';

  label_putsaus;
  asetaLatestLabelit(false);

  form1.na1.Caption:='';
  form1.na2.Caption:='';
  form1.na3.Caption:='';
  form1.na4.Caption:='';
  form1.na5.Caption:='';
  form1.na6.Caption:='';
  form1.na7.Caption:='';
  form1.na8.Caption:='';
  form1.na9.Caption:='';
  form1.na10.Caption:='';
  form1.na11.Caption:='';
  form1.na12.Caption:='';
  form1.na13.Caption:='';
  form1.na14.Caption:='';

  liput_piiloon;
  team_settings_visible(false);
  team_invites_piiloon;

  form1.plname1.Caption:=Joukkue_data.Player_names[1+form1.sScrollBar1.position];
  form1.plname2.Caption:=Joukkue_data.Player_names[2+form1.sScrollBar1.position];
  form1.plname3.Caption:=Joukkue_data.Player_names[3+form1.sScrollBar1.position];
  form1.plname4.Caption:=Joukkue_data.Player_names[4+form1.sScrollBar1.position];
  form1.plname5.Caption:=Joukkue_data.Player_names[5+form1.sScrollBar1.position];
  form1.plname6.Caption:=Joukkue_data.Player_names[6+form1.sScrollBar1.position];
  form1.plname7.Caption:=Joukkue_data.Player_names[7+form1.sScrollBar1.position];
  form1.plname8.Caption:=Joukkue_data.Player_names[8+form1.sScrollBar1.position];
  form1.plname9.Caption:=Joukkue_data.Player_names[9+form1.sScrollBar1.position];
  form1.plname10.Caption:=Joukkue_data.Player_names[10+form1.sScrollBar1.position];
  form1.plname11.Caption:=Joukkue_data.Player_names[11+form1.sScrollBar1.position];
  form1.plname12.Caption:=Joukkue_data.Player_names[12+form1.sScrollBar1.position];
  form1.plname13.Caption:=Joukkue_data.Player_names[13+form1.sScrollBar1.position];
  form1.plname14.Caption:=Joukkue_data.Player_names[14+form1.sScrollBar1.position];

  if Joukkue_data.Player_online[1+form1.sScrollBar1.position]=true then
    form1.onl_image1.Visible:=true else form1.onl_image1.Visible:=false;
  if Joukkue_data.Player_online[2+form1.sScrollBar1.position]=true then
    form1.onl_image2.Visible:=true else form1.onl_image2.Visible:=false;
  if Joukkue_data.Player_online[3+form1.sScrollBar1.position]=true then
    form1.onl_image3.Visible:=true else form1.onl_image3.Visible:=false;
  if Joukkue_data.Player_online[4+form1.sScrollBar1.position]=true then
    form1.onl_image4.Visible:=true else form1.onl_image4.Visible:=false;
  if Joukkue_data.Player_online[5+form1.sScrollBar1.position]=true then
    form1.onl_image5.Visible:=true else form1.onl_image5.Visible:=false;
  if Joukkue_data.Player_online[6+form1.sScrollBar1.position]=true then
    form1.onl_image6.Visible:=true else form1.onl_image6.Visible:=false;
  if Joukkue_data.Player_online[7+form1.sScrollBar1.position]=true then
    form1.onl_image7.Visible:=true else form1.onl_image7.Visible:=false;
  if Joukkue_data.Player_online[8+form1.sScrollBar1.position]=true then
    form1.onl_image8.Visible:=true else form1.onl_image8.Visible:=false;
  if Joukkue_data.Player_online[9+form1.sScrollBar1.position]=true then
    form1.onl_image9.Visible:=true else form1.onl_image9.Visible:=false;
  if Joukkue_data.Player_online[10+form1.sScrollBar1.position]=true then
    form1.onl_image10.Visible:=true else form1.onl_image10.Visible:=false;
  if Joukkue_data.Player_online[11+form1.sScrollBar1.position]=true then
    form1.onl_image11.Visible:=true else form1.onl_image11.Visible:=false;
  if Joukkue_data.Player_online[12+form1.sScrollBar1.position]=true then
    form1.onl_image12.Visible:=true else form1.onl_image12.Visible:=false;
  if Joukkue_data.Player_online[13+form1.sScrollBar1.position]=true then
    form1.onl_image13.Visible:=true else form1.onl_image13.Visible:=false;
  if Joukkue_data.Player_online[14+form1.sScrollBar1.position]=true then
    form1.onl_image14.Visible:=true else form1.onl_image14.Visible:=false;

  if Joukkue_data.Player_index[1+form1.sScrollBar1.position]>0 then
    form1.po1.Caption:=int_to_admin(Joukkue_data.Player_admins[1+form1.sScrollBar1.position])
    else form1.po1.Caption:='';
  if Joukkue_data.Player_index[2+form1.sScrollBar1.position]>0 then
    form1.po2.Caption:=int_to_admin(Joukkue_data.Player_admins[2+form1.sScrollBar1.position])
    else form1.po2.Caption:='';
  if Joukkue_data.Player_index[3+form1.sScrollBar1.position]>0 then
    form1.po3.Caption:=int_to_admin(Joukkue_data.Player_admins[3+form1.sScrollBar1.position])
    else form1.po3.Caption:='';
  if Joukkue_data.Player_index[4+form1.sScrollBar1.position]>0 then
    form1.po4.Caption:=int_to_admin(Joukkue_data.Player_admins[4+form1.sScrollBar1.position])
    else form1.po4.Caption:='';
  if Joukkue_data.Player_index[5+form1.sScrollBar1.position]>0 then
    form1.po5.Caption:=int_to_admin(Joukkue_data.Player_admins[5+form1.sScrollBar1.position])
    else form1.po5.Caption:='';
  if Joukkue_data.Player_index[6+form1.sScrollBar1.position]>0 then
    form1.po6.Caption:=int_to_admin(Joukkue_data.Player_admins[6+form1.sScrollBar1.position])
    else form1.po6.Caption:='';
  if Joukkue_data.Player_index[7+form1.sScrollBar1.position]>0 then
    form1.po7.Caption:=int_to_admin(Joukkue_data.Player_admins[7+form1.sScrollBar1.position])
    else form1.po7.Caption:='';
  if Joukkue_data.Player_index[8+form1.sScrollBar1.position]>0 then
    form1.po8.Caption:=int_to_admin(Joukkue_data.Player_admins[8+form1.sScrollBar1.position])
    else form1.po8.Caption:='';
  if Joukkue_data.Player_index[9+form1.sScrollBar1.position]>0 then
    form1.po9.Caption:=int_to_admin(Joukkue_data.Player_admins[9+form1.sScrollBar1.position])
    else form1.po9.Caption:='';
  if Joukkue_data.Player_index[10+form1.sScrollBar1.position]>0 then
    form1.po10.Caption:=int_to_admin(Joukkue_data.Player_admins[10+form1.sScrollBar1.position])
    else form1.po10.Caption:='';
  if Joukkue_data.Player_index[11+form1.sScrollBar1.position]>0 then
    form1.po11.Caption:=int_to_admin(Joukkue_data.Player_admins[11+form1.sScrollBar1.position])
    else form1.po11.Caption:='';
  if Joukkue_data.Player_index[12+form1.sScrollBar1.position]>0 then
    form1.po12.Caption:=int_to_admin(Joukkue_data.Player_admins[12+form1.sScrollBar1.position])
    else form1.po12.Caption:='';
  if Joukkue_data.Player_index[13+form1.sScrollBar1.position]>0 then
    form1.po13.Caption:=int_to_admin(Joukkue_data.Player_admins[13+form1.sScrollBar1.position])
    else form1.po13.Caption:='';
  if Joukkue_data.Player_index[14+form1.sScrollBar1.position]>0 then
    form1.po14.Caption:=int_to_admin(Joukkue_data.Player_admins[14+form1.sScrollBar1.position])
    else form1.po14.Caption:='';

  if oma_adminstatus=2 then begin
  if Joukkue_data.Player_index[1+form1.sScrollBar1.position]>0 then
    form1.kick1.Visible:=true
    else form1.kick1.Visible:=false;
  if Joukkue_data.Player_index[2+form1.sScrollBar1.position]>0 then
    form1.kick2.Visible:=true
    else form1.kick2.Visible:=false;
  if Joukkue_data.Player_index[3+form1.sScrollBar1.position]>0 then
    form1.kick3.Visible:=true
    else form1.kick3.Visible:=false;
  if Joukkue_data.Player_index[4+form1.sScrollBar1.position]>0 then
    form1.kick4.Visible:=true
    else form1.kick4.Visible:=false;
  if Joukkue_data.Player_index[5+form1.sScrollBar1.position]>0 then
    form1.kick5.Visible:=true
    else form1.kick5.Visible:=false;
  if Joukkue_data.Player_index[6+form1.sScrollBar1.position]>0 then
    form1.kick6.Visible:=true
    else form1.kick6.Visible:=false;
  if Joukkue_data.Player_index[7+form1.sScrollBar1.position]>0 then
    form1.kick7.Visible:=true
    else form1.kick7.Visible:=false;
  if Joukkue_data.Player_index[8+form1.sScrollBar1.position]>0 then
    form1.kick8.Visible:=true
    else form1.kick8.Visible:=false;
  if Joukkue_data.Player_index[9+form1.sScrollBar1.position]>0 then
    form1.kick9.Visible:=true
    else form1.kick9.Visible:=false;
  if Joukkue_data.Player_index[10+form1.sScrollBar1.position]>0 then
    form1.kick10.Visible:=true
    else form1.kick10.Visible:=false;
  if Joukkue_data.Player_index[11+form1.sScrollBar1.position]>0 then
    form1.kick11.Visible:=true
    else form1.kick11.Visible:=false;
  if Joukkue_data.Player_index[12+form1.sScrollBar1.position]>0 then
    form1.kick12.Visible:=true
    else form1.kick12.Visible:=false;
  if Joukkue_data.Player_index[13+form1.sScrollBar1.position]>0 then
    form1.kick13.Visible:=true
    else form1.kick13.Visible:=false;
  if Joukkue_data.Player_index[14+form1.sScrollBar1.position]>0 then
    form1.kick14.Visible:=true
    else form1.kick14.Visible:=false;
  end else piilotaKickNapit;


end;

function haePositio(yla,ala,vasen,oikea: integer): string;
var
  pStr1,pStr2: string;
  UD, LR: integer;
  UDPros, LRPros: real;
begin

  UD:=yla+ala;
  LR:=vasen+oikea;

  pStr1:='';
  pStr2:='';

  if UD>0 then begin
    UDPros:=100/UD*yla;
    if UDPros<35 then pStr1:='D';
    if UDPros>=35 then pStr1:='DM';
    if UDPros>=39 then pStr1:='M';
    if UDPros>=46 then pStr1:='AM';
    if UDPros>=50 then pStr1:='F';
  end;

  if LR>0 then begin
    LRPros:=100/LR*vasen;
    if LRPros<37 then pStr2:='R';
    if LRPros>=37 then pStr2:='RC';
    if LRPros>=47 then pStr2:='C';
    if LRPros>=53 then pStr2:='LC';
    if LRPros>=63 then pStr2:='L';
  end;

  if (pStr1='') or (pStr2='') then result:=''
  else result:=pStr1+' '+pStr2;

end;

procedure aseta_team_Records;
begin
  if not (team_image=3) then begin
    form1.Image1.Picture.LoadFromFile('data/Images/skins/'+selected_skin+'/pictures/team_records.png');
    team_image:=3;
  end;

  form1.top1.Caption:='';
  form1.top2.Caption:='';
  form1.top3.Caption:='';
  form1.top4.Caption:='';
  form1.top5.Caption:='';
  form1.top6.Caption:='';

  piilotaKickNapit;
  form1.sScrollBar1.Visible:=false;
  liput_piiloon;
  asetaLatestLabelit(false);
  label_putsaus;
  label_putsaus2;
  onl_imaget_piiloon;
  team_settings_visible(false);
  team_invites_piiloon;
end;

procedure aseta_team_Latest_scores;
begin
  if not (team_image=4) then begin
    form1.Image1.Picture.LoadFromFile('data/Images/skins/'+selected_skin+'/pictures/team_scores.png');
    team_image:=4;
  end;


  form1.top1.Caption:='';
  form1.top2.Caption:='';
  form1.top3.Caption:='';
  form1.top4.Caption:='';
  form1.top5.Caption:='';
  form1.top6.Caption:='';

  form1.sScrollBar1.Visible:=false;
  piilotaKickNapit;
  liput_piiloon;
  label_putsaus;
  label_putsaus2;
  onl_imaget_piiloon;
  team_settings_visible(false);
  team_invites_piiloon;

  asetaLatestLabelit(true);
end;

procedure asetaLatestLabelit(bool: boolean);
begin


    asetaLatestVisiblet(form1.latestNameH1,form1.vs1,form1.latestNameA1,form1.latestTulos1,
      form1.latestRankMuutos1,form1.latestDate1,form1.matchDet1,bool);
    asetaLatestVisiblet(form1.latestNameH2,form1.vs2,form1.latestNameA2,form1.latestTulos2,
      form1.latestRankMuutos2,form1.latestDate2,form1.matchDet2,bool);
    asetaLatestVisiblet(form1.latestNameH3,form1.vs3,form1.latestNameA3,form1.latestTulos3,
      form1.latestRankMuutos3,form1.latestDate3,form1.matchDet3,bool);
    asetaLatestVisiblet(form1.latestNameH4,form1.vs4,form1.latestNameA4,form1.latestTulos4,
      form1.latestRankMuutos4,form1.latestDate4,form1.matchDet4,bool);
    asetaLatestVisiblet(form1.latestNameH5,form1.vs5,form1.latestNameA5,form1.latestTulos5,
      form1.latestRankMuutos5,form1.latestDate5,form1.matchDet5,bool);
    asetaLatestVisiblet(form1.latestNameH6,form1.vs6,form1.latestNameA6,form1.latestTulos6,
      form1.latestRankMuutos6,form1.latestDate6,form1.matchDet6,bool);
    asetaLatestVisiblet(form1.latestNameH7,form1.vs7,form1.latestNameA7,form1.latestTulos7,
      form1.latestRankMuutos7,form1.latestDate7,form1.matchDet7,bool);
    asetaLatestVisiblet(form1.latestNameH8,form1.vs8,form1.latestNameA8,form1.latestTulos8,
      form1.latestRankMuutos8,form1.latestDate8,form1.matchDet8,bool);
    asetaLatestVisiblet(form1.latestNameH9,form1.vs9,form1.latestNameA9,form1.latestTulos9,
      form1.latestRankMuutos9,form1.latestDate9,form1.matchDet9,bool);
    asetaLatestVisiblet(form1.latestNameH10,form1.vs10,form1.latestNameA10,form1.latestTulos10,
      form1.latestRankMuutos10,form1.latestDate10,form1.matchDet10,bool);

  if bool=false then exit;


  asetaLatest(104,1,form1.latestNameH1,form1.vs1,form1.latestNameA1,form1.latestTulos1,
  form1.latestRankMuutos1,form1.latestDate1,form1.matchDet1);
  asetaLatest(128,2,form1.latestNameH2,form1.vs2,form1.latestNameA2,form1.latestTulos2,
  form1.latestRankMuutos2,form1.latestDate2,form1.matchDet2);
  asetaLatest(152,3,form1.latestNameH3,form1.vs3,form1.latestNameA3,form1.latestTulos3,
  form1.latestRankMuutos3,form1.latestDate3,form1.matchDet3);
  asetaLatest(176,4,form1.latestNameH4,form1.vs4,form1.latestNameA4,form1.latestTulos4,
  form1.latestRankMuutos4,form1.latestDate4,form1.matchDet4);
  asetaLatest(200,5,form1.latestNameH5,form1.vs5,form1.latestNameA5,form1.latestTulos5,
  form1.latestRankMuutos5,form1.latestDate5,form1.matchDet5);
  asetaLatest(224,6,form1.latestNameH6,form1.vs6,form1.latestNameA6,form1.latestTulos6,
  form1.latestRankMuutos6,form1.latestDate6,form1.matchDet6);
  asetaLatest(248,7,form1.latestNameH7,form1.vs7,form1.latestNameA7,form1.latestTulos7,
  form1.latestRankMuutos7,form1.latestDate7,form1.matchDet7);
  asetaLatest(272,8,form1.latestNameH8,form1.vs8,form1.latestNameA8,form1.latestTulos8,
  form1.latestRankMuutos8,form1.latestDate8,form1.matchDet8);
  asetaLatest(296,9,form1.latestNameH9,form1.vs9,form1.latestNameA9,form1.latestTulos9,
  form1.latestRankMuutos9,form1.latestDate9,form1.matchDet9);
  asetaLatest(320,10,form1.latestNameH10,form1.vs10,form1.latestNameA10,form1.latestTulos10,
  form1.latestRankMuutos10,form1.latestDate10,form1.matchDet10);

end;

procedure asetaLatestVisiblet(latestNameH,vs,latestNameA,latestTulos,latestRankMuutos,latestDate,matchDet: TsLabelFX; visible: boolean);
begin

  latestNameH.Visible:=visible;
  vs.Visible:=visible;
  latestNameA.Visible:=visible;
  latestTulos.Visible:=visible;
  latestRankMuutos.Visible:=visible;
  latestDate.Visible:=visible;
  matchDet.Visible:=visible;

end;

procedure asetaLatest(top, latest_vastus: integer; latestNameH,vs,latestNameA,latestTulos,latestRankMuutos,latestDate,matchDet: TsLabelFX);
begin

  if Joukkue_data.latest_index[latest_vastus]=0 then begin
    latestNameH.caption:='';
    vs.caption:='';
    latestNameA.caption:='';
    latestTulos.caption:='';
    latestRankMuutos.caption:='';
    latestDate.caption:='';
    exit;
  end;

  latestNameH.Top:=top;
  vs.Top:=top;
  latestNameA.Top:=top;
  latestTulos.Top:=top;
  latestRankMuutos.Top:=top;
  latestDate.Top:=top;
  matchDet.Top:=top;
  matchDet.Caption:='Details';
  latestNameH.Left:=480;
  latestTulos.Left:=410;
  latestRankMuutos.Left:=440;
  latestDate.Left:=344;
  vs.caption:='-';

  if Joukkue_data.latest_home_away[latest_vastus]=1 then begin
    latestNameH.Caption:=Joukkue_data.name;
    latestNameA.Caption:=Joukkue_data.latest_vastus[latest_vastus];
  end else begin
    latestNameH.Caption:=Joukkue_data.latest_vastus[latest_vastus];
    latestNameA.Caption:=Joukkue_data.name;
  end;
 //latestNameH.Caption:='Ilmasilta';
 //latestNameA.Caption:='QQQQQQQQQQQQQQQQQQQQ';
  vs.Left:=latestNameH.Left+latestNameH.Width;
  latestNameA.Left:=vs.Left+vs.Width;

  matchDet.Left:=750;

  latestTulos.Caption:=inttostr(Joukkue_data.latest_tulos[latest_vastus,1])+'-'+inttostr(Joukkue_data.latest_tulos[latest_vastus,2]);
  latestRankMuutos.Caption:=inttostr(Joukkue_data.latest_rank_muutos[latest_vastus]);
  latestDate.Caption:=parseta_date(Joukkue_data.latest_date[latest_vastus,1],Joukkue_data.latest_date[latest_vastus,2],Joukkue_data.latest_date[latest_vastus,3]);

  if strtoint(latestRankMuutos.Caption)<0 then
    latestRankMuutos.Kind.Color:=clRed else
    latestRankMuutos.Kind.Color:=clGreen;

end;

procedure aseta_team_Invites;
begin
  if not (team_image=5) then begin
    form1.Image1.Picture.LoadFromFile('data/Images/skins/'+selected_skin+'/pictures/team_invites.png');
    team_image:=5;
  end;

  form1.top1.Caption:='';
  form1.top2.Caption:='';
  form1.top3.Caption:='';
  form1.top4.Caption:='';
  form1.top5.Caption:='';
  form1.top6.Caption:='';

    form1.invited1.Left:=368;
    form1.invited2.Left:=368;
    form1.invited3.Left:=368;
    form1.invited4.Left:=368;
    form1.invited5.Left:=368;
    form1.invited6.Left:=368;
    form1.invited7.Left:=368;
    form1.invited8.Left:=368;
    form1.invited9.Left:=368;
    form1.invited10.Left:=368;
    form1.invited11.Left:=368;
    form1.invited12.Left:=368;
    form1.invited13.Left:=368;
    form1.invited14.Left:=368;
    form1.invited15.Left:=368;
    form1.invited16.Left:=368;
    form1.invited17.Left:=368;
    form1.invited18.Left:=368;
    form1.invited19.Left:=368;
    form1.invited20.Left:=368;

    form1.invcan1.Left:=504;
    form1.invcan2.Left:=504;
    form1.invcan3.Left:=504;
    form1.invcan4.Left:=504;
    form1.invcan5.Left:=504;
    form1.invcan6.Left:=504;
    form1.invcan7.Left:=504;
    form1.invcan8.Left:=504;
    form1.invcan9.Left:=504;
    form1.invcan10.Left:=504;
    form1.invcan11.Left:=504;
    form1.invcan12.Left:=504;
    form1.invcan13.Left:=504;
    form1.invcan14.Left:=504;
    form1.invcan15.Left:=504;
    form1.invcan16.Left:=504;
    form1.invcan17.Left:=504;
    form1.invcan18.Left:=504;
    form1.invcan19.Left:=504;
    form1.invcan20.Left:=504;

  form1.invited1.caption:=Joukkue_data.invites[1];
  form1.invited2.caption:=Joukkue_data.invites[2];
  form1.invited3.caption:=Joukkue_data.invites[3];
  form1.invited4.caption:=Joukkue_data.invites[4];
  form1.invited5.caption:=Joukkue_data.invites[5];
  form1.invited6.caption:=Joukkue_data.invites[6];
  form1.invited7.caption:=Joukkue_data.invites[7];
  form1.invited8.caption:=Joukkue_data.invites[8];
  form1.invited9.caption:=Joukkue_data.invites[9];
  form1.invited10.caption:=Joukkue_data.invites[10];
  form1.invited11.caption:=Joukkue_data.invites[11];
  form1.invited12.caption:=Joukkue_data.invites[12];
  form1.invited13.caption:=Joukkue_data.invites[13];
  form1.invited14.caption:=Joukkue_data.invites[14];
  form1.invited15.caption:=Joukkue_data.invites[15];
  form1.invited16.caption:=Joukkue_data.invites[16];
  form1.invited17.caption:=Joukkue_data.invites[17];
  form1.invited18.caption:=Joukkue_data.invites[18];
  form1.invited19.caption:=Joukkue_data.invites[19];
  form1.invited20.caption:=Joukkue_data.invites[20];

  if Joukkue_data.invites[1]='' then form1.invited1.Visible:=false else form1.invited1.Visible:=true;
  if Joukkue_data.invites[2]='' then form1.invited2.Visible:=false else form1.invited2.Visible:=true;
  if Joukkue_data.invites[3]='' then form1.invited3.Visible:=false else form1.invited3.Visible:=true;
  if Joukkue_data.invites[4]='' then form1.invited4.Visible:=false else form1.invited4.Visible:=true;
  if Joukkue_data.invites[5]='' then form1.invited5.Visible:=false else form1.invited5.Visible:=true;
  if Joukkue_data.invites[6]='' then form1.invited6.Visible:=false else form1.invited6.Visible:=true;
  if Joukkue_data.invites[7]='' then form1.invited7.Visible:=false else form1.invited7.Visible:=true;
  if Joukkue_data.invites[8]='' then form1.invited8.Visible:=false else form1.invited8.Visible:=true;
  if Joukkue_data.invites[9]='' then form1.invited9.Visible:=false else form1.invited9.Visible:=true;
  if Joukkue_data.invites[10]='' then form1.invited10.Visible:=false else form1.invited10.Visible:=true;
  if Joukkue_data.invites[11]='' then form1.invited11.Visible:=false else form1.invited11.Visible:=true;
  if Joukkue_data.invites[12]='' then form1.invited12.Visible:=false else form1.invited12.Visible:=true;
  if Joukkue_data.invites[13]='' then form1.invited13.Visible:=false else form1.invited13.Visible:=true;
  if Joukkue_data.invites[14]='' then form1.invited14.Visible:=false else form1.invited14.Visible:=true;
  if Joukkue_data.invites[15]='' then form1.invited15.Visible:=false else form1.invited15.Visible:=true;
  if Joukkue_data.invites[16]='' then form1.invited16.Visible:=false else form1.invited16.Visible:=true;
  if Joukkue_data.invites[17]='' then form1.invited17.Visible:=false else form1.invited17.Visible:=true;
  if Joukkue_data.invites[18]='' then form1.invited18.Visible:=false else form1.invited18.Visible:=true;
  if Joukkue_data.invites[19]='' then form1.invited19.Visible:=false else form1.invited19.Visible:=true;
  if Joukkue_data.invites[20]='' then form1.invited20.Visible:=false else form1.invited20.Visible:=true;

  if Joukkue_data.invites[1]='' then form1.invcan1.Visible:=false else form1.invcan1.Visible:=true;
  if Joukkue_data.invites[2]='' then form1.invcan2.Visible:=false else form1.invcan2.Visible:=true;
  if Joukkue_data.invites[3]='' then form1.invcan3.Visible:=false else form1.invcan3.Visible:=true;
  if Joukkue_data.invites[4]='' then form1.invcan4.Visible:=false else form1.invcan4.Visible:=true;
  if Joukkue_data.invites[5]='' then form1.invcan5.Visible:=false else form1.invcan5.Visible:=true;
  if Joukkue_data.invites[6]='' then form1.invcan6.Visible:=false else form1.invcan6.Visible:=true;
  if Joukkue_data.invites[7]='' then form1.invcan7.Visible:=false else form1.invcan7.Visible:=true;
  if Joukkue_data.invites[8]='' then form1.invcan8.Visible:=false else form1.invcan8.Visible:=true;
  if Joukkue_data.invites[9]='' then form1.invcan9.Visible:=false else form1.invcan9.Visible:=true;
  if Joukkue_data.invites[10]='' then form1.invcan10.Visible:=false else form1.invcan10.Visible:=true;
  if Joukkue_data.invites[11]='' then form1.invcan11.Visible:=false else form1.invcan11.Visible:=true;
  if Joukkue_data.invites[12]='' then form1.invcan12.Visible:=false else form1.invcan12.Visible:=true;
  if Joukkue_data.invites[13]='' then form1.invcan13.Visible:=false else form1.invcan13.Visible:=true;
  if Joukkue_data.invites[14]='' then form1.invcan14.Visible:=false else form1.invcan14.Visible:=true;
  if Joukkue_data.invites[15]='' then form1.invcan15.Visible:=false else form1.invcan15.Visible:=true;
  if Joukkue_data.invites[16]='' then form1.invcan16.Visible:=false else form1.invcan16.Visible:=true;
  if Joukkue_data.invites[17]='' then form1.invcan17.Visible:=false else form1.invcan17.Visible:=true;
  if Joukkue_data.invites[18]='' then form1.invcan18.Visible:=false else form1.invcan18.Visible:=true;
  if Joukkue_data.invites[19]='' then form1.invcan19.Visible:=false else form1.invcan19.Visible:=true;
  if Joukkue_data.invites[20]='' then form1.invcan20.Visible:=false else form1.invcan20.Visible:=true;

  form1.sScrollBar1.Visible:=false;
  liput_piiloon;
  label_putsaus;
  piilotaKickNapit;
  asetaLatestLabelit(false);
  label_putsaus2;
  onl_imaget_piiloon;
  team_settings_visible(false);

end;

procedure aseta_team_Settings;
begin
  if not (team_image=6) then begin
    form1.Image1.Picture.LoadFromFile('data/Images/skins/'+selected_skin+'/pictures/team_settings.png');
    team_image:=6;
  end;

  form1.top1.Caption:='';
  form1.top2.Caption:='';
  form1.top3.Caption:='';
  form1.top4.Caption:='';
  form1.top5.Caption:='';
  form1.top6.Caption:='';

  form1.sScrollBar1.Visible:=false;
  liput_piiloon;
  asetaLatestLabelit(false);
  label_putsaus;
  label_putsaus2;
  piilotaKickNapit;
  onl_imaget_piiloon;
  team_invites_piiloon;
  team_settings_visible(true);
end;

procedure liput_piiloon;
begin
  form1.li1.Visible:=false;
  form1.li2.Visible:=false;
  form1.li3.Visible:=false;
  form1.li4.Visible:=false;
  form1.li5.Visible:=false;
  form1.li6.Visible:=false;
  form1.li7.Visible:=false;
  form1.li8.Visible:=false;
  form1.li9.Visible:=false;
  form1.li10.Visible:=false;
  form1.li11.Visible:=false;
  form1.li12.Visible:=false;
  form1.li13.Visible:=false;
  form1.li14.Visible:=false;
end;

procedure label_putsaus;
begin

  form1.a1.Caption:='';
  form1.a2.Caption:='';
  form1.a3.Caption:='';
  form1.a4.Caption:='';
  form1.a5.Caption:='';
  form1.a6.Caption:='';
  form1.a7.Caption:='';
  form1.a8.Caption:='';
  form1.a9.Caption:='';
  form1.a10.Caption:='';
  form1.a11.Caption:='';
  form1.a12.Caption:='';
  form1.a13.Caption:='';
  form1.a14.Caption:='';

  form1.g1.Caption:='';
  form1.g2.Caption:='';
  form1.g3.Caption:='';
  form1.g4.Caption:='';
  form1.g5.Caption:='';
  form1.g6.Caption:='';
  form1.g7.Caption:='';
  form1.g8.Caption:='';
  form1.g9.Caption:='';
  form1.g10.Caption:='';
  form1.g11.Caption:='';
  form1.g12.Caption:='';
  form1.g13.Caption:='';
  form1.g14.Caption:='';

  form1.as1.Caption:='';
  form1.as2.Caption:='';
  form1.as3.Caption:='';
  form1.as4.Caption:='';
  form1.as5.Caption:='';
  form1.as6.Caption:='';
  form1.as7.Caption:='';
  form1.as8.Caption:='';
  form1.as9.Caption:='';
  form1.as10.Caption:='';
  form1.as11.Caption:='';
  form1.as12.Caption:='';
  form1.as13.Caption:='';
  form1.as14.Caption:='';

end;

procedure label_putsaus2;
begin
  form1.sn1.caption:='';
  form1.sn2.caption:='';
  form1.sn3.caption:='';
  form1.sn4.caption:='';
  form1.sn5.caption:='';
  form1.sn6.caption:='';
  form1.sn7.caption:='';
  form1.sn8.caption:='';
  form1.sn9.caption:='';
  form1.sn10.caption:='';
  form1.sn11.caption:='';
  form1.sn12.caption:='';
  form1.sn13.caption:='';
  form1.sn14.caption:='';

  form1.plname1.caption:='';
  form1.plname2.caption:='';
  form1.plname3.caption:='';
  form1.plname4.caption:='';
  form1.plname5.caption:='';
  form1.plname6.caption:='';
  form1.plname7.caption:='';
  form1.plname8.caption:='';
  form1.plname9.caption:='';
  form1.plname10.caption:='';
  form1.plname11.caption:='';
  form1.plname12.caption:='';
  form1.plname13.caption:='';
  form1.plname14.caption:='';

  form1.po1.caption:='';
  form1.po2.caption:='';
  form1.po3.caption:='';
  form1.po4.caption:='';
  form1.po5.caption:='';
  form1.po6.caption:='';
  form1.po7.caption:='';
  form1.po8.caption:='';
  form1.po9.caption:='';
  form1.po10.caption:='';
  form1.po11.caption:='';
  form1.po12.caption:='';
  form1.po13.caption:='';
  form1.po14.caption:='';

  form1.na1.caption:='';
  form1.na2.caption:='';
  form1.na3.caption:='';
  form1.na4.caption:='';
  form1.na5.caption:='';
  form1.na6.caption:='';
  form1.na7.caption:='';
  form1.na8.caption:='';
  form1.na9.caption:='';
  form1.na10.caption:='';
  form1.na11.caption:='';
  form1.na12.caption:='';
  form1.na13.caption:='';
  form1.na14.caption:='';

end;

procedure onl_imaget_piiloon;
begin
  form1.onl_Image1.Visible:=false;
  form1.onl_Image2.Visible:=false;
  form1.onl_Image3.Visible:=false;
  form1.onl_Image4.Visible:=false;
  form1.onl_Image5.Visible:=false;
  form1.onl_Image6.Visible:=false;
  form1.onl_Image7.Visible:=false;
  form1.onl_Image8.Visible:=false;
  form1.onl_Image9.Visible:=false;
  form1.onl_Image10.Visible:=false;
  form1.onl_Image11.Visible:=false;
  form1.onl_Image12.Visible:=false;
  form1.onl_Image13.Visible:=false;
  form1.onl_Image14.Visible:=false;
end;

function int_to_admin(p_byte: byte): string;
begin
  result:='';

  if p_byte=0 then result:='Player';
  if p_byte=1 then result:='Admin';
  if p_byte=2 then result:='Master';

end;

procedure admin_muutos(p_str, p_str2: string);
var p_bool: boolean;
begin

  if please_wait_arvo=true then exit;
  if oma_adminstatus<2 then exit;
  if p_str='' then exit;
  if p_str2='' then exit;
  if not (strtoint(form1.sLabelFX17.caption)=oma_team) then exit;
  if not (form1.sLabelFX1.caption=oma_team_name) then exit;

  p_bool:=false;
  if p_str='Player' then p_bool:=true;
  if p_str='Admin' then p_bool:=true;
  if p_str='Master' then p_bool:=true;
  if p_bool=false then exit;

  form4.sLabelFX2.Caption:=p_str2;

  form4.showmodal;

end;

procedure muuta_admas_status(p_str: string; p_byte: byte);
type
  TAdmas_muutos_rec = record
    mtype: word;
    mtype2: word;
    ra: word;
    status: byte;
    name: string[15];
  end;
var
  Admas_muutos_rec: TAdmas_muutos_rec;
begin
  if please_wait_arvo=true then exit;

  Admas_muutos_rec.mtype:=38;
  Admas_muutos_rec.mtype2:=38;
  Admas_muutos_rec.ra:=random(55000)+1;
  Admas_muutos_rec.status:=p_byte;
  Admas_muutos_rec.name:=p_str;
  TCPClient2.WriteBuffer(@Admas_muutos_rec,sizeof(Admas_muutos_rec));

  please_wait(true);

end;

procedure asun_varimuutos(p_osa,p_homeaway: byte);
var color: TColor;
begin
  if form1.sColorDialog1.Execute then color:=form1.sColorDialog1.Color else exit;
  Joukkue_data.shirt_colors[p_osa,1,p_homeaway]:=Color;
  Joukkue_data.shirt_colors[p_osa,2,p_homeaway]:=Color shr 8;
  Joukkue_data.shirt_colors[p_osa,3,p_homeaway]:=Color shr 16;
  kit_colors;
end;

procedure asun_varimuutosPrivateServer(p_osa,p_homeaway: byte);
var color: TColor;
begin
  if form1.sColorDialog1.Execute then color:=form1.sColorDialog1.Color else exit;
  PrivateServerSettings.shirt_colors[p_osa,1,p_homeaway]:=Color;
  PrivateServerSettings.shirt_colors[p_osa,2,p_homeaway]:=Color shr 8;
  PrivateServerSettings.shirt_colors[p_osa,3,p_homeaway]:=Color shr 16;
  kit_colors_PrivateServer;
end;

procedure team_settings_visible(p_boolean: boolean);
begin

  if p_boolean=true then begin
    form1.sCheckBox4.Left:=368;
    form1.sCheckBox4.Top:=104;
    form1.sLabelFX87.Left:=368;
    form1.sLabelFX87.Top:=128;
    form1.sLabelFX88.Left:=472;
    form1.sLabelFX88.Top:=128;
    form1.sLabelFX89.Left:=368;
    form1.sLabelFX89.Top:=184;

    form1.sLabelFX181.Left:=368;
    form1.sLabelFX181.Top:=208;
    form1.sComboBox10.Left:=368;
    form1.sComboBox10.Top:=232;

    form1.sTrackBar1.Left:=368;
    form1.sTrackBar1.Top:=152;
    form1.sTrackBar2.Left:=464;
    form1.sTrackBar2.Top:=152;

    form1.sButton9.Left:=368;
    form1.sButton9.Top:=394;

    form1.sCheckBox5.Left:=368;
    form1.sCheckBox5.Top:=264;
    form1.sLabelFX90.Left:=368;
    form1.sLabelFX90.Top:=296;
    form1.sLabelFX91.Left:=368;
    form1.sLabelFX91.Top:=344;
    form1.sEdit8.Left:=368;
    form1.sEdit8.Top:=316;
    form1.sEdit11.Left:=368;
    form1.sEdit11.Top:=364;
  end;

  form1.sCheckBox4.Visible:=p_boolean;
  form1.sLabelFX87.Visible:=p_boolean;
  form1.sLabelFX88.Visible:=p_boolean;
  form1.sLabelFX89.Visible:=p_boolean;
  form1.sTrackBar1.Visible:=p_boolean;
  form1.sTrackBar2.Visible:=p_boolean;
  form1.sButton9.Visible:=p_boolean;
  form1.sCheckBox5.Visible:=p_boolean;
  form1.sLabelFX90.Visible:=p_boolean;
  form1.sLabelFX91.Visible:=p_boolean;
  form1.sEdit8.Visible:=p_boolean;
  form1.sEdit11.Visible:=p_boolean;
  form1.sLabelFX181.Visible:=p_boolean;
  form1.sComboBox10.Visible:=p_boolean;
end;

procedure team_invites_piiloon;
begin

  form1.invited1.Visible:=false;
  form1.invited2.Visible:=false;
  form1.invited3.Visible:=false;
  form1.invited4.Visible:=false;
  form1.invited5.Visible:=false;
  form1.invited6.Visible:=false;
  form1.invited7.Visible:=false;
  form1.invited8.Visible:=false;
  form1.invited9.Visible:=false;
  form1.invited10.Visible:=false;
  form1.invited11.Visible:=false;
  form1.invited12.Visible:=false;
  form1.invited13.Visible:=false;
  form1.invited14.Visible:=false;
  form1.invited15.Visible:=false;
  form1.invited16.Visible:=false;
  form1.invited17.Visible:=false;
  form1.invited18.Visible:=false;
  form1.invited19.Visible:=false;
  form1.invited20.Visible:=false;

  form1.invcan1.Visible:=false;
  form1.invcan2.Visible:=false;
  form1.invcan3.Visible:=false;
  form1.invcan4.Visible:=false;
  form1.invcan5.Visible:=false;
  form1.invcan6.Visible:=false;
  form1.invcan7.Visible:=false;
  form1.invcan8.Visible:=false;
  form1.invcan9.Visible:=false;
  form1.invcan10.Visible:=false;
  form1.invcan11.Visible:=false;
  form1.invcan12.Visible:=false;
  form1.invcan13.Visible:=false;
  form1.invcan14.Visible:=false;
  form1.invcan15.Visible:=false;
  form1.invcan16.Visible:=false;
  form1.invcan17.Visible:=false;
  form1.invcan18.Visible:=false;
  form1.invcan19.Visible:=false;
  form1.invcan20.Visible:=false;

end;

procedure pyydaMatchDetails(mID: byte);
type
  TMatchDetPyynto = record
    mtype: word;
    mtype2: word;
    ra: word;
    mID: byte;
    nimi: string[20];
  end;
var
  MatchDetPyynto: TMatchDetPyynto;
begin
  if please_wait_arvo=true then exit;

  MatchDetPyynto.mtype:=9015;
  MatchDetPyynto.mtype2:=9015;
  MatchDetPyynto.ra:=random(55000)+1;
  MatchDetPyynto.mID:=mID;
  MatchDetPyynto.nimi:=form1.sLabelFX1.Caption;
  TCPClient2.WriteBuffer(@MatchDetPyynto,sizeof(MatchDetPyynto));

  please_wait(true);  

end;

procedure pyydaMatchDetPelaajadata(nextI: integer; mID: byte);
type
  TMatchDetPyynto = record
    mtype: word;
    mtype2: word;
    ra: word;
    mID: byte;
    nimi: string[20];
    nextI: integer;
  end;
var
  MatchDetPyynto: TMatchDetPyynto;
begin              

  MatchDetPyynto.mtype:=9016;
  MatchDetPyynto.mtype2:=9016;
  MatchDetPyynto.ra:=random(55000)+1;
  MatchDetPyynto.mID:=mID;
  MatchDetPyynto.nimi:=form1.sLabelFX1.Caption;
  MatchDetPyynto.nextI:=nextI;
  TCPClient2.WriteBuffer(@MatchDetPyynto,sizeof(MatchDetPyynto));

end;

procedure pyydaMatchDetGoaldata(nextI: integer; mID: byte);
type
  TMatchDetPyynto = record
    mtype: word;
    mtype2: word;
    ra: word;
    mID: byte;                      
    nimi: string[20];
    nextI: integer;
  end;
var
  MatchDetPyynto: TMatchDetPyynto;
begin              

  MatchDetPyynto.mtype:=9017;
  MatchDetPyynto.mtype2:=9017;
  MatchDetPyynto.ra:=random(55000)+1;
  MatchDetPyynto.mID:=mID;
  MatchDetPyynto.nimi:=form1.sLabelFX1.Caption;
  MatchDetPyynto.nextI:=nextI;
  TCPClient2.WriteBuffer(@MatchDetPyynto,sizeof(MatchDetPyynto));

end;

procedure peruuta_invite(p_str: string);
type
  TPeruuta_invite = record
    mtype: word;
    mtype2: word;
    ra: word;
    nimi: string[15];
  end;
var
  Peruuta_invite: TPeruuta_invite;
begin

  if oma_adminstatus<2 then exit;
  if oma_team=0 then exit;
  if oma_team_name='' then exit;
  if not (oma_team_name=form1.sLabelFX1.caption) then exit;
  if not (oma_team=strtoint(form1.sLabelFX17.caption)) then exit;
  if p_str='' then exit;
  if please_wait_arvo=true then exit;

  Peruuta_invite.mtype:=41;
  Peruuta_invite.mtype2:=41;
  Peruuta_invite.ra:=random(55000)+1;
  Peruuta_invite.nimi:=p_str;
  TCPClient2.WriteBuffer(@Peruuta_invite,sizeof(Peruuta_invite));

  please_wait(true);

end;

procedure ladataan_tekstuurit;
begin
               
  form3.omegaimagelist1.imagelist.Items[0].Picture.loadfromfile('Data\Images\Game\field.png');
  form3.omegaimagelist1.imagelist.Items[1].Picture.loadfromfile('Data\Images\Game\panel1.png');
  form3.omegaimagelist1.imagelist.Items[2].Picture.loadfromfile('Data\Images\Game\panel2.png');
  form3.omegaimagelist1.imagelist.Items[3].Picture.loadfromfile('Data\Images\Game\panel3.png');
  form3.omegaimagelist1.imagelist.Items[4].Picture.loadfromfile('Data\Images\Game\readysign.png');
  form3.omegaimagelist1.imagelist.Items[5].Picture.loadfromfile('Data\Images\Game\edit1.png');
  form3.omegaimagelist1.imagelist.Items[6].Picture.loadfromfile('Data\Images\Game\edit2.png');
  form3.omegaimagelist1.imagelist.Items[7].Picture.loadfromfile('Data\Images\Game\button1.png');
  form3.omegaimagelist1.imagelist.Items[8].Picture.loadfromfile('Data\Images\Game\hairs.png');
  form3.omegaimagelist1.imagelist.Items[9].Picture.loadfromfile('Data\Images\Game\norgb.png');
  form3.omegaimagelist1.imagelist.Items[10].Picture.loadfromfile('Data\Images\Game\pants.png');
  form3.omegaimagelist1.imagelist.Items[11].Picture.loadfromfile('Data\Images\Game\shirts1.png');
  form3.omegaimagelist1.imagelist.Items[12].Picture.loadfromfile('Data\Images\Game\shirts2.png');
  form3.omegaimagelist1.imagelist.Items[13].Picture.loadfromfile('Data\Images\Game\shirts3.png');
  form3.omegaimagelist1.imagelist.Items[14].Picture.loadfromfile('Data\Images\Game\shirts4.png');
  form3.omegaimagelist1.imagelist.Items[15].Picture.loadfromfile('Data\Images\Game\skins.png');
  form3.omegaimagelist1.imagelist.Items[16].Picture.loadfromfile('Data\Images\Game\socks.png');
  form3.omegaimagelist1.imagelist.Items[17].Picture.loadfromfile('Data\Images\Game\shoes.png');
  form3.omegaimagelist1.imagelist.Items[18].Picture.loadfromfile('Data\Images\Game\pshadow.png');
  form3.omegaimagelist1.imagelist.Items[19].Picture.loadfromfile('Data\Images\Game\keepers.png');
  form3.omegaimagelist1.imagelist.Items[20].Picture.loadfromfile('Data\Images\Game\ball.png');
  form3.omegaimagelist1.imagelist.Items[21].Picture.loadfromfile('Data\Images\Game\ballshadow.png');
  form3.omegaimagelist1.imagelist.Items[22].Picture.loadfromfile('Data\Images\Game\cursor.png');
  form3.omegaimagelist1.imagelist.Items[23].Picture.loadfromfile('Data\Images\Game\power.png');
  form3.omegaimagelist1.imagelist.Items[24].Picture.loadfromfile('Data\Images\Game\powerback.png');
  form3.omegaimagelist1.imagelist.Items[25].Picture.loadfromfile('Data\Images\Game\smallfield.png');
  form3.omegaimagelist1.imagelist.Items[26].Picture.loadfromfile('Data\Images\Game\pradar.png');
  form3.omegaimagelist1.imagelist.Items[27].Picture.loadfromfile('Data\Images\Game\lref.png');
  form3.omegaimagelist1.imagelist.Items[28].Picture.loadfromfile('Data\Images\Game\unet.png');
  form3.omegaimagelist1.imagelist.Items[29].Picture.loadfromfile('Data\Images\Game\lnet.png');
  form3.omegaimagelist1.imagelist.Items[30].Picture.loadfromfile('Data\Images\Game\flag.png');
  form3.omegaimagelist1.imagelist.Items[31].Picture.loadfromfile('Data\Images\Game\circle.png');
  form3.omegaimagelist1.imagelist.Items[32].Picture.loadfromfile('Data\Images\Game\flags.bmp');

end;


procedure paivita_character;
type
  TCharacter_change = record
    mtype: word;
    mtype2: word;
    ra: word;
    character: array [1..5] of byte;
  end;
var
  Character_change: TCharacter_change;
begin

  if please_wait_arvo=true then exit;

  Character_change.mtype:=228;
  Character_change.mtype2:=228;
  Character_change.ra:=random(55000)+1;

  Character_change.character[1]:=oma_skin;
  Character_change.character[2]:=oma_hair;
  Character_change.character[3]:=oma_body;
  Character_change.character[4]:=oma_shoe;
  Character_change.character[5]:=oma_number;
  TCPClient2.WriteBuffer(@Character_change,sizeof(Character_change));
  please_wait(true);

end;

procedure aseta_career_datat;
begin

  if Career_data.career_old_team_count>0 then begin
    form1.career_team11.Caption:='Old teams '+inttostr(Career_data.career_old_team_count);
    form1.car_ap11.Caption:=inttostr(Career_data.career_stats[11,1]);
    form1.car_gl11.Caption:=inttostr(Career_data.career_stats[11,2]);
    form1.car_as11.Caption:=inttostr(Career_data.career_stats[11,3]);
    form1.car_pa11.Caption:=laske_prossat(Career_data.career_statistic[11,1,1],Career_data.career_statistic[11,1,2]);
    form1.car_tc11.Caption:=laske_prossat(Career_data.career_statistic[11,2,1],Career_data.career_statistic[11,2,2]);
    form1.car_he11.Caption:=laske_prossat(Career_data.career_statistic[11,3,1],Career_data.career_statistic[11,3,2]);
  end else begin
    form1.career_team11.Caption:='';
    form1.car_ap11.Caption:='';
    form1.car_gl11.Caption:='';
    form1.car_as11.Caption:='';
    form1.car_pa11.Caption:='';
    form1.car_tc11.Caption:='';
    form1.car_he11.Caption:='';
  end;

  if not (Career_data.career_teams[10]='') then begin
    form1.career_team10.Caption:=Career_data.career_teams[10];
    form1.car_ap10.Caption:=inttostr(Career_data.career_stats[10,1]);
    form1.car_gl10.Caption:=inttostr(Career_data.career_stats[10,2]);
    form1.car_as10.Caption:=inttostr(Career_data.career_stats[10,3]);
    form1.car_pa10.Caption:=laske_prossat(Career_data.career_statistic[10,1,1],Career_data.career_statistic[10,1,2]);
    form1.car_tc10.Caption:=laske_prossat(Career_data.career_statistic[10,2,1],Career_data.career_statistic[10,2,2]);
    form1.car_he10.Caption:=laske_prossat(Career_data.career_statistic[10,3,1],Career_data.career_statistic[10,3,2]);
  end else begin
    form1.career_team10.Caption:='';
    form1.car_ap10.Caption:='';
    form1.car_gl10.Caption:='';
    form1.car_as10.Caption:='';
    form1.car_pa10.Caption:='';
    form1.car_tc10.Caption:='';
    form1.car_he10.Caption:='';
  end;

  if not (Career_data.career_teams[9]='') then begin
    form1.career_team9.Caption:=Career_data.career_teams[9];
    form1.car_ap9.Caption:=inttostr(Career_data.career_stats[9,1]);
    form1.car_gl9.Caption:=inttostr(Career_data.career_stats[9,2]);
    form1.car_as9.Caption:=inttostr(Career_data.career_stats[9,3]);
    form1.car_pa9.Caption:=laske_prossat(Career_data.career_statistic[9,1,1],Career_data.career_statistic[9,1,2]);
    form1.car_tc9.Caption:=laske_prossat(Career_data.career_statistic[9,2,1],Career_data.career_statistic[9,2,2]);
    form1.car_he9.Caption:=laske_prossat(Career_data.career_statistic[9,3,1],Career_data.career_statistic[9,3,2]);
  end else begin
    form1.career_team9.Caption:='';
    form1.car_ap9.Caption:='';
    form1.car_gl9.Caption:='';
    form1.car_as9.Caption:='';
    form1.car_pa9.Caption:='';
    form1.car_tc9.Caption:='';
    form1.car_he9.Caption:='';
  end;

  if not (Career_data.career_teams[8]='') then begin
    form1.career_team8.Caption:=Career_data.career_teams[8];
    form1.car_ap8.Caption:=inttostr(Career_data.career_stats[8,1]);
    form1.car_gl8.Caption:=inttostr(Career_data.career_stats[8,2]);
    form1.car_as8.Caption:=inttostr(Career_data.career_stats[8,3]);
    form1.car_pa8.Caption:=laske_prossat(Career_data.career_statistic[8,1,1],Career_data.career_statistic[8,1,2]);
    form1.car_tc8.Caption:=laske_prossat(Career_data.career_statistic[8,2,1],Career_data.career_statistic[8,2,2]);
    form1.car_he8.Caption:=laske_prossat(Career_data.career_statistic[8,3,1],Career_data.career_statistic[8,3,2]);
  end else begin
    form1.career_team8.Caption:='';
    form1.car_ap8.Caption:='';
    form1.car_gl8.Caption:='';
    form1.car_as8.Caption:='';
    form1.car_pa8.Caption:='';
    form1.car_tc8.Caption:='';
    form1.car_he8.Caption:='';
  end;

  if not (Career_data.career_teams[7]='') then begin
    form1.career_team7.Caption:=Career_data.career_teams[7];
    form1.car_ap7.Caption:=inttostr(Career_data.career_stats[7,1]);
    form1.car_gl7.Caption:=inttostr(Career_data.career_stats[7,2]);
    form1.car_as7.Caption:=inttostr(Career_data.career_stats[7,3]);
    form1.car_pa7.Caption:=laske_prossat(Career_data.career_statistic[7,1,1],Career_data.career_statistic[7,1,2]);
    form1.car_tc7.Caption:=laske_prossat(Career_data.career_statistic[7,2,1],Career_data.career_statistic[7,2,2]);
    form1.car_he7.Caption:=laske_prossat(Career_data.career_statistic[7,3,1],Career_data.career_statistic[7,3,2]);
  end else begin
    form1.career_team7.Caption:='';
    form1.car_ap7.Caption:='';
    form1.car_gl7.Caption:='';
    form1.car_as7.Caption:='';
    form1.car_pa7.Caption:='';
    form1.car_tc7.Caption:='';
    form1.car_he7.Caption:='';
  end;

  if not (Career_data.career_teams[6]='') then begin
    form1.career_team6.Caption:=Career_data.career_teams[6];
    form1.car_ap6.Caption:=inttostr(Career_data.career_stats[6,1]);
    form1.car_gl6.Caption:=inttostr(Career_data.career_stats[6,2]);
    form1.car_as6.Caption:=inttostr(Career_data.career_stats[6,3]);
    form1.car_pa6.Caption:=laske_prossat(Career_data.career_statistic[6,1,1],Career_data.career_statistic[6,1,2]);
    form1.car_tc6.Caption:=laske_prossat(Career_data.career_statistic[6,2,1],Career_data.career_statistic[6,2,2]);
    form1.car_he6.Caption:=laske_prossat(Career_data.career_statistic[6,3,1],Career_data.career_statistic[6,3,2]);
  end else begin
    form1.career_team6.Caption:='';
    form1.car_ap6.Caption:='';
    form1.car_gl6.Caption:='';
    form1.car_as6.Caption:='';
    form1.car_pa6.Caption:='';
    form1.car_tc6.Caption:='';
    form1.car_he6.Caption:='';
  end;

  if not (Career_data.career_teams[5]='') then begin
    form1.career_team5.Caption:=Career_data.career_teams[5];
    form1.car_ap5.Caption:=inttostr(Career_data.career_stats[5,1]);
    form1.car_gl5.Caption:=inttostr(Career_data.career_stats[5,2]);
    form1.car_as5.Caption:=inttostr(Career_data.career_stats[5,3]);
    form1.car_pa5.Caption:=laske_prossat(Career_data.career_statistic[5,1,1],Career_data.career_statistic[5,1,2]);
    form1.car_tc5.Caption:=laske_prossat(Career_data.career_statistic[5,2,1],Career_data.career_statistic[5,2,2]);
    form1.car_he5.Caption:=laske_prossat(Career_data.career_statistic[5,3,1],Career_data.career_statistic[5,3,2]);
  end else begin
    form1.career_team5.Caption:='';
    form1.car_ap5.Caption:='';
    form1.car_gl5.Caption:='';
    form1.car_as5.Caption:='';
    form1.car_pa5.Caption:='';
    form1.car_tc5.Caption:='';
    form1.car_he5.Caption:='';
  end;

  if not (Career_data.career_teams[4]='') then begin
    form1.career_team4.Caption:=Career_data.career_teams[4];
    form1.car_ap4.Caption:=inttostr(Career_data.career_stats[4,1]);
    form1.car_gl4.Caption:=inttostr(Career_data.career_stats[4,2]);
    form1.car_as4.Caption:=inttostr(Career_data.career_stats[4,3]);
    form1.car_pa4.Caption:=laske_prossat(Career_data.career_statistic[4,1,1],Career_data.career_statistic[4,1,2]);
    form1.car_tc4.Caption:=laske_prossat(Career_data.career_statistic[4,2,1],Career_data.career_statistic[4,2,2]);
    form1.car_he4.Caption:=laske_prossat(Career_data.career_statistic[4,3,1],Career_data.career_statistic[4,3,2]);
  end else begin
    form1.career_team4.Caption:='';
    form1.car_ap4.Caption:='';
    form1.car_gl4.Caption:='';
    form1.car_as4.Caption:='';
    form1.car_pa4.Caption:='';
    form1.car_tc4.Caption:='';
    form1.car_he4.Caption:='';
  end;

  if not (Career_data.career_teams[3]='') then begin
    form1.career_team3.Caption:=Career_data.career_teams[3];
    form1.car_ap3.Caption:=inttostr(Career_data.career_stats[3,1]);
    form1.car_gl3.Caption:=inttostr(Career_data.career_stats[3,2]);
    form1.car_as3.Caption:=inttostr(Career_data.career_stats[3,3]);
    form1.car_pa3.Caption:=laske_prossat(Career_data.career_statistic[3,1,1],Career_data.career_statistic[3,1,2]);
    form1.car_tc3.Caption:=laske_prossat(Career_data.career_statistic[3,2,1],Career_data.career_statistic[3,2,2]);
    form1.car_he3.Caption:=laske_prossat(Career_data.career_statistic[3,3,1],Career_data.career_statistic[3,3,2]);
  end else begin
    form1.career_team3.Caption:='';
    form1.car_ap3.Caption:='';
    form1.car_gl3.Caption:='';
    form1.car_as3.Caption:='';
    form1.car_pa3.Caption:='';
    form1.car_tc3.Caption:='';
    form1.car_he3.Caption:='';
  end;

  if not (Career_data.career_teams[2]='') then begin
    form1.career_team2.Caption:=Career_data.career_teams[2];
    form1.car_ap2.Caption:=inttostr(Career_data.career_stats[2,1]);
    form1.car_gl2.Caption:=inttostr(Career_data.career_stats[2,2]);
    form1.car_as2.Caption:=inttostr(Career_data.career_stats[2,3]);
    form1.car_pa2.Caption:=laske_prossat(Career_data.career_statistic[2,1,1],Career_data.career_statistic[2,1,2]);
    form1.car_tc2.Caption:=laske_prossat(Career_data.career_statistic[2,2,1],Career_data.career_statistic[2,2,2]);
    form1.car_he2.Caption:=laske_prossat(Career_data.career_statistic[2,3,1],Career_data.career_statistic[2,3,2]);
  end else begin
    form1.career_team2.Caption:='';
    form1.car_ap2.Caption:='';
    form1.car_gl2.Caption:='';
    form1.car_as2.Caption:='';
    form1.car_pa2.Caption:='';
    form1.car_tc2.Caption:='';
    form1.car_he2.Caption:='';
  end;

  if not (Career_data.career_teams[1]='') then begin
    form1.career_team1.Caption:=Career_data.career_teams[1];
    form1.car_ap1.Caption:=inttostr(Career_data.career_stats[1,1]);
    form1.car_gl1.Caption:=inttostr(Career_data.career_stats[1,2]);
    form1.car_as1.Caption:=inttostr(Career_data.career_stats[1,3]);
    form1.car_pa1.Caption:=laske_prossat(Career_data.career_statistic[1,1,1],Career_data.career_statistic[1,1,2]);
    form1.car_tc1.Caption:=laske_prossat(Career_data.career_statistic[1,2,1],Career_data.career_statistic[1,2,2]);
    form1.car_he1.Caption:=laske_prossat(Career_data.career_statistic[1,3,1],Career_data.career_statistic[1,3,2]);
  end else begin
    form1.career_team1.Caption:='';
    form1.car_ap1.Caption:='';
    form1.car_gl1.Caption:='';
    form1.car_as1.Caption:='';
    form1.car_pa1.Caption:='';
    form1.car_tc1.Caption:='';
    form1.car_he1.Caption:='';
  end;

  form1.car_sta1.Caption:=inttostr(Career_data.prac_stats[1]);
  form1.car_sta2.Caption:=inttostr(Career_data.prac_stats[2]);
  form1.car_sta3.Caption:=laske_prossat(Career_data.prac_statistic[1,1],Career_data.prac_statistic[1,2]);
  form1.car_sta4.Caption:=laske_prossat(Career_data.prac_statistic[2,1],Career_data.prac_statistic[2,2]);
  form1.car_sta5.Caption:=laske_prossat(Career_data.prac_statistic[3,1],Career_data.prac_statistic[3,2]);

  form1.car_sta6.Caption:=inttostr(Career_data.NT_stats[1]);
  form1.car_sta7.Caption:=inttostr(Career_data.NT_stats[2]);
  form1.car_sta8.Caption:=inttostr(Career_data.NT_stats[3]);
  form1.car_sta9.Caption:=laske_prossat(Career_data.NT_statistic[1,1],Career_data.NT_statistic[1,2]);
  form1.car_sta10.Caption:=laske_prossat(Career_data.NT_statistic[2,1],Career_data.NT_statistic[2,2]);
  form1.car_sta11.Caption:=laske_prossat(Career_data.NT_statistic[3,1],Career_data.NT_statistic[3,2]);


end;

procedure UDPmsgSend;
type
  TUDPViesti = record
    oma_index: shortint;
    keys: shortint;
    server: smallint;

    mouse: array [1..2] of smallint;
    mouse_buttons: shortint; //0=false, 1=left, 2=right, 3=both
    udpKey: byte;
  end;        
var
  UDPViesti: TUDPViesti;
  i: integer;
begin

  inc(udpSkip);

  if udpSkip>1 then begin
    udpSkip:=0;
    ZeroMemory(@UDPViesti, SizeOf(UDPViesti));

    if Ingame_data.omaPeliTeamIndex=2 then
      UDPViesti.oma_index:=Ingame_data.omaPeliIndex+10
    else
      UDPViesti.oma_index:=Ingame_data.omaPeliIndex;

    UDPViesti.server:=selectedServerID;

//*******************  keyboard  ***********************************************
    if Settings.control=0 then begin

      UDPViesti.mouse[1]:=512;
      UDPViesti.mouse[2]:=384;

      if Ingame_data.keys[1] then UDPViesti.mouse[1]:=312; //512-200
      if Ingame_data.keys[2] then UDPViesti.mouse[1]:=712; //512+200
      if Ingame_data.keys[3] then UDPViesti.mouse[2]:=184; //384-200
      if Ingame_data.keys[4] then UDPViesti.mouse[2]:=584; //384+200


      UDPViesti.keys:=0;
      if Ingame_data.action_key[1]=true then
        UDPViesti.keys:=1;
      if Ingame_data.action_key[2]=true then
        UDPViesti.keys:=2;

      UDPViesti.mouse_buttons:=0;
      if Ingame_data.mouseButtons[1] then UDPViesti.mouse_buttons:=1;
      if Ingame_data.mouseButtons[2] then UDPViesti.mouse_buttons:=2;
      if (Ingame_data.mouseButtons[1]) and (Ingame_data.mouseButtons[2]) then
        UDPViesti.mouse_buttons:=3;

    end;
//******************************************************************************

//*******************  mouse  **************************************************
    if Settings.control=1 then begin

      for i:=1 to 2 do
        UDPViesti.mouse[i]:=Ingame_data.mouse[i];

      if (Ingame_data.action_key[1]) or (Ingame_data.mouseButtons[3]) then
        UDPViesti.keys:=1
      else
        UDPViesti.keys:=0;

      UDPViesti.mouse_buttons:=0;
      if Ingame_data.mouseButtons[1] then UDPViesti.mouse_buttons:=1;
      if Ingame_data.mouseButtons[2] then UDPViesti.mouse_buttons:=2;
      if (Ingame_data.mouseButtons[1]) and (Ingame_data.mouseButtons[2]) then
        UDPViesti.mouse_buttons:=3;
    end;
//******************************************************************************


    UDPViesti.udpKey:=omaUDPKey;

    UDPClient1.WriteBuffer(@UDPViesti,sizeof(UDPViesti));

  end;

end;

procedure UDPmsgSendSpectator;
type
  TUDPViesti = record
    pID: integer;
    sID: smallint;
  end;
var
  UDPViesti: TUDPViesti;
  i: integer;
begin

  inc(udpSkip);

  if udpSkip>60 then begin
    udpSkip:=0;
    ZeroMemory(@UDPViesti, SizeOf(UDPViesti));

    UDPViesti.pID:=oma_lobbyindex;
    UDPViesti.sID:=selectedServerID;

    UDPClient2.WriteBuffer(@UDPViesti,sizeof(UDPViesti));

  end;

end;

procedure UDPRead5;
type
  TUDPmsg= record
    plrCoords: array [1..5, 1..2, 1..2] of smallint;
    plrSpeed: array [1..5, 1..2] of byte;
    plrAngle: array [1..5, 1..2] of byte;
    keeperCoords: array [1..2, 1..2] of smallint;
    ball_coords: array [1..2] of smallint;
    ballAngle: byte;
    ballSpeed: byte;
    ballHeigth: byte;
    ballHeAngle: byte;
    keeperSpeed: array [1..2] of byte;
    keeperAngle: array [1..2] of byte;
    keeperAnim: byte;
  end;
var
  UDPmsg: TUDPmsg;
  i,j,k: integer;
  ar: integer;
begin

  ar:=UDPClient1.ReadBuffer(@UDPmsg,sizeof(UDPmsg));

  for i:=1 to Ingame_data.maxPlayers do
    for j:=1 to 2 do
      for k:=1 to 2 do
        Ingame_data.plrCoords[i,j,k]:=UDPmsg.plrCoords[i,j,k];

  for i:=1 to Ingame_data.maxPlayers do
    for j:=1 to 2 do begin

      Ingame_data.liukkari[i,j]:=false;
      Ingame_data.kaatunut[i,j]:=false;

      if (UDPmsg.plrSpeed[i,j]>49) and (UDPmsg.plrSpeed[i,j]<100) then begin
        UDPmsg.plrSpeed[i,j]:=UDPmsg.plrSpeed[i,j]-50;
        Ingame_data.liukkari[i,j]:=true;
      end;

      if UDPmsg.plrSpeed[i,j]=250 then
        Ingame_data.kaatunut[i,j]:=true;

      if Ingame_data.kaatunut[i,j] then
        Ingame_data.plrNopeus[i,j]:=0
      else begin
        if UDPmsg.plrSpeed[i,j]>0 then
          Ingame_data.plrNopeus[i,j]:=UDPmsg.plrSpeed[i,j]/10
        else
          Ingame_data.plrNopeus[i,j]:=0;
      end;

      Ingame_data.plrAngle[i,j]:=UDPmsg.plrAngle[i,j]*1.411764;
    end;

  for i:=1 to 2 do
    Ingame_data.ballCoords[i]:=UDPmsg.ball_coords[i];

  Ingame_data.ballKorkeus:=UDPmsg.ballHeigth/2;
  Ingame_data.ballAngle:=UDPmsg.ballAngle*1.411764;
  Ingame_data.ballHeAngle:=UDPmsg.ballHeAngle-100;

  Ingame_data.heittaja[1]:=0;
  Ingame_data.heittaja[2]:=0;
  // heitto käynnissä
  if (UDPmsg.ballSpeed>230) and (UDPmsg.ballSpeed<241) then begin
    Ingame_data.ballNopeus:=0;
    Ingame_data.heittaja[1]:=UDPmsg.ballSpeed-230;
    Ingame_data.heittaja[2]:=1;
  end;
  if (UDPmsg.ballSpeed>240) and (UDPmsg.ballSpeed<251) then begin
    Ingame_data.ballNopeus:=0;
    Ingame_data.heittaja[1]:=UDPmsg.ballSpeed-240;
    Ingame_data.heittaja[2]:=2;
  end;


  for i:=1 to 2 do Ingame_data.palloKeeperilla[i]:=false;
  if UDPmsg.ballSpeed=251 then begin
    Ingame_data.palloKeeperilla[1]:=true;
    Ingame_data.ballNopeus:=0;
  end;
  if UDPmsg.ballSpeed=252 then begin
    Ingame_data.palloKeeperilla[2]:=true;
    Ingame_data.ballNopeus:=0;
  end;

  if (Ingame_data.heittaja[1]=0) and
     (Ingame_data.palloKeeperilla[1]=false) and (Ingame_data.palloKeeperilla[2]=false)
   then //heitto ei käynnissä
    Ingame_data.ballNopeus:=UDPmsg.ballSpeed/10;

//******************************************************************************

  for i:=1 to 2 do begin
    for j:=1 to 2 do
      Ingame_data.keeperCoords[i,j]:=UDPmsg.keeperCoords[i,j];

    Ingame_data.keeperNopeus[i]:=UDPmsg.keeperSpeed[i]/10;
    Ingame_data.keeperAngle[i]:=UDPmsg.keeperAngle[i]*1.411764;
  end;

  Ingame_data.keeperAnim[1]:=0;
  Ingame_data.keeperAnim[2]:=0;
  if UDPmsg.keeperAnim>0 then begin
    if UDPmsg.keeperAnim<20 then begin
      Ingame_data.keeperAnim[1]:=UDPmsg.keeperAnim;
      Ingame_data.keeperAnim[2]:=0;
    end
    else begin
      Ingame_data.keeperAnim[1]:=0;
      Ingame_data.keeperAnim[2]:=UDPmsg.keeperAnim-10;
    end;
  end;

end;

procedure UDPRead6;
type
  TUDPmsg= record
    plrCoords: array [1..6, 1..2, 1..2] of smallint;
    plrSpeed: array [1..6, 1..2] of byte;
    plrAngle: array [1..6, 1..2] of byte;
    keeperCoords: array [1..2, 1..2] of smallint;
    ball_coords: array [1..2] of smallint;
    ballAngle: byte;
    ballSpeed: byte;
    ballHeigth: byte;
    ballHeAngle: byte;
    keeperSpeed: array [1..2] of byte;
    keeperAngle: array [1..2] of byte;
    keeperAnim: byte;
  end;
var
  UDPmsg: TUDPmsg;
  i,j,k: integer;
begin

  UDPClient1.ReadBuffer(@UDPmsg,sizeof(UDPmsg));

  for i:=1 to Ingame_data.maxPlayers do
    for j:=1 to 2 do
      for k:=1 to 2 do
        Ingame_data.plrCoords[i,j,k]:=UDPmsg.plrCoords[i,j,k];

  for i:=1 to Ingame_data.maxPlayers do
    for j:=1 to 2 do begin

      Ingame_data.liukkari[i,j]:=false;
      Ingame_data.kaatunut[i,j]:=false;

      if (UDPmsg.plrSpeed[i,j]>49) and (UDPmsg.plrSpeed[i,j]<100) then begin
        UDPmsg.plrSpeed[i,j]:=UDPmsg.plrSpeed[i,j]-50;
        Ingame_data.liukkari[i,j]:=true;
      end;

      if UDPmsg.plrSpeed[i,j]=250 then
        Ingame_data.kaatunut[i,j]:=true;

      if Ingame_data.kaatunut[i,j] then
        Ingame_data.plrNopeus[i,j]:=0
      else begin
        if UDPmsg.plrSpeed[i,j]>0 then
          Ingame_data.plrNopeus[i,j]:=UDPmsg.plrSpeed[i,j]/10
        else
          Ingame_data.plrNopeus[i,j]:=0;
      end;

      Ingame_data.plrAngle[i,j]:=UDPmsg.plrAngle[i,j]*1.411764;
    end;

  for i:=1 to 2 do
    Ingame_data.ballCoords[i]:=UDPmsg.ball_coords[i];

  Ingame_data.ballKorkeus:=UDPmsg.ballHeigth/2;
  Ingame_data.ballAngle:=UDPmsg.ballAngle*1.411764;
  Ingame_data.ballHeAngle:=UDPmsg.ballHeAngle-100;

  Ingame_data.heittaja[1]:=0;
  Ingame_data.heittaja[2]:=0;
  // heitto käynnissä
  if (UDPmsg.ballSpeed>230) and (UDPmsg.ballSpeed<241) then begin
    Ingame_data.ballNopeus:=0;
    Ingame_data.heittaja[1]:=UDPmsg.ballSpeed-230;
    Ingame_data.heittaja[2]:=1;
  end;
  if (UDPmsg.ballSpeed>240) and (UDPmsg.ballSpeed<251) then begin
    Ingame_data.ballNopeus:=0;
    Ingame_data.heittaja[1]:=UDPmsg.ballSpeed-240;
    Ingame_data.heittaja[2]:=2;
  end;


  for i:=1 to 2 do Ingame_data.palloKeeperilla[i]:=false;
  if UDPmsg.ballSpeed=251 then begin
    Ingame_data.palloKeeperilla[1]:=true;
    Ingame_data.ballNopeus:=0;
  end;
  if UDPmsg.ballSpeed=252 then begin
    Ingame_data.palloKeeperilla[2]:=true;
    Ingame_data.ballNopeus:=0;
  end;

  if (Ingame_data.heittaja[1]=0) and
     (Ingame_data.palloKeeperilla[1]=false) and (Ingame_data.palloKeeperilla[2]=false)
   then //heitto ei käynnissä
    Ingame_data.ballNopeus:=UDPmsg.ballSpeed/10;

//******************************************************************************

  for i:=1 to 2 do begin
    for j:=1 to 2 do
      Ingame_data.keeperCoords[i,j]:=UDPmsg.keeperCoords[i,j];

    Ingame_data.keeperNopeus[i]:=UDPmsg.keeperSpeed[i]/10;
    Ingame_data.keeperAngle[i]:=UDPmsg.keeperAngle[i]*1.411764;
  end;

  Ingame_data.keeperAnim[1]:=0;
  Ingame_data.keeperAnim[2]:=0;
  if UDPmsg.keeperAnim>0 then begin
    if UDPmsg.keeperAnim<20 then begin
      Ingame_data.keeperAnim[1]:=UDPmsg.keeperAnim;
      Ingame_data.keeperAnim[2]:=0;
    end
    else begin
      Ingame_data.keeperAnim[1]:=0;
      Ingame_data.keeperAnim[2]:=UDPmsg.keeperAnim-10;
    end;
  end;

end;

procedure UDPRead7;
type
  TUDPmsg= record
    plrCoords: array [1..7, 1..2, 1..2] of smallint;
    plrSpeed: array [1..7, 1..2] of byte;
    plrAngle: array [1..7, 1..2] of byte;
    keeperCoords: array [1..2, 1..2] of smallint;
    ball_coords: array [1..2] of smallint;
    ballAngle: byte;
    ballSpeed: byte;
    ballHeigth: byte;
    ballHeAngle: byte;
    keeperSpeed: array [1..2] of byte;
    keeperAngle: array [1..2] of byte;
    keeperAnim: byte;
  end;
var
  UDPmsg: TUDPmsg;
  i,j,k: integer;
begin

  UDPClient1.ReadBuffer(@UDPmsg,sizeof(UDPmsg));

  for i:=1 to Ingame_data.maxPlayers do
    for j:=1 to 2 do
      for k:=1 to 2 do
        Ingame_data.plrCoords[i,j,k]:=UDPmsg.plrCoords[i,j,k];

  for i:=1 to Ingame_data.maxPlayers do
    for j:=1 to 2 do begin

      Ingame_data.liukkari[i,j]:=false;
      Ingame_data.kaatunut[i,j]:=false;

      if (UDPmsg.plrSpeed[i,j]>49) and (UDPmsg.plrSpeed[i,j]<100) then begin
        UDPmsg.plrSpeed[i,j]:=UDPmsg.plrSpeed[i,j]-50;
        Ingame_data.liukkari[i,j]:=true;
      end;

      if UDPmsg.plrSpeed[i,j]=250 then
        Ingame_data.kaatunut[i,j]:=true;

      if Ingame_data.kaatunut[i,j] then
        Ingame_data.plrNopeus[i,j]:=0
      else begin
        if UDPmsg.plrSpeed[i,j]>0 then
          Ingame_data.plrNopeus[i,j]:=UDPmsg.plrSpeed[i,j]/10
        else
          Ingame_data.plrNopeus[i,j]:=0;
      end;

      Ingame_data.plrAngle[i,j]:=UDPmsg.plrAngle[i,j]*1.411764;
    end;

  for i:=1 to 2 do
    Ingame_data.ballCoords[i]:=UDPmsg.ball_coords[i];

  Ingame_data.ballKorkeus:=UDPmsg.ballHeigth/2;
  Ingame_data.ballAngle:=UDPmsg.ballAngle*1.411764;
  Ingame_data.ballHeAngle:=UDPmsg.ballHeAngle-100;

  Ingame_data.heittaja[1]:=0;
  Ingame_data.heittaja[2]:=0;
  // heitto käynnissä
  if (UDPmsg.ballSpeed>230) and (UDPmsg.ballSpeed<241) then begin
    Ingame_data.ballNopeus:=0;
    Ingame_data.heittaja[1]:=UDPmsg.ballSpeed-230;
    Ingame_data.heittaja[2]:=1;
  end;
  if (UDPmsg.ballSpeed>240) and (UDPmsg.ballSpeed<251) then begin
    Ingame_data.ballNopeus:=0;
    Ingame_data.heittaja[1]:=UDPmsg.ballSpeed-240;
    Ingame_data.heittaja[2]:=2;
  end;


  for i:=1 to 2 do Ingame_data.palloKeeperilla[i]:=false;
  if UDPmsg.ballSpeed=251 then begin
    Ingame_data.palloKeeperilla[1]:=true;
    Ingame_data.ballNopeus:=0;
  end;
  if UDPmsg.ballSpeed=252 then begin
    Ingame_data.palloKeeperilla[2]:=true;
    Ingame_data.ballNopeus:=0;
  end;

  if (Ingame_data.heittaja[1]=0) and
     (Ingame_data.palloKeeperilla[1]=false) and (Ingame_data.palloKeeperilla[2]=false)
   then //heitto ei käynnissä
    Ingame_data.ballNopeus:=UDPmsg.ballSpeed/10;

//******************************************************************************

  for i:=1 to 2 do begin
    for j:=1 to 2 do
      Ingame_data.keeperCoords[i,j]:=UDPmsg.keeperCoords[i,j];

    Ingame_data.keeperNopeus[i]:=UDPmsg.keeperSpeed[i]/10;
    Ingame_data.keeperAngle[i]:=UDPmsg.keeperAngle[i]*1.411764;
  end;

  Ingame_data.keeperAnim[1]:=0;
  Ingame_data.keeperAnim[2]:=0;
  if UDPmsg.keeperAnim>0 then begin
    if UDPmsg.keeperAnim<20 then begin
      Ingame_data.keeperAnim[1]:=UDPmsg.keeperAnim;
      Ingame_data.keeperAnim[2]:=0;
    end
    else begin
      Ingame_data.keeperAnim[1]:=0;
      Ingame_data.keeperAnim[2]:=UDPmsg.keeperAnim-10;
    end;
  end;

end;

procedure UDPRead8;
type
  TUDPmsg= record
    plrCoords: array [1..8, 1..2, 1..2] of smallint;
    plrSpeed: array [1..8, 1..2] of byte;
    plrAngle: array [1..8, 1..2] of byte;
    keeperCoords: array [1..2, 1..2] of smallint;
    ball_coords: array [1..2] of smallint;
    ballAngle: byte;
    ballSpeed: byte;
    ballHeigth: byte;
    ballHeAngle: byte;
    keeperSpeed: array [1..2] of byte;
    keeperAngle: array [1..2] of byte;
    keeperAnim: byte;
  end;
var
  UDPmsg: TUDPmsg;
  i,j,k: integer;
begin

  UDPClient1.ReadBuffer(@UDPmsg,sizeof(UDPmsg));

  for i:=1 to Ingame_data.maxPlayers do
    for j:=1 to 2 do
      for k:=1 to 2 do
        Ingame_data.plrCoords[i,j,k]:=UDPmsg.plrCoords[i,j,k];

  for i:=1 to Ingame_data.maxPlayers do
    for j:=1 to 2 do begin

      Ingame_data.liukkari[i,j]:=false;
      Ingame_data.kaatunut[i,j]:=false;

      if (UDPmsg.plrSpeed[i,j]>49) and (UDPmsg.plrSpeed[i,j]<100) then begin
        UDPmsg.plrSpeed[i,j]:=UDPmsg.plrSpeed[i,j]-50;
        Ingame_data.liukkari[i,j]:=true;
      end;

      if UDPmsg.plrSpeed[i,j]=250 then
        Ingame_data.kaatunut[i,j]:=true;

      if Ingame_data.kaatunut[i,j] then
        Ingame_data.plrNopeus[i,j]:=0
      else begin
        if UDPmsg.plrSpeed[i,j]>0 then
          Ingame_data.plrNopeus[i,j]:=UDPmsg.plrSpeed[i,j]/10
        else
          Ingame_data.plrNopeus[i,j]:=0;
      end;

      Ingame_data.plrAngle[i,j]:=UDPmsg.plrAngle[i,j]*1.411764;
    end;

  for i:=1 to 2 do
    Ingame_data.ballCoords[i]:=UDPmsg.ball_coords[i];

  Ingame_data.ballKorkeus:=UDPmsg.ballHeigth/2;
  Ingame_data.ballAngle:=UDPmsg.ballAngle*1.411764;
  Ingame_data.ballHeAngle:=UDPmsg.ballHeAngle-100;

  Ingame_data.heittaja[1]:=0;
  Ingame_data.heittaja[2]:=0;
  // heitto käynnissä
  if (UDPmsg.ballSpeed>230) and (UDPmsg.ballSpeed<241) then begin
    Ingame_data.ballNopeus:=0;
    Ingame_data.heittaja[1]:=UDPmsg.ballSpeed-230;
    Ingame_data.heittaja[2]:=1;
  end;
  if (UDPmsg.ballSpeed>240) and (UDPmsg.ballSpeed<251) then begin
    Ingame_data.ballNopeus:=0;
    Ingame_data.heittaja[1]:=UDPmsg.ballSpeed-240;
    Ingame_data.heittaja[2]:=2;
  end;


  for i:=1 to 2 do Ingame_data.palloKeeperilla[i]:=false;
  if UDPmsg.ballSpeed=251 then begin
    Ingame_data.palloKeeperilla[1]:=true;
    Ingame_data.ballNopeus:=0;
  end;
  if UDPmsg.ballSpeed=252 then begin
    Ingame_data.palloKeeperilla[2]:=true;
    Ingame_data.ballNopeus:=0;
  end;

  if (Ingame_data.heittaja[1]=0) and
     (Ingame_data.palloKeeperilla[1]=false) and (Ingame_data.palloKeeperilla[2]=false)
   then //heitto ei käynnissä
    Ingame_data.ballNopeus:=UDPmsg.ballSpeed/10;

//******************************************************************************

  for i:=1 to 2 do begin
    for j:=1 to 2 do
      Ingame_data.keeperCoords[i,j]:=UDPmsg.keeperCoords[i,j];

    Ingame_data.keeperNopeus[i]:=UDPmsg.keeperSpeed[i]/10;
    Ingame_data.keeperAngle[i]:=UDPmsg.keeperAngle[i]*1.411764;
  end;

  Ingame_data.keeperAnim[1]:=0;
  Ingame_data.keeperAnim[2]:=0;
  if UDPmsg.keeperAnim>0 then begin
    if UDPmsg.keeperAnim<20 then begin
      Ingame_data.keeperAnim[1]:=UDPmsg.keeperAnim;
      Ingame_data.keeperAnim[2]:=0;
    end
    else begin
      Ingame_data.keeperAnim[1]:=0;
      Ingame_data.keeperAnim[2]:=UDPmsg.keeperAnim-10;
    end;
  end;

end;

procedure UDPRead9;
type
  TUDPmsg= record
    plrCoords: array [1..9, 1..2, 1..2] of smallint;
    plrSpeed: array [1..9, 1..2] of byte;
    plrAngle: array [1..9, 1..2] of byte;
    keeperCoords: array [1..2, 1..2] of smallint;
    ball_coords: array [1..2] of smallint;
    ballAngle: byte;
    ballSpeed: byte;
    ballHeigth: byte;
    ballHeAngle: byte;
    keeperSpeed: array [1..2] of byte;
    keeperAngle: array [1..2] of byte;
    keeperAnim: byte;
  end;
var
  UDPmsg: TUDPmsg;
  i,j,k: integer;
begin

  UDPClient1.ReadBuffer(@UDPmsg,sizeof(UDPmsg));

  for i:=1 to Ingame_data.maxPlayers do
    for j:=1 to 2 do
      for k:=1 to 2 do
        Ingame_data.plrCoords[i,j,k]:=UDPmsg.plrCoords[i,j,k];

  for i:=1 to Ingame_data.maxPlayers do
    for j:=1 to 2 do begin

      Ingame_data.liukkari[i,j]:=false;
      Ingame_data.kaatunut[i,j]:=false;

      if (UDPmsg.plrSpeed[i,j]>49) and (UDPmsg.plrSpeed[i,j]<100) then begin
        UDPmsg.plrSpeed[i,j]:=UDPmsg.plrSpeed[i,j]-50;
        Ingame_data.liukkari[i,j]:=true;
      end;

      if UDPmsg.plrSpeed[i,j]=250 then
        Ingame_data.kaatunut[i,j]:=true;

      if Ingame_data.kaatunut[i,j] then
        Ingame_data.plrNopeus[i,j]:=0
      else begin
        if UDPmsg.plrSpeed[i,j]>0 then
          Ingame_data.plrNopeus[i,j]:=UDPmsg.plrSpeed[i,j]/10
        else
          Ingame_data.plrNopeus[i,j]:=0;
      end;

      Ingame_data.plrAngle[i,j]:=UDPmsg.plrAngle[i,j]*1.411764;
    end;

  for i:=1 to 2 do
    Ingame_data.ballCoords[i]:=UDPmsg.ball_coords[i];

  Ingame_data.ballKorkeus:=UDPmsg.ballHeigth/2;
  Ingame_data.ballAngle:=UDPmsg.ballAngle*1.411764;
  Ingame_data.ballHeAngle:=UDPmsg.ballHeAngle-100;

  Ingame_data.heittaja[1]:=0;
  Ingame_data.heittaja[2]:=0;
  // heitto käynnissä
  if (UDPmsg.ballSpeed>230) and (UDPmsg.ballSpeed<241) then begin
    Ingame_data.ballNopeus:=0;
    Ingame_data.heittaja[1]:=UDPmsg.ballSpeed-230;
    Ingame_data.heittaja[2]:=1;
  end;
  if (UDPmsg.ballSpeed>240) and (UDPmsg.ballSpeed<251) then begin
    Ingame_data.ballNopeus:=0;
    Ingame_data.heittaja[1]:=UDPmsg.ballSpeed-240;
    Ingame_data.heittaja[2]:=2;
  end;


  for i:=1 to 2 do Ingame_data.palloKeeperilla[i]:=false;
  if UDPmsg.ballSpeed=251 then begin
    Ingame_data.palloKeeperilla[1]:=true;
    Ingame_data.ballNopeus:=0;
  end;
  if UDPmsg.ballSpeed=252 then begin
    Ingame_data.palloKeeperilla[2]:=true;
    Ingame_data.ballNopeus:=0;
  end;

  if (Ingame_data.heittaja[1]=0) and
     (Ingame_data.palloKeeperilla[1]=false) and (Ingame_data.palloKeeperilla[2]=false)
   then //heitto ei käynnissä
    Ingame_data.ballNopeus:=UDPmsg.ballSpeed/10;

//******************************************************************************

  for i:=1 to 2 do begin
    for j:=1 to 2 do
      Ingame_data.keeperCoords[i,j]:=UDPmsg.keeperCoords[i,j];

    Ingame_data.keeperNopeus[i]:=UDPmsg.keeperSpeed[i]/10;
    Ingame_data.keeperAngle[i]:=UDPmsg.keeperAngle[i]*1.411764;
  end;

  Ingame_data.keeperAnim[1]:=0;
  Ingame_data.keeperAnim[2]:=0;
  if UDPmsg.keeperAnim>0 then begin
    if UDPmsg.keeperAnim<20 then begin
      Ingame_data.keeperAnim[1]:=UDPmsg.keeperAnim;
      Ingame_data.keeperAnim[2]:=0;
    end
    else begin
      Ingame_data.keeperAnim[1]:=0;
      Ingame_data.keeperAnim[2]:=UDPmsg.keeperAnim-10;
    end;
  end;

end;

procedure UDPRead10;
type
  TUDPmsg= record
    plrCoords: array [1..10, 1..2, 1..2] of smallint;
    plrSpeed: array [1..10, 1..2] of byte;
    plrAngle: array [1..10, 1..2] of byte;
    keeperCoords: array [1..2, 1..2] of smallint;
    ball_coords: array [1..2] of smallint;
    ballAngle: byte;
    ballSpeed: byte;
    ballHeigth: byte;
    ballHeAngle: byte;
    keeperSpeed: array [1..2] of byte;
    keeperAngle: array [1..2] of byte;
    keeperAnim: byte;
  end;
var
  UDPmsg: TUDPmsg;
  i,j,k: integer;
begin

  UDPClient1.ReadBuffer(@UDPmsg,sizeof(UDPmsg));

  for i:=1 to Ingame_data.maxPlayers do
    for j:=1 to 2 do
      for k:=1 to 2 do
        Ingame_data.plrCoords[i,j,k]:=UDPmsg.plrCoords[i,j,k];

  for i:=1 to Ingame_data.maxPlayers do
    for j:=1 to 2 do begin

      Ingame_data.liukkari[i,j]:=false;
      Ingame_data.kaatunut[i,j]:=false;

      if (UDPmsg.plrSpeed[i,j]>49) and (UDPmsg.plrSpeed[i,j]<100) then begin
        UDPmsg.plrSpeed[i,j]:=UDPmsg.plrSpeed[i,j]-50;
        Ingame_data.liukkari[i,j]:=true;
      end;

      if UDPmsg.plrSpeed[i,j]=250 then
        Ingame_data.kaatunut[i,j]:=true;

      if Ingame_data.kaatunut[i,j] then
        Ingame_data.plrNopeus[i,j]:=0
      else begin
        if UDPmsg.plrSpeed[i,j]>0 then
          Ingame_data.plrNopeus[i,j]:=UDPmsg.plrSpeed[i,j]/10
        else
          Ingame_data.plrNopeus[i,j]:=0;
      end;

      Ingame_data.plrAngle[i,j]:=UDPmsg.plrAngle[i,j]*1.411764;
    end;

  for i:=1 to 2 do
    Ingame_data.ballCoords[i]:=UDPmsg.ball_coords[i];

  Ingame_data.ballKorkeus:=UDPmsg.ballHeigth/2;
  Ingame_data.ballAngle:=UDPmsg.ballAngle*1.411764;
  Ingame_data.ballHeAngle:=UDPmsg.ballHeAngle-100;

  Ingame_data.heittaja[1]:=0;
  Ingame_data.heittaja[2]:=0;
  // heitto käynnissä
  if (UDPmsg.ballSpeed>230) and (UDPmsg.ballSpeed<241) then begin
    Ingame_data.ballNopeus:=0;
    Ingame_data.heittaja[1]:=UDPmsg.ballSpeed-230;
    Ingame_data.heittaja[2]:=1;
  end;
  if (UDPmsg.ballSpeed>240) and (UDPmsg.ballSpeed<251) then begin
    Ingame_data.ballNopeus:=0;
    Ingame_data.heittaja[1]:=UDPmsg.ballSpeed-240;
    Ingame_data.heittaja[2]:=2;
  end;


  for i:=1 to 2 do Ingame_data.palloKeeperilla[i]:=false;
  if UDPmsg.ballSpeed=251 then begin
    Ingame_data.palloKeeperilla[1]:=true;
    Ingame_data.ballNopeus:=0;
  end;
  if UDPmsg.ballSpeed=252 then begin
    Ingame_data.palloKeeperilla[2]:=true;
    Ingame_data.ballNopeus:=0;
  end;

  if (Ingame_data.heittaja[1]=0) and
     (Ingame_data.palloKeeperilla[1]=false) and (Ingame_data.palloKeeperilla[2]=false)
   then //heitto ei käynnissä
    Ingame_data.ballNopeus:=UDPmsg.ballSpeed/10;

//******************************************************************************

  for i:=1 to 2 do begin
    for j:=1 to 2 do
      Ingame_data.keeperCoords[i,j]:=UDPmsg.keeperCoords[i,j];

    Ingame_data.keeperNopeus[i]:=UDPmsg.keeperSpeed[i]/10;
    Ingame_data.keeperAngle[i]:=UDPmsg.keeperAngle[i]*1.411764;
  end;

  Ingame_data.keeperAnim[1]:=0;
  Ingame_data.keeperAnim[2]:=0;
  if UDPmsg.keeperAnim>0 then begin
    if UDPmsg.keeperAnim<20 then begin
      Ingame_data.keeperAnim[1]:=UDPmsg.keeperAnim;
      Ingame_data.keeperAnim[2]:=0;
    end
    else begin
      Ingame_data.keeperAnim[1]:=0;
      Ingame_data.keeperAnim[2]:=UDPmsg.keeperAnim-10;
    end;
  end;

end;

procedure UDPReadSpec5;
type
  TUDPmsg= record
    plrCoords: array [1..5, 1..2, 1..2] of smallint;
    plrSpeed: array [1..5, 1..2] of byte;
    plrAngle: array [1..5, 1..2] of byte;
    keeperCoords: array [1..2, 1..2] of smallint;
    ball_coords: array [1..2] of smallint;
    ballAngle: byte;
    ballSpeed: byte;
    ballHeigth: byte;
    ballHeAngle: byte;
    keeperSpeed: array [1..2] of byte;
    keeperAngle: array [1..2] of byte;
    keeperAnim: byte;
  end;
var
  UDPmsg: TUDPmsg;
  i,j,k: integer;
begin

  UDPClient2.ReadBuffer(@UDPmsg,sizeof(UDPmsg));

  for i:=1 to Ingame_data.maxPlayers do
    for j:=1 to 2 do
      for k:=1 to 2 do
        Ingame_data.plrCoords[i,j,k]:=UDPmsg.plrCoords[i,j,k];

  for i:=1 to Ingame_data.maxPlayers do
    for j:=1 to 2 do begin

      Ingame_data.liukkari[i,j]:=false;
      Ingame_data.kaatunut[i,j]:=false;

      if (UDPmsg.plrSpeed[i,j]>49) and (UDPmsg.plrSpeed[i,j]<100) then begin
        UDPmsg.plrSpeed[i,j]:=UDPmsg.plrSpeed[i,j]-50;
        Ingame_data.liukkari[i,j]:=true;
      end;

      if UDPmsg.plrSpeed[i,j]=250 then
        Ingame_data.kaatunut[i,j]:=true;

      if Ingame_data.kaatunut[i,j] then
        Ingame_data.plrNopeus[i,j]:=0
      else begin
        if UDPmsg.plrSpeed[i,j]>0 then
          Ingame_data.plrNopeus[i,j]:=UDPmsg.plrSpeed[i,j]/10
        else
          Ingame_data.plrNopeus[i,j]:=0;
      end;

      Ingame_data.plrAngle[i,j]:=UDPmsg.plrAngle[i,j]*1.411764;
    end;

  for i:=1 to 2 do
    Ingame_data.ballCoords[i]:=UDPmsg.ball_coords[i];

  Ingame_data.ballKorkeus:=UDPmsg.ballHeigth/2;
  Ingame_data.ballAngle:=UDPmsg.ballAngle*1.411764;
  Ingame_data.ballHeAngle:=UDPmsg.ballHeAngle-100;

  Ingame_data.heittaja[1]:=0;
  Ingame_data.heittaja[2]:=0;
  // heitto käynnissä
  if (UDPmsg.ballSpeed>230) and (UDPmsg.ballSpeed<241) then begin
    Ingame_data.ballNopeus:=0;
    Ingame_data.heittaja[1]:=UDPmsg.ballSpeed-230;
    Ingame_data.heittaja[2]:=1;
  end;
  if (UDPmsg.ballSpeed>240) and (UDPmsg.ballSpeed<251) then begin
    Ingame_data.ballNopeus:=0;
    Ingame_data.heittaja[1]:=UDPmsg.ballSpeed-240;
    Ingame_data.heittaja[2]:=2;
  end;


  for i:=1 to 2 do Ingame_data.palloKeeperilla[i]:=false;
  if UDPmsg.ballSpeed=251 then begin
    Ingame_data.palloKeeperilla[1]:=true;
    Ingame_data.ballNopeus:=0;
  end;
  if UDPmsg.ballSpeed=252 then begin
    Ingame_data.palloKeeperilla[2]:=true;
    Ingame_data.ballNopeus:=0;
  end;

  if (Ingame_data.heittaja[1]=0) and
     (Ingame_data.palloKeeperilla[1]=false) and (Ingame_data.palloKeeperilla[2]=false)
   then //heitto ei käynnissä
    Ingame_data.ballNopeus:=UDPmsg.ballSpeed/10;

//******************************************************************************

  for i:=1 to 2 do begin
    for j:=1 to 2 do
      Ingame_data.keeperCoords[i,j]:=UDPmsg.keeperCoords[i,j];

    Ingame_data.keeperNopeus[i]:=UDPmsg.keeperSpeed[i]/10;
    Ingame_data.keeperAngle[i]:=UDPmsg.keeperAngle[i]*1.411764;
  end;

  Ingame_data.keeperAnim[1]:=0;
  Ingame_data.keeperAnim[2]:=0;
  if UDPmsg.keeperAnim>0 then begin
    if UDPmsg.keeperAnim<20 then begin
      Ingame_data.keeperAnim[1]:=UDPmsg.keeperAnim;
      Ingame_data.keeperAnim[2]:=0;
    end
    else begin
      Ingame_data.keeperAnim[1]:=0;
      Ingame_data.keeperAnim[2]:=UDPmsg.keeperAnim-10;
    end;
  end;

end;

procedure UDPReadSpec6;
type
  TUDPmsg= record
    plrCoords: array [1..6, 1..2, 1..2] of smallint;
    plrSpeed: array [1..6, 1..2] of byte;
    plrAngle: array [1..6, 1..2] of byte;
    keeperCoords: array [1..2, 1..2] of smallint;
    ball_coords: array [1..2] of smallint;
    ballAngle: byte;
    ballSpeed: byte;
    ballHeigth: byte;
    ballHeAngle: byte;
    keeperSpeed: array [1..2] of byte;
    keeperAngle: array [1..2] of byte;
    keeperAnim: byte;
  end;
var
  UDPmsg: TUDPmsg;
  i,j,k: integer;
begin

  UDPClient2.ReadBuffer(@UDPmsg,sizeof(UDPmsg));

  for i:=1 to Ingame_data.maxPlayers do
    for j:=1 to 2 do
      for k:=1 to 2 do
        Ingame_data.plrCoords[i,j,k]:=UDPmsg.plrCoords[i,j,k];

  for i:=1 to Ingame_data.maxPlayers do
    for j:=1 to 2 do begin

      Ingame_data.liukkari[i,j]:=false;
      Ingame_data.kaatunut[i,j]:=false;

      if (UDPmsg.plrSpeed[i,j]>49) and (UDPmsg.plrSpeed[i,j]<100) then begin
        UDPmsg.plrSpeed[i,j]:=UDPmsg.plrSpeed[i,j]-50;
        Ingame_data.liukkari[i,j]:=true;
      end;

      if UDPmsg.plrSpeed[i,j]=250 then
        Ingame_data.kaatunut[i,j]:=true;

      if Ingame_data.kaatunut[i,j] then
        Ingame_data.plrNopeus[i,j]:=0
      else begin
        if UDPmsg.plrSpeed[i,j]>0 then
          Ingame_data.plrNopeus[i,j]:=UDPmsg.plrSpeed[i,j]/10
        else
          Ingame_data.plrNopeus[i,j]:=0;
      end;

      Ingame_data.plrAngle[i,j]:=UDPmsg.plrAngle[i,j]*1.411764;
    end;

  for i:=1 to 2 do
    Ingame_data.ballCoords[i]:=UDPmsg.ball_coords[i];

  Ingame_data.ballKorkeus:=UDPmsg.ballHeigth/2;
  Ingame_data.ballAngle:=UDPmsg.ballAngle*1.411764;
  Ingame_data.ballHeAngle:=UDPmsg.ballHeAngle-100;

  Ingame_data.heittaja[1]:=0;
  Ingame_data.heittaja[2]:=0;
  // heitto käynnissä
  if (UDPmsg.ballSpeed>230) and (UDPmsg.ballSpeed<241) then begin
    Ingame_data.ballNopeus:=0;
    Ingame_data.heittaja[1]:=UDPmsg.ballSpeed-230;
    Ingame_data.heittaja[2]:=1;
  end;
  if (UDPmsg.ballSpeed>240) and (UDPmsg.ballSpeed<251) then begin
    Ingame_data.ballNopeus:=0;
    Ingame_data.heittaja[1]:=UDPmsg.ballSpeed-240;
    Ingame_data.heittaja[2]:=2;
  end;


  for i:=1 to 2 do Ingame_data.palloKeeperilla[i]:=false;
  if UDPmsg.ballSpeed=251 then begin
    Ingame_data.palloKeeperilla[1]:=true;
    Ingame_data.ballNopeus:=0;
  end;
  if UDPmsg.ballSpeed=252 then begin
    Ingame_data.palloKeeperilla[2]:=true;
    Ingame_data.ballNopeus:=0;
  end;

  if (Ingame_data.heittaja[1]=0) and
     (Ingame_data.palloKeeperilla[1]=false) and (Ingame_data.palloKeeperilla[2]=false)
   then //heitto ei käynnissä
    Ingame_data.ballNopeus:=UDPmsg.ballSpeed/10;

//******************************************************************************

  for i:=1 to 2 do begin
    for j:=1 to 2 do
      Ingame_data.keeperCoords[i,j]:=UDPmsg.keeperCoords[i,j];

    Ingame_data.keeperNopeus[i]:=UDPmsg.keeperSpeed[i]/10;
    Ingame_data.keeperAngle[i]:=UDPmsg.keeperAngle[i]*1.411764;
  end;

  Ingame_data.keeperAnim[1]:=0;
  Ingame_data.keeperAnim[2]:=0;
  if UDPmsg.keeperAnim>0 then begin
    if UDPmsg.keeperAnim<20 then begin
      Ingame_data.keeperAnim[1]:=UDPmsg.keeperAnim;
      Ingame_data.keeperAnim[2]:=0;
    end
    else begin
      Ingame_data.keeperAnim[1]:=0;
      Ingame_data.keeperAnim[2]:=UDPmsg.keeperAnim-10;
    end;
  end;

end;

procedure UDPReadSpec7;
type
  TUDPmsg= record
    plrCoords: array [1..7, 1..2, 1..2] of smallint;
    plrSpeed: array [1..7, 1..2] of byte;
    plrAngle: array [1..7, 1..2] of byte;
    keeperCoords: array [1..2, 1..2] of smallint;
    ball_coords: array [1..2] of smallint;
    ballAngle: byte;
    ballSpeed: byte;
    ballHeigth: byte;
    ballHeAngle: byte;
    keeperSpeed: array [1..2] of byte;
    keeperAngle: array [1..2] of byte;
    keeperAnim: byte;
  end;
var
  UDPmsg: TUDPmsg;
  i,j,k: integer;
begin

  UDPClient2.ReadBuffer(@UDPmsg,sizeof(UDPmsg));

  for i:=1 to Ingame_data.maxPlayers do
    for j:=1 to 2 do
      for k:=1 to 2 do
        Ingame_data.plrCoords[i,j,k]:=UDPmsg.plrCoords[i,j,k];

  for i:=1 to Ingame_data.maxPlayers do
    for j:=1 to 2 do begin

      Ingame_data.liukkari[i,j]:=false;
      Ingame_data.kaatunut[i,j]:=false;

      if (UDPmsg.plrSpeed[i,j]>49) and (UDPmsg.plrSpeed[i,j]<100) then begin
        UDPmsg.plrSpeed[i,j]:=UDPmsg.plrSpeed[i,j]-50;
        Ingame_data.liukkari[i,j]:=true;
      end;

      if UDPmsg.plrSpeed[i,j]=250 then
        Ingame_data.kaatunut[i,j]:=true;

      if Ingame_data.kaatunut[i,j] then
        Ingame_data.plrNopeus[i,j]:=0
      else begin
        if UDPmsg.plrSpeed[i,j]>0 then
          Ingame_data.plrNopeus[i,j]:=UDPmsg.plrSpeed[i,j]/10
        else
          Ingame_data.plrNopeus[i,j]:=0;
      end;

      Ingame_data.plrAngle[i,j]:=UDPmsg.plrAngle[i,j]*1.411764;
    end;

  for i:=1 to 2 do
    Ingame_data.ballCoords[i]:=UDPmsg.ball_coords[i];

  Ingame_data.ballKorkeus:=UDPmsg.ballHeigth/2;
  Ingame_data.ballAngle:=UDPmsg.ballAngle*1.411764;
  Ingame_data.ballHeAngle:=UDPmsg.ballHeAngle-100;

  Ingame_data.heittaja[1]:=0;
  Ingame_data.heittaja[2]:=0;
  // heitto käynnissä
  if (UDPmsg.ballSpeed>230) and (UDPmsg.ballSpeed<241) then begin
    Ingame_data.ballNopeus:=0;
    Ingame_data.heittaja[1]:=UDPmsg.ballSpeed-230;
    Ingame_data.heittaja[2]:=1;
  end;
  if (UDPmsg.ballSpeed>240) and (UDPmsg.ballSpeed<251) then begin
    Ingame_data.ballNopeus:=0;
    Ingame_data.heittaja[1]:=UDPmsg.ballSpeed-240;
    Ingame_data.heittaja[2]:=2;
  end;


  for i:=1 to 2 do Ingame_data.palloKeeperilla[i]:=false;
  if UDPmsg.ballSpeed=251 then begin
    Ingame_data.palloKeeperilla[1]:=true;
    Ingame_data.ballNopeus:=0;
  end;
  if UDPmsg.ballSpeed=252 then begin
    Ingame_data.palloKeeperilla[2]:=true;
    Ingame_data.ballNopeus:=0;
  end;

  if (Ingame_data.heittaja[1]=0) and
     (Ingame_data.palloKeeperilla[1]=false) and (Ingame_data.palloKeeperilla[2]=false)
   then //heitto ei käynnissä
    Ingame_data.ballNopeus:=UDPmsg.ballSpeed/10;

//******************************************************************************

  for i:=1 to 2 do begin
    for j:=1 to 2 do
      Ingame_data.keeperCoords[i,j]:=UDPmsg.keeperCoords[i,j];

    Ingame_data.keeperNopeus[i]:=UDPmsg.keeperSpeed[i]/10;
    Ingame_data.keeperAngle[i]:=UDPmsg.keeperAngle[i]*1.411764;
  end;

  Ingame_data.keeperAnim[1]:=0;
  Ingame_data.keeperAnim[2]:=0;
  if UDPmsg.keeperAnim>0 then begin
    if UDPmsg.keeperAnim<20 then begin
      Ingame_data.keeperAnim[1]:=UDPmsg.keeperAnim;
      Ingame_data.keeperAnim[2]:=0;
    end
    else begin
      Ingame_data.keeperAnim[1]:=0;
      Ingame_data.keeperAnim[2]:=UDPmsg.keeperAnim-10;
    end;
  end;

end;

procedure UDPReadSpec8;
type
  TUDPmsg= record
    plrCoords: array [1..8, 1..2, 1..2] of smallint;
    plrSpeed: array [1..8, 1..2] of byte;
    plrAngle: array [1..8, 1..2] of byte;
    keeperCoords: array [1..2, 1..2] of smallint;
    ball_coords: array [1..2] of smallint;
    ballAngle: byte;
    ballSpeed: byte;
    ballHeigth: byte;
    ballHeAngle: byte;
    keeperSpeed: array [1..2] of byte;
    keeperAngle: array [1..2] of byte;
    keeperAnim: byte;
  end;
var
  UDPmsg: TUDPmsg;
  i,j,k: integer;
begin

  UDPClient2.ReadBuffer(@UDPmsg,sizeof(UDPmsg));

  for i:=1 to Ingame_data.maxPlayers do
    for j:=1 to 2 do
      for k:=1 to 2 do
        Ingame_data.plrCoords[i,j,k]:=UDPmsg.plrCoords[i,j,k];

  for i:=1 to Ingame_data.maxPlayers do
    for j:=1 to 2 do begin

      Ingame_data.liukkari[i,j]:=false;
      Ingame_data.kaatunut[i,j]:=false;

      if (UDPmsg.plrSpeed[i,j]>49) and (UDPmsg.plrSpeed[i,j]<100) then begin
        UDPmsg.plrSpeed[i,j]:=UDPmsg.plrSpeed[i,j]-50;
        Ingame_data.liukkari[i,j]:=true;
      end;

      if UDPmsg.plrSpeed[i,j]=250 then
        Ingame_data.kaatunut[i,j]:=true;

      if Ingame_data.kaatunut[i,j] then
        Ingame_data.plrNopeus[i,j]:=0
      else begin
        if UDPmsg.plrSpeed[i,j]>0 then
          Ingame_data.plrNopeus[i,j]:=UDPmsg.plrSpeed[i,j]/10
        else
          Ingame_data.plrNopeus[i,j]:=0;
      end;

      Ingame_data.plrAngle[i,j]:=UDPmsg.plrAngle[i,j]*1.411764;
    end;

  for i:=1 to 2 do
    Ingame_data.ballCoords[i]:=UDPmsg.ball_coords[i];

  Ingame_data.ballKorkeus:=UDPmsg.ballHeigth/2;
  Ingame_data.ballAngle:=UDPmsg.ballAngle*1.411764;
  Ingame_data.ballHeAngle:=UDPmsg.ballHeAngle-100;

  Ingame_data.heittaja[1]:=0;
  Ingame_data.heittaja[2]:=0;
  // heitto käynnissä
  if (UDPmsg.ballSpeed>230) and (UDPmsg.ballSpeed<241) then begin
    Ingame_data.ballNopeus:=0;
    Ingame_data.heittaja[1]:=UDPmsg.ballSpeed-230;
    Ingame_data.heittaja[2]:=1;
  end;
  if (UDPmsg.ballSpeed>240) and (UDPmsg.ballSpeed<251) then begin
    Ingame_data.ballNopeus:=0;
    Ingame_data.heittaja[1]:=UDPmsg.ballSpeed-240;
    Ingame_data.heittaja[2]:=2;
  end;


  for i:=1 to 2 do Ingame_data.palloKeeperilla[i]:=false;
  if UDPmsg.ballSpeed=251 then begin
    Ingame_data.palloKeeperilla[1]:=true;
    Ingame_data.ballNopeus:=0;
  end;
  if UDPmsg.ballSpeed=252 then begin
    Ingame_data.palloKeeperilla[2]:=true;
    Ingame_data.ballNopeus:=0;
  end;

  if (Ingame_data.heittaja[1]=0) and
     (Ingame_data.palloKeeperilla[1]=false) and (Ingame_data.palloKeeperilla[2]=false)
   then //heitto ei käynnissä
    Ingame_data.ballNopeus:=UDPmsg.ballSpeed/10;

//******************************************************************************

  for i:=1 to 2 do begin
    for j:=1 to 2 do
      Ingame_data.keeperCoords[i,j]:=UDPmsg.keeperCoords[i,j];

    Ingame_data.keeperNopeus[i]:=UDPmsg.keeperSpeed[i]/10;
    Ingame_data.keeperAngle[i]:=UDPmsg.keeperAngle[i]*1.411764;
  end;

  Ingame_data.keeperAnim[1]:=0;
  Ingame_data.keeperAnim[2]:=0;
  if UDPmsg.keeperAnim>0 then begin
    if UDPmsg.keeperAnim<20 then begin
      Ingame_data.keeperAnim[1]:=UDPmsg.keeperAnim;
      Ingame_data.keeperAnim[2]:=0;
    end
    else begin
      Ingame_data.keeperAnim[1]:=0;
      Ingame_data.keeperAnim[2]:=UDPmsg.keeperAnim-10;
    end;
  end;

end;

procedure UDPReadSpec9;
type
  TUDPmsg= record
    plrCoords: array [1..9, 1..2, 1..2] of smallint;
    plrSpeed: array [1..9, 1..2] of byte;
    plrAngle: array [1..9, 1..2] of byte;
    keeperCoords: array [1..2, 1..2] of smallint;
    ball_coords: array [1..2] of smallint;
    ballAngle: byte;
    ballSpeed: byte;
    ballHeigth: byte;
    ballHeAngle: byte;
    keeperSpeed: array [1..2] of byte;
    keeperAngle: array [1..2] of byte;
    keeperAnim: byte;
  end;
var
  UDPmsg: TUDPmsg;
  i,j,k: integer;
begin

  UDPClient2.ReadBuffer(@UDPmsg,sizeof(UDPmsg));

  for i:=1 to Ingame_data.maxPlayers do
    for j:=1 to 2 do
      for k:=1 to 2 do
        Ingame_data.plrCoords[i,j,k]:=UDPmsg.plrCoords[i,j,k];

  for i:=1 to Ingame_data.maxPlayers do
    for j:=1 to 2 do begin

      Ingame_data.liukkari[i,j]:=false;
      Ingame_data.kaatunut[i,j]:=false;

      if (UDPmsg.plrSpeed[i,j]>49) and (UDPmsg.plrSpeed[i,j]<100) then begin
        UDPmsg.plrSpeed[i,j]:=UDPmsg.plrSpeed[i,j]-50;
        Ingame_data.liukkari[i,j]:=true;
      end;

      if UDPmsg.plrSpeed[i,j]=250 then
        Ingame_data.kaatunut[i,j]:=true;

      if Ingame_data.kaatunut[i,j] then
        Ingame_data.plrNopeus[i,j]:=0
      else begin
        if UDPmsg.plrSpeed[i,j]>0 then
          Ingame_data.plrNopeus[i,j]:=UDPmsg.plrSpeed[i,j]/10
        else
          Ingame_data.plrNopeus[i,j]:=0;
      end;

      Ingame_data.plrAngle[i,j]:=UDPmsg.plrAngle[i,j]*1.411764;
    end;

  for i:=1 to 2 do
    Ingame_data.ballCoords[i]:=UDPmsg.ball_coords[i];

  Ingame_data.ballKorkeus:=UDPmsg.ballHeigth/2;
  Ingame_data.ballAngle:=UDPmsg.ballAngle*1.411764;
  Ingame_data.ballHeAngle:=UDPmsg.ballHeAngle-100;

  Ingame_data.heittaja[1]:=0;
  Ingame_data.heittaja[2]:=0;
  // heitto käynnissä
  if (UDPmsg.ballSpeed>230) and (UDPmsg.ballSpeed<241) then begin
    Ingame_data.ballNopeus:=0;
    Ingame_data.heittaja[1]:=UDPmsg.ballSpeed-230;
    Ingame_data.heittaja[2]:=1;
  end;
  if (UDPmsg.ballSpeed>240) and (UDPmsg.ballSpeed<251) then begin
    Ingame_data.ballNopeus:=0;
    Ingame_data.heittaja[1]:=UDPmsg.ballSpeed-240;
    Ingame_data.heittaja[2]:=2;
  end;


  for i:=1 to 2 do Ingame_data.palloKeeperilla[i]:=false;
  if UDPmsg.ballSpeed=251 then begin
    Ingame_data.palloKeeperilla[1]:=true;
    Ingame_data.ballNopeus:=0;
  end;
  if UDPmsg.ballSpeed=252 then begin
    Ingame_data.palloKeeperilla[2]:=true;
    Ingame_data.ballNopeus:=0;
  end;

  if (Ingame_data.heittaja[1]=0) and
     (Ingame_data.palloKeeperilla[1]=false) and (Ingame_data.palloKeeperilla[2]=false)
   then //heitto ei käynnissä
    Ingame_data.ballNopeus:=UDPmsg.ballSpeed/10;

//******************************************************************************

  for i:=1 to 2 do begin
    for j:=1 to 2 do
      Ingame_data.keeperCoords[i,j]:=UDPmsg.keeperCoords[i,j];

    Ingame_data.keeperNopeus[i]:=UDPmsg.keeperSpeed[i]/10;
    Ingame_data.keeperAngle[i]:=UDPmsg.keeperAngle[i]*1.411764;
  end;

  Ingame_data.keeperAnim[1]:=0;
  Ingame_data.keeperAnim[2]:=0;
  if UDPmsg.keeperAnim>0 then begin
    if UDPmsg.keeperAnim<20 then begin
      Ingame_data.keeperAnim[1]:=UDPmsg.keeperAnim;
      Ingame_data.keeperAnim[2]:=0;
    end
    else begin
      Ingame_data.keeperAnim[1]:=0;
      Ingame_data.keeperAnim[2]:=UDPmsg.keeperAnim-10;
    end;
  end;

end;

procedure UDPReadSpec10;
type
  TUDPmsg= record
    plrCoords: array [1..10, 1..2, 1..2] of smallint;
    plrSpeed: array [1..10, 1..2] of byte;
    plrAngle: array [1..10, 1..2] of byte;
    keeperCoords: array [1..2, 1..2] of smallint;
    ball_coords: array [1..2] of smallint;
    ballAngle: byte;
    ballSpeed: byte;
    ballHeigth: byte;
    ballHeAngle: byte;
    keeperSpeed: array [1..2] of byte;
    keeperAngle: array [1..2] of byte;
    keeperAnim: byte;
  end;
var
  UDPmsg: TUDPmsg;
  i,j,k: integer;
begin

  UDPClient2.ReadBuffer(@UDPmsg,sizeof(UDPmsg));

  for i:=1 to Ingame_data.maxPlayers do
    for j:=1 to 2 do
      for k:=1 to 2 do
        Ingame_data.plrCoords[i,j,k]:=UDPmsg.plrCoords[i,j,k];

  for i:=1 to Ingame_data.maxPlayers do
    for j:=1 to 2 do begin

      Ingame_data.liukkari[i,j]:=false;
      Ingame_data.kaatunut[i,j]:=false;

      if (UDPmsg.plrSpeed[i,j]>49) and (UDPmsg.plrSpeed[i,j]<100) then begin
        UDPmsg.plrSpeed[i,j]:=UDPmsg.plrSpeed[i,j]-50;
        Ingame_data.liukkari[i,j]:=true;
      end;

      if UDPmsg.plrSpeed[i,j]=250 then
        Ingame_data.kaatunut[i,j]:=true;

      if Ingame_data.kaatunut[i,j] then
        Ingame_data.plrNopeus[i,j]:=0
      else begin
        if UDPmsg.plrSpeed[i,j]>0 then
          Ingame_data.plrNopeus[i,j]:=UDPmsg.plrSpeed[i,j]/10
        else
          Ingame_data.plrNopeus[i,j]:=0;
      end;

      Ingame_data.plrAngle[i,j]:=UDPmsg.plrAngle[i,j]*1.411764;
    end;

  for i:=1 to 2 do
    Ingame_data.ballCoords[i]:=UDPmsg.ball_coords[i];

  Ingame_data.ballKorkeus:=UDPmsg.ballHeigth/2;
  Ingame_data.ballAngle:=UDPmsg.ballAngle*1.411764;
  Ingame_data.ballHeAngle:=UDPmsg.ballHeAngle-100;

  Ingame_data.heittaja[1]:=0;
  Ingame_data.heittaja[2]:=0;
  // heitto käynnissä
  if (UDPmsg.ballSpeed>230) and (UDPmsg.ballSpeed<241) then begin
    Ingame_data.ballNopeus:=0;
    Ingame_data.heittaja[1]:=UDPmsg.ballSpeed-230;
    Ingame_data.heittaja[2]:=1;
  end;
  if (UDPmsg.ballSpeed>240) and (UDPmsg.ballSpeed<251) then begin
    Ingame_data.ballNopeus:=0;
    Ingame_data.heittaja[1]:=UDPmsg.ballSpeed-240;
    Ingame_data.heittaja[2]:=2;
  end;


  for i:=1 to 2 do Ingame_data.palloKeeperilla[i]:=false;
  if UDPmsg.ballSpeed=251 then begin
    Ingame_data.palloKeeperilla[1]:=true;
    Ingame_data.ballNopeus:=0;
  end;
  if UDPmsg.ballSpeed=252 then begin
    Ingame_data.palloKeeperilla[2]:=true;
    Ingame_data.ballNopeus:=0;
  end;

  if (Ingame_data.heittaja[1]=0) and
     (Ingame_data.palloKeeperilla[1]=false) and (Ingame_data.palloKeeperilla[2]=false)
   then //heitto ei käynnissä
    Ingame_data.ballNopeus:=UDPmsg.ballSpeed/10;

//******************************************************************************

  for i:=1 to 2 do begin
    for j:=1 to 2 do
      Ingame_data.keeperCoords[i,j]:=UDPmsg.keeperCoords[i,j];

    Ingame_data.keeperNopeus[i]:=UDPmsg.keeperSpeed[i]/10;
    Ingame_data.keeperAngle[i]:=UDPmsg.keeperAngle[i]*1.411764;
  end;

  Ingame_data.keeperAnim[1]:=0;
  Ingame_data.keeperAnim[2]:=0;
  if UDPmsg.keeperAnim>0 then begin
    if UDPmsg.keeperAnim<20 then begin
      Ingame_data.keeperAnim[1]:=UDPmsg.keeperAnim;
      Ingame_data.keeperAnim[2]:=0;
    end
    else begin
      Ingame_data.keeperAnim[1]:=0;
      Ingame_data.keeperAnim[2]:=UDPmsg.keeperAnim-10;
    end;
  end;

end;

procedure hiiriRutiini;
var paik_feikki_hiiri: array [1..2] of smallint;
    plrX, plrY: smallint;
begin

		//mouseNaytto[0] = px;
		//mouseNaytto[1] = py;

		plrX := Ingame_data.plrCoords[Ingame_data.omaPeliIndex,Ingame_data.omaPeliTeamIndex,1];
		plrY := Ingame_data.plrCoords[Ingame_data.omaPeliIndex,Ingame_data.omaPeliTeamIndex,2];

		paik_feikki_hiiri[1] := 0;
		paik_feikki_hiiri[2] := 0;

		if plrX < -119 then begin
			if plrX > Ingame_data.mouse_naytto[1] then
				paik_feikki_hiiri[1] := -119 - (plrX - Ingame_data.mouse_naytto[1])
			else
        paik_feikki_hiiri[1] := -119 + (Ingame_data.mouse_naytto[1] - plrX);
		end;

		if plrX > 119 then begin
			if (plrX > Ingame_data.mouse_naytto[1]) then
				paik_feikki_hiiri[1] := 119 - (plrX - Ingame_data.mouse_naytto[1])
			else
				paik_feikki_hiiri[1] := 119 + (Ingame_data.mouse_naytto[1] - plrX);
		end;

		if plrY < -477 then begin
			if (plrY > Ingame_data.mouse_naytto[2]) then
				paik_feikki_hiiri[2] := -477 - (plrY - Ingame_data.mouse_naytto[2])
			else
				paik_feikki_hiiri[2] := -477 + (Ingame_data.mouse_naytto[2] - plrY);
		end;

		if plrY > 477 then begin
			if (plrY > Ingame_data.mouse_naytto[2]) then
				paik_feikki_hiiri[2] := 477 - (plrY - Ingame_data.mouse_naytto[2])
			else
				paik_feikki_hiiri[2] := 477 + (Ingame_data.mouse_naytto[2] - plrY);
		end;

		if paik_feikki_hiiri[1]=0 then
			Ingame_data.mouse[1]:=Ingame_data.mouse_naytto[1]
		else
			Ingame_data.mouse[1]:=paik_feikki_hiiri[1];

		if paik_feikki_hiiri[2]=0 then
			Ingame_data.mouse[2]:=Ingame_data.mouse_naytto[2]
		else
			Ingame_data.mouse[2]:=paik_feikki_hiiri[2];


end;

procedure actionzoneVisiblet(b: boolean);
begin

  form1.acZone1.Visible:=b;
  form1.acZone2.Visible:=b;
  form1.acZone3.Visible:=b;
  form1.acZone4.Visible:=b;
  form1.acZone5.Visible:=b;
  form1.acZone6.Visible:=b;
  form1.Image24.Visible:=b;
  form1.acZoneLabel1.Visible:=b;
  form1.acZoneLabel2.Visible:=b;
  form1.acZoneLabel3.Visible:=b;
  form1.acZoneLabel4.Visible:=b;
  form1.acZoneLabel5.Visible:=b;
  form1.acZoneLabel6.Visible:=b;
end;

procedure overviewVisiblet(b: boolean);
begin
  form1.MDScorerH1.visible:=b;
  form1.MDScorerH2.visible:=b;
  form1.MDScorerH3.visible:=b;
  form1.MDScorerH4.visible:=b;
  form1.MDScorerH5.visible:=b;
  form1.MDScorerH6.visible:=b;
  form1.MDScorerH7.visible:=b;
  form1.MDScorerH8.visible:=b;
  form1.MDScorerH9.visible:=b;
  form1.MDScorerH10.visible:=b;
  form1.MDScorerH11.visible:=b;
  form1.MDScorerH12.visible:=b;
  form1.MDScorerH13.visible:=b;
  form1.MDScorerH14.visible:=b;
  form1.MDScorerH15.visible:=b;

  form1.MDScorerA1.visible:=b;
  form1.MDScorerA2.visible:=b;
  form1.MDScorerA3.visible:=b;
  form1.MDScorerA4.visible:=b;
  form1.MDScorerA5.visible:=b;
  form1.MDScorerA6.visible:=b;
  form1.MDScorerA7.visible:=b;
  form1.MDScorerA8.visible:=b;
  form1.MDScorerA9.visible:=b;
  form1.MDScorerA10.visible:=b;
  form1.MDScorerA11.visible:=b;
  form1.MDScorerA12.visible:=b;
  form1.MDScorerA13.visible:=b;
  form1.MDScorerA14.visible:=b;
  form1.MDScorerA15.visible:=b;
end;

procedure MDplayerstatsVisiblet(b: boolean);
begin

  form1.MDScorerH1.visible:=b;
  form1.MDScorerH2.visible:=b;
  form1.MDScorerH3.visible:=b;
  form1.MDScorerH4.visible:=b;
  form1.MDScorerH5.visible:=b;
  form1.MDScorerH6.visible:=b;
  form1.MDScorerH7.visible:=b;
  form1.MDScorerH8.visible:=b;
  form1.MDScorerH9.visible:=b;
  form1.MDScorerH10.visible:=b;
  form1.MDScorerH11.visible:=b;
  form1.MDScorerH12.visible:=b;
  form1.MDScorerH13.visible:=b;
  form1.MDScorerH14.visible:=b;
  form1.MDScorerH15.visible:=b;

  form1.MDpas1.visible:=b;
  form1.MDpas2.visible:=b;
  form1.MDpas3.visible:=b;
  form1.MDpas4.visible:=b;
  form1.MDpas5.visible:=b;
  form1.MDpas6.visible:=b;
  form1.MDpas7.visible:=b;
  form1.MDpas8.visible:=b;
  form1.MDpas9.visible:=b;
  form1.MDpas10.visible:=b;
  form1.MDpas11.visible:=b;
  form1.MDpas12.visible:=b;
  form1.MDpas13.visible:=b;
  form1.MDpas14.visible:=b;
  form1.MDpas15.visible:=b;

  form1.MDpasb1.visible:=b;
  form1.MDpasb2.visible:=b;
  form1.MDpasb3.visible:=b;
  form1.MDpasb4.visible:=b;
  form1.MDpasb5.visible:=b;
  form1.MDpasb6.visible:=b;
  form1.MDpasb7.visible:=b;
  form1.MDpasb8.visible:=b;
  form1.MDpasb9.visible:=b;
  form1.MDpasb10.visible:=b;
  form1.MDpasb11.visible:=b;
  form1.MDpasb12.visible:=b;
  form1.MDpasb13.visible:=b;
  form1.MDpasb14.visible:=b;
  form1.MDpasb15.visible:=b;

  form1.MDtck1.visible:=b;
  form1.MDtck2.visible:=b;
  form1.MDtck3.visible:=b;
  form1.MDtck4.visible:=b;
  form1.MDtck5.visible:=b;
  form1.MDtck6.visible:=b;
  form1.MDtck7.visible:=b;
  form1.MDtck8.visible:=b;
  form1.MDtck9.visible:=b;
  form1.MDtck10.visible:=b;
  form1.MDtck11.visible:=b;
  form1.MDtck12.visible:=b;
  form1.MDtck13.visible:=b;
  form1.MDtck14.visible:=b;
  form1.MDtck15.visible:=b;

  form1.MDtckb1.visible:=b;
  form1.MDtckb2.visible:=b;
  form1.MDtckb3.visible:=b;
  form1.MDtckb4.visible:=b;
  form1.MDtckb5.visible:=b;
  form1.MDtckb6.visible:=b;
  form1.MDtckb7.visible:=b;
  form1.MDtckb8.visible:=b;
  form1.MDtckb9.visible:=b;
  form1.MDtckb10.visible:=b;
  form1.MDtckb11.visible:=b;
  form1.MDtckb12.visible:=b;
  form1.MDtckb13.visible:=b;
  form1.MDtckb14.visible:=b;
  form1.MDtckb15.visible:=b;

  form1.MDhea1.visible:=b;
  form1.MDhea2.visible:=b;
  form1.MDhea3.visible:=b;
  form1.MDhea4.visible:=b;
  form1.MDhea5.visible:=b;
  form1.MDhea6.visible:=b;
  form1.MDhea7.visible:=b;
  form1.MDhea8.visible:=b;
  form1.MDhea9.visible:=b;
  form1.MDhea10.visible:=b;
  form1.MDhea11.visible:=b;
  form1.MDhea12.visible:=b;
  form1.MDhea13.visible:=b;
  form1.MDhea14.visible:=b;
  form1.MDhea15.visible:=b;

  form1.MDheab1.visible:=b;
  form1.MDheab2.visible:=b;
  form1.MDheab3.visible:=b;
  form1.MDheab4.visible:=b;
  form1.MDheab5.visible:=b;
  form1.MDheab6.visible:=b;
  form1.MDheab7.visible:=b;
  form1.MDheab8.visible:=b;
  form1.MDheab9.visible:=b;
  form1.MDheab10.visible:=b;
  form1.MDheab11.visible:=b;
  form1.MDheab12.visible:=b;
  form1.MDheab13.visible:=b;
  form1.MDheab14.visible:=b;
  form1.MDheab15.visible:=b;

  form1.MDsho1.visible:=b;
  form1.MDsho2.visible:=b;
  form1.MDsho3.visible:=b;
  form1.MDsho4.visible:=b;
  form1.MDsho5.visible:=b;
  form1.MDsho6.visible:=b;
  form1.MDsho7.visible:=b;
  form1.MDsho8.visible:=b;
  form1.MDsho9.visible:=b;
  form1.MDsho10.visible:=b;
  form1.MDsho11.visible:=b;
  form1.MDsho12.visible:=b;
  form1.MDsho13.visible:=b;
  form1.MDsho14.visible:=b;
  form1.MDsho15.visible:=b;

  form1.MDshob1.visible:=b;
  form1.MDshob2.visible:=b;
  form1.MDshob3.visible:=b;
  form1.MDshob4.visible:=b;
  form1.MDshob5.visible:=b;
  form1.MDshob6.visible:=b;
  form1.MDshob7.visible:=b;
  form1.MDshob8.visible:=b;
  form1.MDshob9.visible:=b;
  form1.MDshob10.visible:=b;
  form1.MDshob11.visible:=b;
  form1.MDshob12.visible:=b;
  form1.MDshob13.visible:=b;
  form1.MDshob14.visible:=b;
  form1.MDshob15.visible:=b;

  form1.MDast1.visible:=b;
  form1.MDast2.visible:=b;
  form1.MDast3.visible:=b;
  form1.MDast4.visible:=b;
  form1.MDast5.visible:=b;
  form1.MDast6.visible:=b;
  form1.MDast7.visible:=b;
  form1.MDast8.visible:=b;
  form1.MDast9.visible:=b;
  form1.MDast10.visible:=b;
  form1.MDast11.visible:=b;
  form1.MDast12.visible:=b;
  form1.MDast13.visible:=b;
  form1.MDast14.visible:=b;
  form1.MDast15.visible:=b;

  form1.MDgls1.visible:=b;
  form1.MDgls2.visible:=b;
  form1.MDgls3.visible:=b;
  form1.MDgls4.visible:=b;
  form1.MDgls5.visible:=b;
  form1.MDgls6.visible:=b;
  form1.MDgls7.visible:=b;
  form1.MDgls8.visible:=b;
  form1.MDgls9.visible:=b;
  form1.MDgls10.visible:=b;
  form1.MDgls11.visible:=b;
  form1.MDgls12.visible:=b;
  form1.MDgls13.visible:=b;
  form1.MDgls14.visible:=b;
  form1.MDgls15.visible:=b;

  form1.MDoff1.visible:=b;
  form1.MDoff2.visible:=b;
  form1.MDoff3.visible:=b;
  form1.MDoff4.visible:=b;
  form1.MDoff5.visible:=b;
  form1.MDoff6.visible:=b;
  form1.MDoff7.visible:=b;
  form1.MDoff8.visible:=b;
  form1.MDoff9.visible:=b;
  form1.MDoff10.visible:=b;
  form1.MDoff11.visible:=b;
  form1.MDoff12.visible:=b;
  form1.MDoff13.visible:=b;
  form1.MDoff14.visible:=b;
  form1.MDoff15.visible:=b;

  form1.MDmin1.visible:=b;
  form1.MDmin2.visible:=b;
  form1.MDmin3.visible:=b;
  form1.MDmin4.visible:=b;
  form1.MDmin5.visible:=b;
  form1.MDmin6.visible:=b;
  form1.MDmin7.visible:=b;
  form1.MDmin8.visible:=b;
  form1.MDmin9.visible:=b;
  form1.MDmin10.visible:=b;
  form1.MDmin11.visible:=b;
  form1.MDmin12.visible:=b;
  form1.MDmin13.visible:=b;
  form1.MDmin14.visible:=b;
  form1.MDmin15.visible:=b;

  form1.sLabelFX165.visible:=b;
  form1.sLabelFX166.visible:=b;
  form1.sLabelFX167.visible:=b;
  form1.sLabelFX168.visible:=b;
  form1.sLabelFX169.visible:=b;
  form1.sLabelFX170.visible:=b;
  form1.sLabelFX171.visible:=b;
  form1.sLabelFX172.visible:=b;
  form1.sLabelFX173.visible:=b;
  form1.sLabelFX174.visible:=b;
  form1.sLabelFX175.visible:=b;
  form1.sLabelFX176.visible:=b;

end;

function ValidEmail(email: string): boolean;
const
  atom_chars = [#33..#255] - ['(', ')', '<', '>', '@', ',', ';', ':', '\', '/', '"', '.', '[', ']', #127];
  quoted_string_chars = [#0..#255] - ['"', #13, '\'];
  letters = ['A'..'Z', 'a'..'z'];
  letters_digits = ['0'..'9', 'A'..'Z', 'a'..'z'];
  subdomain_chars = ['-', '0'..'9', 'A'..'Z', 'a'..'z'];
type
  States = (STATE_BEGIN, STATE_ATOM, STATE_QTEXT, STATE_QCHAR,
  STATE_QUOTE, STATE_LOCAL_PERIOD, STATE_EXPECTING_SUBDOMAIN,
  STATE_SUBDOMAIN, STATE_HYPHEN);
var
  State: States;
  i, n, subdomains: integer;
  c: char;
begin

  State := STATE_BEGIN;
  n := Length(email);
  i := 1;
  subdomains := 1;

  while (i <= n) do begin

    c := email[i];

    case State of
      STATE_BEGIN:
        if c in atom_chars then
          State := STATE_ATOM
        else if c = '"' then
          State := STATE_QTEXT
        else
          break;
      STATE_ATOM:
        if c = '@' then
          State := STATE_EXPECTING_SUBDOMAIN
        else if c = '.' then
          State := STATE_LOCAL_PERIOD
        else if not (c in atom_chars) then
          break;
      STATE_QTEXT:
        if c = '\' then
          State := STATE_QCHAR
        else if c = '"' then
          State := STATE_QUOTE
        else if not (c in quoted_string_chars) then
          break;
      STATE_QCHAR:
        State := STATE_QTEXT;
      STATE_QUOTE:
        if c = '@' then
          State := STATE_EXPECTING_SUBDOMAIN
        else if c = '.' then
          State := STATE_LOCAL_PERIOD
        else
          break;
      STATE_LOCAL_PERIOD:
        if c in atom_chars then
          State := STATE_ATOM
        else if c = '"' then
          State := STATE_QTEXT
        else
          break;
      STATE_EXPECTING_SUBDOMAIN:
        if c in letters then
          State := STATE_SUBDOMAIN
        else
          break;
      STATE_SUBDOMAIN:
        if c = '.' then begin
          inc(subdomains);
          State := STATE_EXPECTING_SUBDOMAIN
        end else if c = '-' then
          State := STATE_HYPHEN
        else if not (c in letters_digits) then
          break;
      STATE_HYPHEN:
        if c in letters_digits then
          State := STATE_SUBDOMAIN
        else if c <> '-' then
          break;
      end;
      inc(i);
    end;
    if i <= n then
      Result := False
    else
      Result := (State = STATE_SUBDOMAIN) and (subdomains >= 2);
end;

procedure searchByIndex(tyyppi: byte; id: string);
type
  TSearchByIndexRec = record
    mtype: word;
    mtype2: word;
    ra: word;
    tyyppi: byte;
    ID: integer;
  end;
var
  SearchByIndexRec: TSearchByIndexRec;
begin

  if please_wait_arvo then exit;
  if id='' then exit;
  if id='0' then exit;
  if tyyppi=1 then
    if strtoint(id)>MAX_PLAYERS then exit;
  if tyyppi=2 then
    if strtoint(id)>MAX_TEAMS then exit;

  please_wait(true);

  SearchByIndexRec.mtype:=9021;
  SearchByIndexRec.mtype2:=9021;
  SearchByIndexRec.ra:=random(55000)+1;
  SearchByIndexRec.tyyppi:=tyyppi;
  SearchByIndexRec.ID:=strtoint(id);
  TCPClient2.WriteBuffer(@SearchByIndexRec,sizeof(SearchByIndexRec));

end;

function getphp(URL: string): string;
var PostDataStream : TStringStream;
    str: string;
begin

  please_wait(true);

  PostDataStream := TStringStream.Create('');
                 
  try
    IdHTTP1.Get(URL, PostDataStream);
    str:=PostDataStream.DataString;
  finally
    PostDataStream.Free;
  end;

  result:=str;

end;

function explode(separator,value: string): TStringArray;
var s: string;
    i,p: integer;
begin

  s:=value;
  i:=0;
  while length(s)>0 do begin
    inc(i);
    SetLength(result,i);
    p:=pos(separator,s);
    if p>0then begin
      result[i-1]:=copy(s,0,p-1);
      s:=copy(s,p+length(separator),length(s));
    end
    else begin
      result[i-1]:=s;
      s:='';
    end;
  end;

end;

end.

