unit mtypet;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, winsock, WSockets, ShellApi,bass;

procedure mtype_4(paik_socket: Integer; mtype: word); //yhdistetty gameservulle
procedure mtype_7; //vastaanotetaan public servereitä
procedure mtype_13; //vastaanotetaan publan tarkat tiedot
procedure mtype_15; //invalid username or password duging login
procedure mtype_16; //vastaan otetaan ilmoitus loginin onnistumisesta
procedure mtype_18; //pelaaja rekisteröinti epäonnistui, koska nimi on jo käytössä
procedure mtype_21; //joukkue rekisteröinti epäonnistui, koska nimi on jo käytössä
procedure mtype_22; //joukkue rekisteröinti onnistui
procedure mtype_24; //vastaanotetaan joukkue data
procedure mtype_28;  //vastaan otetaan public chat msg
procedure mtype_30; //vastaan otetaan pelaaja data
procedure mtype_31; //vastaan otetaan search
procedure mtype_34; //vastaanotetaan oman pelaajan dataa
procedure mtype_35; //ilmoitus inviten onnistumisesta
procedure mtype_36; //ilmoitus inviten accept/rejectistä
procedure mtype_37; //vastaanotetaan loppudata omasta pelaajasta
procedure mtype_38; //vastaanotettiin pelaaja status muunnos
procedure mtype_39; //pleasewait false
procedure mtype_40; //joukkue jätetty
procedure mtype_41; //invite peruutettu
procedure mtype_42; //vastaan otetaan team loppudata1
procedure mtype_43; //vastaan otetaan team loppudata2
procedure mtype_44; //vastaan otetaan team loppudata3
procedure mtype_51(paik_socket: Integer; mtype: word); //vastaan otetaan challenge listaa
procedure mtype_52; //vastaanotetaan tietoja haastettavasta
procedure mtype_54; // dataa challenge panel kakkoseen (missä paidat)
procedure mtype_57(paik_socket: Integer; mtype: word);  // receiving list of livescores
procedure mtype_58;  // tarkemmat tiedot haastematsista
procedure mtype_223; // chat - game public
procedure mtype_224; // chat - game own team
procedure mtype_225; // chat - PM
procedure mtype_226; // chat - to team
procedure mtype_227; // chat - to ownteam

procedure mtype_228; //vastaan otetaan chat PM
procedure mtype_229; //vastaan otetaan chat (to team PM)
procedure mtype_230; //vastaan otetaan chat (to own team)
procedure mtype_235; //vastaan otetaan pelaaja loppudataa
procedure mtype_239; //lobbyserver on toimittanut version
procedure mtype_243(paik_socket: Integer; mtype: word); //password change onnistui

procedure mtype_621; //handshake

procedure mtype_2623; //gameserver ilmottaa mahtuuko servulle (public&challenge)
procedure mtype_2626; //gameserver ilmottaa, että join done (sekä public että challenge)
procedure mtype_2630; //broadcastaus joinauksessta

procedure mtype_3000; //ilmoitus disconnectaajasta
procedure mtype_3001; //client on klikannut ready nappia, ja nyt vastaanotetaan muutos dataa
procedure mtype_3002; //client on swapannut joukkuetta
procedure mtype_3003; //aika enabled, true/ false
procedure mtype_3004; //gamestatus vastaanotto
procedure mtype_3015; //sound broadcast
procedure mtype_3016; //ilmoitus maalista
procedure mtype_3022; //homealoituspuoli
procedure mtype_3023; //ref liputukset

procedure mtype_4000; //vastaan otetaan dataa spektausta varten

procedure mtype_5000; // receiving 10 player stats
procedure mtype_5004; //vastaanotetaan administratorin broadcast msg
procedure mtype_5005; //vastaanotetaan administratorin broadcast msg (joka tulee gameserverin kautta)
procedure mtype_5006; //info viesti, että challenge on luotu
procedure mtype_5007; //info viesti, että challenge on luotu (joka tulee gameserverin kautta)
procedure mtype_5008; //vip transfer done
procedure mtype_5011; //mainserver käskee pyytämään jotain tavaraa uudelleen
procedure mtype_5014(paik_socket: Integer; mtype: word); //superadmin vastaanottaa listan pelaajista

procedure mtype_9000; // receiving 10 public chatter names
procedure mtype_9001(paik_socket: Integer; mtype: word); //user joined to public chat
procedure mtype_9002; // user quits from public chat
procedure mtype_9003(paik_socket: Integer; mtype: word); //info viesti masterservun kautta
procedure mtype_9004(paik_socket: Integer; mtype: word); //info viesti gameservun kautta
procedure mtype_9007(paik_socket: Integer; mtype: word); //vastaanotetaan /team
procedure mtype_9009(paik_socket: Integer; mtype: word); //vastaanotetaan /team  (gameserverin kautta)
procedure mtype_9010(paik_socket: Integer; mtype: word); //vastaanotetaan /info
procedure mtype_9012(paik_socket: Integer; mtype: word); //vastaanotetaan /info  (gameserverin kautta)
procedure mtype_9013(paik_socket: Integer; mtype: word); //username changed
procedure mtype_9014(paik_socket: Integer; mtype: word); //vastaanotetaan puoliaika dataa
procedure mtype_9015(paik_socket: Integer; mtype: word); //vastaanotetaan matchDetails (teamdata)
procedure mtype_9016(paik_socket: Integer; mtype: word); //vastaanotetaan matchDetails (pelaaja dataa)
procedure mtype_9017(paik_socket: Integer; mtype: word); //vastaanotetaan matchDetails (goal dataa)
procedure mtype_9020(paik_socket: Integer; mtype: word); //pelaajat samalta ip:ltä
procedure mtype_9023(paik_socket: Integer; mtype: word); //panaania
procedure mtype_9024(paik_socket: Integer; mtype: word); //vastaanotetaan lista gameservereistä
procedure mtype_9025(paik_socket: Integer; mtype: word); //privaservu luotu
procedure mtype_9026(paik_socket: Integer; mtype: word); //invalid password (privaservuun)

implementation

uses muuttujat, proseduurit, unit2, unit1, unit4, unit3,typet,unit6;

procedure mtype_4(paik_socket: Integer; mtype: word); //yhdistetty gameservulle
type
  TVersio_toimitus = record
    mtype: smallint;
    mtype2: smallint;
    ra: word;
  end;
  TJoinserverilmotus = record
    mtype: word;
    mtype2: word;
    ra: word;
    server_index: smallint;
    password: string[15];
  end;
  TJoinserverilmotusChal = record
    mtype: word;
    mtype2: word;
    ra: word;
    vipIndex: integer;
    socket: integer;
    sID: smallint;
    teamName: string[20];
  end;
  TJoinSpectator = record
    mtype: word;
    mtype2: word;
    ra: word;
    sID: smallint;
    pID: integer;
    socket: integer;
  end;
var
  Versio_toimitus: TVersio_toimitus;
  Joinserverilmotus: TJoinserverilmotus;
  JoinserverilmotusChal: TJoinserverilmotusChal;
  JoinSpectator: TJoinSpectator;
begin                 

  TCPClient1.ReadBuffer(@Versio_toimitus.mtype2,sizeof(TVersio_toimitus)-2);
  if not (Versio_toimitus.mtype2=4) then exit;
  if disable_recent_msg(paik_socket,mtype,Versio_toimitus.ra)=true then exit;

  if selectedGameType=1 then begin
    Joinserverilmotus.mtype:=14;
    Joinserverilmotus.mtype2:=14;
    Joinserverilmotus.ra:=random(55000)+1;
    Joinserverilmotus.server_index:=selectedServerID;
    Joinserverilmotus.password:=form1.sEdit26.Text;
    TCPClient1.WriteBuffer(@Joinserverilmotus,sizeof(Joinserverilmotus));
  end;

  if selectedGameType=2 then begin
    JoinserverilmotusChal.mtype:=3008;
    JoinserverilmotusChal.mtype2:=3008;
    JoinserverilmotusChal.ra:=random(55000)+1;
    JoinserverilmotusChal.sID:=selectedServerID;
    JoinserverilmotusChal.vipIndex:=oma_lobbyindex;
    JoinserverilmotusChal.socket:=oma_socket;
    JoinserverilmotusChal.teamName:=oma_team_name;
    TCPClient1.WriteBuffer(@JoinserverilmotusChal,sizeof(JoinserverilmotusChal));
  end;

  if selectedGameType=3 then begin
    JoinSpectator.mtype:=4000;
    JoinSpectator.mtype2:=4000;
    JoinSpectator.ra:=random(55000)+1;
    JoinSpectator.sID:=selectedServerID;
    JoinSpectator.pID:=oma_lobbyindex;
    JoinSpectator.socket:=oma_socket;
    TCPClient1.WriteBuffer(@JoinSpectator,sizeof(JoinSpectator));
  end;    

end;

procedure mtype_7; //vastaanotetaan public servereitä
type
  TPubla_toimitus = record
    mtype: smallint;
    mtype2: smallint;
    name: array [1..10] of string[20];
    index: array [1..10] of smallint;
    player_count: array [1..10] of byte;
    max_players: array [1..10] of byte;
    password: array [1..10] of boolean;
    next_i: integer;
  end;

var
  Publa_toimitus: TPubla_toimitus;

  i:integer;
begin

  TCPClient2.ReadBuffer(@Publa_toimitus.mtype2,sizeof(TPubla_toimitus)-2);
  if not (Publa_toimitus.mtype2=7) then exit;

  for i:=1 to 10 do begin
    if not (Publa_toimitus.name[i]='') then begin
      setLength(publicServersList.name,high(publicServersList.name)+2);
      setLength(publicServersList.ID,high(publicServersList.name)+2);
      setLength(publicServersList.plrCount,high(publicServersList.name)+2);
      setLength(publicServersList.maxPlrs,high(publicServersList.name)+2);
      setLength(publicServersList.password,high(publicServersList.name)+2);

      publicServersList.name[high(publicServersList.name)]:=Publa_toimitus.name[i];
      publicServersList.ID[high(publicServersList.name)]:=Publa_toimitus.index[i];
      publicServersList.plrCount[high(publicServersList.name)]:=Publa_toimitus.player_count[i];
      publicServersList.maxPlrs[high(publicServersList.name)]:=Publa_toimitus.max_players[i];
      publicServersList.password[high(publicServersList.name)]:=Publa_toimitus.password[i];

    end;
  end;

  if Publa_toimitus.next_i>0 then begin
    pyydaPublicServereita(Publa_toimitus.next_i);
    exit;
  end;

  if high(publicServersList.name)>19 then
    form1.sScrollBar2.Max:=high(publicServersList.name)-19
  else
    form1.sScrollBar2.Max:=0;

  asetaPublicServers;

  panel_visiblet(12);

  please_wait(false);

end;

procedure mtype_13; //vastaanotetaan publan tarkat tiedot
type
  TPubla_tiedot = record
    mtype: smallint;
    mtype2: smallint;
    selectedIndex: smallint;
    IP: string[15];
    nimi: string[20];
    players: array [1..2] of byte;
    usernames: array [1..10, 1..2] of string[15];
    password: boolean;
  end;
var
  Publa_tiedot: TPubla_tiedot;
  i,j,pker: integer;
begin

  TCPClient2.ReadBuffer(@Publa_tiedot.mtype2,sizeof(TPubla_tiedot)-2);
  if not (Publa_tiedot.mtype2=13) then exit;

  form1.sLabelFX97.Visible:=true;
  form1.sLabelFX98.Visible:=true;
  form1.sbutton14.Visible:=true;
  form1.sLabelFX100.Caption:=Publa_tiedot.nimi;
  form1.sLabelFX101.Caption:=Publa_tiedot.IP;

  form1.sEdit26.Text:='';

  if Publa_tiedot.password then begin
    form1.sLabelFX188.Visible:=true;
    form1.sEdit26.Visible:=true;
  end else begin
    form1.sLabelFX188.Visible:=false;
    form1.sEdit26.Visible:=false;
  end;

  for j:=1 to 2 do begin
    pker:=0;
    for i:=1 to 10 do begin
      if not (Publa_tiedot.usernames[i,j]='') then begin
        inc(pker);
        asetaPublaPlayerName(pker,j,Publa_tiedot.usernames[i,j]);
      end;
    end;
  end;

  form1.sLabelFX186.Visible:=true;
  form1.trainingPlrNameH1.Visible:=true;
  form1.trainingPlrNameH2.Visible:=true;
  form1.trainingPlrNameH3.Visible:=true;
  form1.trainingPlrNameH4.Visible:=true;
  form1.trainingPlrNameH5.Visible:=true;
  form1.trainingPlrNameH6.Visible:=true;
  form1.trainingPlrNameH7.Visible:=true;
  form1.trainingPlrNameH8.Visible:=true;
  form1.trainingPlrNameH9.Visible:=true;
  form1.trainingPlrNameH10.Visible:=true;
  form1.trainingPlrNameA1.Visible:=true;
  form1.trainingPlrNameA2.Visible:=true;
  form1.trainingPlrNameA3.Visible:=true;
  form1.trainingPlrNameA4.Visible:=true;
  form1.trainingPlrNameA5.Visible:=true;
  form1.trainingPlrNameA6.Visible:=true;
  form1.trainingPlrNameA7.Visible:=true;
  form1.trainingPlrNameA8.Visible:=true;
  form1.trainingPlrNameA9.Visible:=true;
  form1.trainingPlrNameA10.Visible:=true;

  please_wait(false);

end;

procedure mtype_15; //invalid username or password duging login
type
  TVMtype = record
    mtype: word;
    mtype2: word;
  end;

var
  VMtype: TVMtype;
begin

  TCPClient2.ReadBuffer(@VMtype.mtype2,sizeof(TVMtype)-2);
  if not (VMtype.mtype2=15) then exit;

  showmessage('Invalid username or password');
  please_wait(false);

end;

procedure mtype_16;   //vastaan otetaan ilmoitus loginin onnistumisesta
type
  TLoggautumisen_onnistuminen = record
    mtype: word;
    mtype2: word;
    lobby_index: integer;
    registered: integer;
    online: integer;
    socket: integer;
    vipMinsRemaining: integer;
    team: word;
    registered_teams: word;    //28
    team_name: string[20];
    onko_inviteja: byte;
    adminstatus: byte;
    onkoEmail: boolean; 
    loputonVip: boolean;
  end;

var
  Loggautumisen_onnistuminen: TLoggautumisen_onnistuminen;
begin

  TCPClient2.ReadBuffer(@Loggautumisen_onnistuminen.mtype2,sizeof(TLoggautumisen_onnistuminen)-2);
  if not (Loggautumisen_onnistuminen.mtype2=16) then exit;


  if Loggautumisen_onnistuminen.lobby_index=0 then begin
    showmessage('Invalid username or password');
    please_wait(false);
    exit;
  end;

  if Loggautumisen_onnistuminen.team_name='' then
    form1.popup2_1.Caption:='Create team'
  else
    form1.popup2_1.Caption:=Loggautumisen_onnistuminen.team_name;

  oma_lobbyindex:=Loggautumisen_onnistuminen.lobby_index;

  oma_adminstatus:=Loggautumisen_onnistuminen.adminstatus;
  oma_team:=Loggautumisen_onnistuminen.team;
  oma_team_name:=Loggautumisen_onnistuminen.team_name;
  oma_socket:=Loggautumisen_onnistuminen.socket;

  vipMinsRemaining:=Loggautumisen_onnistuminen.vipMinsRemaining;
  if Loggautumisen_onnistuminen.loputonVip then vipMinsRemaining:=1;


  if Loggautumisen_onnistuminen.onko_inviteja=1 then AddInfoMessage('You have 1 invite');
  if Loggautumisen_onnistuminen.onko_inviteja>1 then AddInfoMessage('You have '+inttostr(Loggautumisen_onnistuminen.onko_inviteja)+' invites');

  form1.sLabelFX92.Caption:='Registered players: '+inttostr(Loggautumisen_onnistuminen.registered);
  form1.sLabelFX93.Caption:='Registered teams: '+inttostr(Loggautumisen_onnistuminen.registered_teams);
  form1.sLabelFX94.Caption:='Online players: '+inttostr(Loggautumisen_onnistuminen.online);

  form1.sPanel5.Visible:=false;
  form1.sButton1.Visible:=false;
  form1.sButton2.Visible:=false;
  form1.sPanel3.Visible:=true;
  form1.sPanel2.Visible:=true;

  please_wait(false);

  if Loggautumisen_onnistuminen.onkoEmail=false then form6.showmodal;

