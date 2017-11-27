unit freepractise;

interface

uses typet,windows,omegascreen,graphics,sysutils;

const

  MAX_SERVERS=1;

type

  TServers = record
    active: array [1..MAX_SERVERS] of boolean;
    gametype: array [1..MAX_SERVERS] of shortint; //1=public training, 2=challenge
    gameStatus: array [1..MAX_SERVERS] of  shortint; //0=ready click tilassa, 1=peli menossa, 2=stats ikkuna
    name: array [1..MAX_SERVERS] of string[20];    //serverin nimi
    max_plrs: array [1..MAX_SERVERS] of byte;  //5-10 per puoli
    ready: array [1..MAX_SERVERS, 1..10, 1..2] of boolean;
    challTimeout: array [1..MAX_SERVERS] of byte; //timeouttaus haastepeliin, jos porukkaa ei ilmaannu serverille minuuttiin

    teamNames: array [1..MAX_SERVERS,1..2] of string[20];
    shirtColors: array [1..MAX_SERVERS, 1..4, 1..3,1..2] of byte;
    shirtStyle: array [1..MAX_SERVERS, 1..2] of byte;

    statsDelay: array [1..MAX_SERVERS] of smallint;

    viimeKontroloija: array [1..MAX_SERVERS,1..2] of byte;
    viimeKontroloijaTeam: array [1..MAX_SERVERS,1..2] of byte;
    mista_ulos: array [1..MAX_SERVERS] of byte;
    heittoCoords: array [1..MAX_SERVERS, 1..2] of real;
    vapariCoords: array [1..MAX_SERVERS, 1..2] of real;
    kumman_heitto: array [1..MAX_SERVERS] of byte;
    kumman_vapari: array [1..MAX_SERVERS] of byte;
    vaparin_antaja: array [1..MAX_SERVERS,1..2] of byte;

    paitsiolinja: array [1..MAX_SERVERS,1..2] of smallint;
    paitsiossa: array [1..MAX_SERVERS,1..10, 1..2] of boolean;

    puoliaika: array [1..MAX_SERVERS] of byte;
    tulos: array [1..MAX_SERVERS,1..2] of byte;

    Goalkicks: array [1..MAX_SERVERS,1..2] of byte;
    Corners: array [1..MAX_SERVERS,1..2] of byte;
    Freekicks: array [1..MAX_SERVERS,1..2] of byte;
    Throwins: array [1..MAX_SERVERS,1..2] of byte;
    homeAreaPossession: array [1..MAX_SERVERS,1..2] of integer;
    middleAreaPossession: array [1..MAX_SERVERS,1..2] of integer;
    awayAreaPossession: array [1..MAX_SERVERS,1..2] of integer;

    corner: array [1..MAX_SERVERS] of boolean; //jos true, vasemman napin laukasuun tulee lisä poweria

    maali_delayer: array [1..MAX_SERVERS] of byte;
    homeAloitusPuoli: array [1..MAX_SERVERS] of byte; //1=yläkenttä puoli, 2=alakenttä puoli
    kickoffAloittaja: array [1..MAX_SERVERS] of byte; //1=koti, 2=vieras (näissä ei kenttäpuolisko merkkaa)
    autoRunning: array [1..MAX_SERVERS] of byte;
    liukkari: array [1..MAX_SERVERS, 1..10, 1..2] of boolean;

    index: array [1..MAX_SERVERS, 1..10, 1..2] of integer;   //vip indeksi
    plr_names: array [1..MAX_SERVERS, 1..10, 1..2] of string[15];
    plr_teamnames: array [1..MAX_SERVERS, 1..10, 1..2] of string[20];

    character: array [0..MAX_SERVERS,1..10,1..2,1..5] of byte; //skin,hair,body,shoe,number
    socket: array [1..MAX_SERVERS, 1..10, 1..2] of integer;
    timeout: array [1..MAX_SERVERS, 1..10, 1..2] of byte;
    udpKey: array [1..MAX_SERVERS, 1..10, 1..2] of byte;
    control: array [1..MAX_SERVERS, 1..10, 1..2] of byte;  //0 keyboard, 1 mouse

    kierrePerson: array [1..MAX_SERVERS, 1..2] of byte; //sisältää pID,tID (pID ei siis vip index)
    kierreAikaa: array [1..MAX_SERVERS] of byte;  //kun isompi kuin 0, sen aikaa voidaan asettaa kierrettä
    kierreAlkukulma: array [1..MAX_SERVERS] of real;
    kierreJatkokulma: array [1..MAX_SERVERS] of real;

    mouse: array[1..MAX_SERVERS, 1..10, 1..2,1..2] of smallint;
    mouseButtons: array[1..MAX_SERVERS, 1..10, 1..2,1..2] of boolean;
    crossingButton: array[1..MAX_SERVERS, 1..10, 1..2] of boolean;
    keybKickType: array [1..MAX_SERVERS, 1..10, 1..2] of byte; //1=shoot, 2=crossing
    keys: array [1..MAX_SERVERS, 1..10, 1..2] of byte;
    plrCoords: array[1..MAX_SERVERS, 1..10, 1..2,1..2] of real;
    kickoffCoords: array[1..MAX_SERVERS, 1..10, 1..2,1..2] of real;
    kickoffPosVarattu: array[1..MAX_SERVERS, 1..10, 1..2] of boolean;

    plrAngle: array[1..MAX_SERVERS, 1..10, 1..2] of real;   //plr to mouse angle
    plrSuunta: array[1..MAX_SERVERS, 1..10, 1..2] of real;  //plr juoksu suunta
    plrEtaisyys: array[1..MAX_SERVERS, 1..10, 1..2] of real; //plr to mouse etäisyys
    plrNopeus: array[1..MAX_SERVERS, 1..10, 1..2] of real;
    kaatumis_delay: array[1..MAX_SERVERS, 1..10, 1..2] of byte;
    autoOhjaus: array[1..MAX_SERVERS, 1..10, 1..2] of boolean;
    blokattuArea: array[1..MAX_SERVERS] of byte;  //1=ylä 16 raja, 2=ala 16 raja, 3=joku koords
    blokattuAreaCoords: array[1..MAX_SERVERS, 1..2] of real;
    goalkickPos: array[1..MAX_SERVERS] of byte;

    disabledPlayer: array[1..MAX_SERVERS, 1..2] of byte; //pID,tID

    ballKorkeus: array[1..MAX_SERVERS] of real;
    ballAngle: array[1..MAX_SERVERS] of real;
    ballHeAngle: array[1..MAX_SERVERS] of real;
    ballNopeus: array[1..MAX_SERVERS] of real;
    ballCoords: array[1..MAX_SERVERS, 1..2] of real;

    powerBool: array[1..MAX_SERVERS, 1..10, 1..2] of boolean;
    power: array[1..MAX_SERVERS, 1..10, 1..2] of smallint;
    touchDelay: array[1..MAX_SERVERS, 1..10, 1..2] of byte;
    slowMoving: array[1..MAX_SERVERS, 1..10, 1..2] of boolean;

    positioUpdateDelay: array [1..MAX_SERVERS] of byte;
    stats: array[1..MAX_SERVERS, 1..10, 1..2, 1..2] of byte;   //goals, asts
    statistic: array [1..MAX_SERVERS, 1..10, 1..2, 1..3, 1..2] of word; //pas,tac,hea -- onnistuneet, epäonn.


    keeperCoords: array [1..MAX_SERVERS,1..2, 1..2] of real;
    keeperSuunta: array [1..MAX_SERVERS,1..2] of real;
    keeperTouchDelay: array [1..MAX_SERVERS,1..2] of byte;
    keeperPalloHallussa: array [1..MAX_SERVERS] of byte;
    keeperNopeus: array [1..MAX_SERVERS,1..2] of real;
    keeperTrigger: array [1..MAX_SERVERS,1..2] of byte;
    keeperTriggerDelay: array [1..MAX_SERVERS,1..2] of byte;
    kaukoVeto: array [1..MAX_SERVERS] of byte; //1 ylämolarin mentävä kaukovetoon, 2 alamolarin, 0 ei kaukovetoa
    kaukoVetoCoords: array [1..MAX_SERVERS,1..2] of smallint;
    liputettu: array [1..MAX_SERVERS] of boolean;
             
    maalivahti_skripti: array [1..MAX_SERVERS,1..2] of byte;
    syoksy_delay: array [1..MAX_SERVERS,1..2] of byte;

    venausDelay: byte;
  end;


var

  servers: TServers;

procedure freePractiseRutiini;

procedure UDPSimulationClientToServer;
procedure UDPSimulationServerToClient;
function MuutetaanBallNopeus(sID: smallint): byte;
function MuutetaanKeeperNopeus(sID: smallint; tID: byte): byte;
function MuutetaanPlrNopeus(sID: smallint; pID,tID: byte): byte;

procedure FPgameloop(id: smallint);
procedure FPsiirretaan_pelaajia(id: integer);
procedure FPlaskeAnglet(id: word);
procedure FPlaskeEtaisyys(id: integer);
procedure FPsiirraPelaajaaMouse(id: smallint; pID,tID: byte);
procedure FPsiirretaan_pelaajia_pois_alueelta(sID: smallint; pID,tID: byte);
procedure FPalueenRajat(sID: smallint; pID,tID: byte);
procedure FPpowerbar(sID, pAction: integer);
procedure FPtouchDelayVahennys(sID: integer);
procedure FPpallonLaukasu(sID: integer);
procedure FPpallonLaukasuOikea(sID: integer);
procedure FPlaskePallolleLahtoKulma(sID,pID,tID:integer; pEt:real);
procedure FPaddTouchDelay(sID: smallint);
procedure FPlaskePallolleLahtoKulmaOikea(sID,pID,tID:integer; pEt:real);
procedure FPpaivita_viime_kontroloija(sID: smallint; pID,tID: byte);
procedure FPnollaaDisabledPlayer(sID: integer);
procedure FPsiirraPalloa(sID: integer);
procedure FPtarkastaJosKaukoVeto(sID: integer);
function FPpallonKorkeusLaskutSimulointi(TempBall: TTempBall): TTempBall;
procedure FPsiirraPalloaSimulointi(sID: smallint;TempBall: TTempBall);
function FPonkoMaalinLaheisyydessa(sID: integer): byte;
procedure FPpallonKorkeusLaskut(sID,pker: integer);
procedure FPtolpatYlarimat(sID: integer);
procedure ylarima(sID: integer);
procedure maali(sID: smallint);
procedure tolpat(sID: integer);
procedure takaverkko(sID: integer);
procedure sivuverkot(sID: integer);
procedure katto(sID: integer);
procedure nollaaLiukkarit(sID: smallint);
function heAngleToSpeed(heA: real): real;
function speedToHeAngle(pSpeed, pAng: real): real;
procedure tolppaKimpoaminen(sID: integer; px,py: real);
procedure FPpallonKontrolointi(sID: integer);
procedure FPkierre(sID: word);
function angleEro(a1, a2: real): real;
procedure keeperAI(sID: smallint);
procedure kaukoVetoRutiinit(sID: smallint);
procedure syoksyntaRutiini(sID: smallint);
procedure syoksyntaRutiini2(sID: smallint);
procedure molariPoiminutPallon(sID: smallint);
procedure keeperHanging(sID: smallint; keeperID: byte);
function keeperTullaankoVastaan(sID: smallint; keeperID: byte): boolean;
procedure molarinKick(sID, kID: smallint; goalKick: boolean);
procedure aseta_auto_poisto_koords2(sID: smallint);  //molari poimi pallon
function siirraPalloaSimulointi2(sID: smallint;TempBall: TTempBall): TTempBall;
function onkoPelaajatPoisGoalKickAlueelta(sID: smallint): boolean;
procedure FPpaatyRajat(sID: smallint);
procedure aseta_auto_poisto_koords(sID: smallint);  //maalipotkussa
procedure FPliukutaklaus(sID: smallint);

implementation

uses proseduurit,muuttujat,unit2;

procedure freePractiseRutiini;
var i: integer;
begin

  chatKursori;

  laskePelaajilleFramet;
  laskeGKFramet;
  powerBarLaskut;
  deadReconing;
  siirraPalloaDeadReconing;
  hiiriRutiini;

  piirraKentta;
  piirraPallo;
  piirraPelaajat;
  piirraKeepers;
  piirraMaalit;

  piirraSmallfield;

  piirraPowerBar;
  //piirraPanelit;

  chatti_piirrot;
  for i:=1 to 10 do piirraChat(i);

  draw2D(Ingame_data.mouse_naytto[1]-15,Ingame_data.mouse_naytto[2]-15,'cursor');

//******************************************************************************
//******************************************************************************
//******************************************************************************
  UDPSimulationClientToServer;
//******************************************************************************
//******************************************************************************
//******************************************************************************

  if (servers.mista_ulos[1]>0) and (servers.ballNopeus[1]=0) then begin
    inc(servers.venausDelay);
    if servers.venausDelay>60 then begin
      servers.ballCoords[1,1]:=servers.plrCoords[1,1,1,1];
      servers.ballCoords[1,2]:=servers.plrCoords[1,1,1,2];
      servers.mista_ulos[1]:=0;
      servers.kumman_heitto[1]:=0;
      servers.kumman_vapari[1]:=0;
      servers.blokattuArea[1]:=0;
      servers.venausDelay:=0;
    end;
  end;

  FPgameloop(1);

//******************************************************************************
//******************************************************************************
//******************************************************************************
  UDPSimulationServerToClient;
//******************************************************************************
//******************************************************************************
//******************************************************************************

end;

procedure UDPSimulationClientToServer;
type
  TUDPViesti = record
    keys: shortint;
    mouse: array [1..2] of smallint;
    mouse_buttons: shortint; //0=false, 1=left, 2=right, 3=both
  end;
var
  UDPViesti: TUDPViesti;
  i: integer;
  paikLiike: real;
begin


    ZeroMemory(@UDPViesti, SizeOf(UDPViesti));


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


//******************************************************************************
//purku
//******************************************************************************



  servers.mouseButtons[1,1,1,1]:=false;
  servers.mouseButtons[1,1,1,2]:=false;
  servers.crossingButton[1,1,1]:=false;
  if UDPViesti.mouse_buttons=1 then
    servers.mouseButtons[1,1,1,1]:=true;
  if UDPViesti.mouse_buttons=2 then
    servers.mouseButtons[1,1,1,2]:=true;
  if UDPViesti.mouse_buttons=3 then begin
    servers.mouseButtons[1,1,1,1]:=true;
    servers.mouseButtons[1,1,1,2]:=true;
  end;

  if (servers.control[1,1,1]=0) and (servers.mouseButtons[1,1,1,2]=true) then begin
    servers.mouseButtons[1,1,1,2]:=false;
    servers.crossingButton[1,1,1]:=true;
    //crossing
  end;

  servers.mouse[1,1,1,1]:=UDPViesti.mouse[1];
  servers.mouse[1,1,1,2]:=UDPViesti.mouse[2];


//******************************************************************************
  //jos näppiksellä ei paineta mitään, estetään se, että pelaaja kääntyy 0 kulman suuntaan
  if servers.control[1,1,1]=0 then begin
  if (servers.mouse[1,1,1,1]=512) and (servers.mouse[1,1,1,2]=384) then begin
    paikLiike:=cos(ToRad*servers.plrSuunta[1,1,1])*2;
    servers.mouse[1,1,1,1]:=round(servers.mouse[1,1,1,1]+paikLiike);
    paikLiike:=sin(ToRad*servers.plrSuunta[1,1,1])*2;
    servers.mouse[1,1,1,2]:=round(servers.mouse[1,1,1,2]+paikLiike);  
  end;
  end;
//******************************************************************************
  servers.keys[1,1,1]:=UDPViesti.keys;

end;