end;

procedure mtype_18;   //pelaaja rekisteröinti epäonnistui, koska nimi on jo käytössä
type
  TVMtype = record
    mtype: word;
    mtype2: word;
  end;

var
  VMtype: TVMtype;
begin

  TCPClient2.ReadBuffer(@VMtype.mtype2,sizeof(TVMtype)-2);
  if not (VMtype.mtype2=18) then exit;

  showmessage('Username already in use');
  please_wait(false);

end;

procedure mtype_21; //joukkue rekisteröinti epäonnistui, koska nimi on jo käytössä
type
  TVMtype = record
    mtype: word;
    mtype2: word;
  end;

var
  VMtype: TVMtype;
begin

  TCPClient2.ReadBuffer(@VMtype.mtype2,sizeof(TVMtype)-2);
  if not (VMtype.mtype2=21) then exit;

  AddInfoMessage('Team name already in use');
  please_wait(false);

end;

procedure mtype_22;  //joukkue rekisteröinti onnistui
type
  TCreate_team2 = record
    mtype: word;
    mtype2: word;
    teamname: string[20];
    index: word;
  end;

var
  Create_team2: TCreate_team2;
begin

  TCPClient2.ReadBuffer(@Create_team2.mtype2,sizeof(TCreate_team2)-2);
  if not (Create_team2.mtype2=22) then exit;

  form1.popup2_1.Caption:=Create_team2.teamname;
  form1.sLabelFX17.Caption:=inttostr(Create_team2.index);
  form1.spanel6.Visible:=false;

  oma_adminstatus:=2;
  oma_team:=Create_team2.index;
  oma_team_name:=Create_team2.teamname;

  please_wait(false);

end;

procedure mtype_24;  //vastaanotetaan joukkue data
type
  TToimita_joukkue_data = record
    mtype: word;
    mtype2: word;
    name: string[20];
    Player_names: array [1..8] of string[15];
    Player_index: array [1..8] of integer;
    Player_online: array [1..8] of boolean;
    player_shirtnumber: array [1..8] of byte;
    player_nation: array [1..8] of smallint;
    position: array [1..8, 1..4] of integer;  //ylä,ala,vasen,oikea
    player_stats: array [1..8,1..3] of integer;  //goals, assists
    Player_admins: array [1..8] of byte;
    i_index: integer;
  end;
  TPyydetaan_loppudataa = record
    mtype: word;
    mtype2: word;
    ra: word;
    name: string[20];
  end;
var
  Toimita_joukkue_data: TToimita_joukkue_data;
  Pyydetaan_loppudataa: TPyydetaan_loppudataa;
  i,j,k: integer;
  p_kpl: byte;
begin

  TCPClient2.ReadBuffer(@Toimita_joukkue_data.mtype2,sizeof(TToimita_joukkue_data)-2);
  if not (Toimita_joukkue_data.mtype2=24) then exit;

  form1.sScrollBar1.position:=0;
  p_kpl:=0;

  for i:=1 to 8 do begin
    if not (Toimita_joukkue_data.Player_names[i]='') then begin
      inc(p_kpl);

      for j:=1 to 50 do begin
        if Joukkue_data.Player_names[j]='' then begin
          Joukkue_data.Player_names[j]:=Toimita_joukkue_data.Player_names[i];
          Joukkue_data.Player_index[j]:=Toimita_joukkue_data.Player_index[i];
          Joukkue_data.Player_online[j]:=Toimita_joukkue_data.Player_online[i];
          Joukkue_data.player_shirtnumber[j]:=Toimita_joukkue_data.player_shirtnumber[i];
          Joukkue_data.player_nation[j]:=Toimita_joukkue_data.player_nation[i];
          for k:=1 to 4 do Joukkue_data.position[j,k]:=Toimita_joukkue_data.position[i,k];
          for k:=1 to 3 do Joukkue_data.player_stats[j,k]:=Toimita_joukkue_data.player_stats[i,k];
          Joukkue_data.Player_admins[j]:=Toimita_joukkue_data.Player_admins[i];
          break;
        end;
      end;

    end;
  end;

  if p_kpl=8 then begin
    pyyda_joukkue_dataa(Toimita_joukkue_data.name,Toimita_joukkue_data.i_index);
    exit;
  end;

  //muussa tapauksessa pyydetään loppu data
  Pyydetaan_loppudataa.mtype:=42;
  Pyydetaan_loppudataa.mtype2:=42;
  Pyydetaan_loppudataa.ra:=random(55000)+1;
  Pyydetaan_loppudataa.name:=Toimita_joukkue_data.name;
  TCPClient2.WriteBuffer(@Pyydetaan_loppudataa,sizeof(Pyydetaan_loppudataa));


end;

procedure mtype_28;  //vastaan otetaan public chat msg
type
  TChat_public = record
    mtype: smallint;
    mtype2: smallint;
    sender_name: string[15];
    sender_teamname: string[20];
    msg: string[120];
  end;
var
  Chat_public: TChat_public;
begin

  TCPClient2.ReadBuffer(@Chat_public.mtype2,sizeof(TChat_public)-2);
  if not (Chat_public.mtype2=28) then exit;

  if isPersonIgnored(Chat_public.sender_name) then exit;

  AddChatMessage(Chat_public.sender_name,'',Chat_public.msg,3,'');

end;

procedure mtype_30; //vastaan otetaan pelaaja data
type
  TToimita_pelaaja_data = record
    mtype: word;
    mtype2: word;
    nimi: string[15];
    online: boolean;
    index: integer;
    already_invited: boolean;
    onko_samassa_tiimissa: boolean;
    admas:  byte;
    nation: smallint;
    prac_stats: array [1..2] of integer;  //goals, assists
    NT_stats: array [1..3] of integer;  //apps, goals, assists
    career_stats: array [1..11, 1..3] of integer;  //apps, goals, assists -- 1=nykyinen, 11=old teams
    career_teams: array [1..10] of string[20];
    career_teams_index: array [1..10] of word;
    career_old_team_count: byte;
    position: array [1..4] of integer;  //ylä,ala,vasen,oikea
    LFT: boolean;
    created: array [1..3] of byte;  //day, month, year
    lastlogin: array [1..3] of byte;  //day, month, year
    prac_statistic: array [1..3, 1..2] of integer; //pas,tac,hea -- onnistuneet, epäonn.
    NT_statistic: array [1..3, 1..2] of integer; //pas,tac,hea -- onnistuneet, epäonn.
    career_statistic: array [1..11, 1..3, 1..2] of integer; //pas,tac,hea -- onnistuneet, epäonn.
  end;
  TPyyda_pelaaja_data = record
    mtype: word;
    mtype2: word;
    ra: word;
    nimi: string[15];
  end;
var
  Toimita_pelaaja_data: TToimita_pelaaja_data;
  Pyyda_pelaaja_data: TPyyda_pelaaja_data;
  i,j,k: integer;
  p_kpl: byte;
  p_vuosi: integer;
begin

  TCPClient2.ReadBuffer(@Toimita_pelaaja_data.mtype2,sizeof(TToimita_pelaaja_data)-2);
  if not (Toimita_pelaaja_data.mtype2=30) then exit;

{  ZeroMemory(@PelaajaData, SizeOf(PelaajaData));

  PelaajaData.nimi:=Toimita_pelaaja_data.nimi;
  PelaajaData.index:=Toimita_pelaaja_data.index;
  PelaajaData.already_invited:=Toimita_pelaaja_data.already_invited;
  PelaajaData.onko_samassa_tiimissa:=Toimita_pelaaja_data.onko_samassa_tiimissa;
  PelaajaData.admas:=Toimita_pelaaja_data.admas;
  PelaajaData.nation:=Toimita_pelaaja_data.nation;
  PelaajaData.career_old_team_count:=Toimita_pelaaja_data.career_old_team_count;
  PelaajaData.LFT:=Toimita_pelaaja_data.LFT;

  for i:=1 to 2 do
    PelaajaData.prac_stats[i]:=Toimita_pelaaja_data.prac_stats[i];

  for i:=1 to 3 do begin
    PelaajaData.NT_stats[i]:=Toimita_pelaaja_data.NT_stats[i];
    PelaajaData.created[i]:=Toimita_pelaaja_data.created[i];
    PelaajaData.lastlogin[i]:=Toimita_pelaaja_data.lastlogin[i];
    for j:=1 to 2 do begin
      PelaajaData.prac_statistic[i,j]:=Toimita_pelaaja_data.prac_statistic[i,j];
      PelaajaData.NT_statistic[i,j]:=Toimita_pelaaja_data.NT_statistic[i,j];
    end;
  end;

  for i:=1 to 4 do
    PelaajaData.position[i]:=Toimita_pelaaja_data.position[i];

  for i:=1 to 10 do begin
    PelaajaData.career_teams[i]:=Toimita_pelaaja_data.career_teams[i];
    PelaajaData.career_teams_index[i]:=Toimita_pelaaja_data.career_teams_index[i];
  end;

  for i:=1 to 11 do begin
    for j:=1 to 3 do
      PelaajaData.career_stats[i,j]:=Toimita_pelaaja_data.career_stats[i,j];
    for j:=1 to 3 do
      for k:=1 to 2 do
        PelaajaData.career_statistic[i,j,k]:=Toimita_pelaaja_data.career_statistic[i,j,k];
  end;                }


  form1.sLabelFX8.Caption:=Toimita_pelaaja_data.nimi;

  if Toimita_pelaaja_data.online then begin
    form1.sLabelFX134.Caption:='Online';
    form1.sLabelFX134.Kind.Color:=clGreen;
  end
  else begin
    form1.sLabelFX134.Caption:='Offline';
    form1.sLabelFX134.Kind.Color:=clRed;
  end;

  form1.sButton12.Visible:=true;
  if form1.sLabelFX8.Caption=oma_login_name then form1.sButton12.Visible:=false;
  if oma_adminstatus<2 then form1.sButton12.Visible:=false;
  if Toimita_pelaaja_data.already_invited=true then form1.sButton12.Visible:=false;
  if Toimita_pelaaja_data.onko_samassa_tiimissa=true then form1.sButton12.Visible:=false;
//******************************************************************************

  ZeroMemory(@Career_data, SizeOf(Career_data));

  Career_data.career_old_team_count:=Toimita_pelaaja_data.career_old_team_count;
  for i:=1 to 2 do Career_data.prac_stats[i]:=Toimita_pelaaja_data.prac_stats[i];
  for i:=1 to 3 do Career_data.NT_stats[i]:=Toimita_pelaaja_data.NT_stats[i];
  for i:=1 to 10 do Career_data.career_teams[i]:=Toimita_pelaaja_data.career_teams[i];
  for i:=1 to 10 do Career_data.career_teams_index[i]:=Toimita_pelaaja_data.career_teams_index[i];
  for i:=1 to 11 do
    for j:=1 to 3 do Career_data.career_stats[i,j]:=Toimita_pelaaja_data.career_stats[i,j];

  for i:=1 to 3 do
    for j:=1 to 2 do Career_data.prac_statistic[i,j]:=Toimita_pelaaja_data.prac_statistic[i,j];
  for i:=1 to 3 do
    for j:=1 to 2 do Career_data.NT_statistic[i,j]:=Toimita_pelaaja_data.NT_statistic[i,j];
  for i:=1 to 11 do
    for j:=1 to 3 do
      for k:=1 to 2 do Career_data.career_statistic[i,j,k]:=Toimita_pelaaja_data.career_statistic[i,j,k];

  aseta_career_datat;

  form1.qwa1.Caption:=int_to_admin(Toimita_pelaaja_data.admas);
  form1.qwa2.Caption:=haePositio(Toimita_pelaaja_data.position[1],Toimita_pelaaja_data.position[2],Toimita_pelaaja_data.position[3],Toimita_pelaaja_data.position[4]);
  if Toimita_pelaaja_data.LFT=true then
    form1.qwa3.Caption:='Yes' else form1.qwa3.Caption:='No';

  p_vuosi:=Toimita_pelaaja_data.created[3]+2000;
  form1.qwa4.Caption:=inttostr(Toimita_pelaaja_data.created[1])+'.'+inttostr(Toimita_pelaaja_data.created[2])+'.'+inttostr(p_vuosi);
  p_vuosi:=Toimita_pelaaja_data.lastlogin[3]+2000;
  form1.qwa5.Caption:=inttostr(Toimita_pelaaja_data.lastlogin[1])+'.'+inttostr(Toimita_pelaaja_data.lastlogin[2])+'.'+inttostr(p_vuosi);
  form1.qwa6.Caption:=inttostr(Toimita_pelaaja_data.index);


  if Toimita_pelaaja_data.nation=-1 then form1.Image18.Visible:=false else begin
    aseta_rectit(Toimita_pelaaja_data.nation);
    form1.Image18.canvas.copyrect(Lipun_rect.mihin,bmp1.canvas,Lipun_rect.mista);
    form1.Image18.Visible:=true;
  end;


//******************************************************************************

  Pyyda_pelaaja_data.mtype:=9020;
  Pyyda_pelaaja_data.mtype2:=9020;
  Pyyda_pelaaja_data.ra:=random(55000)+1;
  Pyyda_pelaaja_data.nimi:=Toimita_pelaaja_data.nimi;
  TCPClient2.WriteBuffer(@Pyyda_pelaaja_data,sizeof(Pyyda_pelaaja_data));

{  Pyyda_pelaaja_data.mtype:=235;
  Pyyda_pelaaja_data.mtype2:=235;
  Pyyda_pelaaja_data.ra:=random(55000)+1;
  Pyyda_pelaaja_data.nimi:=Toimita_pelaaja_data.nimi;
  TCPClient2.WriteBuffer(@Pyyda_pelaaja_data,sizeof(Pyyda_pelaaja_data));      }

end;

procedure mtype_31;  //vastaan otetaan search
type
  TSearch_result = record
    mtype: word;
    mtype2: word;
    name: array [1..20] of string[20];
    name2: array [1..20] of string[20];
    tyyppi: array [1..20] of byte; //1=player, 2=team, 3=NT
  end;
var
  Search_result: TSearch_result;
begin

  TCPClient2.ReadBuffer(@Search_result.mtype2,sizeof(TSearch_result)-2);
  if not (Search_result.mtype2=31) then exit;

  form1.sLabelFX27.Caption:=Search_result.name[1];
  form1.sLabelFX28.Caption:=Search_result.name[2];
  form1.sLabelFX29.Caption:=Search_result.name[3];
  form1.sLabelFX30.Caption:=Search_result.name[4];
  form1.sLabelFX31.Caption:=Search_result.name[5];
  form1.sLabelFX32.Caption:=Search_result.name[6];
  form1.sLabelFX33.Caption:=Search_result.name[7];
  form1.sLabelFX34.Caption:=Search_result.name[8];
  form1.sLabelFX35.Caption:=Search_result.name[9];
  form1.sLabelFX36.Caption:=Search_result.name[10];
  form1.sLabelFX37.Caption:=Search_result.name[11];
  form1.sLabelFX38.Caption:=Search_result.name[12];
  form1.sLabelFX39.Caption:=Search_result.name[13];
  form1.sLabelFX40.Caption:=Search_result.name[14];
  form1.sLabelFX41.Caption:=Search_result.name[15];
  form1.sLabelFX42.Caption:=Search_result.name[16];
  form1.sLabelFX43.Caption:=Search_result.name[17];
  form1.sLabelFX44.Caption:=Search_result.name[18];
  form1.sLabelFX45.Caption:=Search_result.name[19];
  form1.sLabelFX46.Caption:=Search_result.name[20];

  form1.sLabelFX47.Caption:=search_type(Search_result.tyyppi[1]);
  form1.sLabelFX48.Caption:=search_type(Search_result.tyyppi[2]);
  form1.sLabelFX49.Caption:=search_type(Search_result.tyyppi[3]);
  form1.sLabelFX50.Caption:=search_type(Search_result.tyyppi[4]);
  form1.sLabelFX51.Caption:=search_type(Search_result.tyyppi[5]);
  form1.sLabelFX52.Caption:=search_type(Search_result.tyyppi[6]);
  form1.sLabelFX53.Caption:=search_type(Search_result.tyyppi[7]);
  form1.sLabelFX54.Caption:=search_type(Search_result.tyyppi[8]);
  form1.sLabelFX55.Caption:=search_type(Search_result.tyyppi[9]);
  form1.sLabelFX56.Caption:=search_type(Search_result.tyyppi[10]);
  form1.sLabelFX57.Caption:=search_type(Search_result.tyyppi[11]);
  form1.sLabelFX58.Caption:=search_type(Search_result.tyyppi[12]);
  form1.sLabelFX59.Caption:=search_type(Search_result.tyyppi[13]);
  form1.sLabelFX60.Caption:=search_type(Search_result.tyyppi[14]);
  form1.sLabelFX61.Caption:=search_type(Search_result.tyyppi[15]);
  form1.sLabelFX62.Caption:=search_type(Search_result.tyyppi[16]);
  form1.sLabelFX63.Caption:=search_type(Search_result.tyyppi[17]);
  form1.sLabelFX64.Caption:=search_type(Search_result.tyyppi[18]);
  form1.sLabelFX65.Caption:=search_type(Search_result.tyyppi[19]);
  form1.sLabelFX66.Caption:=search_type(Search_result.tyyppi[20]);

  form1.sLabelFX67.Caption:=Search_result.name2[1];
  form1.sLabelFX68.Caption:=Search_result.name2[2];
  form1.sLabelFX69.Caption:=Search_result.name2[3];
  form1.sLabelFX70.Caption:=Search_result.name2[4];
  form1.sLabelFX71.Caption:=Search_result.name2[5];
  form1.sLabelFX72.Caption:=Search_result.name2[6];
  form1.sLabelFX73.Caption:=Search_result.name2[7];
  form1.sLabelFX74.Caption:=Search_result.name2[8];
  form1.sLabelFX75.Caption:=Search_result.name2[9];
  form1.sLabelFX76.Caption:=Search_result.name2[10];
  form1.sLabelFX77.Caption:=Search_result.name2[11];
  form1.sLabelFX78.Caption:=Search_result.name2[12];
  form1.sLabelFX79.Caption:=Search_result.name2[13];
  form1.sLabelFX80.Caption:=Search_result.name2[14];
  form1.sLabelFX81.Caption:=Search_result.name2[15];
  form1.sLabelFX82.Caption:=Search_result.name2[16];
  form1.sLabelFX83.Caption:=Search_result.name2[17];
  form1.sLabelFX84.Caption:=Search_result.name2[18];
  form1.sLabelFX85.Caption:=Search_result.name2[19];
  form1.sLabelFX86.Caption:=Search_result.name2[20];

  panel_visiblet(10);
  please_wait(false);

end;

procedure mtype_34;  //vastaanotetaan oman pelaajan dataa
type
  TToimita_data_omasta_pelaajasta = record
    mtype: word;
    mtype2: word;
    character: array [1..6] of byte; //skin,hair,body,shoe,number,NTnumber
    loputonVip: boolean;
    vipMinsRemaining: integer;
    vipExpire: array [0..4] of byte;
    invite_names: array [1..20] of string[20];
    LFT: boolean;
    allowNationChange: boolean;
  end;
  TPyydaLoppuData = record
    mtype: word;
    mtype2: word;
    ra: word;
  end;

var
  Toimita_data_omasta_pelaajasta: TToimita_data_omasta_pelaajasta;
  PyydaLoppuData: TPyydaLoppuData;
begin

  TCPClient2.ReadBuffer(@Toimita_data_omasta_pelaajasta.mtype2,sizeof(TToimita_data_omasta_pelaajasta)-2);
  if not (Toimita_data_omasta_pelaajasta.mtype2=34) then exit;

  if Toimita_data_omasta_pelaajasta.allowNationChange then begin
    form1.sComboBox8.Visible:=true;
    form1.sButton53.Visible:=true;
  end
  else begin
    form1.sComboBox8.Visible:=false;
    form1.sButton53.Visible:=false;
  end;

  form1.inv1.Caption:=Toimita_data_omasta_pelaajasta.invite_names[1];
  form1.inv2.Caption:=Toimita_data_omasta_pelaajasta.invite_names[2];
  form1.inv3.Caption:=Toimita_data_omasta_pelaajasta.invite_names[3];
  form1.inv4.Caption:=Toimita_data_omasta_pelaajasta.invite_names[4];
  form1.inv5.Caption:=Toimita_data_omasta_pelaajasta.invite_names[5];
  form1.inv6.Caption:=Toimita_data_omasta_pelaajasta.invite_names[6];
  form1.inv7.Caption:=Toimita_data_omasta_pelaajasta.invite_names[7];
  form1.inv8.Caption:=Toimita_data_omasta_pelaajasta.invite_names[8];
  form1.inv9.Caption:=Toimita_data_omasta_pelaajasta.invite_names[9];
  form1.inv10.Caption:=Toimita_data_omasta_pelaajasta.invite_names[10];
  form1.inv11.Caption:=Toimita_data_omasta_pelaajasta.invite_names[11];
  form1.inv12.Caption:=Toimita_data_omasta_pelaajasta.invite_names[12];
  form1.inv13.Caption:=Toimita_data_omasta_pelaajasta.invite_names[13];
  form1.inv14.Caption:=Toimita_data_omasta_pelaajasta.invite_names[14];
  form1.inv15.Caption:=Toimita_data_omasta_pelaajasta.invite_names[15];
  form1.inv16.Caption:=Toimita_data_omasta_pelaajasta.invite_names[16];
  form1.inv17.Caption:=Toimita_data_omasta_pelaajasta.invite_names[17];
  form1.inv18.Caption:=Toimita_data_omasta_pelaajasta.invite_names[18];
  form1.inv19.Caption:=Toimita_data_omasta_pelaajasta.invite_names[19];
  form1.inv20.Caption:=Toimita_data_omasta_pelaajasta.invite_names[20];

  muuta_invite_accrej(form1.inv1,form1.acc1,form1.rej1);
  muuta_invite_accrej(form1.inv2,form1.acc2,form1.rej2);
  muuta_invite_accrej(form1.inv3,form1.acc3,form1.rej3);
  muuta_invite_accrej(form1.inv4,form1.acc4,form1.rej4);
  muuta_invite_accrej(form1.inv5,form1.acc5,form1.rej5);
  muuta_invite_accrej(form1.inv6,form1.acc6,form1.rej6);
  muuta_invite_accrej(form1.inv7,form1.acc7,form1.rej7);
  muuta_invite_accrej(form1.inv8,form1.acc8,form1.rej8);
  muuta_invite_accrej(form1.inv9,form1.acc9,form1.rej9);
  muuta_invite_accrej(form1.inv10,form1.acc10,form1.rej10);
  muuta_invite_accrej(form1.inv11,form1.acc11,form1.rej11);
  muuta_invite_accrej(form1.inv12,form1.acc12,form1.rej12);
  muuta_invite_accrej(form1.inv13,form1.acc13,form1.rej13);
  muuta_invite_accrej(form1.inv14,form1.acc14,form1.rej14);
  muuta_invite_accrej(form1.inv15,form1.acc15,form1.rej15);
  muuta_invite_accrej(form1.inv16,form1.acc16,form1.rej16);
  muuta_invite_accrej(form1.inv17,form1.acc17,form1.rej17);
  muuta_invite_accrej(form1.inv18,form1.acc18,form1.rej18);
  muuta_invite_accrej(form1.inv19,form1.acc19,form1.rej19);
  muuta_invite_accrej(form1.inv20,form1.acc20,form1.rej20);

  oma_skin:=Toimita_data_omasta_pelaajasta.character[1];
  oma_hair:=Toimita_data_omasta_pelaajasta.character[2];
  oma_shoe:=Toimita_data_omasta_pelaajasta.character[4];
  oma_number:=Toimita_data_omasta_pelaajasta.character[5];
  oma_body:=Toimita_data_omasta_pelaajasta.character[3];

  form1.sComboBox12.ItemIndex:=oma_skin;
  form1.sComboBox13.ItemIndex:=oma_shoe;
  form1.sComboBox14.ItemIndex:=oma_number;
  form1.sComboBox15.ItemIndex:=oma_body;
  form1.sComboBox7.ItemIndex:=oma_hair;

  vipMinsRemaining:=Toimita_data_omasta_pelaajasta.vipMinsRemaining;

  if vipMinsRemaining=0 then begin
    asetacharacterSysteemit(-1);
    form1.sComboBox12.ItemIndex:=0;
    form1.sComboBox13.ItemIndex:=0;
    form1.sComboBox14.ItemIndex:=0;
    form1.sComboBox15.ItemIndex:=1;
    form1.sComboBox7.ItemIndex:=0;
  end
  else
    asetacharacterSysteemit(oma_body);

  if Toimita_data_omasta_pelaajasta.vipExpire[0]>0 then begin
    form1.sLabelFX128.Caption:='Vip expires: '+(parseta_date(Toimita_data_omasta_pelaajasta.vipExpire[0],Toimita_data_omasta_pelaajasta.vipExpire[1],Toimita_data_omasta_pelaajasta.vipExpire[2],Toimita_data_omasta_pelaajasta.vipExpire[3],Toimita_data_omasta_pelaajasta.vipExpire[4]));
    form1.sLabelFX128.Visible:=true;
    form1.sButton33.Visible:=true;
  end
  else begin
    form1.sLabelFX128.Visible:=false;
    form1.sButton33.Visible:=false;
  end;

  if Toimita_data_omasta_pelaajasta.loputonVip then begin
    vipMinsRemaining:=1;
    form1.sLabelFX128.Caption:='Vip expires: Unlimited vip';
    form1.sLabelFX128.Visible:=true;
    form1.sButton33.Visible:=false;
  end;

  form1.sLabelFX139.Caption:='Your vip index is: '+inttostr(oma_lobbyindex);

  form1.sCheckBox8.Checked:=Toimita_data_omasta_pelaajasta.LFT;

  PyydaLoppuData.mtype:=37;
  PyydaLoppuData.mtype2:=37;
  PyydaLoppuData.ra:=random(55000)+1;
  TCPClient2.WriteBuffer(@PyydaLoppuData,sizeof(PyydaLoppuData));

end;

procedure mtype_35; //ilmoitus inviten onnistumisesta
type
  TInvitet_taynna = record
    mtype: word;
    mtype2: word;
    error_type: byte;
  end;
var
  Invitet_taynna: TInvitet_taynna;
begin

  TCPClient2.ReadBuffer(@Invitet_taynna.mtype2,sizeof(TInvitet_taynna)-2);
  if not (Invitet_taynna.mtype2=35) then exit;

  if Invitet_taynna.error_type=1 then AddInfoMessage('Player already have max 20 invites');
  if Invitet_taynna.error_type=2 then AddInfoMessage('Team already have max 20 invites');
  if Invitet_taynna.error_type=3 then form1.sButton12.Visible:=false;

  please_wait(false);

end;

procedure mtype_36; //ilmoitus inviten accept/rejectistä
type
  TIlmoita_inviten_onnistumisesta = record
    mtype: word;
    mtype2: word;
    team: word;
    name: string[20];
  end;
var
  Ilmoita_inviten_onnistumisesta: TIlmoita_inviten_onnistumisesta;
begin

  TCPClient2.ReadBuffer(@Ilmoita_inviten_onnistumisesta.mtype2,sizeof(TIlmoita_inviten_onnistumisesta)-2);
  if not (Ilmoita_inviten_onnistumisesta.mtype2=36) then exit;

  if Ilmoita_inviten_onnistumisesta.team=0 then begin
    AddInfoMessage('Team have max 50 players');
    exit;
  end;

  oma_team:=Ilmoita_inviten_onnistumisesta.team;
  oma_team_name:=Ilmoita_inviten_onnistumisesta.name;

  form1.popup2_1.Caption:=Ilmoita_inviten_onnistumisesta.name;
  oma_adminstatus:=0;

  pyyda_joukkue_dataa(form1.popup2_1.Caption,1);

end;

procedure mtype_37;  //vastaanotetaan loppudata omasta pelaajasta
type
  TToimita_data_omasta_pelaajasta = record
    mtype: word;
    mtype2: word;
    text: string[255];
    avatar: string[100];
  end;
var
  Toimita_data_omasta_pelaajasta: TToimita_data_omasta_pelaajasta;
begin

  TCPClient2.ReadBuffer(@Toimita_data_omasta_pelaajasta.mtype2,sizeof(TToimita_data_omasta_pelaajasta)-2);
  if not (Toimita_data_omasta_pelaajasta.mtype2=37) then exit;

  form1.sEdit12.text:=Toimita_data_omasta_pelaajasta.avatar;
  form1.sEdit13.text:=Toimita_data_omasta_pelaajasta.text;

  panel_visiblet(11);
  please_wait(false);

end;

procedure mtype_38;  //vastaanotettiin pelaaja status muunnos
type
  TVain_mtype = record
    mtype: word;
    mtype2: word;
    status: byte;
    name: string[15];
  end;
var
  Vain_mtype: TVain_mtype;
  i: integer;
begin

  TCPClient2.ReadBuffer(@Vain_mtype.mtype2,sizeof(TVain_mtype)-2);
  if not (Vain_mtype.mtype2=38) then exit;

  for i:=1 to 50 do begin
    if Joukkue_data.Player_names[i]=Vain_mtype.name then begin
      Joukkue_data.Player_admins[i]:=Vain_mtype.status;
      break;
    end;
  end;

  if Vain_mtype.name=oma_login_name then oma_adminstatus:=Vain_mtype.status;

  aseta_team_Players_Administration;

  form4.close;

  please_wait(false);

end;

procedure mtype_39;  //pleasewait false
type
  TVMtype = record
    mtype: word;
    mtype2: word;
    tieto: byte;
  end;

var
  VMtype: TVMtype;
begin

  TCPClient2.ReadBuffer(@VMtype.mtype2,sizeof(TVMtype)-2);
  if not (VMtype.mtype2=39) then exit;

  please_wait(false);

  if VMtype.tieto=1 then begin // 1=haastaminen onnistui
    please_wait(true);
    LiveScoresAlkuNollaukset;
    pyydaLiveScores(1);   
  end;

end;

procedure mtype_40; //joukkue jätetty
type
  TTeam_leaved = record
    mtype: word;
    mtype2: word;
  end;
var
  Team_leaved: TTeam_leaved;
begin

  TCPClient2.ReadBuffer(@Team_leaved.mtype2,sizeof(Team_leaved)-2);
  if not (Team_leaved.mtype2=40) then exit;

  form1.spanel11.visible:=false;
  form1.popup2_1.Caption:='Create team';

  oma_adminstatus:=0;
  oma_team:=0;
  oma_team_name:='';

  please_wait(false);

end;

procedure mtype_41; //invite peruutettu
type
  TInvite_peruutettu = record
    mtype: word;
    mtype2: word;
    nimi: string[15];
  end;
var
  Invite_peruutettu: TInvite_peruutettu;
  i: integer;
  p_invites: array [1..20] of string;
  p_kpl: byte;
begin

  TCPClient2.ReadBuffer(@Invite_peruutettu.mtype2,sizeof(Invite_peruutettu)-2);
  if not (Invite_peruutettu.mtype2=41) then exit;

  ZeroMemory(@p_invites, SizeOf(p_invites));
  p_kpl:=0;

  for i:=1 to 20 do begin
    if Joukkue_data.invites[i]=Invite_peruutettu.nimi then begin
      Joukkue_data.invites[i]:='';
      break;
    end;
  end;

  for i:=1 to 20 do begin
    if not (Joukkue_data.invites[i]='') then begin
      inc(p_kpl);
      p_invites[p_kpl]:=Joukkue_data.invites[i];
    end;
  end;

  for i:=1 to 20 do Joukkue_data.invites[i]:=p_invites[i];

  aseta_team_Invites;

  please_wait(false);

end;

procedure mtype_42;  //vastaan otetaan team loppudata1
type
  TToimita_loppudata1 = record
    mtype: word;
    mtype2: word;
    index: word;
    name: string[20];
    created: array [1..3] of byte;
    founder: string[15];
    stats: array [1..4] of word;
    rank: integer;
    shirt_colors: array [1..4, 1..3, 1..2] of byte;
    shirt_style: array [1..2] of byte;
    allow_joining: boolean;
    latest_home_away: array [1..10] of byte; //jos 1, kyseinen joukkue pelas kotona
    latest_rank_muutos: array [1..10] of smallint;
    latest_vastus: array [1..10] of string[20];
    latest_index: array [1..10] of word; //jos 0, joukkue poistettu
    latest_tulos: array [1..10, 1..2] of byte;
    latest_date: array [1..10, 1..3] of byte;  //day, month, year, hour, min
  end;
  TPyyda_loppudataa2 = record
    mtype: word;
    mtype2: word;
    ra: word;
    name: string[20];
  end;