procedure UDPSimulationServerToClient;
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

  ZeroMemory(@UDPmsg, SizeOf(UDPmsg));

  for i:=1 to 5 do begin
    for j:=1 to 2 do begin
      if servers.index[1,1,1]>0 then begin
        UDPmsg.plrCoords[i,j,1]:=round(servers.plrCoords[1,1,1,1]);
        UDPmsg.plrCoords[i,j,2]:=round(servers.plrCoords[1,1,1,2]);
        UDPmsg.plrSpeed[i,j]:=MuutetaanPlrNopeus(1,1,1);
        UDPmsg.plrAngle[i,j]:=round(servers.plrSuunta[1,1,1]/1.411764);
      end;
    end;
  end;


  UDPmsg.ball_coords[1]:=round(servers.ballCoords[1,1]);
  UDPmsg.ball_coords[2]:=round(servers.ballCoords[1,2]);
  UDPmsg.ballHeigth:=round(servers.ballKorkeus[1])*2;
  UDPmsg.ballSpeed:=MuutetaanBallNopeus(1);
  UDPmsg.ballAngle:=round(servers.ballAngle[1]/1.411764);
  UDPmsg.ballHeAngle:=round(servers.ballHeAngle[1])+100;

  for i:=1 to 2 do
    for j:=1 to 2 do
      UDPmsg.keeperCoords[i,j]:=round(servers.keeperCoords[1,i,j]);

  for i:=1 to 2 do begin
    UDPmsg.keeperSpeed[i]:=MuutetaanKeeperNopeus(1,i);
    UDPmsg.keeperAngle[i]:=round(servers.keeperSuunta[1,i]/1.411764);
  end;

  if servers.syoksy_delay[1,1]>0 then UDPmsg.keeperAnim:=servers.maalivahti_skripti[1,1];
  if servers.syoksy_delay[1,2]>0 then UDPmsg.keeperAnim:=servers.maalivahti_skripti[1,2]+10;

//******************************************************************************
//purku
//******************************************************************************

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

procedure FPgameloop(id: smallint);
begin

  FPlaskeAnglet(id);
  FPlaskeEtaisyys(id);

  FPtouchDelayVahennys(id);
  FPpowerbar(id,1);


  //if servers.autoRunning[id]>0 then FPsiirretaan_pelaajiaAuto(id);

  if servers.autoRunning[id]=0 then begin
    //FPpallonHeitto(id);
    //FPpallonVapariLaukasu(id);
    FPpallonLaukasu(id);
    FPkierre(id);
    FPpallonLaukasuOikea(id);
    FPpallonKontrolointi(id);
    //FPautoPass(id);
    FPliukutaklaus(id);

    FPsiirretaan_pelaajia(id);
    //FPtormaysTarkastus(id);
  end;

  keeperAI(id);

  FPsiirraPalloa(id);
  FPpaatyRajat(id);
  //FPheitot_kulmat_ym(id);
  //FPheiton_kulman_ym_anto(id);

  FPpowerbar(id,2);

end;

function MuutetaanPlrNopeus(sID: smallint; pID,tID: byte): byte;
begin

  if servers.kaatumis_delay[sID,pID,tID]>0 then begin
    result:=250;
    exit;
  end;

  if servers.plrNopeus[sID,pID,tID]<0 then servers.plrNopeus[sID,pID,tID]:=0;
  result:=round(servers.plrNopeus[sID,pID,tID]*10);

  if servers.liukkari[sID,pID,tID]=true then
    result:=result+50;

//******************************************************************************
  //keeper syöksy animaatio
{  if servers.keeperID[sID,tID]=pID then
    if servers.syoksyminen[sID,tID]=true then begin

      if servers.homeAloitusPuoli[sID]=1 then begin
        if tID=1 then begin
          if servers.plrNopeus[sID,pID,tID]>3 then result:=101;
          if servers.plrNopeus[sID,pID,tID]<=3 then result:=102;
          if servers.plrNopeus[sID,pID,tID]<=2 then result:=103;
        end;
        if tID=2 then begin
          if servers.plrNopeus[sID,pID,tID]>3 then result:=104;
          if servers.plrNopeus[sID,pID,tID]<=3 then result:=105;
          if servers.plrNopeus[sID,pID,tID]<=2 then result:=106;
        end;
      end else begin
         if tID=1 then begin
          if servers.plrNopeus[sID,pID,tID]>3 then result:=104;
          if servers.plrNopeus[sID,pID,tID]<=3 then result:=105;
          if servers.plrNopeus[sID,pID,tID]<=2 then result:=106;
        end;
        if tID=2 then begin
          if servers.plrNopeus[sID,pID,tID]>3 then result:=101;
          if servers.plrNopeus[sID,pID,tID]<=3 then result:=102;
          if servers.plrNopeus[sID,pID,tID]<=2 then result:=103;
        end;
      end;
    end;  }
//******************************************************************************

end;

function MuutetaanKeeperNopeus(sID: smallint; tID: byte): byte;
begin

  result:=round(servers.keeperNopeus[sID,tID]*10);

end;


function MuutetaanBallNopeus(sID: smallint): byte;
var pLis: byte;
begin

  if servers.kumman_heitto[sID]>0 then begin
    if servers.vaparin_antaja[sID,servers.kumman_heitto[sID]]>0 then begin
      result:=230;
      if servers.kumman_heitto[sID]=2 then result:=240;
      pLis:=servers.vaparin_antaja[sID,servers.kumman_heitto[sID]];
      result:=result+pLis;
      exit;
    end;
  end;

  if servers.keeperPalloHallussa[sID]>0 then begin
    result:=250+servers.keeperPalloHallussa[sID];
    exit;
  end;

  result:=round(servers.ballNopeus[sID]*10);

end;

procedure FPlaskeAnglet(id: word);
var i,j: integer;
begin

  for i:=1 to servers.max_plrs[id] do begin
    for j:=1 to 2 do begin
      if servers.index[id,i,j]>0 then begin
        servers.plrAngle[id,i,j]:=angle(512,384,servers.mouse[id,i,j,1], servers.mouse[id,i,j,2]);
      end;
    end;
  end;

end;

procedure FPlaskeEtaisyys(id: integer);
var i,j: integer;
begin

  for i:=1 to servers.max_plrs[id] do begin
    for j:=1 to 2 do begin
      if servers.index[id,i,j]>0 then begin
        servers.plrEtaisyys[id,i,j]:=etaisyys(512,384,servers.mouse[id,i,j,1], servers.mouse[id,i,j,2]);
      end;
    end;
  end;

end;

procedure FPsiirretaan_pelaajia(id: integer);
var i,j: integer;
begin

  for i:=1 to servers.max_plrs[id] do begin
    for j:=1 to 2 do begin
      if servers.index[id,i,j]>0 then begin
        FPsiirraPelaajaaMouse(id,i,j);
      end;
    end;
  end;

end;

procedure FPsiirraPelaajaaMouse(id: smallint; pID,tID: byte);
var p_kiihtyvyys,pmaxs, p_nyk_vahlis, p_haluttu_a,paikLiike,pAng: real;
    pBool: boolean;
begin
         
  if servers.liukkari[id,pID,tID]=true then exit;
  if servers.kaatumis_delay[id,pID,tID]>0 then exit;

  //pelaaja on maalipotku, kulma tai vapari alueella, joten siirretään sitä automaattisesti
  if servers.autoOhjaus[id,pID,tID]=true then begin
    FPsiirretaan_pelaajia_pois_alueelta(id,pID,tID);
    exit;
  end;   //alueelle menon blokkaus tän metodin lopussa


  if ((servers.mouseButtons[id,pID,tID,1]=false) and (servers.mouseButtons[id,pID,tID,2]=false)) or
     (servers.control[id,pID,tID]=0) then begin


    pmaxs:=2;

    p_kiihtyvyys:=0;

    if servers.plrEtaisyys[id,pID,tID]<14 then pBool:=false else pBool:=true;

    if (servers.plrEtaisyys[id,pID,tID]<=19) and (servers.plrEtaisyys[id,pID,tID]>14)
      then p_kiihtyvyys:=0.06;   //0.06
    if (servers.plrEtaisyys[id,pID,tID]<=24) and (servers.plrEtaisyys[id,pID,tID]>19)
      then p_kiihtyvyys:=0.08;   //0.08
    if servers.plrEtaisyys[id,pID,tID]>24
      then p_kiihtyvyys:=0.12;   //0.12


    if servers.plrNopeus[id,pID,tID]>pmaxs then p_kiihtyvyys:=0;
    if p_kiihtyvyys=0 then servers.plrNopeus[id,pID,tID]:=servers.plrNopeus[id,pID,tID]-0.05;
    if servers.plrNopeus[id,pID,tID]<=0 then begin
      servers.plrNopeus[id,pID,tID]:=0;
      servers.plrSuunta[id,pID,tID]:=servers.plrAngle[id,pID,tID];
    end;

    //******************************************************************************
    if pBool=true then begin
      p_nyk_vahlis:=0;
      if not (servers.plrSuunta[id,pID,tID]=180) then p_nyk_vahlis:=180-servers.plrSuunta[id,pID,tID];   //270-180=90
      //if servers.plrSuunta[id,pID,tID]=180 then p_nyk_vahlis:=0;

      p_haluttu_a:=servers.plrAngle[id,pID,tID]+p_nyk_vahlis;

      if p_haluttu_a>=360 then p_haluttu_a:=p_haluttu_a-360;
      if p_haluttu_a<0 then begin
        p_haluttu_a:=p_haluttu_a+360;
      end;

      if (p_haluttu_a<67) or (p_haluttu_a>293) then begin  //180 käännös
          servers.plrNopeus[id,pID,tID]:=servers.plrNopeus[id,pID,tID]-0.15;
      end else begin

        //kääntyvyys hiirellä
        if servers.control[id,pID,tID]=1 then begin
          if (p_haluttu_a>=173) and (p_haluttu_a<=187) then servers.plrSuunta[id,pID,tID]:=servers.plrAngle[id,pID,tID]
            else if p_haluttu_a<173 then servers.plrSuunta[id,pID,tID]:=servers.plrSuunta[id,pID,tID]-7
            else servers.plrSuunta[id,pID,tID]:=servers.plrSuunta[id,pID,tID]+7;
        end;
        //kääntyvyys näppiksellä
        if servers.control[id,pID,tID]=0 then begin
          if (p_haluttu_a>=170) and (p_haluttu_a<=190) then servers.plrSuunta[id,pID,tID]:=servers.plrAngle[id,pID,tID]
            else if p_haluttu_a<170 then servers.plrSuunta[id,pID,tID]:=servers.plrSuunta[id,pID,tID]-10
            else servers.plrSuunta[id,pID,tID]:=servers.plrSuunta[id,pID,tID]+10;
        end;

          if servers.plrSuunta[id,pID,tID]>360 then
            servers.plrSuunta[id,pID,tID]:=servers.plrSuunta[id,pID,tID]-360;
          if servers.plrSuunta[id,pID,tID]<0 then
            servers.plrSuunta[id,pID,tID]:=servers.plrSuunta[id,pID,tID]+360;

         // if servers.plrSuunta[id,pID,tID]>360 then form1.Memo1.Lines.Add('posi'+floattostr(servers.plrSuunta[id,pID,tID]));
         // if servers.plrSuunta[id,pID,tID]<0 then form1.Memo1.Lines.Add('nega'+floattostr(servers.plrSuunta[id,pID,tID]));


        servers.plrNopeus[id,pID,tID]:=servers.plrNopeus[id,pID,tID]+p_kiihtyvyys;

      end;
    end;
    //******************************************************************************

    if pBool=false then servers.plrNopeus[id,pID,tID]:=servers.plrNopeus[id,pID,tID]-0.15;
    if servers.plrNopeus[id,pID,tID]<0 then servers.plrNopeus[id,pID,tID]:=0;

    if servers.slowMoving[id,pID,tID]=true then begin
      if (servers.plrEtaisyys[id,pID,tID]<10) and (servers.plrNopeus[id,pID,tID]>=0.4) then servers.plrNopeus[id,pID,tID]:=0.4;
      if (servers.plrEtaisyys[id,pID,tID]<18) and (servers.plrEtaisyys[id,pID,tID]>=10) and (servers.plrNopeus[id,pID,tID]>=0.6) then servers.plrNopeus[id,pID,tID]:=0.6;
      if (servers.plrEtaisyys[id,pID,tID]<26) and (servers.plrEtaisyys[id,pID,tID]>=18) and (servers.plrNopeus[id,pID,tID]>=0.8) then servers.plrNopeus[id,pID,tID]:=0.8;
      if (servers.plrEtaisyys[id,pID,tID]<34) and (servers.plrEtaisyys[id,pID,tID]>=26) and (servers.plrNopeus[id,pID,tID]>=1.0) then servers.plrNopeus[id,pID,tID]:=1.0;
      if (servers.plrEtaisyys[id,pID,tID]<42) and (servers.plrEtaisyys[id,pID,tID]>=34) and (servers.plrNopeus[id,pID,tID]>=1.2) then servers.plrNopeus[id,pID,tID]:=1.2;
      if (servers.plrEtaisyys[id,pID,tID]<50) and (servers.plrEtaisyys[id,pID,tID]>=42) and (servers.plrNopeus[id,pID,tID]>=1.4) then servers.plrNopeus[id,pID,tID]:=1.4;
      if (servers.plrEtaisyys[id,pID,tID]<58) and (servers.plrEtaisyys[id,pID,tID]>=50) and (servers.plrNopeus[id,pID,tID]>=1.6) then servers.plrNopeus[id,pID,tID]:=1.6;
    end;

    if servers.plrNopeus[id,pID,tID]>=pmaxs then servers.plrNopeus[id,pID,tID]:=pmaxs;

 //     servers.viimeKontroloija[sID,1]:=pID;
 // servers.viimeKontroloijaTeam[sID,1]:=tID;

    //jos kontroloi palloa, hidastetaan ukkoa
    if etaisyys(servers.plrCoords[id,pID,tID,1],servers.plrCoords[id,pID,tID,2],servers.ballCoords[id,1],servers.ballCoords[id,2])<13 then begin
      if servers.plrNopeus[id,pID,tID]>=pmaxs-0.2 then
        servers.plrNopeus[id,pID,tID]:=pmaxs-0.2;
    end;


  end;

//******************************************************************************
//******************************************************************************
//******************************************************************************

  //********************  liukkari nopeuden kontrolointi  ******************
{  if Ingame_data.liukkari[i,j]=true then begin
    Ingame_data.plr_speed[i,j]:=Ingame_data.plr_speed[i,j]*0.96;
    if Ingame_data.plr_speed[i,j]<=0.002 then begin
      Ingame_data.plr_speed[i,j]:=0;
      Ingame_data.liukkari[i,j]:=false;
    end;
  end;     }
  //************************************************************************

  paikLiike:=cos(ToRad*servers.plrSuunta[id,pID,tID])*servers.plrNopeus[id,pID,tID];
  servers.plrCoords[id,pID,tID,1]:=servers.plrCoords[id,pID,tID,1]+paikLiike;
  paikLiike:=sin(ToRad*servers.plrSuunta[id,pID,tID])*servers.plrNopeus[id,pID,tID];
  servers.plrCoords[id,pID,tID,2]:=servers.plrCoords[id,pID,tID,2]+paikLiike;

  //raja-arvot
{  if Ingame_data.borders_locked=true then begin
    if Ingame_data.plr_coords[i,j,1]>Ingame_data.px1+0.8 then Ingame_data.plr_coords[i,j,1]:=Ingame_data.px1+0.8;
    if Ingame_data.plr_coords[i,j,1]<Ingame_data.px2-0.8 then Ingame_data.plr_coords[i,j,1]:=Ingame_data.px2-0.8;
    if Ingame_data.plr_coords[i,j,2]>Ingame_data.py1+0.8 then Ingame_data.plr_coords[i,j,2]:=Ingame_data.py1+0.8;
    if Ingame_data.plr_coords[i,j,2]<Ingame_data.py2-0.8 then Ingame_data.plr_coords[i,j,2]:=Ingame_data.py2-0.8;
  end;  }