var
  Toimita_loppudata1: TToimita_loppudata1;
  Pyyda_loppudataa2: TPyyda_loppudataa2;
  i,j,k: integer;
begin

  TCPClient2.ReadBuffer(@Toimita_loppudata1.mtype2,sizeof(Toimita_loppudata1)-2);
  if not (Toimita_loppudata1.mtype2=42) then exit;


  Joukkue_data.index:=Toimita_loppudata1.index;
  Joukkue_data.name:=Toimita_loppudata1.name;
  for i:=1 to 3 do Joukkue_data.created[i]:=Toimita_loppudata1.created[i];
  Joukkue_data.founder:=Toimita_loppudata1.founder;
  for i:=1 to 4 do Joukkue_data.stats[i]:=Toimita_loppudata1.stats[i];
  Joukkue_data.rank:=Toimita_loppudata1.rank;

  for i:=1 to 4 do
    for j:=1 to 3 do
      for k:=1 to 2 do
        Joukkue_data.shirt_colors[i,j,k]:=Toimita_loppudata1.shirt_colors[i,j,k];

  for i:=1 to 2 do Joukkue_data.shirt_style[i]:=Toimita_loppudata1.shirt_style[i];
  Joukkue_data.allow_joining:=Toimita_loppudata1.allow_joining;

  for i:=1 to 10 do Joukkue_data.latest_home_away[i]:=Toimita_loppudata1.latest_home_away[i];
  for i:=1 to 10 do Joukkue_data.latest_rank_muutos[i]:=Toimita_loppudata1.latest_rank_muutos[i];
  for i:=1 to 10 do Joukkue_data.latest_vastus[i]:=Toimita_loppudata1.latest_vastus[i];
  for i:=1 to 10 do Joukkue_data.latest_index[i]:=Toimita_loppudata1.latest_index[i];

  for i:=1 to 10 do
    for j:=1 to 2 do
      Joukkue_data.latest_tulos[i,j]:=Toimita_loppudata1.latest_tulos[i,j];

  for i:=1 to 10 do
    for j:=1 to 3 do
      Joukkue_data.latest_date[i,j]:=Toimita_loppudata1.latest_date[i,j];


  Pyyda_loppudataa2.mtype:=43;
  Pyyda_loppudataa2.mtype2:=43;
  Pyyda_loppudataa2.ra:=random(55000)+1;
  Pyyda_loppudataa2.name:=Toimita_loppudata1.name;
  TCPClient2.WriteBuffer(@Pyyda_loppudataa2,sizeof(Pyyda_loppudataa2));

end;

procedure mtype_43;   //vastaan otetaan team loppudata2
type
  TToimita_loppudata2 = record
    mtype: word;
    mtype2: word;
    name: string[20];
    team_logo: string[100];
    invites: array [1..20] of string[15];
  end;
  TPyyda_loppudataa2 = record
    mtype: word;
    mtype2: word;
    ra: word;
    name: string[20];
  end;
var
  Toimita_loppudata2: TToimita_loppudata2;
  Pyyda_loppudataa2: TPyyda_loppudataa2;
  p_invites: array [1..20] of string;
  p_kpl: byte;
  i: integer;
begin

  TCPClient2.ReadBuffer(@Toimita_loppudata2.mtype2,sizeof(Toimita_loppudata2)-2);
  if not (Toimita_loppudata2.mtype2=43) then exit;

  Joukkue_data.team_logo:=Toimita_loppudata2.team_logo;

  ZeroMemory(@p_invites, SizeOf(p_invites));
  p_kpl:=0;

  for i:=1 to 20 do begin
    if not (Toimita_loppudata2.invites[i]='') then begin
      inc(p_kpl);
      p_invites[p_kpl]:=Toimita_loppudata2.invites[i];
    end;
  end;

  for i:=1 to 20 do Joukkue_data.invites[i]:=p_invites[i];

  Pyyda_loppudataa2.mtype:=44;
  Pyyda_loppudataa2.mtype2:=44;
  Pyyda_loppudataa2.ra:=random(55000)+1;
  Pyyda_loppudataa2.name:=Toimita_loppudata2.name;
  TCPClient2.WriteBuffer(@Pyyda_loppudataa2,sizeof(Pyyda_loppudataa2));

end;

procedure mtype_44;   //vastaan otetaan team loppudata2
type
  TToimita_loppudata2 = record
    mtype: word;
    mtype2: word;
    text: string[255];
    location: byte;
  end;
var
  Toimita_loppudata2: TToimita_loppudata2;
begin

  TCPClient2.ReadBuffer(@Toimita_loppudata2.mtype2,sizeof(Toimita_loppudata2)-2);
  if not (Toimita_loppudata2.mtype2=44) then exit;

  Joukkue_data.text:=Toimita_loppudata2.text;
  Joukkue_data.location:=Toimita_loppudata2.location;
  form1.sComboBox10.ItemIndex:=Joukkue_data.location;

  aseta_team_perustiedot;

  form1.sLabelFX2.Visible:=true;
  form1.sLabelFX3.Visible:=true;
  form1.sLabelFX4.Visible:=true;
  form1.sLabelFX5.Visible:=true;

  form1.scombobox4.ItemIndex:=0;
  aseta_team_Players_General_info;

  panel_visiblet(1);
  please_wait(false);

end;

procedure mtype_51(paik_socket: Integer; mtype: word); //vastaan otetaan challenge listaa
type
  TToimita_joukkue_tieto = record
    mtype: word;
    mtype2: word;
    ra: word;
    name: array [1..10] of string[20];
    plrOnline: array [1..10] of byte;
    ranking: array [1..10] of integer;
    playing: array [1..10] of boolean;
    location: array [1..10] of byte;
    next_i: integer;
  end;
var
  Toimita_joukkue_tieto: TToimita_joukkue_tieto;

  i:integer;
begin
             
  TCPClient2.ReadBuffer(@Toimita_joukkue_tieto.mtype2,sizeof(TToimita_joukkue_tieto)-2);
  if not (Toimita_joukkue_tieto.mtype2=mtype) then exit;
  if disable_recent_msg(paik_socket,mtype,Toimita_joukkue_tieto.ra)=true then exit;

  for i:=1 to 10 do begin
    if not (Toimita_joukkue_tieto.name[i]='') then begin

      setLength(ChallengeTeamsList.name,high(ChallengeTeamsList.name)+2);
      setLength(ChallengeTeamsList.plrOnline,high(ChallengeTeamsList.name)+2);
      setLength(ChallengeTeamsList.ranking,high(ChallengeTeamsList.name)+2);
      setLength(ChallengeTeamsList.playing,high(ChallengeTeamsList.name)+2);
      setLength(ChallengeTeamsList.location,high(ChallengeTeamsList.name)+2);

      ChallengeTeamsList.name[high(ChallengeTeamsList.name)]:=Toimita_joukkue_tieto.name[i];
      ChallengeTeamsList.plrOnline[high(ChallengeTeamsList.name)]:=Toimita_joukkue_tieto.plrOnline[i];
      ChallengeTeamsList.ranking[high(ChallengeTeamsList.name)]:=Toimita_joukkue_tieto.ranking[i];
      ChallengeTeamsList.playing[high(ChallengeTeamsList.name)]:=Toimita_joukkue_tieto.playing[i];
      ChallengeTeamsList.location[high(ChallengeTeamsList.name)]:=Toimita_joukkue_tieto.location[i];

    end;
  end;

  if Toimita_joukkue_tieto.next_i>0 then begin
    pyydaChallengeTietoja(Toimita_joukkue_tieto.next_i);
    exit;
  end;

  if high(ChallengeTeamsList.name)>19 then
    form1.sScrollBar3.Max:=high(ChallengeTeamsList.name)-19
  else
    form1.sScrollBar3.Max:=0;

  sorttaaChallengeTeams;

  asetaChallengeTeams;
           
  panel_visiblet(14);

  please_wait(false);

end;

procedure mtype_52; //vastaanotetaan tietoja haastettavasta
type
  TToimitaChallTiedot = record
    mtype: smallint;
    mtype2: smallint;
    teamname: string[20];
    rank: array [1..2] of integer;
    stats: array [1..2,1..4] of word;
  end;
var
  ToimitaChallTiedot: TToimitaChallTiedot;
  RankLasku: TRankLasku;
begin

  TCPClient2.ReadBuffer(@ToimitaChallTiedot.mtype2,sizeof(TToimitaChallTiedot)-2);
  if not (ToimitaChallTiedot.mtype2=52) then exit;

  RankLasku:=laske_ranking(ToimitaChallTiedot.rank[1],ToimitaChallTiedot.rank[2]);

  form1.chalXlabel1.Caption:=oma_team_name;
  form1.chalXlabel4.Caption:=ToimitaChallTiedot.teamname;
  form1.chalXlabel3.Caption:='Rank '+inttostr(ToimitaChallTiedot.rank[1]);
  form1.chalXlabel6.Caption:='Rank '+inttostr(ToimitaChallTiedot.rank[2]);
  form1.chalXlabel2.Caption:='G: '+inttostr(ToimitaChallTiedot.stats[1,1])+', W: '+inttostr(ToimitaChallTiedot.stats[1,2])+', D: '+inttostr(ToimitaChallTiedot.stats[1,3])+', L: '+inttostr(ToimitaChallTiedot.stats[1,4]);
  form1.chalXlabel5.Caption:='G: '+inttostr(ToimitaChallTiedot.stats[2,1])+', W: '+inttostr(ToimitaChallTiedot.stats[2,2])+', D: '+inttostr(ToimitaChallTiedot.stats[2,3])+', L: '+inttostr(ToimitaChallTiedot.stats[2,4]);

  form1.chalXlabel7.Caption:='For win';
  form1.chalXlabel8.Caption:='For draw';
  form1.chalXlabel9.Caption:='For lose';

  form1.chalXlabel10.Caption:=inttostr(RankLasku.rank[1,1]);
  form1.chalXlabel11.Caption:=inttostr(RankLasku.rank[2,1]);
  form1.chalXlabel12.Caption:='-'+inttostr(RankLasku.rank[1,2]);

  form1.sButton25.Visible:=true;
  form1.sButton29.Visible:=true;
  form1.sButton30.Visible:=true;

  please_wait(false);

end;

procedure mtype_54; // dataa challenge panel kakkoseen (missä paidat)
type
  TToimita_challenge_ruutu_tiedot = record
    mtype: word;
    mtype2: word;
    teams: array [1..2] of string[20];
    shirt_colors: array [1..2, 1..4, 1..3, 1..2] of byte;
    shirt_style: array [1..2, 1..2] of byte;
    host_servers: array [1..4] of string[20];
  end;
var
  Toimita_challenge_ruutu_tiedot: TToimita_challenge_ruutu_tiedot;
  i,j,k,l:integer;
begin

  TCPClient2.ReadBuffer(@Toimita_challenge_ruutu_tiedot.mtype2,sizeof(TToimita_challenge_ruutu_tiedot)-2);
  if not (Toimita_challenge_ruutu_tiedot.mtype2=54) then exit;

  for i:=1 to 2 do
    for j:=1 to 4 do
      for k:=1 to 3 do
        for l:=1 to 2 do
          Kits_muistiin.shirt_colors[i,j,k,l]:=Toimita_challenge_ruutu_tiedot.shirt_colors[i,j,k,l];

  for i:=1 to 2 do
    for j:=1 to 2 do
      Kits_muistiin.shirt_style[i,j]:=Toimita_challenge_ruutu_tiedot.shirt_style[i,j];

  Kits_muistiin.valitut[1]:=1;
  Kits_muistiin.valitut[2]:=1;

  form1.sLabelFX119.Caption:=Toimita_challenge_ruutu_tiedot.teams[1];
  form1.sLabelFX120.Caption:=Toimita_challenge_ruutu_tiedot.teams[2];

  form1.sComboBox21.Items.Clear;
  form1.sComboBox21.Text:='';
  for i:=1 to 4 do
    if not (Toimita_challenge_ruutu_tiedot.host_servers[i]='') then
      form1.sComboBox21.Items.Add(Toimita_challenge_ruutu_tiedot.host_servers[i]);

  form1.sComboBox21.ItemIndex:=0;

  aseta_challenge_kit_colors(Kits_muistiin.valitut[1],Kits_muistiin.valitut[2]);
  panel_visiblet(15);

  please_wait(false);

end;

procedure mtype_57(paik_socket: Integer; mtype: word); //vastaan otetaan challenge listaa
type
  TToimita_livescores = record
    mtype: word;
    mtype2: word;
    ra: word;
    i_index: integer;
    team_names: array [1..10, 1..2] of string[20];
    min: array [1..10] of byte;
    score: array [1..10, 1..2] of byte;
    server_index: array [1..10] of word;
  end;
var
  Toimita_livescores: TToimita_livescores;

  i:integer;
begin

  TCPClient2.ReadBuffer(@Toimita_livescores.mtype2,sizeof(TToimita_livescores)-2);
  if not (Toimita_livescores.mtype2=mtype) then exit;
  if disable_recent_msg(paik_socket,mtype,Toimita_livescores.ra)=true then exit;

  for i:=1 to 10 do begin
    if Toimita_livescores.server_index[i]>0 then begin

      setLength(LivescoreList.sID,high(LivescoreList.sID)+2);
      setLength(LivescoreList.time,high(LivescoreList.sID)+2);
      setLength(LivescoreList.score1,high(LivescoreList.sID)+2);
      setLength(LivescoreList.score2,high(LivescoreList.sID)+2);
      setLength(LivescoreList.name1,high(LivescoreList.sID)+2);
      setLength(LivescoreList.name2,high(LivescoreList.sID)+2);

      LivescoreList.name1[high(LivescoreList.sID)]:=Toimita_livescores.team_names[i,1];
      LivescoreList.name2[high(LivescoreList.sID)]:=Toimita_livescores.team_names[i,2];
      LivescoreList.time[high(LivescoreList.sID)]:=Toimita_livescores.min[i];
      LivescoreList.score1[high(LivescoreList.sID)]:=Toimita_livescores.score[i,1];
      LivescoreList.score2[high(LivescoreList.sID)]:=Toimita_livescores.score[i,2];
      LivescoreList.sID[high(LivescoreList.sID)]:=Toimita_livescores.server_index[i];
    end;
  end;

  if Toimita_livescores.i_index>0 then begin
    pyydaLiveScores(Toimita_livescores.i_index);
    exit;
  end;

  if high(LivescoreList.sID)>19 then
    form1.sScrollBar4.Max:=high(LivescoreList.sID)-19
  else
    form1.sScrollBar4.Max:=0;

  asetaLivescoret;

  panel_visiblet(16);

  please_wait(false);

end;

procedure mtype_58; // tarkemmat tiedot haastematsista
type
  TChallengeTiedot = record
    mtype: smallint;
    mtype2: smallint;
    IP: string[15];
    selectedIndex: smallint;
    omaJoukkue: boolean;
  end;
var
  ChallengeTiedot: TChallengeTiedot;
begin

  TCPClient2.ReadBuffer(@ChallengeTiedot.mtype2,sizeof(TChallengeTiedot)-2);
  if not (ChallengeTiedot.mtype2=58) then exit;

  form1.sLabelFX127.Caption:=ChallengeTiedot.IP;
  selectedServerID:=ChallengeTiedot.selectedIndex;

  form1.sLabelFX125.Visible:=true;
  form1.sButton27.Visible:=true;
 // form1.sButton588.Visible:=true;
  if ChallengeTiedot.omaJoukkue then form1.sButton27.Visible:=true else form1.sButton27.Visible:=false;

  please_wait(false);

end;

procedure mtype_223; // chat - game public
type
  TChatSend = record
    mtype: word;
    mtype2: word;
    kenelta: string[15];
    viesti: string[120];
  end;
var
  ChatSend: TChatSend;
begin

  TCPClient1.ReadBuffer(@ChatSend.mtype2,sizeof(TChatSend)-2);
  if not (ChatSend.mtype2=223) then exit;

  if isPersonIgnored(ChatSend.kenelta) then exit;

  aseta_chat_viesti_peli(ChatSend.kenelta+' -- '+ChatSend.viesti,3);

end;

procedure mtype_224;  // chat - game own team
type
  TChatSend = record
    mtype: word;
    mtype2: word;
    kenelta: string[15];
    viesti: string[120];
  end;
var
  ChatSend: TChatSend;
begin

  TCPClient1.ReadBuffer(@ChatSend.mtype2,sizeof(TChatSend)-2);
  if not (ChatSend.mtype2=224) then exit;

  if isPersonIgnored(ChatSend.kenelta) then exit;

  aseta_chat_viesti_peli(ChatSend.kenelta+' -- '+ChatSend.viesti,4);

end;

procedure mtype_225;  // chat - PM
type
  TChatSend = record
    mtype: word;
    mtype2: word;
    kenelta: string[15];
    team: string[20];
    viesti: string[120];
  end;
var
  ChatSend: TChatSend;
begin

  TCPClient1.ReadBuffer(@ChatSend.mtype2,sizeof(TChatSend)-2);
  if not (ChatSend.mtype2=225) then exit;

  if isPersonIgnored(ChatSend.kenelta) then exit;

  if ChatSend.team='' then
    aseta_chat_viesti_peli(ChatSend.kenelta+' -- '+ChatSend.viesti,1)
  else
    aseta_chat_viesti_peli(ChatSend.kenelta+' ('+ChatSend.team+') -- '+ChatSend.viesti,1);

  replyName:=ChatSend.kenelta;

end;


procedure mtype_226;  // chat - to team
type
  TChatSend = record
    mtype: word;
    mtype2: word;
    kenelta: string[15];
    team: string[20];
    viesti: string[120];
  end;
var
  ChatSend: TChatSend;
begin

  TCPClient1.ReadBuffer(@ChatSend.mtype2,sizeof(TChatSend)-2);
  if not (ChatSend.mtype2=226) then exit;

  if isPersonIgnored(ChatSend.kenelta) then exit;

  if ChatSend.team='' then
    aseta_chat_viesti_peli(ChatSend.kenelta+' -- '+ChatSend.viesti,2)
  else
    aseta_chat_viesti_peli(ChatSend.kenelta+' ('+ChatSend.team+') -- '+ChatSend.viesti,2);

end;

procedure mtype_227; // chat - to ownteam
type
  TChatSend = record
    mtype: word;
    mtype2: word;
    kenelta: string[15];
    viesti: string[120];
  end;
var
  ChatSend: TChatSend;
begin

  TCPClient1.ReadBuffer(@ChatSend.mtype2,sizeof(TChatSend)-2);
  if not (ChatSend.mtype2=227) then exit;

  if isPersonIgnored(ChatSend.kenelta) then exit;

  aseta_chat_viesti_peli(ChatSend.kenelta+' -- '+ChatSend.viesti,2);

end;

procedure mtype_228;  //vastaan otetaan chat PM
type
  TChatSend= record
    mtype: word;
    mtype2: word;
    kenelta: string[15];
    keneltaTeam: string[20];
    viesti: string[120];
  end;
var
  ChatSend: TChatSend;
begin

  TCPClient2.ReadBuffer(@ChatSend.mtype2,sizeof(TChatSend)-2);
  if not (ChatSend.mtype2=228) then exit;

  if isPersonIgnored(ChatSend.kenelta) then exit;

  if freePractiseMode=false then
    AddChatMessage(ChatSend.kenelta,ChatSend.keneltaTeam,ChatSend.viesti,0,'');




  if freePractiseMode then begin
    if ChatSend.keneltaTeam='' then
      aseta_chat_viesti_peli(ChatSend.kenelta+' -- '+ChatSend.viesti,1)
    else
      aseta_chat_viesti_peli(ChatSend.kenelta+' ('+ChatSend.keneltaTeam+') -- '+ChatSend.viesti,1);
  end;

  replyName:=ChatSend.kenelta;

end;

procedure mtype_229;  //vastaan otetaan chat (to team PM)
type
  TChatSend= record
    mtype: word;
    mtype2: word;
    kenelta: string[15];
    keneltaTeam: string[20];
    viesti: string[120];
  end;
var
  ChatSend: TChatSend;
begin

  TCPClient2.ReadBuffer(@ChatSend.mtype2,sizeof(TChatSend)-2);
  if not (ChatSend.mtype2=229) then exit;

  if isPersonIgnored(ChatSend.kenelta) then exit;

  if freePractiseMode=false then
    AddChatMessage(ChatSend.kenelta,ChatSend.keneltaTeam,ChatSend.viesti,2,'');

  if freePractiseMode then begin
    if ChatSend.keneltaTeam='' then
      aseta_chat_viesti_peli(ChatSend.kenelta+' -- '+ChatSend.viesti,2)
    else
      aseta_chat_viesti_peli(ChatSend.kenelta+' ('+ChatSend.keneltaTeam+') -- '+ChatSend.viesti,2);
  end;

end;

procedure mtype_230;  //vastaan otetaan chat (to own team)
type
  TChatSend= record
    mtype: word;
    mtype2: word;
    kenelta: string[15];
    viesti: string[120];
  end;
var
  ChatSend: TChatSend;
begin

  TCPClient2.ReadBuffer(@ChatSend.mtype2,sizeof(TChatSend)-2);
  if not (ChatSend.mtype2=230) then exit;

  if isPersonIgnored(ChatSend.kenelta) then exit;

  if freePractiseMode=false then
    AddChatMessage(ChatSend.kenelta,'',ChatSend.viesti,1,'');

  if freePractiseMode then
    aseta_chat_viesti_peli(ChatSend.kenelta+' -- '+ChatSend.viesti,2);

end;

procedure mtype_235;  //vastaan otetaan pelaaja loppudataa
type
  TToimita_pelaaja_data = record
    mtype: word;
    mtype2: word;
    avatar: string[100];
    text: string[255];
  end;
var
  Toimita_pelaaja_data: TToimita_pelaaja_data;
begin

  TCPClient2.ReadBuffer(@Toimita_pelaaja_data.mtype2,sizeof(TToimita_pelaaja_data)-2);
  if not (Toimita_pelaaja_data.mtype2=235) then exit;

  form1.Image17.Visible:=false;
  if not (Toimita_pelaaja_data.avatar='') then lataa_logo(Toimita_pelaaja_data.avatar,2);

  form1.sMemo1.Lines.Clear;
  form1.sMemo1.Lines.Add(Toimita_pelaaja_data.text);

  panel_visiblet(4);
  please_wait(false);

end;

procedure mtype_239;  //lobbyserver on toimittanut version
type
  TVersion_lahetys_clientille = record
    mtype: word;
    mtype2: word;
    versio: string[5];
    welcome_msg: string[255];
  end;

var
  Version_lahetys_clientille: TVersion_lahetys_clientille;
begin

  TCPClient2.ReadBuffer(@Version_lahetys_clientille.mtype2,sizeof(TVersion_lahetys_clientille)-2);
  if not (Version_lahetys_clientille.mtype2=239) then exit;

  if not (Version_lahetys_clientille.versio=versio) then begin //väärä versio
    ShellExecute(form2.Handle, 'open', 'patcher11.exe', PChar(versio), nil, SW_SHOW);
    TCPClient2.close;
    application.Terminate;
  end;

  if oma_login_name='' then begin
    form1.sbutton1.Visible:=true;
    form1.sbutton2.Visible:=true;
  end else begin
    form1.sedit3.text:=oma_login_name;
    form1.sedit4.text:=oma_login_password;
    form1.sButton5.Caption:='Login';
    form1.sButton5Click(nil);
  end;


  bmp1:=TBitmap.Create;
  bmp1.LoadFromFile('data/images/game/flags.bmp');

  If Settings.sounds then begin
    BASS_Init(-1, 44100, 0, form2.handle, nil);
    load_sounds;
  end;

  form1.show;
  form2.hide;
  publicChattersReceived:=false;

end;

procedure mtype_243(paik_socket: Integer; mtype: word); //password change onnistui
type
  TPasswordChangeDone = record
    mtype: word;
    mtype2: word;
    ra: word;
    password: string[15];
  end;
var
  PasswordChangeDone: TPasswordChangeDone;
begin

  TCPClient2.ReadBuffer(@PasswordChangeDone.mtype2,sizeof(TPasswordChangeDone)-2);
  if not (PasswordChangeDone.mtype2=mtype) then exit;
  if disable_recent_msg(paik_socket,mtype,PasswordChangeDone.ra)=true then exit;

  form1.sedit4.Text:=PasswordChangeDone.password;
  if not (Settings.password='') then begin
    Settings.password:=PasswordChangeDone.password;
    tallennaSettings;
  end;

  oma_login_password:=PasswordChangeDone.password;

  AddInfoMessage('Password changed');
  panel_Visiblet(0);
  please_wait(false);

end;

procedure mtype_621; //handshake
type
  THandshake_toimitus = record
    mtype: word;
    mtype2: word;
    alkuperaiset_arvot: array [1..4] of shortint;    //MUUTA TÄMÄ shortint
  end;

  THandshake_palautus = record
    mtype: word;
    mtype2: word;
    palautus_arvot: array [1..4] of integer;
  end;

var
  Handshake_toimitus: THandshake_toimitus;
  Handshake_palautus: THandshake_palautus;
begin
  TCPClient2.ReadBuffer(@Handshake_toimitus.mtype2,sizeof(THandshake_toimitus)-2);
  if not (Handshake_toimitus.mtype2=621) then exit;

  Handshake_palautus.mtype:=622;
  Handshake_palautus.mtype2:=622;

  Handshake_palautus.palautus_arvot[1]:=round(Handshake_toimitus.alkuperaiset_arvot[1]*Handshake_toimitus.alkuperaiset_arvot[2]*2.69);
  Handshake_palautus.palautus_arvot[2]:=round(Handshake_toimitus.alkuperaiset_arvot[2]*Handshake_toimitus.alkuperaiset_arvot[4]*1.77);
  Handshake_palautus.palautus_arvot[3]:=round(Handshake_toimitus.alkuperaiset_arvot[3]*Handshake_toimitus.alkuperaiset_arvot[4]*4.43);
  Handshake_palautus.palautus_arvot[4]:=round(Handshake_toimitus.alkuperaiset_arvot[1]*Handshake_toimitus.alkuperaiset_arvot[3]*0.87);

  TCPClient2.WriteBuffer(@Handshake_palautus,sizeof(Handshake_palautus));
end;

procedure mtype_2623; //gameserver ilmottaa mahtuuko servulle (public&challenge)
type
  TMahtuuko = record
    mtype: smallint;
    mtype2: smallint;
    mahtuuko: boolean;
  end;
  TToimita_omat_tiedot = record
    mtype: smallint;
    mtype2: smallint;
    ra: word;
    index: integer;
    socket: integer;   //mainserver <- client
    valittu_servu: smallint;
  end;
var
  Mahtuuko: TMahtuuko;
  Toimita_omat_tiedot: TToimita_omat_tiedot;
begin

  TCPClient1.ReadBuffer(@Mahtuuko.mtype2,sizeof(TMahtuuko)-2);
  if not (Mahtuuko.mtype2=2623) then exit;

  if Mahtuuko.mahtuuko=false then begin
    AddInfoMessage('Server full');
    TCPClient2.Open;
    TCPClient1.Close;
    please_wait(false);
    exit;
  end;


  Toimita_omat_tiedot.mtype:=2624;
  Toimita_omat_tiedot.mtype2:=2624;
  Toimita_omat_tiedot.ra:=random(55000)+1;
  Toimita_omat_tiedot.index:=oma_lobbyindex;
  Toimita_omat_tiedot.socket:=oma_socket;
  Toimita_omat_tiedot.valittu_servu:=selectedServerID;
  TCPClient1.WriteBuffer(@Toimita_omat_tiedot,sizeof(Toimita_omat_tiedot));


end;

procedure mtype_2626; //gameserver ilmottaa, että join done (sekä public että challenge)
type
  TIlmoitetaan_etta_join_done = record
    mtype: smallint;
    game_status: shortint; //0=ready click tilassa, 1=peli menossa
    nimi: array [1..10, 1..2] of string[15];
    ready: array [1..10, 1..2] of boolean;
    oma_index: shortint;
    udpKey: byte;
    max_players: shortint;
    team_name: array [1..2] of string[20];
    aika: shortint;
    tulos: array [1..2] of shortint;
    puoliaika: shortint;
    character: array [1..10, 1..2, 1..5] of shortint; //skin,hair,body,shoe, number
    homekenttaPuoli: byte;
    aikaenabled: boolean;
    vip: array [1..10, 1..2] of boolean;
    shirt_colors: array [1..4, 1..3, 1..2] of byte;
    shirt_style: array [1..2] of shortint;
    nation: array [1..10, 1..2] of smallint;
  end;
  TIlmota_slowMove = record
    mtype: smallint;
    mtype2: smallint;
    slowmove: boolean;
    control: byte;
  end;
var
  Ilmoitetaan_etta_join_done: TIlmoitetaan_etta_join_done;
  Ilmota_slowMove: TIlmota_slowMove;
  i,j,k: integer;
begin

  TCPClient1.ReadBuffer(@Ilmoitetaan_etta_join_done.game_status,sizeof(TIlmoitetaan_etta_join_done)-2);

  Ingame_data.gameStatus:=Ilmoitetaan_etta_join_done.game_status;

  for i:=1 to 10 do
    for j:=1 to 2 do begin
      Ingame_data.playerNames[i,j]:=Ilmoitetaan_etta_join_done.nimi[i,j];
      Ingame_data.ready[i,j]:=Ilmoitetaan_etta_join_done.ready[i,j];
      Ingame_data.vip[i,j]:=Ilmoitetaan_etta_join_done.vip[i,j];
      Ingame_data.nation[i,j]:=Ilmoitetaan_etta_join_done.nation[i,j];
    end;

  Ingame_data.omaPeliIndex:=Ilmoitetaan_etta_join_done.oma_index;

  if Ingame_data.omaPeliIndex>10 then begin
    Ingame_data.omaPeliTeamIndex:=2;
    Ingame_data.omaPeliIndex:=Ingame_data.omaPeliIndex-10;
  end
  else
    Ingame_data.omaPeliTeamIndex:=1;

  

  for i:=1 to 4 do
    for j:=1 to 3 do
      for k:=1 to 2 do
        Ingame_data.shirtColors[i,j,k]:=Ilmoitetaan_etta_join_done.shirt_colors[i,j,k];

  for i:=1 to 2 do begin
    Ingame_data.shirtStyle[i]:=Ilmoitetaan_etta_join_done.shirt_style[i];
    Ingame_data.teamNames[i]:=Ilmoitetaan_etta_join_done.team_name[i];
    Ingame_data.tulos[i]:=Ilmoitetaan_etta_join_done.tulos[i];
  end;

  Ingame_data.aika:=Ilmoitetaan_etta_join_done.aika;
  Ingame_data.puoliaika:=Ilmoitetaan_etta_join_done.puoliaika;
  Ingame_data.homeAloituspuoli:=Ilmoitetaan_etta_join_done.homekenttaPuoli;
  Ingame_data.maxPlayers:=Ilmoitetaan_etta_join_done.max_players;
  Ingame_data.aikaenabled:=Ilmoitetaan_etta_join_done.aikaenabled;
  omaUDPKey:=Ilmoitetaan_etta_join_done.udpKey;

  for i:=1 to 10 do
    for j:=1 to 2 do
      for k:=1 to 5 do
        Ingame_data.character[i,j,k]:=Ilmoitetaan_etta_join_done.character[i,j,k];
                                
  if Ingame_data.gameStatus>0 then
    UDPClient1.Open;


  for i:=1 to 10 do
    peli_chat_msg[i]:='';

  aseta_chat_viesti_peli('F2 - reply to private message',3);
  aseta_chat_viesti_peli('F3 - send ingame public message',3);
  aseta_chat_viesti_peli('F4 - send ingame team message',3);
  aseta_chat_viesti_peli('F5 - send private message to player',3);
  aseta_chat_viesti_peli('F6 - send private message to team',3);
  aseta_chat_viesti_peli('F7 - send private message to own team',3);
  aseta_chat_viesti_peli('F8 - switch shirt colours to red/blue',3);

  freePractiseMode:=false;
  form1.Timer1.Enabled:=true;
  form3.omegatimer1.Enabled:=true;
  form3.Visible:=true;
  play_sound(0);
  //form3.DanJetX1.FullScreen:=true;
  form1.Visible:=false;

  //jos slowmoving alkaa joskus bugaamaan, kyseessä saattaa olla hakkerit, jotka lähettää tän paketin
  Ilmota_slowMove.mtype:=5009;
  Ilmota_slowMove.mtype2:=5009;
  Ilmota_slowMove.slowmove:=Settings.slowMoving;
  Ilmota_slowMove.control:=Settings.control;
  TCPClient1.WriteBuffer(@Ilmota_slowMove,sizeof(Ilmota_slowMove));

  asetaNappaimet;