//******************************************************************************

  //alueelle menon blokkaus maalipotkun, vaparin tai kulman aikana

  if servers.blokattuArea[id]=1 then begin
    if servers.plrCoords[id,pID,tID,2]<-465 then servers.plrCoords[id,pID,tID,2]:=-465;
  end;

  if servers.blokattuArea[id]=2 then begin
    if servers.plrCoords[id,pID,tID,2]>465 then servers.plrCoords[id,pID,tID,2]:=465;
  end;

  if servers.blokattuArea[id]=3 then begin
    if not (servers.kumman_vapari[id]=tID) then begin

      if etaisyys(servers.plrCoords[id,pID,tID,1],servers.plrCoords[id,pID,tID,2],servers.blokattuAreaCoords[id,1],servers.blokattuAreaCoords[id,2])<125 then begin
        pAng:=angle(servers.blokattuAreaCoords[id,1],servers.blokattuAreaCoords[id,2],servers.plrCoords[id,pID,tID,1],servers.plrCoords[id,pID,tID,2]);
        servers.plrCoords[id,pID,tID,1]:=servers.blokattuAreaCoords[id,1];
        servers.plrCoords[id,pID,tID,2]:=servers.blokattuAreaCoords[id,2];

        paikLiike:=cos(ToRad*pAng)*125;
        servers.plrCoords[id,pID,tID,1]:=servers.plrCoords[id,pID,tID,1]+paikLiike;
        paikLiike:=sin(ToRad*pAng)*125;
        servers.plrCoords[id,pID,tID,2]:=servers.plrCoords[id,pID,tID,2]+paikLiike;
      end;
    end;
  end;

    //huomioi et päästät vaparin antajat alueelle

  FPalueenRajat(id,pID,tID);

end;

procedure FPsiirretaan_pelaajia_pois_alueelta(sID: smallint; pID,tID: byte);
var paikLiike: real;
begin

  if etaisyys(servers.plrCoords[sID,pID,tID,1],servers.plrCoords[sID,pID,tID,2],servers.kickoffCoords[sID,pID,tID,1],servers.kickoffCoords[sID,pID,tID,2])>3 then begin
    servers.plrNopeus[sID,pID,tID]:=2;
    servers.plrSuunta[sID,pID,tID]:=angle(servers.plrCoords[sID,pID,tID,1],servers.plrCoords[sID,pID,tID,2],servers.kickoffCoords[sID,pID,tID,1],servers.kickoffCoords[sID,pID,tID,2]);
    paikLiike:=cos(ToRad*servers.plrSuunta[sID,pID,tID])*servers.plrNopeus[sID,pID,tID];
    servers.plrCoords[sID,pID,tID,1]:=servers.plrCoords[sID,pID,tID,1]+paikLiike;
    paikLiike:=sin(ToRad*servers.plrSuunta[sID,pID,tID])*servers.plrNopeus[sID,pID,tID];
    servers.plrCoords[sID,pID,tID,2]:=servers.plrCoords[sID,pID,tID,2]+paikLiike;
  end else servers.autoOhjaus[sID,pID,tID]:=false;

end;

procedure FPalueenRajat(sID: smallint; pID,tID: byte);
begin

  //estetään pelaajaa juoksemasta kilometrin päähän kentältä
  if servers.plrCoords[sID,pID,tID,1]>780 then
    servers.plrCoords[sID,pID,tID,1]:=780;
  if servers.plrCoords[sID,pID,tID,1]<-780 then
    servers.plrCoords[sID,pID,tID,1]:=-780;
  if servers.plrCoords[sID,pID,tID,2]>1010 then
    servers.plrCoords[sID,pID,tID,2]:=1010;
  if servers.plrCoords[sID,pID,tID,2]<-1010 then
    servers.plrCoords[sID,pID,tID,2]:=-1010;

end;

procedure FPpowerbar(sID, pAction: integer);
var i,j: integer;
    pBool: boolean;
begin


  if pAction=1 then begin
    for i:=1 to servers.max_plrs[sID] do begin
      for j:=1 to 2 do begin

        pBool:=false;
        if (servers.mouseButtons[sID,i,j,1]=true) or (servers.crossingButton[sID,i,j]=true) then
          pBool:=true;

        if servers.index[sID,i,j]>0 then begin

          if servers.mouseButtons[sID,i,j,1]=true then servers.keybKickType[sID,i,j]:=1;
          if servers.crossingButton[sID,i,j]=true then servers.keybKickType[sID,i,j]:=2;

          if pBool=true then begin
            if servers.powerBool[sID,i,j]=false then begin
              servers.power[sID,i,j]:=servers.power[sID,i,j]-4;
              if servers.power[sID,i,j]<0 then begin
                servers.power[sID,i,j]:=0;
                servers.powerBool[sID,i,j]:=true;
              end;
            end;
            if pBool=true then begin
              servers.power[sID,i,j]:=servers.power[sID,i,j]+4;
              if servers.power[sID,i,j]>150 then begin
                servers.power[sID,i,j]:=150;
                servers.powerBool[sID,i,j]:=false;
              end;
            end;
          end;


        end;

      end;
    end;
  end;

//******************************************************************************

  if pAction=2 then begin
    for i:=1 to servers.max_plrs[sID] do begin
      for j:=1 to 2 do begin

        pBool:=false;
        if (servers.mouseButtons[sID,i,j,1]=true) or (servers.crossingButton[sID,i,j]=true) then
          pBool:=true;

        if pBool=false then begin
          servers.powerBool[sID,i,j]:=false;
          servers.power[sID,i,j]:=0;
        end;
        
      end;
    end;
  end;

end;

procedure FPtouchDelayVahennys(sID: integer);
var i,j: integer;
begin

  for i:=1 to servers.max_plrs[sID] do
    for j:=1 to 2 do
      if servers.touchDelay[sID,i,j]>0 then
        dec(servers.touchDelay[sID,i,j]);

end;

procedure FPpallonLaukasu(sID: integer);
var i,j: integer;
    pET: real;
begin

  if servers.kumman_heitto[sID]>0 then exit;
  if servers.kumman_vapari[sID]>0 then exit;
  if servers.mista_ulos[sID]>0 then exit;
  if servers.ballKorkeus[sID]>25 then exit;
  if servers.keeperPalloHallussa[sID]>0 then exit;
  if (servers.blokattuArea[sID]=1) or (servers.blokattuArea[sID]=2) then exit;

  for i:=1 to servers.max_plrs[sID] do
    for j:=1 to 2 do begin

      if servers.index[sID,i,j]=0 then continue;
      if servers.touchDelay[sID,i,j]>0 then continue;
      if servers.mouseButtons[sID,i,j,1]=true then continue;
      if servers.crossingButton[sID,i,j]=true then continue;
      if servers.liukkari[sID,i,j]=true then continue;
      if servers.kaatumis_delay[sID,i,j]>0 then continue;
      if servers.power[sID,i,j]=0 then continue;
      if (servers.disabledPlayer[sID,1]=i) and (servers.disabledPlayer[sID,2]=j) then continue;

      pET:=etaisyys(servers.plrCoords[sID,i,j,1],servers.plrCoords[sID,i,j,2],servers.ballCoords[sID,1],servers.ballCoords[sID,2]);
      if pET<13 then begin
        FPlaskePallolleLahtoKulma(sID,i,j,servers.plrEtaisyys[sID,i,j]);
        FPaddTouchDelay(sID);

      end;


    end;

end;

procedure FPpallonLaukasuOikea(sID: integer);
var i,j: integer;
begin

  if servers.kumman_heitto[sID]>0 then exit;
  if servers.kumman_vapari[sID]>0 then exit;
  if servers.mista_ulos[sID]>0 then exit;
  if servers.ballKorkeus[sID]>30 then exit;
  if servers.keeperPalloHallussa[sID]>0 then exit;
  if (servers.blokattuArea[sID]=1) or (servers.blokattuArea[sID]=2) then exit;

  for i:=1 to servers.max_plrs[sID] do
    for j:=1 to 2 do begin

      if servers.index[sID,i,j]=0 then continue;
      if servers.touchDelay[sID,i,j]>0 then continue;
      if servers.mouseButtons[sID,i,j,2]=false then continue;
      if servers.liukkari[sID,i,j]=true then continue;
      if servers.kaatumis_delay[sID,i,j]>0 then continue;
      if servers.ballKorkeus[sID]>24 then continue;
      if (servers.disabledPlayer[sID,1]=i) and (servers.disabledPlayer[sID,2]=j) then continue;

      if etaisyys(servers.plrCoords[sID,i,j,1],servers.plrCoords[sID,i,j,2],servers.ballCoords[sID,1],servers.ballCoords[sID,2])<14 then begin
        FPlaskePallolleLahtoKulmaOikea(sID,i,j,servers.plrEtaisyys[sID,i,j]);
        FPaddTouchDelay(sID);


      end;

    end;

end;

procedure FPlaskePallolleLahtoKulma(sID,pID,tID:integer; pEt:real);
var potkunVoima: real;
begin

  potkunVoima:=servers.power[sID,pID,tID]/15+7;
  servers.ballNopeus[sID]:=potkunVoima/2;    //max 8.5
  servers.kierreAikaa[sID]:=0;
  servers.kierreJatkokulma[sID]:=0;
  play_sound(7);

  if servers.control[sID,pID,tID]=0 then begin
    if servers.keybKickType[sID,pID,tID]=1 then pET:=160;
    if servers.keybKickType[sID,pID,tID]=2 then pET:=25;
    servers.kierrePerson[sID,1]:=pID;
    servers.kierrePerson[sID,2]:=tID;
    servers.kierreAikaa[sID]:=40;
    servers.kierreAlkukulma[sID]:=servers.plrAngle[sID,pID,tID];
    servers.kierreJatkokulma[sID]:=0;
  end;                               


  if potkunVoima>=16 then begin
    if pET<=30 then servers.ballHeAngle[sID]:=50;
    if pET>30 then servers.ballHeAngle[sID]:=45;
    if pET>60 then servers.ballHeAngle[sID]:=40;
    if pET>90 then servers.ballHeAngle[sID]:=35;
    if pET>120 then servers.ballHeAngle[sID]:=30;
    if pET>150 then servers.ballHeAngle[sID]:=25;
    if pET>180 then servers.ballHeAngle[sID]:=20;
    if pET>210 then servers.ballHeAngle[sID]:=15;
    if pET>240 then servers.ballHeAngle[sID]:=10;
    if pET>270 then servers.ballHeAngle[sID]:=5;
    if pET>300 then servers.ballHeAngle[sID]:=0;
  end;

  if (potkunVoima>=14) and (potkunVoima<16) then begin
    if pET<=30 then servers.ballHeAngle[sID]:=40;
    if pET>30 then servers.ballHeAngle[sID]:=35;
    if pET>60 then servers.ballHeAngle[sID]:=30;
    if pET>90 then servers.ballHeAngle[sID]:=25;
    if pET>120 then servers.ballHeAngle[sID]:=20;
    if pET>150 then servers.ballHeAngle[sID]:=15;
    if pET>180 then servers.ballHeAngle[sID]:=10;
    if pET>210 then servers.ballHeAngle[sID]:=5;
    if pET>240 then servers.ballHeAngle[sID]:=0;
    if pET>270 then servers.ballHeAngle[sID]:=0;
    if pET>300 then servers.ballHeAngle[sID]:=0;
  end;

  if (potkunVoima>=12) and (potkunVoima<14) then begin
    if pET<=30 then servers.ballHeAngle[sID]:=30;
    if pET>30 then servers.ballHeAngle[sID]:=25;
    if pET>60 then servers.ballHeAngle[sID]:=20;
    if pET>90 then servers.ballHeAngle[sID]:=15;
    if pET>120 then servers.ballHeAngle[sID]:=10;
    if pET>150 then servers.ballHeAngle[sID]:=5;
    if pET>180 then servers.ballHeAngle[sID]:=0;
    if pET>210 then servers.ballHeAngle[sID]:=0;
    if pET>240 then servers.ballHeAngle[sID]:=0;
    if pET>270 then servers.ballHeAngle[sID]:=0;
    if pET>300 then servers.ballHeAngle[sID]:=0;
  end;

  if (potkunVoima>=10) and (potkunVoima<12) then begin
    if pET<=30 then servers.ballHeAngle[sID]:=20;
    if pET>30 then servers.ballHeAngle[sID]:=15;
    if pET>60 then servers.ballHeAngle[sID]:=10;
    if pET>90 then servers.ballHeAngle[sID]:=5;
    if pET>120 then servers.ballHeAngle[sID]:=0;
    if pET>150 then servers.ballHeAngle[sID]:=0;
    if pET>180 then servers.ballHeAngle[sID]:=0;
    if pET>210 then servers.ballHeAngle[sID]:=0;
    if pET>240 then servers.ballHeAngle[sID]:=0;
    if pET>270 then servers.ballHeAngle[sID]:=0;
    if pET>300 then servers.ballHeAngle[sID]:=0;
  end;

  if potkunVoima<10 then begin
    if pET<=30 then servers.ballHeAngle[sID]:=10;
    if pET>30 then servers.ballHeAngle[sID]:=5;
    if pET>60 then servers.ballHeAngle[sID]:=0;
    if pET>90 then servers.ballHeAngle[sID]:=0;
    if pET>120 then servers.ballHeAngle[sID]:=0;
    if pET>150 then servers.ballHeAngle[sID]:=0;
    if pET>180 then servers.ballHeAngle[sID]:=0;
    if pET>210 then servers.ballHeAngle[sID]:=0;
    if pET>240 then servers.ballHeAngle[sID]:=0;
    if pET>270 then servers.ballHeAngle[sID]:=0;
    if pET>300 then servers.ballHeAngle[sID]:=0;
  end;

  if servers.ballHeAngle[sID]<=0 then servers.ballNopeus[sID]:=servers.ballNopeus[sID]-0.5;  //0.5
  if servers.ballHeAngle[sID]=5 then servers.ballNopeus[sID]:=servers.ballNopeus[sID]-0.85;  //0.75
  if servers.ballHeAngle[sID]=10 then servers.ballNopeus[sID]:=servers.ballNopeus[sID]-1.1;    //1
  if servers.ballHeAngle[sID]=15 then servers.ballNopeus[sID]:=servers.ballNopeus[sID]-1.35; //1.25
  if servers.ballHeAngle[sID]=20 then servers.ballNopeus[sID]:=servers.ballNopeus[sID]-1.6;  //1.5
  if servers.ballHeAngle[sID]=25 then servers.ballNopeus[sID]:=servers.ballNopeus[sID]-1.85; //1.75
  if servers.ballHeAngle[sID]=30 then servers.ballNopeus[sID]:=servers.ballNopeus[sID]-2.1;    //2
  if servers.ballHeAngle[sID]=35 then servers.ballNopeus[sID]:=servers.ballNopeus[sID]-2.35; //2.25
  if servers.ballHeAngle[sID]=40 then servers.ballNopeus[sID]:=servers.ballNopeus[sID]-2.6;  //2.5
  if servers.ballHeAngle[sID]=45 then servers.ballNopeus[sID]:=servers.ballNopeus[sID]-2.85; //2.75
  if servers.ballHeAngle[sID]=50 then servers.ballNopeus[sID]:=servers.ballNopeus[sID]-3.1;    //3

  //suurin mahd. nopeus 8

  if (servers.kumman_vapari[sID]>0) and (servers.corner[sID]=true) then begin
    servers.ballNopeus[sID]:=servers.ballNopeus[sID]+1;
    servers.corner[sID]:=false;
  end;

  servers.ballAngle[sID]:=servers.plrAngle[sID,pID,tID];

  FPpaivita_viime_kontroloija(sID,pID,tID);

 // if servers.kierreAikaa[sID]=0 then
  FPtarkastaJosKaukoVeto(sID);

end;

procedure FPaddTouchDelay(sID: smallint);
var i,j: integer;
begin
  for i:=1 to servers.max_plrs[sID] do
    for j:=1 to 2 do
      if etaisyys(servers.plrCoords[sID,i,j,1],servers.plrCoords[sID,i,j,2],servers.ballCoords[sID,1],servers.ballCoords[sID,2])<10 then
        servers.touchDelay[sID,i,j]:=25;
end;