end;          //  default äänet ja slow move????

procedure mtype_2630; //broadcastaus joinauksessta
type
  TBroadcast_join = record
    mtype: smallint;
    mtype2: smallint;
    index: shortint;    //ei vip index
    team: shortint;
    nimi: string[15];
    vip: boolean;
    character: array [1..5] of shortint; //skin,hair,body,shoe, number
    nation: smallint;
    //game_status: byte; //0=ready click tilassa, 1=peli menossa
  end;
var
  Broadcast_join: TBroadcast_join;
  pID,tID: byte;
  i: integer;
begin
             
  TCPClient1.ReadBuffer(@Broadcast_join.mtype2,sizeof(TBroadcast_join)-2);

  pID:=Broadcast_join.index;
  tID:=Broadcast_join.team;

  Ingame_data.playerNames[pID,tID]:=Broadcast_join.nimi;
  Ingame_data.vip[pID,tID]:=Broadcast_join.vip;
  Ingame_data.nation[pID,tID]:=Broadcast_join.nation;

  joiner:=Ingame_data.playerNames[pID,tID]+' has joined to '+Ingame_data.teamNames[tID];
  joinerDelay:=300;

  for i:=1 to 5 do
    Ingame_data.character[pID,tID,i]:=Broadcast_join.character[i];


end;

procedure mtype_3000; //ilmoitus disconnectaajasta
type
  TDisconnectoija = record
    mtype: word;
    pID: byte;
    tID: byte;
  end;
var
    Disconnectoija: TDisconnectoija;
begin

  TCPClient1.ReadBuffer(@Disconnectoija.pID,sizeof(TDisconnectoija)-2);

  joiner:=Ingame_data.playerNames[Disconnectoija.pID,Disconnectoija.tID]+' has left game';
  joinerDelay:=300;

  Ingame_data.playerNames[Disconnectoija.pID,Disconnectoija.tID]:='';

end;

procedure mtype_3001; //client on klikannut ready nappia, ja nyt vastaanotetaan muutos dataa
type
  TUUdetTiedot = record
    mtype: word;
    mtype2: word;
    ready: array [1..10, 1..2] of boolean;
    game_status: shortint; //0=ready click tilassa, 1=peli menossa
  end;
var
  UUdetTiedot: TUUdetTiedot;
  i,j: integer;
begin

  TCPClient1.ReadBuffer(@UUdetTiedot.mtype2,sizeof(TUUdetTiedot)-2);

  for i:=1 to 10 do
    for j:=1 to 2 do
      Ingame_data.ready[i,j]:=UUdetTiedot.ready[i,j];

  Ingame_data.gameStatus:=UUdetTiedot.game_status;

  if Ingame_data.gameStatus>0 then begin
    UDPClient1.Open;
  end;

end;

procedure mtype_3002; //client on swapannut joukkuetta
type
  TUUdetTiedot = record
    mtype: word;
    mtype2: word;
    ready: array [1..10, 1..2] of boolean;
    game_status: shortint; //0=ready click tilassa, 1=peli menossa
    nimet: array [1..10, 1..2] of string[15];
    vip: array [1..10, 1..2] of boolean;
    character: array [1..10, 1..2,1..5] of byte; //skin,hair,body,shoe, number
    nation: array [1..10, 1..2] of smallint;
  end;
var
  UUdetTiedot: TUUdetTiedot;
  i,j,k: integer;
begin

  TCPClient1.ReadBuffer(@UUdetTiedot.mtype2,sizeof(TUUdetTiedot)-2);

  for i:=1 to 10 do
    for j:=1 to 2 do begin
      Ingame_data.ready[i,j]:=UUdetTiedot.ready[i,j];
      Ingame_data.playerNames[i,j]:=UUdetTiedot.nimet[i,j];
      Ingame_data.vip[i,j]:=UUdetTiedot.vip[i,j];
      Ingame_data.nation[i,j]:=UUdetTiedot.nation[i,j];
      for k:=1 to 5 do Ingame_data.character[i,j,k]:=UUdetTiedot.character[i,j,k];
      if Ingame_data.playerNames[i,j]=oma_login_name then begin
        Ingame_data.omaPeliIndex:=i;
        Ingame_data.omaPeliTeamIndex:=j;
      end;
    end;

  Ingame_data.gameStatus:=UUdetTiedot.game_status;

end;

procedure mtype_3003; //aika enabled, true/ false
type
  TAjanIlmoitus = record
    mtype: word;
    aikabool: boolean;
    aika: byte;
    puoliaika: byte;
  end;
var AjanIlmoitus: TAjanIlmoitus;
begin

  TCPClient1.ReadBuffer(@AjanIlmoitus.aikabool,sizeof(TAjanIlmoitus)-2);

  Ingame_data.aikaEnabled:=AjanIlmoitus.aikabool;
  Ingame_data.aika:=AjanIlmoitus.aika;
  Ingame_data.puoliaika:=AjanIlmoitus.puoliaika;

end;

procedure mtype_3004; //gamestatus vastaanotto
type
  TChangeGamaStatus = record
    mtype: word;
    gameStatus: byte;
    aika: byte;
    puoliaika: byte;
    homealoituspuoli: byte; //1=yläkenttä puoli, 2=alakenttä puoli
    aikaenabled: boolean;
    autoRunning: byte;
  end;
var ChangeGamaStatus: TChangeGamaStatus;
    i,j: integer;
begin

  TCPClient1.ReadBuffer(@ChangeGamaStatus.gameStatus,sizeof(TChangeGamaStatus)-2);

  Ingame_data.gameStatus:=ChangeGamaStatus.gameStatus;
  Ingame_data.aika:=ChangeGamaStatus.aika;
  Ingame_data.puoliaika:=ChangeGamaStatus.puoliaika;
  Ingame_data.homealoituspuoli:=ChangeGamaStatus.homealoituspuoli;
  Ingame_data.aikaenabled:=ChangeGamaStatus.aikaenabled;
  Ingame_data.autoRunning:=ChangeGamaStatus.autoRunning;

  if Ingame_data.gameStatus=0 then begin
    for i:=1 to Ingame_data.maxPlayers do
      for j:=1 to 2 do
        Ingame_data.ready[i,j]:=false;
  end;

end;

procedure mtype_3015; //sound broadcast
type
  TBroadcastSound = record
    mtype: word;
    sound: byte;
  end;
var
  BroadcastSound: TBroadcastSound;
begin
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
  TCPClient1.ReadBuffer(@BroadcastSound.sound,sizeof(TBroadcastSound)-2);

  if BroadcastSound.sound=8 then //post+near
    play_sound(9);

  if BroadcastSound.sound=3 then begin
    if Ingame_data.tulos[2]>Ingame_data.tulos[1] then play_sound(2)
    else play_sound(1);
  end;

  play_sound(BroadcastSound.sound);

end;

procedure mtype_3016; //ilmoitus maalista
type
  TIlmotusMaalista = record
    mtype: word;
    mtype2: word;
    tulos: array [1..2] of byte;
    kumpiMaalas: byte; //1=koti, 2=vieras (ääniä varten)
    stats: array [1..2] of byte; //maalintekijän ja syöttäjän peli index
    omamaali: boolean;
  end;
var
  IlmotusMaalista: TIlmotusMaalista;
  i: integer;
begin

  TCPClient1.ReadBuffer(@IlmotusMaalista.mtype2,sizeof(TIlmotusMaalista)-2);

  for i:=1 to 2 do
    Ingame_data.tulos[i]:=IlmotusMaalista.tulos[i];

  if IlmotusMaalista.kumpiMaalas=1 then play_sound(4);
  if IlmotusMaalista.kumpiMaalas=2 then play_sound(5);

  if IlmotusMaalista.omamaali then begin
    if IlmotusMaalista.kumpiMaalas=1 then
      IlmotusMaalista.kumpiMaalas:=2
    else
      IlmotusMaalista.kumpiMaalas:=1;

    scorer:='Own goal by '+Ingame_data.playerNames[IlmotusMaalista.stats[1],IlmotusMaalista.kumpiMaalas];
    scorerDelay:=300;
    exit;
  end;

  if IlmotusMaalista.stats[1]>0 then begin
    if IlmotusMaalista.stats[2]>0 then begin // on syöttäjä
      scorer:=Ingame_data.playerNames[IlmotusMaalista.stats[1],IlmotusMaalista.kumpiMaalas]+
      ' scored (passed by '+
      Ingame_data.playerNames[IlmotusMaalista.stats[2],IlmotusMaalista.kumpiMaalas]+
      ')';
    end
    else begin // ei syöttäjää
      scorer:=Ingame_data.playerNames[IlmotusMaalista.stats[1],IlmotusMaalista.kumpiMaalas]+
      ' scored';
    end;

    scorerDelay:=300;
  end;


end;

procedure mtype_3022; //homealoituspuoli
type
  THomepuoli = record
    mtype: word;
    puoliaika: byte;
    aika: byte;
    gamestatus: byte;
    homealoituspuoli: byte;
    aikaenabled : boolean;
  end;

var
    Homepuoli: THomepuoli;
begin

  TCPClient1.ReadBuffer(@Homepuoli.puoliaika,sizeof(THomepuoli)-2);

  Ingame_data.puoliaika:=Homepuoli.puoliaika;
  Ingame_data.aika:=Homepuoli.aika;
  Ingame_data.gamestatus:=Homepuoli.gamestatus;
  Ingame_data.homealoituspuoli:=Homepuoli.homealoituspuoli;
  Ingame_data.aikaenabled:=Homepuoli.aikaenabled;
  Ingame_data.tulos[1]:=0;
  Ingame_data.tulos[2]:=0;

end;

procedure mtype_3023; //ref liputukset
type
  TLiputus = record
    mtype: word;
    mtype2: word;
    liputukset: array [1..2] of byte;
  end;
var i: integer;
    Liputus: TLiputus;
begin

  TCPClient1.ReadBuffer(@Liputus.mtype2,sizeof(TLiputus)-2);

  for i:=1 to 2 do
    Ingame_data.refLiputus[i]:=Liputus.liputukset[i];

  if (Ingame_data.refLiputus[1]=2) or (Ingame_data.refLiputus[2]=2) then play_sound(10);

end;

procedure mtype_4000; //vastaan otetaan dataa spektausta varten
type
  TVastaus = record
    mtype: smallint;
    mtype2: word;
    game_status: shortint; //0=ready click tilassa, 1=peli menossa
    nimi: array [1..10, 1..2] of string[15];
    ready: array [1..10, 1..2] of boolean;

    max_players: shortint;
    team_name: array [1..2] of string[20];
    aika: shortint;
    tulos: array [1..2] of shortint;
    puoliaika: shortint;
    character: array [1..10, 1..2, 1..5] of shortint; //skin,hair,body,shoe, number
    homekenttaPuoli: byte;
    aikaenabled: boolean;
    vip: array [1..10, 1..2] of boolean;
    shirt_colors: array [1..4, 1..3, 1..2] of byte;
    shirt_style: array [1..2] of shortint;
    nation: array [1..10, 1..2] of smallint;
  end;
var
  Vastaus: TVastaus;
  i,j,k: integer;
begin

  TCPClient1.ReadBuffer(@Vastaus.mtype2,sizeof(TVastaus)-2);

  freePractiseMode:=false;

  form3.omegatimer1.Enabled:=true;
  form3.Visible:=true;
  play_sound(0);
  //form3.DanJetX1.FullScreen:=true;
  form1.Visible:=false;

  Ingame_data.gameStatus:=Vastaus.game_status;
  Ingame_data.maxPlayers:=Vastaus.max_players;
  Ingame_data.aika:=Vastaus.aika;
  Ingame_data.puoliaika:=Vastaus.puoliaika;
  Ingame_data.homeAloituspuoli:=Vastaus.homekenttaPuoli;
  Ingame_data.aikaenabled:=Vastaus.aikaenabled;

  for i:=1 to 4 do
    for j:=1 to 3 do
      for k:=1 to 2 do
        Ingame_data.shirtColors[i,j,k]:=Vastaus.shirt_colors[i,j,k];

  for i:=1 to 2 do begin
    Ingame_data.teamNames[i]:=Vastaus.team_name[i];
    Ingame_data.tulos[i]:=Vastaus.tulos[i];
    Ingame_data.shirtStyle[i]:=Vastaus.shirt_style[i];
  end;

  for i:=1 to 10 do
    for j:=1 to 2 do begin
      Ingame_data.playerNames[i,j]:=Vastaus.nimi[i,j];
      Ingame_data.ready[i,j]:=Vastaus.ready[i,j];
      Ingame_data.nation[i,j]:=Vastaus.nation[i,j];
      Ingame_data.vip[i,j]:=Vastaus.vip[i,j];
      for k:=1 to 5 do
        Ingame_data.character[i,j,k]:=Vastaus.character[i,j,k];
    end;

  UDPClient2.Open;

end;

procedure mtype_5000; // receiving 10 player stats
type
  TPaketti = record
    mtype: word;
    mtype2: word;
    name: array [1..8] of string[15];
    team: array [1..8] of string[20];
    stats: array [1..8, 1..6] of integer;
    i: byte;
  end;
var
  Paketti: TPaketti;
  i: integer;
begin

  TCPClient2.ReadBuffer(@Paketti.mtype2,sizeof(TPaketti)-2);
  if not (Paketti.mtype2=5000) then exit;

  for i:=1 to 8 do begin
    if not (Paketti.name[i]='') then begin
      setLength(PlayerStatsList.name,high(PlayerStatsList.name)+2);
      setLength(PlayerStatsList.team,high(PlayerStatsList.name)+2);
      setLength(PlayerStatsList.apps,high(PlayerStatsList.name)+2);
      setLength(PlayerStatsList.gls,high(PlayerStatsList.name)+2);
      setLength(PlayerStatsList.asts,high(PlayerStatsList.name)+2);
      setLength(PlayerStatsList.pass,high(PlayerStatsList.name)+2);
      setLength(PlayerStatsList.tck,high(PlayerStatsList.name)+2);
      setLength(PlayerStatsList.head,high(PlayerStatsList.name)+2);

      PlayerStatsList.name[high(PlayerStatsList.name)]:=Paketti.name[i];
      PlayerStatsList.team[high(PlayerStatsList.name)]:=Paketti.team[i];
      PlayerStatsList.apps[high(PlayerStatsList.name)]:=Paketti.stats[i,1];
      PlayerStatsList.gls[high(PlayerStatsList.name)]:=Paketti.stats[i,2];
      PlayerStatsList.asts[high(PlayerStatsList.name)]:=Paketti.stats[i,3];
      PlayerStatsList.pass[high(PlayerStatsList.name)]:=Paketti.stats[i,4];
      PlayerStatsList.tck[high(PlayerStatsList.name)]:=Paketti.stats[i,5];
      PlayerStatsList.head[high(PlayerStatsList.name)]:=Paketti.stats[i,6];

    end;
  end;

  if Paketti.i>0 then begin
    pyydaPlayerStats(0,0,Paketti.i,0);
    exit;
  end;

  if high(PlayerStatsList.name)>19 then
    form1.sScrollBar5.Max:=high(PlayerStatsList.name)-19
  else
    form1.sScrollBar5.Max:=0;

  asetaPlayerStats;

  panel_visiblet(13);

  please_wait(false);

end;

procedure mtype_5004; //vastaanotetaan administratorin broadcast msg
type
  TBroadcastMsg = record
    mtype: word;
    mtype2: word;
    msg: string[120];
  end;
var
  BroadcastMsg: TBroadcastMsg;
begin

  TCPClient2.ReadBuffer(@BroadcastMsg.mtype2,sizeof(TBroadcastMsg)-2);
  if not (BroadcastMsg.mtype2=5004) then exit;

  AddInfoMessage(TimeToStr(Time)+' Administrator -- '+BroadcastMsg.msg);

end;

procedure mtype_5005; //vastaanotetaan administratorin broadcast msg (joka tulee gameserverin kautta)
type
  TBroadcastMsg = record
    mtype: word;
    mtype2: word;
    msg: string[120];
  end;
var
  BroadcastMsg: TBroadcastMsg;
begin

  TCPClient1.ReadBuffer(@BroadcastMsg.mtype2,sizeof(TBroadcastMsg)-2);
  if not (BroadcastMsg.mtype2=5005) then exit;

  aseta_chat_viesti_peli('Administrator -- '+BroadcastMsg.msg,3);

end;

procedure mtype_5006; //info viesti, että challenge on luotu
type
  TBroadcastChallengeMsg = record
    mtype: word;
    mtype2: word;
    teams: array [1..2] of string[20];
  end;
var
  BroadcastChallengeMsg: TBroadcastChallengeMsg;
begin

  TCPClient2.ReadBuffer(@BroadcastChallengeMsg.mtype2,sizeof(TBroadcastChallengeMsg)-2);
  if not (BroadcastChallengeMsg.mtype2=5006) then exit;

  AddInfoMessage('Challenge '+BroadcastChallengeMsg.teams[1]+' - '+BroadcastChallengeMsg.teams[2]+' created');

end;

procedure mtype_5007; //info viesti, että challenge on luotu (joka tulee gameserverin kautta)
type
  TBroadcastChallengeMsg = record
    mtype: word;
    mtype2: word;
    teams: array [1..2] of string[20];
  end;
var
  BroadcastChallengeMsg: TBroadcastChallengeMsg;
begin

  TCPClient1.ReadBuffer(@BroadcastChallengeMsg.mtype2,sizeof(TBroadcastChallengeMsg)-2);
  if not (BroadcastChallengeMsg.mtype2=5007) then exit;

  aseta_chat_viesti_peli('Challenge '+BroadcastChallengeMsg.teams[1]+' - '+BroadcastChallengeMsg.teams[2]+' created',3);

end;

procedure mtype_5008; //vip transfer done
type
  TPaketti = record
    mtype: word;
    mtype2: word;
    tyyppi: byte;
    kenelle: string[15];
    hours: integer;
  end;
var
  Paketti: TPaketti;
begin

  TCPClient2.ReadBuffer(@Paketti.mtype2,sizeof(TPaketti)-2);
  if not (Paketti.mtype2=5008) then exit;

  AddInfoMessage(inttostr(Paketti.hours)+' days transferred to '+Paketti.kenelle);
  panel_visiblet(0);
  form1.sEdit14.text:='';
  form1.sEdit15.text:='';

  please_Wait(false);
end;

procedure mtype_5011; //mainserver käskee pyytämään jotain tavaraa uudelleen
type
  TPaketti = record
    mtype: word;
    mtype2: word;
    tyyppi: byte;
  end;
var
  Paketti: TPaketti;
begin

  TCPClient2.ReadBuffer(@Paketti.mtype2,sizeof(TPaketti)-2);
  if not (Paketti.mtype2=5011) then exit;

  please_wait(true);

  if Paketti.tyyppi=1 then begin //pyydetään public server list
    form1.sLabelFX97.Visible:=false;
    form1.sLabelFX98.Visible:=false;
    form1.sbutton14.Visible:=false;
    form1.sLabelFX100.Caption:='';
    form1.sLabelFX101.Caption:='';

    publicServersAlkuNollaukset;
    pyydaPublicServereita(1);
  end;

  if Paketti.tyyppi=2 then begin //pyydetään challenge list
    LiveScoresAlkuNollaukset;
    pyydaLiveScores(1);
  end;

  if Paketti.tyyppi=3 then begin //joku pelaaja on kickattu joukkueesta, joten poistetaan se recordista
    sorttaaOmanJoukkueenPelaajatUudelleen;
  end;

end;

procedure mtype_5014(paik_socket: Integer; mtype: word); //superadmin vastaanottaa listan pelaajista
type
  TPlayerListForSuperadmin = record
    mtype: word;
    mtype2: word;
    ra: word;
    username: array [1..10, 1..2] of string[15];
  end;
var
  PlayerListForSuperadmin: TPlayerListForSuperadmin;
  i,j: integer;
begin

  TCPClient2.ReadBuffer(@PlayerListForSuperadmin.mtype2,sizeof(TPlayerListForSuperadmin)-2);
  if not (PlayerListForSuperadmin.mtype2=mtype) then exit;
  if disable_recent_msg(paik_socket,mtype,PlayerListForSuperadmin.ra)=true then exit;


  for i:=1 to 10 do
    for j:=1 to 2 do
      if not (PlayerListForSuperadmin.username[i,j]='') then
        AddInfoMessage(PlayerListForSuperadmin.username[i,j]);

end;

procedure mtype_9000; // receiving 10 public chatter names
type
  TPublicChatterList = record
    mtype: word;
    mtype2: word;
    nimet: array [1..10] of string[15];
    next_i: integer;
  end;
  TlistanPyynto = record
    mtype: word;
    mtype2: word;
    ra: word;
    next_i: integer;
  end;
var
  PublicChatterList: TPublicChatterList;
  listanPyynto: TlistanPyynto;
  i: integer;
begin

  TCPClient2.ReadBuffer(@PublicChatterList.mtype2,sizeof(TPublicChatterList)-2);

  for i:=1 to 10 do
    if not (PublicChatterList.nimet[i]='') then
      form1.sListBox4.Items.Add(PublicChatterList.nimet[i]);

  if PublicChatterList.next_i=0 then begin
    publicChattersReceived:=true;
    panel_visiblet(17);
    please_wait(false);
    exit;
  end;

  listanPyynto.mtype:=9000;
  listanPyynto.mtype2:=9000;
  listanPyynto.ra:=random(55000)+1;
  listanPyynto.next_i:=PublicChatterList.next_i;
  TCPClient2.WriteBuffer(@listanPyynto,sizeof(listanPyynto));

end;

procedure mtype_9001(paik_socket: Integer; mtype: word); // user joined to public chat
type
  TPaketti = record
    mtype: word;
    mtype2: word;
    ra: word;
    name: string[15];
    onlineUsers: word;
  end;
var
  Paketti: TPaketti;
  i: integer;
begin

  TCPClient2.ReadBuffer(@Paketti.mtype2,sizeof(TPaketti)-2);
  if not (Paketti.mtype2=mtype) then exit;
  if disable_recent_msg(paik_socket,mtype,Paketti.ra)=true then exit;

  if Paketti.name='' then exit;

  for i:=0 to form1.sListbox4.Items.Count-1 do
    if form1.sListbox4.Items[i]=Paketti.name then exit;

  form1.sListbox4.Items.Add(Paketti.name);

  form1.sLabelFX94.Caption:='Online players: '+inttostr(Paketti.onlineUsers);

end;

procedure mtype_9002; // user quits from public chat
type
  TPaketti = record
    mtype: word;
    mtype2: word;
    name: string[15];
  end;
var
  Paketti: TPaketti;
  i: integer;
begin

  TCPClient2.ReadBuffer(@Paketti.mtype2,sizeof(TPaketti)-2);
  if Paketti.name='' then exit;

  if form1.sListbox4.Items.Count<=0 then exit;

  for i:=form1.sListbox4.Items.Count-1 downto 0 do
    if form1.sListbox4.Items[i]=Paketti.name then form1.sListbox4.Items.Delete(i);

end;

procedure mtype_9003(paik_socket: Integer; mtype: word); //info viesti masterservun kautta
type
  TPaketti = record
    mtype: word;
    mtype2: word;
    ra: word;
    infoType: byte;
  end;
var
  Paketti: TPaketti;
begin

  TCPClient2.ReadBuffer(@Paketti.mtype2,sizeof(TPaketti)-2);
  if not (Paketti.mtype2=mtype) then exit;
  if disable_recent_msg(paik_socket,mtype,Paketti.ra)=true then exit;

  if Paketti.infoType=1 then AddInfoMessage('User doesnt exist');
  if Paketti.infoType=2 then AddInfoMessage('User offline');
  if Paketti.infoType=3 then AddInfoMessage('Team doesnt exist');
  if Paketti.infoType=4 then AddInfoMessage('Nobody in team online');
  if Paketti.infoType=5 then begin
    AddInfoMessage('Thank you for payment. Your vip will be activated soon.');
    panel_visiblet(0);
  end;
  if Paketti.infoType=6 then AddInfoMessage('Vip index and username doesn''t match');
  if Paketti.infoType=7 then AddInfoMessage('Team have max 50 players');
  if Paketti.infoType=8 then AddInfoMessage('Username already in use');
  if Paketti.infoType=9 then AddInfoMessage('Match details doesnt exist');

  if Paketti.infoType=10 then begin
    cClose:=true;
    form6.Close;
  end;


  if Paketti.infoType=12 then AddInfoMessage('Invalid code');
  if Paketti.infoType=13 then AddInfoMessage('No search results');

  if Paketti.infoType=14 then begin
    AddInfoMessage('Nation changed.');
    panel_visiblet(0);
  end;

  if Paketti.infoType=15 then AddInfoMessage('User needs to be in lobby');
  if Paketti.infoType=16 then AddInfoMessage('User banned');

  if Paketti.infoType=17 then AddInfoMessage('You can start only one privateserver at time');

  please_wait(false);

end;

procedure mtype_9004(paik_socket: Integer; mtype: word); //info viesti gameservun kautta
type
  TPaketti = record
    mtype: word;
    mtype2: word;
    ra: word;
    infoType: byte;
  end;
var
  Paketti: TPaketti;
begin

  TCPClient1.ReadBuffer(@Paketti.mtype2,sizeof(TPaketti)-2);
  if not (Paketti.mtype2=mtype) then exit;
  if disable_recent_msg(paik_socket,mtype,Paketti.ra)=true then exit;

  if Paketti.infoType=1 then aseta_chat_viesti_peli('User doesnt exist',3);
  if Paketti.infoType=2 then aseta_chat_viesti_peli('User offline',3);
  if Paketti.infoType=3 then aseta_chat_viesti_peli('Team doesnt exist',3);
  if Paketti.infoType=4 then aseta_chat_viesti_peli('Nobody in team online',3);

  if Paketti.infoType=5 then forceKick;


end;

procedure mtype_9007(paik_socket: Integer; mtype: word); //vastaanotetaan /team
type
  TTeamCmdVastaus = record
    mtype: word;
    mtype2: word;
    ra: word;
    online: byte;
    pelaajat: array [1..10] of string[15];
  end;
var
  TeamCmdVastaus: TTeamCmdVastaus;
  i: integer;
  str: string;
begin

  TCPClient2.ReadBuffer(@TeamCmdVastaus.mtype2,sizeof(TTeamCmdVastaus)-2);
  if not (TeamCmdVastaus.mtype2=mtype) then exit;
  if disable_recent_msg(paik_socket,mtype,TeamCmdVastaus.ra)=true then exit;

  AddInfoMessage('Players online: '+inttostr(TeamCmdVastaus.online));

  str:='';
  for i:=1 to 10 do
    if not (TeamCmdVastaus.pelaajat[i]='') then str:=str+TeamCmdVastaus.pelaajat[i]+',';

  AddInfoMessage(str);

end;

procedure mtype_9009(paik_socket: Integer; mtype: word); //vastaanotetaan /team  (gameserverin kautta)
type
  TTeamCmdVastaus = record
    mtype: word;
    mtype2: word;
    ra: word;
    online: byte;
    pelaajat: array [1..10] of string[15];
  end;
var
  TeamCmdVastaus: TTeamCmdVastaus;
  str: string;
  i: integer;
begin

  TCPClient1.ReadBuffer(@TeamCmdVastaus.mtype2,sizeof(TTeamCmdVastaus)-2);
  if not (TeamCmdVastaus.mtype2=mtype) then exit;
  if disable_recent_msg(paik_socket,mtype,TeamCmdVastaus.ra)=true then exit;

  aseta_chat_viesti_peli('Players online: '+inttostr(TeamCmdVastaus.online),3);

  str:='';
  for i:=1 to 10 do
    if not (TeamCmdVastaus.pelaajat[i]='') then str:=str+TeamCmdVastaus.pelaajat[i]+',';

  aseta_chat_viesti_peli(str,3);


end;

procedure mtype_9010(paik_socket: Integer; mtype: word); //vastaanotetaan /info
type
  TInfoCmdVastaus = record
    mtype: word;
    mtype2: word;
    ra: word;
    name: string[15];
    teamName: string[20];
    position: array [1..4] of integer;  //ylä,ala,vasen,oikea
    admas: byte;
    nation: smallint;
    career_stats: array [1..3] of integer;
    career_statistic: array [1..3, 1..2] of integer; //pas,tac,hea -- onnistuneet, epäonn.
    lft: boolean;
    server: string[55];
    ip: string[15];
  end;
var
  InfoCmdVastaus: TInfoCmdVastaus;

begin

  TCPClient2.ReadBuffer(@InfoCmdVastaus.mtype2,sizeof(TInfoCmdVastaus)-2);
  if not (InfoCmdVastaus.mtype2=mtype) then exit;
  if disable_recent_msg(paik_socket,mtype,InfoCmdVastaus.ra)=true then exit;

  AddInfoMessage(InfoCmdVastaus.name+' ('+InfoCmdVastaus.teamName+' - '+int_to_admin(InfoCmdVastaus.admas)+') '+nation_int_to_strlong(InfoCmdVastaus.nation));
  AddInfoMessage('Apps '+inttostr(InfoCmdVastaus.career_stats[1])+', Goals '+inttostr(InfoCmdVastaus.career_stats[2])+', Assists '+inttostr(InfoCmdVastaus.career_stats[3]));

  //Tackling: -Heading : -Passing : -
  //AMC - Exp 0
  //Looking for team: Yes
  AddInfoMessage(InfoCmdVastaus.server);
  if not (InfoCmdVastaus.ip='') then
    AddInfoMessage(InfoCmdVastaus.ip);


end;

procedure mtype_9012(paik_socket: Integer; mtype: word); //vastaanotetaan /team  (gameserverin kautta)
type
  TInfoCmdVastaus = record
    mtype: word;
    mtype2: word;
    ra: word;
    name: string[15];
    teamName: string[20];
    position: array [1..4] of integer;  //ylä,ala,vasen,oikea
    admas: byte;
    nation: smallint;
    career_stats: array [1..3] of integer;
    career_statistic: array [1..3, 1..2] of integer; //pas,tac,hea -- onnistuneet, epäonn.
    lft: boolean;
    server: string[55];
    ip: string[15];
  end;
var
  InfoCmdVastaus: TInfoCmdVastaus;
begin

  TCPClient1.ReadBuffer(@InfoCmdVastaus.mtype2,sizeof(TInfoCmdVastaus)-2);
  if not (InfoCmdVastaus.mtype2=mtype) then exit;
  if disable_recent_msg(paik_socket,mtype,InfoCmdVastaus.ra)=true then exit;


  aseta_chat_viesti_peli(InfoCmdVastaus.name+' ('+InfoCmdVastaus.teamName+' - '+int_to_admin(InfoCmdVastaus.admas)+') '+nation_int_to_strlong(InfoCmdVastaus.nation),3);
  aseta_chat_viesti_peli('Apps '+inttostr(InfoCmdVastaus.career_stats[1])+', Goals '+inttostr(InfoCmdVastaus.career_stats[2])+', Assists '+inttostr(InfoCmdVastaus.career_stats[3]),3);

  //Tackling: -Heading : -Passing : -
  //AMC - Exp 0
  //Looking for team: Yes
  aseta_chat_viesti_peli(InfoCmdVastaus.server,3);
  if not (InfoCmdVastaus.ip='') then
    aseta_chat_viesti_peli(InfoCmdVastaus.ip,3);

end;

procedure mtype_9013(paik_socket: Integer; mtype: word); //username changed
type
  TUusiNick = record
    mtype: word;
    mtype2: word;
    ra: word;
    name: string[15];
  end;
var
  UusiNick: TUusiNick;
begin

  TCPClient2.ReadBuffer(@UusiNick.mtype2,sizeof(TUusiNick)-2);
  if not (UusiNick.mtype2=mtype) then exit;
  if disable_recent_msg(paik_socket,mtype,UusiNick.ra)=true then exit;

  form1.sedit3.Text:=UusiNick.name;
  oma_login_name:=UusiNick.name;
  form1.name1.Caption:=oma_login_name;
  if not (Settings.username='') then begin
    Settings.username:=UusiNick.name;
    tallennaSettings;
  end;

  AddInfoMessage('Username changed');

  please_wait(false);
  panel_visiblet(0);

end;