procedure FPlaskePallolleLahtoKulmaOikea(sID,pID,tID:integer; pEt:real);
begin

  servers.kaukoVeto[sID]:=0;
  play_sound(7);

  if pET<=50 then servers.ballNopeus[sID]:=4;
  if pET>50 then servers.ballNopeus[sID]:=4.5;
  if pET>100 then servers.ballNopeus[sID]:=5;
  if pET>150 then servers.ballNopeus[sID]:=5.5;
  if pET>200 then servers.ballNopeus[sID]:=6;
  if pET>250 then servers.ballNopeus[sID]:=6.5;

  servers.ballHeAngle[sID]:=0;
  servers.ballAngle[sID]:=servers.plrAngle[sID,pID,tID];
  if (servers.ballKorkeus[sID]>0) then servers.ballNopeus[sID]:=servers.ballNopeus[sID]*0.75;//0.85

  FPpaivita_viime_kontroloija(sID,pID,tID);

end;

procedure FPpaivita_viime_kontroloija(sID: smallint; pID,tID: byte);
begin

  if (servers.viimeKontroloija[sID,1]=pID) and (servers.viimeKontroloijaTeam[sID,1]=tID) then exit;

  servers.viimeKontroloija[sID,2]:=servers.viimeKontroloija[sID,1];
  servers.viimeKontroloijaTeam[sID,2]:=servers.viimeKontroloijaTeam[sID,1];
  servers.viimeKontroloija[sID,1]:=pID;
  servers.viimeKontroloijaTeam[sID,1]:=tID;

  if not (servers.viimeKontroloijaTeam[sID,1]=servers.viimeKontroloijaTeam[sID,2]) then begin
    servers.viimeKontroloija[sID,2]:=0;
    servers.viimeKontroloijaTeam[sID,2]:=0;
  end;

  FPnollaaDisabledPlayer(sID);

end;

procedure FPnollaaDisabledPlayer(sID: integer);
begin
  servers.disabledPlayer[sID,1]:=0;
  servers.disabledPlayer[sID,2]:=0;
end;

procedure FPtarkastaJosKaukoVeto(sID: integer);
var
  TempBall: TTempBall;
  i: integer;
begin

  servers.kaukoVeto[sID]:=0;

  if servers.ballAngle[sID]>180 then begin //pallon suunta kohti ylämaalia
    if etaisyys(servers.ballCoords[sID,1],servers.ballCoords[sID,2],0,-640)<350 then exit;
  end
  else begin                              //pallon suunta kohti alamaalia
    if etaisyys(servers.ballCoords[sID,1],servers.ballCoords[sID,2],0,640)<350 then exit;
  end;

  TempBall.ballAngle:=servers.ballAngle[sID];
  TempBall.ballNopeus:=servers.ballNopeus[sID];
  TempBall.ballKorkeus:=servers.ballKorkeus[sID];
  TempBall.ballHeAngle:=servers.ballHeAngle[sID];
  for i:=1 to 2 do
    TempBall.ballCoords[i]:=servers.ballCoords[sID,i];

  FPsiirraPalloaSimulointi(sID,TempBall);

end;

procedure FPsiirraPalloaSimulointi(sID: smallint;TempBall: TTempBall);
var paikLiike,kitka: real;
    done: boolean;
    pKierreAikaa: byte;
begin

  done:=false;
  pKierreAikaa:=servers.kierreAikaa[sID];

  repeat

    if pKierreAikaa>0 then begin
      dec(pKierreAikaa);
      TempBall.ballAngle:=TempBall.ballAngle+servers.kierreJatkokulma[sID];
    end;


    paikLiike:=cos(ToRad*TempBall.ballAngle)*TempBall.ballNopeus;
    TempBall.ballCoords[1]:=TempBall.ballCoords[1]+paikLiike;
    paikLiike:=sin(ToRad*TempBall.ballAngle)*TempBall.ballNopeus;
    TempBall.ballCoords[2]:=TempBall.ballCoords[2]+paikLiike;

    TempBall:=FPpallonKorkeusLaskutSimulointi(TempBall);

    kitka:=0.05;
    if TempBall.ballKorkeus<=0 then TempBall.ballNopeus:=TempBall.ballNopeus-kitka;
    if TempBall.ballNopeus<0 then TempBall.ballNopeus:=0;

    //jos pallon koordinaatit maalissa, asetetaan kaukoveto
    if (TempBall.ballCoords[1]<73) and (TempBall.ballCoords[1]>-73) then begin
      if TempBall.ballCoords[2]<-640 then begin
        servers.kaukoVeto[sID]:=1;
        servers.kaukoVetoCoords[sID,1]:=round(TempBall.ballCoords[1]);
        servers.kaukoVetoCoords[sID,2]:=-635;
        exit;
      end;
      if TempBall.ballCoords[2]>640 then begin
        servers.kaukoVeto[sID]:=2;
        servers.kaukoVetoCoords[sID,1]:=round(TempBall.ballCoords[1]);
        servers.kaukoVetoCoords[sID,2]:=635;
        exit;
      end;
    end;

    if TempBall.ballCoords[2]<-640 then exit;
    if TempBall.ballCoords[2]>640 then exit;
    if TempBall.ballNopeus<=0 then done:=true;

  until done;

end;

function FPpallonKorkeusLaskutSimulointi(TempBall: TTempBall): TTempBall;
var paikLiike: real;
begin

  if not (TempBall.ballHeAngle=0) then begin
    paikLiike:=sin(ToRad*TempBall.ballHeAngle)*8;
    TempBall.ballKorkeus:=TempBall.ballKorkeus+paikLiike;
    if TempBall.ballKorkeus<0 then TempBall.ballKorkeus:=0;
  end;

  if TempBall.ballHeAngle>0 then begin  // pallo menossa ylöspäin
    TempBall.ballHeAngle:=TempBall.ballHeAngle*0.933;
    if TempBall.ballHeAngle<4 then TempBall.ballHeAngle:=-3.67;
  end;

  if TempBall.ballHeAngle<0 then begin  // pallo menossa alaspäin
    if TempBall.ballHeAngle>-3.67 then TempBall.ballHeAngle:=-3.67;
    TempBall.ballHeAngle:=TempBall.ballHeAngle*1.052;
  end;

  if TempBall.ballHeAngle>90 then TempBall.ballHeAngle:=90;
  if TempBall.ballHeAngle<-90 then TempBall.ballHeAngle:=-90;

  if TempBall.ballKorkeus>0 then
    if (TempBall.ballHeAngle<0.1) and (TempBall.ballHeAngle>-0.1) then
      TempBall.ballHeAngle:=-4;

  if (TempBall.ballKorkeus<=0) and (TempBall.ballHeAngle<0) then begin // pomppu maasta

    TempBall.ballHeAngle:=TempBall.ballHeAngle*0.63; // rullaus maata pitkin
    TempBall.ballKorkeus:=0;
    TempBall.ballHeAngle:=0-TempBall.ballHeAngle;
    if TempBall.ballHeAngle<4 then
      TempBall.ballHeAngle:=0
    else
      TempBall.ballNopeus:=TempBall.ballNopeus-1.4;
  end;

  result:=TempBall;

end;

procedure FPsiirraPalloa(sID: integer);
var paikLiike,kitka: real;
    i,j: integer;
begin

  j:=FPonkoMaalinLaheisyydessa(sID);

  for i:=1 to j do begin
    paikLiike:=cos(ToRad*servers.ballAngle[sID])*servers.ballNopeus[sID]/j;
    servers.ballCoords[sID,1]:=servers.ballCoords[sID,1]+paikLiike;
    paikLiike:=sin(ToRad*servers.ballAngle[sID])*servers.ballNopeus[sID]/j;
    servers.ballCoords[sID,2]:=servers.ballCoords[sID,2]+paikLiike;

    FPpallonKorkeusLaskut(sID,j);

    if j=1 then kitka:=0.05 else kitka:=0.005;
    if servers.ballKorkeus[sID]<=0 then servers.ballNopeus[sID]:=servers.ballNopeus[sID]-kitka;
    if servers.ballNopeus[sID]<0 then servers.ballNopeus[sID]:=0;

    if j=10 then FPtolpatYlarimat(sID);

  end;


end;

function FPonkoMaalinLaheisyydessa(sID: integer): byte;
begin

  if servers.ballKorkeus[sID]>45 then begin
    result:=1;
    exit;
  end;

//******************************************************************************

  if (servers.ballCoords[sID,1]<90) and (servers.ballCoords[sID,1]>-90) then begin
    if (servers.ballCoords[sID,2]>620) and (servers.ballCoords[sID,2]<680) then begin
      result:=10;
      exit;
    end;

    if (servers.ballCoords[sID,2]<-620) and (servers.ballCoords[sID,2]>-680) then begin
      result:=10;
      exit;
    end;

  end;

//******************************************************************************

  result:=1;

end;

procedure FPpallonKorkeusLaskut(sID,pker: integer);
var a1,b1,b2,paikLiike: real;
begin

  if pker=1 then begin
    b1:=0.933;   //0.942
    b2:=1.052;   //1.058
    a1:=8;       //7
  end else begin
    b1:=0.9933;
    b2:=1.0052;
    a1:=0.8;
  end;

  if not (servers.ballHeAngle[sID]=0) then begin
    paikLiike:=sin(ToRad*servers.ballHeAngle[sID])*a1;
    servers.ballKorkeus[sID]:=servers.ballKorkeus[sID]+paikLiike;
    if servers.ballKorkeus[sID]<0 then servers.ballKorkeus[sID]:=0;
  end;

  if servers.ballHeAngle[sID]>0 then begin  // pallo menossa ylöspäin
    servers.ballHeAngle[sID]:=servers.ballHeAngle[sID]*b1;
    //if servers.ballHeAngle[sID]<3 then servers.ballHeAngle[sID]:=-4;   //vanhat
    if servers.ballHeAngle[sID]<4 then servers.ballHeAngle[sID]:=-3.67;
  end;

  if servers.ballHeAngle[sID]<0 then begin  // pallo menossa alaspäin
    //if servers.ballHeAngle[sID]>-4 then servers.ballHeAngle[sID]:=-4; //vanhat
    if servers.ballHeAngle[sID]>-3.67 then servers.ballHeAngle[sID]:=-3.67;
    servers.ballHeAngle[sID]:=servers.ballHeAngle[sID]*b2;
  end;

  if servers.ballHeAngle[sID]>90 then servers.ballHeAngle[sID]:=90;
  if servers.ballHeAngle[sID]<-90 then servers.ballHeAngle[sID]:=-90;

  if servers.ballKorkeus[sID]>0 then
    if (servers.ballHeAngle[sID]<0.1) and (servers.ballHeAngle[sID]>-0.1) then
      servers.ballHeAngle[sID]:=-4;

  if (servers.ballKorkeus[sID]<=0) and (servers.ballHeAngle[sID]<0) then begin // pomppu maasta
    {servers.ballNopeus[sID]:=servers.ballNopeus[sID]-Valuet.bounceHidastus; //ennen 1.0 joka oli liian pieni
    servers.ballHeAngle[sID]:=servers.ballHeAngle[sID]*0.5; // rullaus maata pitkin
    servers.ballKorkeus[sID]:=0;
    servers.ballHeAngle[sID]:=0-servers.ballHeAngle[sID];
    if servers.ballHeAngle[sID]<4 then servers.ballHeAngle[sID]:=0;       }
     //ennen 1.0 joka oli liian pieni
    servers.ballHeAngle[sID]:=servers.ballHeAngle[sID]*0.63; // rullaus maata pitkin
    servers.ballKorkeus[sID]:=0;
    servers.ballHeAngle[sID]:=0-servers.ballHeAngle[sID];
    if servers.ballHeAngle[sID]<4 then
      servers.ballHeAngle[sID]:=0
    else
      servers.ballNopeus[sID]:=servers.ballNopeus[sID]-1;
  end;

end;

procedure FPtolpatYlarimat(sID: integer);
begin
		// maalin max korkeus 36.75
		// tolppa X 71 Y 640 Z 0-36.75 halkaisija 5.5
		// takaverkko 71,659-660 Z 0-34
		// ylärima Z 34 halkaijija 5.5
		ylarima(sID);
		tolpat(sID);
		takaverkko(sID);
		sivuverkot(sID);
		katto(sID);
    maali(sID);

end;

procedure maali(sID: smallint);
begin
           {
  if servers.mista_ulos[sID]=0 then begin

    //alamaali
    if (servers.ballCoords[sID,1]<69) and (servers.ballCoords[sID,1]>-69) and
       (servers.ballCoords[sID,2]>640) and (servers.ballCoords[sID,2]<658) and
       (servers.ballKorkeus[sID]<34) then begin
        servers.mista_ulos[sID]:=98;

        servers.kumman_vapari[sID]:=0;
        servers.maali_delayer[sID]:=180;
        nollaaLiukkarit(sID);
        ilmoitaMaali(sID);
        lisaaMaalintekija(sID,2);
        if servers.gametype[sID]=2 then laskeStatsit(sID,2);
        asetaKeeperitTuijottamaanPalloa(sID);



        aseta_kickoff_positiot(sID,servers.homeAloitusPuoli[sID],servers.kickoffAloittaja[sID]);
        servers.autoRunning[sID]:=1;



    end;

    //ylämaali
    if (servers.ballCoords[sID,1]<69) and (servers.ballCoords[sID,1]>-69) and
       (servers.ballCoords[sID,2]<-640) and (servers.ballCoords[sID,2]>-658) and
       (servers.ballKorkeus[sID]<34) then begin
        servers.mista_ulos[sID]:=99;
        nollaa_paitsiossa_olot(sID);
        servers.kumman_vapari[sID]:=0;
        servers.maali_delayer[sID]:=180;
        nollaaLiukkarit(sID);
        ilmoitaMaali(sID);
        lisaaMaalintekija(sID,1);
        if servers.gametype[sID]=2 then laskeStatsit(sID,1);
        asetaKeeperitTuijottamaanPalloa(sID);


        aseta_kickoff_positiot(sID,servers.homeAloitusPuoli[sID],servers.kickoffAloittaja[sID]);
        servers.autoRunning[sID]:=1;


    end;

  end;    }

end;

procedure ylarima(sID: integer);
var pAng,a1,f,heSpeed,paikLiike: real;
begin
  if servers.ballCoords[sID,1]>73 then exit;
  if servers.ballCoords[sID,1]<-73 then exit;

  if etaisyys(servers.ballCoords[sID,2],servers.ballKorkeus[sID],-640,35.375)<5.5 then begin
    pAng:=angle(-640,35.375,servers.ballCoords[sID,2],servers.ballKorkeus[sID]);
    if pAng>90 then pAng:=180-pAng;
    if pAng<-90 then pAng:=0-(180+pAng);

    a1:=heAngleToSpeed(servers.ballHeAngle[sID]);
    if servers.ballNopeus[sID]>a1 then a1:=servers.ballNopeus[sID];

    f:=1/90*pAng;
    if f<0 then f:=0-f;

    heSpeed:=f*a1;
    servers.ballNopeus[sID]:=a1-heSpeed;
    servers.ballHeAngle[sID]:=speedToHeAngle(a1,pAng);

    servers.ballKorkeus[sID]:=35.375;
    paikLiike:=sin(ToRad*pAng)*5.6;
    servers.ballKorkeus[sID]:=servers.ballKorkeus[sID]+paikLiike;
    pAng:=angle(0,-640,0,servers.ballCoords[sID,2]);
    paikLiike:=sin(ToRad*pAng)*5.6;
    servers.ballCoords[sID,2]:=-640;
    servers.ballCoords[sID,2]:=servers.ballCoords[sID,2]+paikLiike;

    if servers.ballCoords[sID,2]>-640 then
      servers.ballAngle[sID]:=360-servers.ballAngle[sID];

    servers.ballNopeus[sID]:=servers.ballNopeus[sID]*0.5;
    servers.ballHeAngle[sID]:=servers.ballHeAngle[sID]*0.5;

    play_sound(9);
    servers.kaukoVeto[sID]:=0;

    exit;
  end;