procedure mtype_9014(paik_socket: Integer; mtype: word); //vastaanotetaan puoliaika dataa
type
  TPuoliaikaIlmotus = record
    mtype: word;
    mtype2: word;
    ra: word;

    tulos: array [1..2] of byte;
    shots: array [1..2, 1..2] of byte;  //tID, onTarget/offTarget
    Goalkicks: array [1..2] of byte;
    Corners: array [1..2] of byte;
    Freekicks: array [1..2] of byte;
    Throwins: array [1..2] of byte;
    Offsides: array [1..2] of byte;
    Possession: array [1..2] of integer;
    Tackling: array [1..2, 1..2] of word;  //tID, success/unsuccess
    Heading: array [1..2, 1..2] of word;   //tID, success/unsuccess
    Passing: array [1..2, 1..2] of word;   //tID, success/unsuccess
  end;
var
  PuoliaikaIlmotus: TPuoliaikaIlmotus;
  i,j: integer;
begin

  TCPClient1.ReadBuffer(@PuoliaikaIlmotus.mtype2,sizeof(TPuoliaikaIlmotus)-2);
  if not (PuoliaikaIlmotus.mtype2=mtype) then exit;
  if disable_recent_msg(paik_socket,mtype,PuoliaikaIlmotus.ra)=true then exit;

  for i:=1 to 2 do begin
    Ingame_data.tulos[i]:=PuoliaikaIlmotus.tulos[i];
    PuoliaikaStatsit.Goalkicks[i]:=PuoliaikaIlmotus.Goalkicks[i];
    PuoliaikaStatsit.Corners[i]:=PuoliaikaIlmotus.Corners[i];
    PuoliaikaStatsit.Freekicks[i]:=PuoliaikaIlmotus.Freekicks[i];
    PuoliaikaStatsit.Throwins[i]:=PuoliaikaIlmotus.Throwins[i];
    PuoliaikaStatsit.Offsides[i]:=PuoliaikaIlmotus.Offsides[i];
    PuoliaikaStatsit.Possession[i]:=PuoliaikaIlmotus.Possession[i];
    for j:=1 to 2 do begin
      PuoliaikaStatsit.shots[i,j]:=PuoliaikaIlmotus.shots[i,j];
      PuoliaikaStatsit.Tackling[i,j]:=PuoliaikaIlmotus.Tackling[i,j];
      PuoliaikaStatsit.Heading[i,j]:=PuoliaikaIlmotus.Heading[i,j];
      PuoliaikaStatsit.Passing[i,j]:=PuoliaikaIlmotus.Passing[i,j];
    end;
  end;

end;

procedure mtype_9015(paik_socket: Integer; mtype: word); //vastaanotetaan matchDetails (teamdata)
type
  TMatchDetTeamdataToimitus = record
    mtype: word;
    mtype2: word;
    ra: word;
    mID: byte;
    name: array [1..2] of string[20];
    shirt_colors: array [1..2,1..3] of byte;
    goalKicks: array [1..2] of byte;
    corners: array [1..2] of byte;
    freeKicks: array [1..2] of byte;
    throwins: array [1..2] of byte;
    homeAreaPossession: array [1..2] of integer;
    middleAreaPossession: array [1..2] of integer;
    awayAreaPossession: array [1..2] of integer;
  end;
var
  MatchDetTeamdataToimitus: TMatchDetTeamdataToimitus;
  i,j: integer;
begin

  TCPClient2.ReadBuffer(@MatchDetTeamdataToimitus.mtype2,sizeof(TMatchDetTeamdataToimitus)-2);
  if not (MatchDetTeamdataToimitus.mtype2=mtype) then exit;
  if disable_recent_msg(paik_socket,mtype,MatchDetTeamdataToimitus.ra)=true then exit;

  ZeroMemory(@MatchDetails, SizeOf(MatchDetails));

  for i:=1 to 2 do begin
    MatchDetails.name[i]:=MatchDetTeamdataToimitus.name[i];
    MatchDetails.goalKicks[i]:=MatchDetTeamdataToimitus.goalKicks[i];
    MatchDetails.corners[i]:=MatchDetTeamdataToimitus.corners[i];
    MatchDetails.freeKicks[i]:=MatchDetTeamdataToimitus.freeKicks[i];
    MatchDetails.throwins[i]:=MatchDetTeamdataToimitus.throwins[i];
    MatchDetails.homeAreaPossession[i]:=MatchDetTeamdataToimitus.homeAreaPossession[i];
    MatchDetails.middleAreaPossession[i]:=MatchDetTeamdataToimitus.middleAreaPossession[i];
    MatchDetails.awayAreaPossession[i]:=MatchDetTeamdataToimitus.awayAreaPossession[i];

    for j:=1 to 3 do
      MatchDetails.shirt_colors[i,j]:=MatchDetTeamdataToimitus.shirt_colors[i,j];
  end;

  pyydaMatchDetPelaajadata(0,MatchDetTeamdataToimitus.mID);

end;

procedure mtype_9016(paik_socket: Integer; mtype: word); //vastaanotetaan matchDetails (pelaaja dataa)
type
  TMatchDetPelaajadataToimitus = record
    mtype: word;
    mtype2: word;
    ra: word;
    mID: byte;
    id: array [1..9] of integer;
    name: array [1..9] of string[15];
    assists: array [1..9] of byte;  //
    offsides: array [1..9] of byte;
    joukkue: array [1..9] of byte;  //koti tai vieras, eli 1 tai 2
    passing: array [1..9, 1..2] of word;
    tackling: array [1..9, 1..2] of word;
    heading: array [1..9, 1..2] of word;
    shots: array [1..9, 1..2] of word;
    position: array [1..9, 1..4] of integer;
    nextI: integer;
  end;
var
  MatchDetPelaajadataToimitus: TMatchDetPelaajadataToimitus;
  i,j: integer;
  hi: integer;
begin

  TCPClient2.ReadBuffer(@MatchDetPelaajadataToimitus.mtype2,sizeof(TMatchDetPelaajadataToimitus)-2);
  if not (MatchDetPelaajadataToimitus.mtype2=mtype) then exit;
  if disable_recent_msg(paik_socket,mtype,MatchDetPelaajadataToimitus.ra)=true then exit;


  for i:=1 to 9 do begin
    if MatchDetPelaajadataToimitus.id[i]>0 then begin

      setLength(MatchDetails.id,high(MatchDetails.id)+2);
      setLength(MatchDetails.username,high(MatchDetails.id)+2);
      setLength(MatchDetails.assists,high(MatchDetails.id)+2);
      setLength(MatchDetails.offsides,high(MatchDetails.id)+2);
      setLength(MatchDetails.position,high(MatchDetails.id)+2);
      setLength(MatchDetails.joukkue,high(MatchDetails.id)+2);
      setLength(MatchDetails.passing,high(MatchDetails.id)+2);
      setLength(MatchDetails.tackling,high(MatchDetails.id)+2);
      setLength(MatchDetails.heading,high(MatchDetails.id)+2);
      setLength(MatchDetails.shots,high(MatchDetails.id)+2);

      hi:=high(MatchDetails.id);

      MatchDetails.id[hi]:=MatchDetPelaajadataToimitus.id[i];
      MatchDetails.username[hi]:=MatchDetPelaajadataToimitus.name[i];
      MatchDetails.assists[hi]:=MatchDetPelaajadataToimitus.assists[i];
      MatchDetails.offsides[hi]:=MatchDetPelaajadataToimitus.offsides[i];
      for j:=1 to 4 do
        MatchDetails.position[hi].pos[j]:=MatchDetPelaajadataToimitus.position[i,j];

      for j:=1 to 2 do begin
        MatchDetails.passing[hi].stats[j]:=MatchDetPelaajadataToimitus.passing[i,j];
        MatchDetails.tackling[hi].stats[j]:=MatchDetPelaajadataToimitus.tackling[i,j];
        MatchDetails.heading[hi].stats[j]:=MatchDetPelaajadataToimitus.heading[i,j];
        MatchDetails.shots[hi].stats[j]:=MatchDetPelaajadataToimitus.shots[i,j];
      end;
      MatchDetails.joukkue[hi]:=MatchDetPelaajadataToimitus.joukkue[i];


    end;
  end;


  if MatchDetPelaajadataToimitus.nextI>0 then begin
    pyydaMatchDetPelaajadata(MatchDetPelaajadataToimitus.nextI,MatchDetPelaajadataToimitus.mID);
    exit;
  end;  

  pyydaMatchDetGoaldata(0,MatchDetPelaajadataToimitus.mID);

end;

procedure mtype_9017(paik_socket: Integer; mtype: word); //vastaanotetaan matchDetails (goal dataa)
type
  TMatchDetGoaldataToimitus = record
    mtype: word;
    mtype2: word;
    ra: word;
    mID: byte;
    id: array [1..20] of integer;
    aika: array [1..20] of byte;
    ownGoal: array [1..20] of byte;
    nextI: integer;
  end;
var
  MatchDetGoaldataToimitus: TMatchDetGoaldataToimitus;
  i: integer;
  hi: integer;
begin

  TCPClient2.ReadBuffer(@MatchDetGoaldataToimitus.mtype2,sizeof(TMatchDetGoaldataToimitus)-2);
  if not (MatchDetGoaldataToimitus.mtype2=mtype) then exit;
  if disable_recent_msg(paik_socket,mtype,MatchDetGoaldataToimitus.ra)=true then exit;


  for i:=1 to 20 do begin
    if MatchDetGoaldataToimitus.id[i]>0 then begin

      setLength(MatchDetails.scorerID,high(MatchDetails.scorerID)+2);
      setLength(MatchDetails.aika,high(MatchDetails.scorerID)+2);
      setLength(MatchDetails.ownGoal,high(MatchDetails.scorerID)+2);

      hi:=high(MatchDetails.scorerID);

      MatchDetails.scorerID[hi]:=MatchDetGoaldataToimitus.id[i];
      MatchDetails.aika[hi]:=MatchDetGoaldataToimitus.aika[i];
      MatchDetails.ownGoal[hi]:=MatchDetGoaldataToimitus.ownGoal[i];

    end;
  end;


  if MatchDetGoaldataToimitus.nextI>0 then begin
    pyydaMatchDetGoaldata(MatchDetGoaldataToimitus.nextI,MatchDetGoaldataToimitus.mID);
    exit;
  end;  


  asetteleMatchDetailsKohdilleen;

  asetaMatchDetOverview;

  panel_visiblet(23);

  please_wait(false);

end;

procedure mtype_9020(paik_socket: Integer; mtype: word); //pelaajat samalta ip:ltä
type
  TToimitaSamanIPnKayttajat = record
    mtype: word;
    mtype2: word;
    ra: word;
    nimi: string[15];
    users: array [1..10] of string[15];
  end;
  TPyyda_pelaaja_data = record
    mtype: word;
    mtype2: word;
    ra: word;
    nimi: string[15];
  end;
var
  ToimitaSamanIPnKayttajat: TToimitaSamanIPnKayttajat;
  Pyyda_pelaaja_data: TPyyda_pelaaja_data;
  i: integer;
  str: string;
begin

  TCPClient2.ReadBuffer(@ToimitaSamanIPnKayttajat.mtype2,sizeof(TToimitaSamanIPnKayttajat)-2);
  if not (ToimitaSamanIPnKayttajat.mtype2=mtype) then exit;
  if disable_recent_msg(paik_socket,mtype,ToimitaSamanIPnKayttajat.ra)=true then exit;

  str:='';
  for i:=1 to 10 do
    if not (ToimitaSamanIPnKayttajat.users[i]='') then
      str:=str+ToimitaSamanIPnKayttajat.users[i]+',';

  form1.sLabelFX180.caption:=parsiViimenenMerkki(str,',');

  Pyyda_pelaaja_data.mtype:=235;
  Pyyda_pelaaja_data.mtype2:=235;
  Pyyda_pelaaja_data.ra:=random(55000)+1;
  Pyyda_pelaaja_data.nimi:=ToimitaSamanIPnKayttajat.nimi;
  TCPClient2.WriteBuffer(@Pyyda_pelaaja_data,sizeof(Pyyda_pelaaja_data));

end;

procedure mtype_9023(paik_socket: Integer; mtype: word); //pelaajat samalta ip:ltä
type
  TBannaus = record
    mtype: word;
    mtype2: word;
    ra: word;
    ir: array [1..4] of integer;
    username: string[15];
    id: integer;
  end;
var
  Bannaus: TBannaus;
  texttied: textfile;
begin

  TCPClient2.ReadBuffer(@Bannaus.mtype2,sizeof(TBannaus)-2);
  if not (Bannaus.mtype2=mtype) then exit;
  if disable_recent_msg(paik_socket,mtype,Bannaus.ra)=true then exit;

  if not (Bannaus.ir[1]=11111111) then exit;
  if not (Bannaus.ir[2]=22222222) then exit;
  if not (Bannaus.ir[3]=33333333) then exit;
  if not (Bannaus.ir[4]=44444444) then exit;
  if not (Bannaus.username=oma_login_name) then exit;
  if not (Bannaus.id=oma_lobbyindex) then exit;

  assignfile(texttied,'c:\clog.txt');
  rewrite(texttied);
  closefile(texttied);

  tcpclient1.Close;
  tcpclient2.Close;
end;

procedure mtype_9024(paik_socket: Integer; mtype: word); //vastaanotetaan lista gameservereistä
type
  TGameservereidenToimitus = record
    mtype: word;
    mtype2: word;
    ra: word;
    host_servers: array [1..4] of string[20];
  end;
var
  GameservereidenToimitus: TGameservereidenToimitus;
  i: integer;
begin

  TCPClient2.ReadBuffer(@GameservereidenToimitus.mtype2,sizeof(TGameservereidenToimitus)-2);
  if not (GameservereidenToimitus.mtype2=mtype) then exit;
  if disable_recent_msg(paik_socket,mtype,GameservereidenToimitus.ra)=true then exit;

  for i:=1 to 4 do begin
    PrivateServerSettings.shirt_colors[i,1,1]:=0;
    PrivateServerSettings.shirt_colors[i,2,1]:=0;
    PrivateServerSettings.shirt_colors[i,3,1]:=255;
  end;
  PrivateServerSettings.shirt_style[1]:=1;
  for i:=1 to 4 do begin
    PrivateServerSettings.shirt_colors[i,1,2]:=255;
    PrivateServerSettings.shirt_colors[i,2,2]:=0;
    PrivateServerSettings.shirt_colors[i,3,2]:=0;
  end;
  PrivateServerSettings.shirt_style[2]:=1;

  form1.sComboBox19.Items.Clear;
  form1.sComboBox19.Text:='';
  for i:=1 to 4 do
    if not (GameservereidenToimitus.host_servers[i]='') then
      form1.sComboBox19.Items.Add(GameservereidenToimitus.host_servers[i]);

  form1.sComboBox19.ItemIndex:=0;

  kit_colors_privateServer;
  panel_visiblet(25);

  please_wait(false);

end;

procedure mtype_9025(paik_socket: Integer; mtype: word); //privaservu luotu
type
  TIlmotusClinullePrivaServusta = record
    mtype: word;
    mtype2: word;
    ra: word;
    sID: integer;
    hostName: string[20];
  end;
var
  IlmotusClinullePrivaServusta: TIlmotusClinullePrivaServusta;
begin

  TCPClient2.ReadBuffer(@IlmotusClinullePrivaServusta.mtype2,sizeof(TIlmotusClinullePrivaServusta)-2);
  if not (IlmotusClinullePrivaServusta.mtype2=mtype) then exit;
  if disable_recent_msg(paik_socket,mtype,IlmotusClinullePrivaServusta.ra)=true then exit;

  AddInfoMessage('Private server '+IlmotusClinullePrivaServusta.hostName+' created');
  panel_visiblet(0);

  please_wait(false);

end;

procedure mtype_9026(paik_socket: Integer; mtype: word); //invalid password (privaservuun)
type
  TInvalidPassword = record
    mtype: word;
    mtype2: word;
    ra: word;
  end;
var
  InvalidPassword: TInvalidPassword;
begin

  TCPClient1.ReadBuffer(@InvalidPassword.mtype2,sizeof(TInvalidPassword)-2);
  if not (InvalidPassword.mtype2=mtype) then exit;
  if disable_recent_msg(paik_socket,mtype,InvalidPassword.ra)=true then exit;

  AddInfoMessage('Invalid password');
  TCPClient2.Open;
  TCPClient1.Close;
  please_wait(false);

end;

end.