//******************************************************************************

  if etaisyys(servers.ballCoords[sID,2],servers.ballKorkeus[sID],640,35.375)<5.5 then begin
    pAng:=angle(640,35.375,servers.ballCoords[sID,2],servers.ballKorkeus[sID]);
    if pAng>90 then pAng:=180-pAng;
    if pAng<-90 then pAng:=0-(180+pAng);

    a1:=heAngleToSpeed(servers.ballHeAngle[sID]);
    if servers.ballNopeus[sID]>a1 then a1:=servers.ballNopeus[sID];

    f:=1/90*pAng;
    if f<0 then f:=0-f;

    heSpeed:=f*a1;
    servers.ballNopeus[sID]:=a1-heSpeed;
    servers.ballHeAngle[sID]:=speedToHeAngle(a1,pAng);

    servers.ballKorkeus[sID]:=35.375;
    paikLiike:=sin(ToRad*pAng)*5.6;
    servers.ballKorkeus[sID]:=servers.ballKorkeus[sID]+paikLiike;
    pAng:=angle(0,640,0,servers.ballCoords[sID,2]);
    paikLiike:=sin(ToRad*pAng)*5.6;
    servers.ballCoords[sID,2]:=640;
    servers.ballCoords[sID,2]:=servers.ballCoords[sID,2]+paikLiike;

    if servers.ballCoords[sID,2]<640 then
      servers.ballAngle[sID]:=360-servers.ballAngle[sID];

    servers.ballNopeus[sID]:=servers.ballNopeus[sID]*0.5;
    servers.ballHeAngle[sID]:=servers.ballHeAngle[sID]*0.5;

    play_sound(9);
    servers.kaukoVeto[sID]:=0;
  end;


end;

function speedToHeAngle(pSpeed, pAng: real): real;
var f: real;
begin
  f:=1/90*pAng;
  result:=pSpeed*f/0.12;
end;

function heAngleToSpeed(heA: real): real;
begin
  heA:=heA*0.12;
  if heA<0 then heA:=0-heA;
  result:=heA;
end;

procedure tolpat(sID: integer);
begin
  if servers.ballKorkeus[sID]>36.75 then exit;

  if etaisyys(-71, -640, servers.ballCoords[sID,1], servers.ballCoords[sID,2])<5.5 then
    tolppaKimpoaminen(sID,-71, -640);

  if etaisyys(71, -640, servers.ballCoords[sID,1], servers.ballCoords[sID,2])<5.5 then
    tolppaKimpoaminen(sID,71, -640);

  if etaisyys(-71, 640, servers.ballCoords[sID,1], servers.ballCoords[sID,2])<5.5 then
    tolppaKimpoaminen(sID,-71, 640);

  if etaisyys(71, 640, servers.ballCoords[sID,1], servers.ballCoords[sID,2])<5.5 then
    tolppaKimpoaminen(sID,71, 640);

end;

procedure tolppaKimpoaminen(sID: integer; px,py: real);
var paikLiike: real;
begin
  servers.ballAngle[sID]:=angle(px,py,servers.ballCoords[sID,1], servers.ballCoords[sID,2]);
  servers.ballCoords[sID,1]:=px;
  servers.ballCoords[sID,2]:=py;

  paikLiike:=cos(ToRad*servers.ballAngle[sID])*5.5;
  servers.ballCoords[sID,1]:=servers.ballCoords[sID,1]+paikLiike;
  paikLiike:=sin(ToRad*servers.ballAngle[sID])*5.5;
  servers.ballCoords[sID,2]:=servers.ballCoords[sID,2]+paikLiike;
  servers.ballNopeus[sID]:=servers.ballNopeus[sID]*0.5;

  play_sound(9);
  servers.kaukoVeto[sID]:=0;

end;

procedure takaverkko(sID: integer);
begin

  if servers.ballKorkeus[sID]>34 then exit;

  if (servers.ballCoords[sID,1]<=71) and (servers.ballCoords[sID,1]>=-71) then begin
    if (servers.ballCoords[sID,2]>=659) and (servers.ballCoords[sID,2]<=660) then begin
      servers.ballNopeus[sID]:=0;
      servers.ballCoords[sID,2]:=658.9;
    end;

    if (servers.ballCoords[sID,2]<=-659) and (servers.ballCoords[sID,2]>=-660) then begin
      servers.ballNopeus[sID]:=0;
      servers.ballCoords[sID,2]:=-658.9;
    end;
  end;

end;

procedure sivuverkot(sID: integer);
begin
  if servers.ballKorkeus[sID]>34 then exit;

  if (servers.ballCoords[sID,2]>=640) and (servers.ballCoords[sID,2]<=660) then begin
    if (servers.ballCoords[sID,1]<=73) and (servers.ballCoords[sID,1]>=69) then begin
      if servers.ballCoords[sID,1]>71 then begin   //ala
        servers.ballCoords[sID,1]:=73.1;   //oik
        servers.ballAngle[sID]:=90-(servers.ballAngle[sID]-90);
        servers.ballNopeus[sID]:=servers.ballNopeus[sID]*0.5;
      end else begin
        servers.ballCoords[sID,1]:=68.9;  //vas
        servers.ballAngle[sID]:=90-servers.ballAngle[sID]+90;
        servers.ballNopeus[sID]:=servers.ballNopeus[sID]*0.5;
      end;

    end;

    if (servers.ballCoords[sID,1]>=-73) and (servers.ballCoords[sID,1]<=-69) then begin
      if servers.ballCoords[sID,1]<-71 then begin  //ala
        servers.ballCoords[sID,1]:=-73.1;  //vas
        servers.ballAngle[sID]:=90-servers.ballAngle[sID]+90;
        servers.ballNopeus[sID]:=servers.ballNopeus[sID]*0.5;
      end else begin
        servers.ballCoords[sID,1]:=-68.9;  //oik
        servers.ballAngle[sID]:=90-(servers.ballAngle[sID]-90);
        servers.ballNopeus[sID]:=servers.ballNopeus[sID]*0.5;
      end;
    end;
  end;

//******************************************************************************

  if (servers.ballCoords[sID,2]<=-640) and (servers.ballCoords[sID,2]>=-660) then begin
    if (servers.ballCoords[sID,1]<=73) and (servers.ballCoords[sID,1]>=69) then begin
      if servers.ballCoords[sID,1]>71 then begin   //ylä
        servers.ballCoords[sID,1]:=73.1;    //oik
        servers.ballAngle[sID]:=270-servers.ballAngle[sID]+270;
        servers.ballNopeus[sID]:=servers.ballNopeus[sID]*0.5;
      end else begin
        servers.ballCoords[sID,1]:=68.9;   //vas
        servers.ballAngle[sID]:=270-(servers.ballAngle[sID]-270);
        servers.ballNopeus[sID]:=servers.ballNopeus[sID]*0.5;
      end;
    end;

    if (servers.ballCoords[sID,1]>=-73) and (servers.ballCoords[sID,1]<=-69) then begin
      if servers.ballCoords[sID,1]<-71 then begin   //ylä
        servers.ballCoords[sID,1]:=-73.1; //vas
        servers.ballAngle[sID]:=270-(servers.ballAngle[sID]-270);
        servers.ballNopeus[sID]:=servers.ballNopeus[sID]*0.5;
      end else begin
        servers.ballCoords[sID,1]:=-68.9;  //oik
        servers.ballAngle[sID]:=270-servers.ballAngle[sID]+270;
        servers.ballNopeus[sID]:=servers.ballNopeus[sID]*0.5;
      end;
    end;
  end;

end;

procedure katto(sID: integer);
begin
  if (servers.ballKorkeus[sID]>36.75) or (servers.ballKorkeus[sID]<34) then exit;

  if (servers.ballCoords[sID,1]<=73) and (servers.ballCoords[sID,1]>=-73) then begin
    if (servers.ballCoords[sID,2]>=640) and (servers.ballCoords[sID,2]<=660) then begin
      if servers.ballKorkeus[sID]>35.375 then servers.ballKorkeus[sID]:=36.85
      else servers.ballKorkeus[sID]:=33.9;
      servers.ballHeAngle[sID]:=0-servers.ballHeAngle[sID]/2;
    end;

    if (servers.ballCoords[sID,2]<=-640) and (servers.ballCoords[sID,2]>=-660) then begin
      if servers.ballKorkeus[sID]>35.375 then servers.ballKorkeus[sID]:=36.85
      else servers.ballKorkeus[sID]:=33.9;
      servers.ballHeAngle[sID]:=0-servers.ballHeAngle[sID]/2;
    end;
  end;

end;

procedure nollaaLiukkarit(sID: smallint);
var i,j: integer;
begin
  for i:=1 to servers.max_plrs[sID] do
    for j:=1 to 2 do begin
      servers.kaatumis_delay[sID,i,j]:=0;
      servers.liukkari[sID,i,j]:=false;
    end;
end;

procedure FPpallonKontrolointi(sID: integer);
var i,j: integer;
    paikLiike: real;
    isoin: real;
    pET: real;
    pID, tID: byte;
begin

  if servers.ballKorkeus[sID]>15 then exit;
  if servers.kumman_heitto[sID]>0 then exit;
  if servers.kumman_vapari[sID]>0 then exit;
  if servers.mista_ulos[sID]>0 then exit;
  if servers.blokattuArea[sID]>0 then exit;

  isoin:=100;
  pID:=0;
  tID:=0;

  for i:=1 to servers.max_plrs[sID] do begin
    for j:=1 to 2 do begin
      if servers.index[sID,i,j]=0 then continue;
      if servers.touchDelay[sID,i,j]>0 then continue;
      if servers.liukkari[sID,i,j]=true then continue;
      if servers.kaatumis_delay[sID,i,j]>0 then continue;
      if (servers.disabledPlayer[sID,1]=i) and (servers.disabledPlayer[sID,2]=j) then continue;

      pET:=etaisyys(servers.plrCoords[sID,i,j,1],servers.plrCoords[sID,i,j,2],servers.ballCoords[sID,1],servers.ballCoords[sID,2]);

      if pET<13 then begin
        if pET<isoin then begin
          isoin:=pET;
          pID:=i;
          tID:=j;
        end;
      end;

    end;
  end;

//******************************************************************************

  if pID>0 then begin
    servers.ballCoords[sID,1]:=servers.plrCoords[sID,pID,tID,1];
    servers.ballCoords[sID,2]:=servers.plrCoords[sID,pID,tID,2];
    servers.ballNopeus[sID]:=servers.plrNopeus[sID,pID,tID];
    servers.ballAngle[sID]:=servers.plrSuunta[sID,pID,tID];

    if (servers.character[sID,pID,tID,3]=0) and (servers.plrNopeus[sID,pID,tID]>1.9) then
      servers.plrNopeus[sID,pID,tID]:=1.9;
    if (servers.character[sID,pID,tID,3]=1) and (servers.plrNopeus[sID,pID,tID]>1.8) then
      servers.plrNopeus[sID,pID,tID]:=1.8;
    if (servers.character[sID,pID,tID,3]=2) and (servers.plrNopeus[sID,pID,tID]>1.75) then
      servers.plrNopeus[sID,pID,tID]:=1.75;


    FPpaivita_viime_kontroloija(sID,pID,tID);

    servers.kaukoVeto[sID]:=0;

    paikLiike:=cos(ToRad*servers.ballAngle[sID])*servers.ballNopeus[sID]*3.25;
    servers.ballCoords[sID,1]:=servers.ballCoords[sID,1]+paikLiike;
    paikLiike:=sin(ToRad*servers.ballAngle[sID])*servers.ballNopeus[sID]*3.25;
    servers.ballCoords[sID,2]:=servers.ballCoords[sID,2]+paikLiike;
  end;

end;

procedure FPkierre(sID: word);
var r: real;
    b: boolean;
begin

  if servers.kierreAikaa[sID]<=0 then exit;
  dec(servers.kierreAikaa[sID]);

  if servers.kierreJatkokulma[sID]=0 then b:=true else b:=false;  

  r:=angleEro(servers.kierreAlkukulma[sID],servers.plrAngle[sID,servers.kierrePerson[sID,1],servers.kierrePerson[sID,2]]);
  if not (r=0) then begin

    //tässä estetään ettei tule 180 käännöstä
    if (r>157.5) or (r<-157.5) then exit;

    if servers.kierreJatkokulma[sID]>=0 then if r>44 then servers.kierreJatkokulma[sID]:=0.6;
    if servers.kierreJatkokulma[sID]<=0 then if r<-44 then servers.kierreJatkokulma[sID]:=-0.6;

  end;


  servers.ballAngle[sID]:=servers.ballAngle[sID]+servers.kierreJatkokulma[sID];

  if (servers.kierreJatkokulma[sID]>0.1) or (servers.kierreJatkokulma[sID]<-0.1) then begin
    //if servers.kaukoVeto[sID]=0 then begin
    if b then FPtarkastaJosKaukoVeto(sID);
    //end;
  end;

end;

function angleEro(a1, a2: real): real;
var p_nyk_vahlis,p_haluttu_a: real;
begin

  //180 asteen käännös ilmoitetaan aina negatiivisena eli -180.
  //positiivista 180 arvoa tästä funktiosta ei saa.
  //positiiviset arvo kääntyy oikealle.
  //negatiivinen arvo kääntyy vasemmalle.

  p_nyk_vahlis:=0;

  if not (a1=180) then p_nyk_vahlis:=180-a1;   //270-180=90
  p_haluttu_a:=a2+p_nyk_vahlis;

  if p_haluttu_a>=360 then p_haluttu_a:=p_haluttu_a-360;
  if p_haluttu_a<0 then p_haluttu_a:=p_haluttu_a+360;

  result:=p_haluttu_a-180;


end;

procedure keeperAI(sID: smallint);
var b: boolean;
    i: integer;
begin

//******************************************************************************
  //keeper touch delayn vähennys
  for i:=1 to 2 do
    if servers.keeperTouchDelay[sID,i]>0 then dec(servers.keeperTouchDelay[sID,i]);

//******************************************************************************
  //tarkastetaan jos mennään kaukovetoon
  kaukoVetoRutiinit(sID);

//******************************************************************************
  //tarkastetaan jos syöksytään
  syoksyntaRutiini(sID);
  syoksyntaRutiini2(sID);
    //jos pallo tulee tietyn arean sisään, syöksytään
    //tai jos tulee esim laukaus, niin molari arvioi siinä kohtaa mitä tulee tapahtumaan
  //if molariSyoksynta(sID)=true then exit;
  if (servers.mista_ulos[sID]=98) or (servers.mista_ulos[sID]=99) then exit;

//******************************************************************************
  //molari on poiminut pallon haltuun
  if servers.keeperPalloHallussa[sID]>0 then begin
    servers.liukkari[1,1,1]:=false;
    molariPoiminutPallon(sID);
    exit;
  end;
//******************************************************************************
  //maalipotku jutskat

  if (servers.blokattuArea[sID]=1) or (servers.blokattuArea[sID]=2) then begin
    //keeperGoalKick(sID);
    exit;
  end;

//******************************************************************************

  //pallo ulkona päätyrajasta, joten veska tuijottaa paikallaan
  if (servers.ballCoords[sID,2]>640) or (servers.ballCoords[sID,2]<-640) then begin
    servers.keeperNopeus[sID,1]:=0;
    servers.keeperNopeus[sID,2]:=0;
    exit;
  end;

//******************************************************************************

  if servers.kumman_vapari[sID]>0 then exit;

  for i:=1 to 2 do begin
    b:=keeperTullaankoVastaan(sID,i);
    if b=false then begin
      keeperHanging(sID,i);
    end;
  end;

end;

procedure kaukoVetoRutiinit(sID: smallint);
var kID: byte;
    paikLiike: real;
begin
  if servers.mista_ulos[sID]>0 then servers.kaukoVeto[sID]:=0;
  if servers.kaukoVeto[sID]=0 then exit;

  kID:=servers.kaukoVeto[sID];

  //juostaan kohti paikkaa, mihin kaukoveto on tulossa
  if etaisyys(servers.keeperCoords[sID,kID,1],servers.keeperCoords[sID,kID,2],servers.kaukoVetoCoords[sID,1],servers.kaukoVetoCoords[sID,2])>2 then begin
    servers.keeperNopeus[sID,kID]:=2;
    servers.keeperSuunta[sID,kID]:=angle(servers.keeperCoords[sID,kID,1],servers.keeperCoords[sID,kID,2],servers.kaukoVetoCoords[sID,1],servers.kaukoVetoCoords[sID,2]);
    paikLiike:=cos(ToRad*servers.keeperSuunta[sID,kID])*servers.keeperNopeus[sID,kID];
    servers.keeperCoords[sID,kID,1]:=servers.keeperCoords[sID,kID,1]+paikLiike;
    paikLiike:=sin(ToRad*servers.keeperSuunta[sID,kID])*servers.keeperNopeus[sID,kID];
    servers.keeperCoords[sID,kID,2]:=servers.keeperCoords[sID,kID,2]+paikLiike;
  end
  else begin //odotellaan paikallaan, koska ollaan jo kohdassa, mihin kaukoveto tulee
    servers.keeperNopeus[sID,kID]:=0;
    servers.keeperSuunta[sID,kID]:=angle(servers.keeperCoords[sID,kID,1],servers.keeperCoords[sID,kID,2],servers.ballCoords[sID,1],servers.ballCoords[sID,2]);
  end;


//*********************************************************************************
  //jos oman joukkueen pelaaja laukonut kaukovedon, niin tämä estää
  //ettei oma molari nappaa palloa käsiin vaan laukoo sen
{  if servers.ballKorkeus[sID]<36 then begin                                                                                      //8
  if etaisyys(servers.keeperCoords[sID,kID,1],servers.keeperCoords[sID,kID,2],servers.ballCoords[sID,1],servers.ballCoords[sID,2])<16 then begin

    if kID=1 then begin
      if ((servers.homeAloitusPuoli[sID]=1) and (servers.viimeKontroloijaTeam[sID,1]=1)) or
         ((servers.homeAloitusPuoli[sID]=2) and (servers.viimeKontroloijaTeam[sID,1]=2)) then begin
          //servers.blokattuArea[sID]:=1;
          servers.kaukoVeto[sID]:=0;
          molarinKick(sID,kID,false);
          exit;
      end;
    end;
    if kID=2 then begin
      if ((servers.homeAloitusPuoli[sID]=1) and (servers.viimeKontroloijaTeam[sID,1]=2)) or
         ((servers.homeAloitusPuoli[sID]=2) and (servers.viimeKontroloijaTeam[sID,1]=1)) then begin
          //servers.blokattuArea[sID]:=2;
          servers.kaukoVeto[sID]:=0;
          molarinKick(sID,kID,false);
          exit;
      end;
    end;

  end;
  end;   }
//*********************************************************************************

//******************************************************************************

  //molari poimii pallon
  if servers.ballKorkeus[sID]<36 then begin                                                                                       //8
  if etaisyys(servers.keeperCoords[sID,kID,1],servers.keeperCoords[sID,kID,2],servers.ballCoords[sID,1],servers.ballCoords[sID,2])<16 then begin
    servers.keeperPalloHallussa[sID]:=kID;
    servers.ballNopeus[sID]:=0;
    if kID=1 then begin
      servers.keeperSuunta[sID,1]:=90;
      servers.ballCoords[sID,1]:=servers.keeperCoords[sID,1,1];
      servers.ballCoords[sID,2]:=servers.keeperCoords[sID,1,2]+1;
    end;
    if kID=2 then begin
      servers.keeperSuunta[sID,2]:=270;
      servers.ballCoords[sID,1]:=servers.keeperCoords[sID,2,1];
      servers.ballCoords[sID,2]:=servers.keeperCoords[sID,2,2]-1;
    end;
    servers.keeperNopeus[sID,kID]:=0;
    servers.keeperTriggerDelay[sID,kID]:=0;
    aseta_auto_poisto_koords2(sID);
    servers.kaukoVeto[sID]:=0;
  end;
  end;

end;

procedure syoksyntaRutiini(sID: smallint);
var TempBall: TTempBall;
    i: integer;
    pallon_X_kohde, pallon_X_etaisyys: real;
    temp_rajatX: array [1..2] of real;
    minBallSpeed: real;
begin

  if servers.kaukoVeto[sID]>0 then exit;
  if servers.syoksy_delay[sID,1]>0 then exit;
  if servers.syoksy_delay[sID,2]>0 then exit;

  minBallSpeed:=3.5;

//******************************************************************************

  if servers.ballCoords[sID,2]<-540 then begin
  if (servers.ballCoords[sID,1]>-130) and (servers.ballCoords[sID,1]<130) then begin
  if (servers.ballAngle[sID]<350) and (servers.ballAngle[sID]>190) then begin
  if servers.ballNopeus[sID]>minBallSpeed then begin  //4.5
  if servers.ballCoords[sID,2]>servers.keeperCoords[sID,1,2] then begin
  //if ((servers.homeAloitusPuoli[sID]=1) and (servers.viimeKontroloijaTeam[sID,1]=2)) or
  //   ((servers.homeAloitusPuoli[sID]=2) and (servers.viimeKontroloijaTeam[sID,1]=1)) then begin


    TempBall.ballAngle:=servers.ballAngle[sID];
    TempBall.ballNopeus:=servers.ballNopeus[sID];
    TempBall.ballKorkeus:=servers.ballKorkeus[sID];
    TempBall.ballHeAngle:=servers.ballHeAngle[sID];
    for i:=1 to 2 do
      TempBall.ballCoords[i]:=servers.ballCoords[sID,i];

    TempBall:=siirraPalloaSimulointi2(sID,TempBall);

    if TempBall.ballNopeus<minBallSpeed then exit;
    if TempBall.ballAngle<205 then exit;
    if TempBall.ballAngle>335 then exit;

    pallon_X_kohde:=TempBall.ballCoords[1];
    temp_rajatX[1]:=servers.keeperCoords[sID,1,1]-20;
    temp_rajatX[2]:=servers.keeperCoords[sID,1,1]+20;

    //pallo tulee kohti
    if (pallon_X_kohde>=temp_rajatX[1]) and (pallon_X_kohde<=temp_rajatX[2]) then exit;

    //veto tulee kohti, joten ei tarvi syöksyä
    //if etaisyys(servers.keeperCoords[sID,1,1],servers.keeperCoords[sID,1,2],TempBall.ballCoords[1],TempBall.ballCoords[2])<20 then exit;

    //katsotaan, kummalle puolelle pitää syöksyä
    if pallon_X_kohde<servers.keeperCoords[sID,1,1] then begin //pitää syöksyä vasemmalle
      pallon_X_etaisyys:=servers.keeperCoords[sID,1,1]-pallon_X_kohde;
      if pallon_X_etaisyys<=10 then servers.keeperNopeus[sID,1]:=servers.ballNopeus[sID]/6;
      if (pallon_X_etaisyys<=30) and (pallon_X_etaisyys>10) then servers.keeperNopeus[sID,1]:=servers.ballNopeus[sID]/5;
      if (pallon_X_etaisyys<=50) and (pallon_X_etaisyys>30) then servers.keeperNopeus[sID,1]:=servers.ballNopeus[sID]/4;
      if pallon_X_etaisyys>50 then servers.keeperNopeus[sID,1]:=servers.ballNopeus[sID]/3;
      if servers.keeperNopeus[sID,1]<2 then servers.keeperNopeus[sID,1]:=2;
      servers.keeperSuunta[sID,1]:=180;
      servers.maalivahti_skripti[sID,1]:=11;
      servers.syoksy_delay[sID,1]:=70;
    end
    else begin //pitää syöksyä oikealle
      pallon_X_etaisyys:=pallon_X_kohde-servers.keeperCoords[sID,1,1];
      if pallon_X_etaisyys<=10 then servers.keeperNopeus[sID,1]:=servers.ballNopeus[sID]/6;
      if (pallon_X_etaisyys<=30) and (pallon_X_etaisyys>10) then servers.keeperNopeus[sID,1]:=servers.ballNopeus[sID]/5;
      if (pallon_X_etaisyys<=50) and (pallon_X_etaisyys>30) then servers.keeperNopeus[sID,1]:=servers.ballNopeus[sID]/4;
      if pallon_X_etaisyys>50 then servers.keeperNopeus[sID,1]:=servers.ballNopeus[sID]/3;
      if servers.keeperNopeus[sID,1]<2 then servers.keeperNopeus[sID,1]:=2;
      servers.keeperSuunta[sID,1]:=0;
      servers.maalivahti_skripti[sID,1]:=15;
      servers.syoksy_delay[sID,1]:=70;
    end;

  //end;
  end;
  end;
  end;
  end;
  end;

//******************************************************************************

  if servers.ballCoords[sID,2]>540 then begin
  if (servers.ballCoords[sID,1]>-130) and (servers.ballCoords[sID,1]<130) then begin
  if (servers.ballAngle[sID]>10) and (servers.ballAngle[sID]<170) then begin
  if servers.ballNopeus[sID]>minBallSpeed then begin
  if servers.ballCoords[sID,2]<servers.keeperCoords[sID,2,2] then begin
  //if ((servers.homeAloitusPuoli[sID]=1) and (servers.viimeKontroloijaTeam[sID,1]=1)) or
  //   ((servers.homeAloitusPuoli[sID]=2) and (servers.viimeKontroloijaTeam[sID,1]=2)) then begin

    TempBall.ballAngle:=servers.ballAngle[sID];
    TempBall.ballNopeus:=servers.ballNopeus[sID];
    TempBall.ballKorkeus:=servers.ballKorkeus[sID];
    TempBall.ballHeAngle:=servers.ballHeAngle[sID];
    for i:=1 to 2 do
      TempBall.ballCoords[i]:=servers.ballCoords[sID,i];

    TempBall:=siirraPalloaSimulointi2(sID,TempBall);

    if TempBall.ballNopeus<minBallSpeed then exit;
    if TempBall.ballAngle>155 then exit;
    if TempBall.ballAngle<25 then exit;

    pallon_X_kohde:=TempBall.ballCoords[1];
    temp_rajatX[1]:=servers.keeperCoords[sID,2,1]-20;
    temp_rajatX[2]:=servers.keeperCoords[sID,2,1]+20;

    //pallo tulee kohti
    if (pallon_X_kohde>=temp_rajatX[1]) and (pallon_X_kohde<=temp_rajatX[2]) then exit;

    //veto tulee kohti, joten ei tarvi syöksyä
    //if etaisyys(servers.keeperCoords[sID,2,1],servers.keeperCoords[sID,2,2],TempBall.ballCoords[1],TempBall.ballCoords[2])<20 then exit;

    //katsotaan, kummalle puolelle pitää syöksyä
    if pallon_X_kohde<servers.keeperCoords[sID,2,1] then begin //pitää syöksyä vasemmalle
      pallon_X_etaisyys:=servers.keeperCoords[sID,2,1]-pallon_X_kohde;
      if pallon_X_etaisyys<=10 then servers.keeperNopeus[sID,2]:=servers.ballNopeus[sID]/6;
      if (pallon_X_etaisyys<=30) and (pallon_X_etaisyys>10) then servers.keeperNopeus[sID,2]:=servers.ballNopeus[sID]/5;
      if (pallon_X_etaisyys<=50) and (pallon_X_etaisyys>30) then servers.keeperNopeus[sID,2]:=servers.ballNopeus[sID]/4;
      if pallon_X_etaisyys>50 then servers.keeperNopeus[sID,2]:=servers.ballNopeus[sID]/3;
      servers.keeperSuunta[sID,2]:=180;
      servers.maalivahti_skripti[sID,2]:=11;
      servers.syoksy_delay[sID,2]:=70;
    end
    else begin //pitää syöksyä oikealle
      pallon_X_etaisyys:=pallon_X_kohde-servers.keeperCoords[sID,2,1];
      if pallon_X_etaisyys<=10 then servers.keeperNopeus[sID,2]:=servers.ballNopeus[sID]/6;
      if (pallon_X_etaisyys<=30) and (pallon_X_etaisyys>10) then servers.keeperNopeus[sID,2]:=servers.ballNopeus[sID]/5;
      if (pallon_X_etaisyys<=50) and (pallon_X_etaisyys>30) then servers.keeperNopeus[sID,2]:=servers.ballNopeus[sID]/4;
      if pallon_X_etaisyys>50 then servers.keeperNopeus[sID,2]:=servers.ballNopeus[sID]/3;
      servers.keeperSuunta[sID,2]:=0;
      servers.maalivahti_skripti[sID,2]:=15;
      servers.syoksy_delay[sID,2]:=70;
    end;



  //end;
  end;
  end;
  end;
  end;
  end;


end;

procedure syoksyntaRutiini2(sID: smallint);
var i: integer;
    paikLiike: real;
    arpajais_kulma: real;
begin

  for i:=1 to 2 do begin

      if servers.keeperNopeus[sID,i]=0 then begin
        //servers.syoksy_delay[sID,i]:=0;
        //servers.maalivahti_skripti[sID,i]:=0;
        //servers.keeperTouchDelay[sID,i]:=0;
      end;


    if servers.syoksy_delay[sID,i]>0 then begin
      dec(servers.syoksy_delay[sID,i]);

      if (servers.syoksy_delay[sID,i]=60) and (servers.maalivahti_skripti[sID,i]=11) then
        servers.maalivahti_skripti[sID,i]:=12;
      if (servers.syoksy_delay[sID,i]=50) and (servers.maalivahti_skripti[sID,i]=12) then
        servers.maalivahti_skripti[sID,i]:=13;
      if (servers.syoksy_delay[sID,i]=40) and (servers.maalivahti_skripti[sID,i]=13) then begin
        servers.maalivahti_skripti[sID,i]:=14;
        servers.keeperNopeus[sID,i]:=0;
      end;
      if (servers.syoksy_delay[sID,i]=0) and (servers.maalivahti_skripti[sID,i]=14) then begin
        servers.maalivahti_skripti[sID,i]:=0;
        servers.keeperTouchDelay[sID,i]:=0;
        exit;
      end;

      if (servers.syoksy_delay[sID,i]=60) and (servers.maalivahti_skripti[sID,i]=15) then
        servers.maalivahti_skripti[sID,i]:=16;
      if (servers.syoksy_delay[sID,i]=50) and (servers.maalivahti_skripti[sID,i]=16) then
        servers.maalivahti_skripti[sID,i]:=17;
      if (servers.syoksy_delay[sID,i]=40) and (servers.maalivahti_skripti[sID,i]=17) then begin
        servers.maalivahti_skripti[sID,i]:=18; //18
        servers.keeperNopeus[sID,i]:=0;
      end;
      if (servers.syoksy_delay[sID,i]=0) and (servers.maalivahti_skripti[sID,i]=18) then begin
        servers.maalivahti_skripti[sID,i]:=0;
        servers.keeperTouchDelay[sID,i]:=0;
        exit;
      end;


      paikLiike:=cos(ToRad*servers.keeperSuunta[sID,i])*servers.keeperNopeus[sID,i];
      servers.keeperCoords[sID,i,1]:=servers.keeperCoords[sID,i,1]+paikLiike;
      paikLiike:=sin(ToRad*servers.keeperSuunta[sID,i])*servers.keeperNopeus[sID,i];
      servers.keeperCoords[sID,i,2]:=servers.keeperCoords[sID,i,2]+paikLiike;

      if servers.mista_ulos[sID]=0 then begin
        if servers.keeperTouchDelay[sID,i]=0 then begin
        if etaisyys(servers.ballCoords[sID,1],servers.ballCoords[sID,2],servers.keeperCoords[sID,i,1],servers.keeperCoords[sID,i,2])<16 then begin
        if servers.ballKorkeus[sID]<30 then begin
          servers.ballNopeus[sID]:=servers.ballNopeus[sID]-2;
          if servers.ballNopeus[sID]<0 then servers.ballNopeus[sID]:=servers.ballNopeus[sID]+2;
          arpajais_kulma:=random(45);
          servers.keeperTouchDelay[sID,i]:=25;

          if i=1 then begin
            if (servers.maalivahti_skripti[sID,i]>=11) and (servers.maalivahti_skripti[sID,i]<=14) then
              servers.ballAngle[sID]:=180-arpajais_kulma;
            if (servers.maalivahti_skripti[sID,i]>=15) and (servers.maalivahti_skripti[sID,i]<=18) then
              servers.ballAngle[sID]:=0+arpajais_kulma;
          end;
          if i=2 then begin
            if (servers.maalivahti_skripti[sID,i]>=11) and (servers.maalivahti_skripti[sID,i]<=14) then
              servers.ballAngle[sID]:=180+arpajais_kulma;
            if (servers.maalivahti_skripti[sID,i]>=15) and (servers.maalivahti_skripti[sID,i]<=18) then
              servers.ballAngle[sID]:=360-arpajais_kulma;
          end;

        end;
        end;
        end;
      end;


    end;
  end;

end;

procedure molariPoiminutPallon(sID: smallint);
begin

  if onkoPelaajatPoisGoalKickAlueelta(sID)=true then begin

    inc(servers.keeperTriggerDelay[sID,servers.keeperPalloHallussa[sID]]);
    if servers.keeperTriggerDelay[sID,servers.keeperPalloHallussa[sID]]>100 then begin

      servers.blokattuArea[sID]:=0;

      servers.ballCoords[1,1]:=servers.plrCoords[1,1,1,1];
      servers.ballCoords[1,2]:=servers.plrCoords[1,1,1,2];
      servers.keeperPalloHallussa[sID]:=0;

    end;

  end;
  
end;

function keeperTullaankoVastaan(sID: smallint; keeperID: byte): boolean;
var paikLiike: real;
begin
  result:=false;

  if servers.maali_delayer[sID]>0 then exit;
  if servers.keeperPalloHallussa[sID]>0 then exit;
  if servers.kaukoVeto[sID]>0 then exit;
  if servers.syoksy_delay[sID,1]>0 then exit;
  if servers.syoksy_delay[sID,2]>0 then exit;
  if servers.keeperTouchDelay[sID,keeperID]>0 then exit;

  if (servers.ballCoords[sID,1]>130) or (servers.ballCoords[sID,1]<-130) then begin
    result:=false;
    exit;
  end;

  if keeperID=1 then begin
    if servers.ballCoords[sID,2]>-540 then begin
      result:=false;
      exit;
    end;
  end else begin
    if servers.ballCoords[sID,2]<540 then begin
      result:=false;
      exit;
    end;
  end;

  servers.keeperNopeus[sID,keeperID]:=0;

  //pallo lähettyvillä, joten molari lähtee tulemaan vastaan
  if etaisyys(servers.keeperCoords[sID,keeperID,1],servers.keeperCoords[sID,keeperID,2],servers.ballCoords[sID,1],servers.ballCoords[sID,2])>=16 then begin
    servers.keeperNopeus[sID,keeperID]:=2.3;
    servers.keeperSuunta[sID,keeperID]:=angle(servers.keeperCoords[sID,keeperID,1],servers.keeperCoords[sID,keeperID,2],servers.ballCoords[sID,1],servers.ballCoords[sID,2]);
    paikLiike:=cos(ToRad*servers.keeperSuunta[sID,keeperID])*servers.keeperNopeus[sID,keeperID];
    servers.keeperCoords[sID,keeperID,1]:=servers.keeperCoords[sID,keeperID,1]+paikLiike;
    paikLiike:=sin(ToRad*servers.keeperSuunta[sID,keeperID])*servers.keeperNopeus[sID,keeperID];
    servers.keeperCoords[sID,keeperID,2]:=servers.keeperCoords[sID,keeperID,2]+paikLiike;
  end;

//*********************************************************************************
  //jos oman joukkueen pelaaja riplailee pallon kanssa, tämä pätkä estää sen
  //ettei oma molari nappaa palloa käsiin
{  if servers.ballKorkeus[sID]<30 then begin
  if etaisyys(servers.keeperCoords[sID,keeperID,1],servers.keeperCoords[sID,keeperID,2],servers.ballCoords[sID,1],servers.ballCoords[sID,2])<16 then begin

    if keeperID=1 then begin
      if ((servers.homeAloitusPuoli[sID]=1) and (servers.viimeKontroloijaTeam[sID,1]=1)) or
         ((servers.homeAloitusPuoli[sID]=2) and (servers.viimeKontroloijaTeam[sID,1]=2)) then begin
          result:=true;
          //servers.blokattuArea[sID]:=1;
      end;
    end;
    if keeperID=2 then begin
      if ((servers.homeAloitusPuoli[sID]=1) and (servers.viimeKontroloijaTeam[sID,1]=2)) or
         ((servers.homeAloitusPuoli[sID]=2) and (servers.viimeKontroloijaTeam[sID,1]=1)) then begin
          result:=true;
          //servers.blokattuArea[sID]:=2;
      end;
    end;
    if result=true then begin
      molarinKick(sID,keeperID,false);
      exit;
    end;

  end;
  end;       }
//*********************************************************************************

  //molari nappaa pallon käsiin
  if servers.ballKorkeus[sID]<35 then begin   //ennen 35
  if etaisyys(servers.keeperCoords[sID,keeperID,1],servers.keeperCoords[sID,keeperID,2],servers.ballCoords[sID,1],servers.ballCoords[sID,2])<16 then begin
    servers.keeperPalloHallussa[sID]:=keeperID;
    servers.ballNopeus[sID]:=0;
    if keeperID=1 then begin
      servers.keeperSuunta[sID,1]:=90;
      servers.ballCoords[sID,1]:=servers.keeperCoords[sID,1,1];
      servers.ballCoords[sID,2]:=servers.keeperCoords[sID,1,2]+1;
    end;
    if keeperID=2 then begin
      servers.keeperSuunta[sID,2]:=270;
      servers.ballCoords[sID,1]:=servers.keeperCoords[sID,2,1];
      servers.ballCoords[sID,2]:=servers.keeperCoords[sID,2,2]-1;
    end;
    servers.keeperNopeus[sID,keeperID]:=0;
    servers.keeperTriggerDelay[sID,keeperID]:=0;
    aseta_auto_poisto_koords2(sID);
  end;
  end;

  result:=true;

end;

procedure keeperHanging(sID: smallint; keeperID: byte);
var py: smallint;
    hangPos: array [1..2] of real;
    pAng, pEt,PaikLiike: real;
begin

  if servers.maali_delayer[sID]>0 then exit;
  if servers.kaukoVeto[sID]>0 then exit;
  if servers.syoksy_delay[sID,1]>0 then exit;
  if servers.syoksy_delay[sID,2]>0 then exit;
  if servers.keeperTouchDelay[sID,keeperID]>0 then exit;

  if keeperID=1 then
    py:=-640
  else
    py:=640;

  pet:=etaisyys(0,py,servers.ballCoords[sID,1],servers.ballCoords[sID,2]);
  pAng:=angle(0,py,servers.ballCoords[sID,1],servers.ballCoords[sID,2]);

  paikLiike:=cos(ToRad*pAng)*pEt/5;
  hangPos[1]:=0+paikLiike;
  paikLiike:=sin(ToRad*pAng)*pEt/5;
  hangPos[2]:=py+paikLiike;

  if hangPos[1]<-55 then hangPos[1]:=-55;
  if hangPos[1]>55 then hangPos[1]:=55;

//******************************************************************************
  if etaisyys(hangPos[1],hangPos[2],servers.keeperCoords[sID,keeperID,1],servers.keeperCoords[sID,keeperID,2])<5 then begin
    servers.keeperCoords[sID,keeperID,1]:=hangPos[1];
    servers.keeperCoords[sID,keeperID,2]:=hangPos[2];
    servers.keeperNopeus[sID,keeperID]:=0;
    servers.keeperSuunta[sID,keeperID]:=angle(servers.keeperCoords[sID,keeperID,1],servers.keeperCoords[sID,keeperID,2],servers.ballCoords[sID,1],servers.ballCoords[sID,2]);

    if keeperID=1 then begin
      if servers.keeperCoords[sID,keeperID,2]<-640 then
        servers.keeperCoords[sID,keeperID,2]:=-640;
    end else begin
      if servers.keeperCoords[sID,keeperID,2]>640 then
        servers.keeperCoords[sID,keeperID,2]:=640;
    end;

    exit;
  end;
//******************************************************************************

  servers.keeperSuunta[sID,keeperID]:=angle(servers.keeperCoords[sID,keeperID,1],servers.keeperCoords[sID,keeperID,2],hangPos[1],hangPos[2]);
  servers.keeperNopeus[sID,keeperID]:=2;

  paikLiike:=cos(ToRad*servers.keeperSuunta[sID,keeperID])*servers.keeperNopeus[sID,keeperID];
  servers.keeperCoords[sID,keeperID,1]:=servers.keeperCoords[sID,keeperID,1]+paikLiike;
  paikLiike:=sin(ToRad*servers.keeperSuunta[sID,keeperID])*servers.keeperNopeus[sID,keeperID];
  servers.keeperCoords[sID,keeperID,2]:=servers.keeperCoords[sID,keeperID,2]+paikLiike;

end;

procedure molarinKick(sID, kID: smallint; goalKick: boolean);
var rand: byte;
begin

  if servers.keeperTouchDelay[sID,kID]>0 then exit;
  servers.keeperTouchDelay[sID,kID]:=25;

  //huomaa asettaa ennen metodin kutsua servers.ballAngle[sID]
  //mikäli servers.blokattuArea[sID] on 0

  //if goalKick=false then laske_paitsiossa_olijatKeeper(sID,kID);
  rand:=random(40);
  if kID=1 then servers.ballAngle[sID]:=90+(rand-20);
  if kID=2 then servers.ballAngle[sID]:=270+(rand-20);

  servers.ballKorkeus[sID]:=0;
  servers.ballHeAngle[sID]:=50;
  servers.ballNopeus[sID]:=5.5;
  servers.blokattuArea[sID]:=0;
  FPaddTouchDelay(sID);
end;

procedure aseta_auto_poisto_koords2(sID: smallint);  //molari poimi pallon
var i,j: integer;
begin

  //molari poimi pallon alakentällä
  if servers.keeperPalloHallussa[sID]=2 then begin
    servers.blokattuArea[sID]:=2;
    //servers.keeperTrigger[sID,1]:=0;
    //servers.keeperTrigger[sID,2]:=0;
    for i:=1 to servers.max_plrs[sID] do begin
      for j:=1 to 2 do begin
        if servers.plrCoords[sID,i,j,2]>465 then begin
          servers.kickoffCoords[sID,i,j,1]:=servers.plrCoords[sID,i,j,1];
          servers.kickoffCoords[sID,i,j,2]:=465;
          servers.autoOhjaus[sID,i,j]:=true;
        end;
      end;
    end;
  end;

  //molari poimi pallon yläkentällä
  if servers.keeperPalloHallussa[sID]=1 then begin
    servers.blokattuArea[sID]:=1;
    //servers.keeperTrigger[sID,1]:=0;
    //servers.keeperTrigger[sID,2]:=0;
    for i:=1 to servers.max_plrs[sID] do begin
      for j:=1 to 2 do begin
        if servers.plrCoords[sID,i,j,2]<-465 then begin
          servers.kickoffCoords[sID,i,j,1]:=servers.plrCoords[sID,i,j,1];
          servers.kickoffCoords[sID,i,j,2]:=-465;
          servers.autoOhjaus[sID,i,j]:=true;
        end;
      end;
    end;
  end;

end;

function siirraPalloaSimulointi2(sID: smallint;TempBall: TTempBall): TTempBall;
var paikLiike,kitka: real;
    done: boolean;
begin

  done:=false;

  repeat

    paikLiike:=cos(ToRad*TempBall.ballAngle)*TempBall.ballNopeus;
    TempBall.ballCoords[1]:=TempBall.ballCoords[1]+paikLiike;
    paikLiike:=sin(ToRad*TempBall.ballAngle)*TempBall.ballNopeus;
    TempBall.ballCoords[2]:=TempBall.ballCoords[2]+paikLiike;

    TempBall:=FPpallonKorkeusLaskutSimulointi(TempBall);

    kitka:=0.05;
    if TempBall.ballKorkeus<=0 then TempBall.ballNopeus:=TempBall.ballNopeus-kitka;
    if TempBall.ballNopeus<0 then TempBall.ballNopeus:=0;

    if TempBall.ballCoords[2]<-640 then done:=true;
    if TempBall.ballCoords[2]>640 then done:=true;
    if TempBall.ballCoords[1]<-511 then done:=true;
    if TempBall.ballCoords[1]>511 then done:=true;
    if TempBall.ballAngle<180 then begin //pallo menossa alaspäin
      if TempBall.ballCoords[2]>servers.keeperCoords[sID,2,2] then done:=true;
    end
    else begin //pallo menossa ylöspäin
      if TempBall.ballCoords[2]<servers.keeperCoords[sID,1,2] then done:=true;
    end;
    if TempBall.ballNopeus<=0 then done:=true;

  until done;

  result:=TempBall;

end;

function onkoPelaajatPoisGoalKickAlueelta(sID: smallint): boolean;
var i,j: integer;
begin
  result:=false;

  for i:=1 to servers.max_plrs[sID] do
    for j:=1 to 2 do
      if servers.autoOhjaus[sID,i,j]=true then exit;

  result:=true;

end;

procedure FPpaatyRajat(sID: smallint);
begin

  if servers.mista_ulos[sID]>0 then exit;
  if servers.kumman_heitto[sID]>0 then exit;
  if servers.kumman_vapari[sID]>0 then exit;

//*****************  sivurajat  ************************************************

  if servers.ballCoords[sID,1]<-511 then begin
    servers.mista_ulos[sID]:=1;
    servers.heittoCoords[sID,1]:=-510;
    servers.heittoCoords[sID,2]:=servers.ballCoords[sID,2];
    if servers.heittoCoords[sID,2]>632 then servers.heittoCoords[sID,2]:=632;
    if servers.heittoCoords[sID,2]<-632 then servers.heittoCoords[sID,2]:=-632;
    if servers.viimeKontroloijaTeam[sID,1]=1 then
      servers.kumman_heitto[sID]:=2 else servers.kumman_heitto[sID]:=1;

    inc(servers.Throwins[sID,servers.viimeKontroloijaTeam[sID,1]]);
  end;

  if servers.ballCoords[sID,1]>511 then begin
    servers.mista_ulos[sID]:=2;
    servers.heittoCoords[sID,1]:=510;
    servers.heittoCoords[sID,2]:=servers.ballCoords[sID,2];
    if servers.heittoCoords[sID,2]>632 then servers.heittoCoords[sID,2]:=632;
    if servers.heittoCoords[sID,2]<-632 then servers.heittoCoords[sID,2]:=-632;
    if servers.viimeKontroloijaTeam[sID,1]=1 then
      servers.kumman_heitto[sID]:=2 else servers.kumman_heitto[sID]:=1;


    inc(servers.Throwins[sID,servers.viimeKontroloijaTeam[sID,1]]);
  end;

//******************************************************************************

  //seruaava siksi, ettei heitto muutu yllättäen esim. maalipotkuksi
  if servers.mista_ulos[sID]>0 then exit;

//*****************  päätyrajat  ************************************************
  if servers.ballCoords[sID,2]>640 then begin
            //goalkick
    if servers.homeAloitusPuoli[sID]=1 then begin
      if servers.viimeKontroloijaTeam[sID,1]=1 then begin
        if servers.ballCoords[sID,1]>0 then servers.mista_ulos[sID]:=3 else servers.mista_ulos[sID]:=4;//4
        if servers.mista_ulos[sID]=3 then servers.goalkickPos[sID]:=4;
        if servers.mista_ulos[sID]=4 then servers.goalkickPos[sID]:=3;

        if servers.ballCoords[sID,1]>0 then
          servers.paitsiolinja[sID,1]:=100 else servers.paitsiolinja[sID,1]:=-100;
        servers.paitsiolinja[sID,2]:=585;

        aseta_auto_poisto_koords(sID);
        
        inc(servers.Goalkicks[sID,2]);
        exit;

      end;    //corner
      if servers.viimeKontroloijaTeam[sID,1]=2 then begin
        if servers.ballCoords[sID,1]>0 then servers.mista_ulos[sID]:=7 else servers.mista_ulos[sID]:=8;
        servers.kumman_vapari[sID]:=1;

        aseta_auto_poisto_koords(sID);

        servers.corner[sID]:=true;
        
        inc(servers.Corners[sID,1]);
        exit;

      end;
    end else begin      //corner
      if servers.viimeKontroloijaTeam[sID,1]=1 then begin
        if servers.ballCoords[sID,1]>0 then servers.mista_ulos[sID]:=7 else servers.mista_ulos[sID]:=8;
        servers.kumman_vapari[sID]:=2;
        aseta_auto_poisto_koords(sID);

        servers.corner[sID]:=true;
        
        inc(servers.Corners[sID,2]);
        exit;

      end;      //goalkick
      if servers.viimeKontroloijaTeam[sID,1]=2 then begin
        if servers.ballCoords[sID,1]>0 then servers.mista_ulos[sID]:=3 else servers.mista_ulos[sID]:=4;//4
        if servers.mista_ulos[sID]=3 then servers.goalkickPos[sID]:=4;
        if servers.mista_ulos[sID]=4 then servers.goalkickPos[sID]:=3;

        if servers.ballCoords[sID,1]>0 then
          servers.paitsiolinja[sID,1]:=100 else servers.paitsiolinja[sID,1]:=-100;
        servers.paitsiolinja[sID,2]:=585;

        aseta_auto_poisto_koords(sID);
        
        inc(servers.Goalkicks[sID,1]);
        exit;

      end;
    end;

  end;
      //*************************************************************
      //*************************************************************
      //*************************************************************
  if servers.ballCoords[sID,2]<-640 then begin //ala
                     //corner
    if servers.homeAloitusPuoli[sID]=1 then begin
      if servers.viimeKontroloijaTeam[sID,1]=1 then begin
        if servers.ballCoords[sID,1]>0 then servers.mista_ulos[sID]:=9 else servers.mista_ulos[sID]:=10;
        servers.kumman_vapari[sID]:=2;
        aseta_auto_poisto_koords(sID);

        servers.corner[sID]:=true;
        
        inc(servers.Corners[sID,2]);
        exit;

      end;          //goalkick
      if servers.viimeKontroloijaTeam[sID,1]=2 then begin
        if servers.ballCoords[sID,1]>0 then servers.mista_ulos[sID]:=5 else servers.mista_ulos[sID]:=6;//6
        if servers.mista_ulos[sID]=5 then servers.goalkickPos[sID]:=2;
        if servers.mista_ulos[sID]=6 then servers.goalkickPos[sID]:=1;

        if servers.ballCoords[sID,1]>0 then
          servers.paitsiolinja[sID,1]:=100 else servers.paitsiolinja[sID,1]:=-100;
        servers.paitsiolinja[sID,2]:=-585;

        //servers.kumman_vapari[sID]:=1;
        aseta_auto_poisto_koords(sID);
        
        inc(servers.Goalkicks[sID,1]);
        exit;

      end;
    end else begin   //goalkick
      if servers.viimeKontroloijaTeam[sID,1]=1 then begin
        if servers.ballCoords[sID,1]>0 then servers.mista_ulos[sID]:=5 else servers.mista_ulos[sID]:=6;//6
        if servers.mista_ulos[sID]=5 then servers.goalkickPos[sID]:=2;
        if servers.mista_ulos[sID]=6 then servers.goalkickPos[sID]:=1;

        if servers.ballCoords[sID,1]>0 then
          servers.paitsiolinja[sID,1]:=100 else servers.paitsiolinja[sID,1]:=-100;
        servers.paitsiolinja[sID,2]:=-585;

        //servers.kumman_vapari[sID]:=2;
        aseta_auto_poisto_koords(sID);
        
        inc(servers.Goalkicks[sID,2]);
        exit;

      end;      //corner
      if servers.viimeKontroloijaTeam[sID,1]=2 then begin
        if servers.ballCoords[sID,1]>0 then servers.mista_ulos[sID]:=9 else servers.mista_ulos[sID]:=10;
        servers.kumman_vapari[sID]:=1;
        aseta_auto_poisto_koords(sID);

        servers.corner[sID]:=true;

        inc(servers.Corners[sID,1]);
        exit;

      end;
    end;

  end;

//******************************************************************************

end;

procedure aseta_auto_poisto_koords(sID: smallint);  //maalipotkussa
var i,j: integer;
    pt: byte;
    pAng,paikLiike: real;
begin

  //pallo maalipotkuksi alakentällä
  if (servers.mista_ulos[sID]=3) or (servers.mista_ulos[sID]=4) then begin
    servers.blokattuArea[sID]:=2;
    servers.keeperTrigger[sID,1]:=0;
    servers.keeperTrigger[sID,2]:=0;
    for i:=1 to servers.max_plrs[sID] do begin
      for j:=1 to 2 do begin
        if servers.plrCoords[sID,i,j,2]>465 then begin
          servers.kickoffCoords[sID,i,j,1]:=servers.plrCoords[sID,i,j,1];
          servers.kickoffCoords[sID,i,j,2]:=465;
          servers.autoOhjaus[sID,i,j]:=true;
        end;
      end;
    end;
  end;

  //pallo maalipotkuksi yläkentällä
  if (servers.mista_ulos[sID]=5) or (servers.mista_ulos[sID]=6) then begin
    servers.blokattuArea[sID]:=1;
    servers.keeperTrigger[sID,1]:=0;
    servers.keeperTrigger[sID,2]:=0;
    for i:=1 to servers.max_plrs[sID] do begin
      for j:=1 to 2 do begin
        if servers.plrCoords[sID,i,j,2]<-465 then begin
          servers.kickoffCoords[sID,i,j,1]:=servers.plrCoords[sID,i,j,1];
          servers.kickoffCoords[sID,i,j,2]:=-465;
          servers.autoOhjaus[sID,i,j]:=true;
        end;
      end;
    end;
  end;

  //kulma vasen ylä
  if servers.mista_ulos[sID]=10 then begin
    servers.blokattuArea[sID]:=3;
    servers.blokattuAreaCoords[sID,1]:=-505;
    servers.blokattuAreaCoords[sID,2]:=-632;
    if servers.kumman_vapari[sID]=1 then pt:=2 else pt:=1;
    for i:=1 to servers.max_plrs[sID] do begin
      if etaisyys(servers.plrCoords[sID,i,pt,1],servers.plrCoords[sID,i,pt,2],-505,-632)<125 then begin
        servers.kickoffCoords[sID,i,pt,1]:=-380;
        servers.kickoffCoords[sID,i,pt,2]:=servers.plrCoords[sID,i,pt,2];
        servers.autoOhjaus[sID,i,pt]:=true;
      end;
    end;
  end;

  //kulma oikea ylä
  if servers.mista_ulos[sID]=9 then begin
    servers.blokattuArea[sID]:=3;
    servers.blokattuAreaCoords[sID,1]:=505;
    servers.blokattuAreaCoords[sID,2]:=-632;
    if servers.kumman_vapari[sID]=1 then pt:=2 else pt:=1;
    for i:=1 to servers.max_plrs[sID] do begin
      if etaisyys(servers.plrCoords[sID,i,pt,1],servers.plrCoords[sID,i,pt,2],505,-632)<125 then begin
        servers.kickoffCoords[sID,i,pt,1]:=380;
        servers.kickoffCoords[sID,i,pt,2]:=servers.plrCoords[sID,i,pt,2];
        servers.autoOhjaus[sID,i,pt]:=true;
      end;
    end;
  end;

  //kulma vasen ylä
  if servers.mista_ulos[sID]=8 then begin
    servers.blokattuArea[sID]:=3;
    servers.blokattuAreaCoords[sID,1]:=-505;
    servers.blokattuAreaCoords[sID,2]:=632;
    if servers.kumman_vapari[sID]=1 then pt:=2 else pt:=1;
    for i:=1 to servers.max_plrs[sID] do begin
      if etaisyys(servers.plrCoords[sID,i,pt,1],servers.plrCoords[sID,i,pt,2],-505,632)<125 then begin
        servers.kickoffCoords[sID,i,pt,1]:=-380;
        servers.kickoffCoords[sID,i,pt,2]:=servers.plrCoords[sID,i,pt,2];
        servers.autoOhjaus[sID,i,pt]:=true;
      end;
    end;
  end;

  //kulma oikea ylä
  if servers.mista_ulos[sID]=7 then begin
    servers.blokattuArea[sID]:=3;
    servers.blokattuAreaCoords[sID,1]:=505;
    servers.blokattuAreaCoords[sID,2]:=632;
    if servers.kumman_vapari[sID]=1 then pt:=2 else pt:=1;
    for i:=1 to servers.max_plrs[sID] do begin
      if etaisyys(servers.plrCoords[sID,i,pt,1],servers.plrCoords[sID,i,pt,2],505,632)<125 then begin
        servers.kickoffCoords[sID,i,pt,1]:=380;
        servers.kickoffCoords[sID,i,pt,2]:=servers.plrCoords[sID,i,pt,2];
        servers.autoOhjaus[sID,i,pt]:=true;
      end;
    end;
  end;

//******************************************************************************
  //paitsiot
  if servers.mista_ulos[sID]=70 then begin
    servers.blokattuArea[sID]:=3;
    servers.blokattuAreaCoords[sID,1]:=servers.paitsiolinja[sID,1];
    servers.blokattuAreaCoords[sID,2]:=servers.paitsiolinja[sID,2];
    if servers.kumman_vapari[sID]=1 then pt:=2 else pt:=1;
    for i:=1 to servers.max_plrs[sID] do begin
      if etaisyys(servers.plrCoords[sID,i,pt,1],servers.plrCoords[sID,i,pt,2],servers.paitsiolinja[sID,1],servers.paitsiolinja[sID,2])<125 then begin
        servers.kickoffCoords[sID,i,pt,1]:=servers.plrCoords[sID,i,pt,1];

        pAng:=0; //warning pois
        if pt=1 then begin
          if servers.homeAloitusPuoli[sID]=1 then pAng:=270;
          if servers.homeAloitusPuoli[sID]=2 then pAng:=90;
        end;
        if pt=2 then begin
          if servers.homeAloitusPuoli[sID]=1 then pAng:=90;
          if servers.homeAloitusPuoli[sID]=2 then pAng:=270;
        end;

        paikLiike:=sin(ToRad*pAng)*125;
        servers.kickoffCoords[sID,i,pt,2]:=servers.plrCoords[sID,i,pt,2]+paikLiike;

        servers.autoOhjaus[sID,i,pt]:=true;
      end;
    end;
  end;


//  10   9
//  8  7

end;

procedure FPliukutaklaus(sID: smallint);
var i,j,i2: integer;
    p_vihu: byte;
    paikLiike: real;
    nopLis: real;
    liukArea: byte;
begin


  for i:=1 to servers.max_plrs[sID] do begin
    for j:=1 to 2 do begin

      if servers.plr_names[sID,i,j]='' then continue;
      //if Ingame_data.auto_ohjaus[i,j]=true then continue;
      if servers.kumman_heitto[sID]>0 then continue;
      if servers.kumman_vapari[sID]>0 then continue;
      //if (servers.disabledPlayer[sID,1]=i) and (servers.disabledPlayer[sID,2]=j) then continue;

      nopLis:=1.5;
      liukArea:=13;

      {if Ingame_data.character[i,j,3]=0 then pr:=0.10;
      if Ingame_data.character[i,j,3]=1 then pr:=0.11;
      if Ingame_data.character[i,j,3]=2 then pr:=0.12;
      if Ingame_data.character[i,j,3]=3 then pr:=0.13;
      if Ingame_data.character[i,j,3]=4 then pr:=0.15;    }


      //if body_koti[i]=1 then ukon_nopeus_koti[i]:=ukon_nopeus_koti[i]+1.4;
      //if body_koti[i]=2 then ukon_nopeus_koti[i]:=ukon_nopeus_koti[i]+1.5;
      //if body_koti[i]=3 then ukon_nopeus_koti[i]:=ukon_nopeus_koti[i]+1.6;

      //********  jos liukkari nappi painetty, laitetaan liukkari päälle  ******
      if (servers.liukkari[sID,i,j]=false) and (servers.keys[sID,i,j]=1) then begin
      if servers.keeperPalloHallussa[sID]=0 then begin
      if servers.touchDelay[sID,i,j]=0 then begin
      if etaisyys(servers.plrCoords[sID,i,j,1],servers.plrCoords[sID,i,j,2],servers.ballCoords[sID,1],servers.ballCoords[sID,2])>13 then begin
        if servers.kaatumis_delay[sID,i,j]=0 then begin
          servers.plrNopeus[sID,i,j]:=servers.plrNopeus[sID,i,j]+nopLis;
          servers.liukkari[sID,i,j]:=true;
          servers.plrSuunta[sID,i,j]:=servers.plrAngle[sID,i,j];
        end;
      end;
      end;
      end;
      end;
      //************************************************************************

      //*******************  liukutaklaus osuu palloon  ************************
      if servers.mista_ulos[sID]=0 then begin
      if servers.touchDelay[sID,i,j]=0 then begin
      if servers.ballKorkeus[sID]<10 then begin
      if servers.keeperPalloHallussa[sID]=0 then begin
        if servers.liukkari[sID,i,j]=true then begin
          if etaisyys(servers.plrCoords[sID,i,j,1],servers.plrCoords[sID,i,j,2],servers.ballCoords[sID,1],servers.ballCoords[sID,2])<14 then begin

            servers.ballNopeus[sID]:=servers.plrNopeus[sID,i,j]+1.5;

            servers.ballAngle[sID]:=servers.plrSuunta[sID,i,j];

            FPaddTouchDelay(sID);

            FPpaivita_viime_kontroloija(sID,i,j);


            servers.kaukoVeto[sID]:=0;

            //Ingame_data.ball_controller_now[1]:=i;
            //Ingame_data.ball_controller_now[2]:=j;
            //laske_paitsiossa_olijat(i,j);
          end;
        end;
      end;
      end;
      end;
      end;
      //************************************************************************

      //*******************  liukutaklaus osuu vihuun  *************************
      if servers.liukkari[sID,i,j]=true then begin
      if servers.plrNopeus[sID,i,j]>1 then begin
        if j=1 then p_vihu:=2 else p_vihu:=1;
        for i2:=1 to servers.max_plrs[sID] do begin
          if servers.plr_names[sID,i2,p_vihu]='' then continue;

            if servers.liukkari[sID,i2,p_vihu]=false then begin
            if servers.kaatumis_delay[sID,i2,p_vihu]=0 then begin
              //jos pe1 etäisyys tarpeeks lähellä p2 then begin (huomioi body)
              if etaisyys(servers.plrCoords[sID,i,j,1],servers.plrCoords[sID,i,j,2],servers.plrCoords[sID,i2,p_vihu,1],servers.plrCoords[sID,i2,p_vihu,2])<liukArea then begin
              if etaisyys(servers.ballCoords[sID,1],servers.ballCoords[sID,2],servers.plrCoords[sID,i2,p_vihu,1],servers.plrCoords[sID,i2,p_vihu,2])<liukArea*2 then begin

                servers.kaatumis_delay[sID,i2,p_vihu]:=50;
                servers.plrNopeus[sID,i2,p_vihu]:=0;
              end;
              end;

            end;
            end;

        end;

      end;
      end;
      //************************************************************************

    end;
  end;


//******************************************************************************

  for i:=1 to servers.max_plrs[sID] do begin
    for j:=1 to 2 do begin

      if servers.kaatumis_delay[sID,i,j]>0 then
        dec(servers.kaatumis_delay[sID,i,j]);

    end;
  end;



  //************************************************************************
  //jos liukkari päällä, liikutellaan pelaajaa ja vähennetään liuku nopeutta
  for i:=1 to servers.max_plrs[sID] do begin
    for j:=1 to 2 do begin

      if servers.liukkari[sID,i,j]=false then continue;

      servers.plrNopeus[sID,i,j]:=servers.plrNopeus[sID,i,j]-0.05;
      paikLiike:=cos(ToRad*servers.plrSuunta[sID,i,j])*servers.plrNopeus[sID,i,j];
      servers.plrCoords[sID,i,j,1]:=servers.plrCoords[sID,i,j,1]+paikLiike;
      paikLiike:=sin(ToRad*servers.plrSuunta[sID,i,j])*servers.plrNopeus[sID,i,j];
      servers.plrCoords[sID,i,j,2]:=servers.plrCoords[sID,i,j,2]+paikLiike;

      if servers.plrNopeus[sID,i,j]<0 then begin
        servers.plrNopeus[sID,i,j]:=0;
        servers.liukkari[sID,i,j]:=false;
      end;

    end;
  end;

end;

end.
