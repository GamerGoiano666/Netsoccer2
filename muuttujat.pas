unit muuttujat;

interface                 
                              
uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs,typet;

var

  versio: string='0124';
  local_comp: boolean;

const

  MAX_PLAYERS=100000;
  MAX_TEAMS=20000;
  PixelCountMax = 32768;
  pi    = 3.1415926535897932;
  ToRad = 0.0174532925199432;  //  PI / 180 = Deg to Rad
  ToDeg = 57.295779513082320;  //  180 / PI = Rad to Deg

type

  TRGBArray = array[0..32767] of TRGBTriple;
  PRGBArray = ^TRGBArray;

  TNumero_systeemi = record //k‰ytet‰‰n paitatekstuurin numerossa
    lahto_koord: array [1..2,1..2] of byte;  //numero index, xy  (number_template koordinaatteja)
    width: array [1..2] of byte;
    x: integer; //paita tekstuurin koordinaatit mihin numerot piirret‰‰n
    x2: integer;
  end;

  TChat_settings = record
    chat_boxes: byte;
    colors: array [1..5] of TColor;
    chat_box: array [1..5] of byte;
  end;

  TJoukkue_data = record
    index: word;
    name: string[20];
    team_logo: string[255];
    text: string[255];
    created: array [1..3] of byte;
    founder: string[15];
    stats: array [1..4] of word;
    rank: integer;
    shirt_colors: array [1..4, 1..3, 1..2] of byte;
    shirt_style: array [1..2] of byte;
    allow_joining: boolean;
    Player_names: array [1..50] of string[15];
    Player_index: array [1..50] of integer;
    Player_online: array [1..50] of boolean;
    player_shirtnumber: array [1..50] of byte;
    player_nation: array [1..50] of smallint;
    position: array [1..50, 1..4] of integer;  //yl‰,ala,vasen,oikea
    player_stats: array [1..50,1..3] of integer;  //goals, assists

    Player_admins: array [1..50] of byte;

    //records roinaa
    latest_home_away: array [1..10] of byte; //jos 1, kyseinen joukkue pelas kotona
    latest_rank_muutos: array [1..10] of smallint;
    latest_vastus: array [1..10] of string[20];
    latest_index: array [1..10] of word; //jos 0, joukkue poistettu
    latest_tulos: array [1..10, 1..2] of byte;
    latest_date: array [1..10, 1..3] of byte;  //day, month, year, hour, min
    invites: array [1..20] of string[15];

    location: byte;
  end;

  TPrivateServerSettings = record
    shirt_colors: array [1..4, 1..3, 1..2] of byte;
    shirt_style: array [1..2] of byte;
  end;

  TPelaajaData = record
    nimi: string[15];
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
    position: array [1..4] of integer;  //yl‰,ala,vasen,oikea
    LFT: boolean;
    created: array [1..3] of byte;  //day, month, year
    lastlogin: array [1..3] of byte;  //day, month, year
    prac_statistic: array [1..3, 1..2] of integer; //pas,tac,hea -- onnistuneet, ep‰onn.
    NT_statistic: array [1..3, 1..2] of integer; //pas,tac,hea -- onnistuneet, ep‰onn.
    career_statistic: array [1..11, 1..3, 1..2] of integer; //pas,tac,hea -- onnistuneet, ep‰onn.
  end;

  TLipun_rect = record
    mista: TRect;
    mihin: TRect;
  end;


  TSettings = record
    sounds: boolean;
    soundsLoaded: boolean;
    slowMoving: boolean;
    control: byte;  //0 keyboard, 1 mouse
    controlDirections: array [1..4] of word; //left, right, up, down
    controlAction: array [1..4] of word; //shooting, crossing, tackle, autopass
    panaani: boolean;
    username: string;
    password: string;
  end;

  TKits_muistiin = record
    shirt_colors: array [1..2, 1..4, 1..3, 1..2] of byte;
    shirt_style: array [1..2, 1..2] of byte;
    valitut: array [1..2] of byte;
  end;

  TCareer_data = record
    prac_stats: array [1..2] of integer;  //goals, assists
    NT_stats: array [1..3] of integer;  //apps, goals, assists
    career_stats: array [1..11, 1..3] of integer;  //apps, goals, assists -- 1=nykyinen, 11=old teams
    career_teams: array [1..10] of string[20];
    career_teams_index: array [1..10] of word;
    career_old_team_count: byte;
    prac_statistic: array [1..3, 1..2] of integer; //pas,tac,hea -- onnistuneet, ep‰onn.
    NT_statistic: array [1..3, 1..2] of integer; //pas,tac,hea -- onnistuneet, ep‰onn.
    career_statistic: array [1..11, 1..3, 1..2] of integer; //pas,tac,hea -- onnistuneet, ep‰onn.

  end;

  TIngame_data = record
    gameStatus: byte;
    playerNames: array [1..10, 1..2] of string;
    ready: array [1..10, 1..2] of boolean;
    vip: array [1..10, 1..2] of boolean;
    nation: array [1..10, 1..2] of smallint;
    action_key: array [1..2] of boolean; //slide, autopass
    keys: array [1..4] of boolean; //left, right, up, down
    omaPeliIndex: byte;
    omaPeliTeamIndex: byte;
    maxPlayers: byte;
    shirtColors: array [1..4, 1..3, 1..2] of byte;
    shirtStyle: array [1..2] of byte;
    teamNames: array [1..2] of string;
    aika: byte;
    aikaEnabled: boolean;
    aikaDelay: smallint;
    tulos: array [1..2] of byte;
    puoliaika: byte;
    character: array [1..10, 1..2, 1..5] of byte;  //skin,hair,body,shoe,number,NTnumber
    homeAloituspuoli: byte;
    mouse_naytto: array [1..2] of smallint;
    mouse: array [1..2] of smallint;
    mouseButtons: array [1..3] of boolean;
    plrCoords: array [1..10, 1..2, 1..2] of smallint;
    plrNopeus: array[1..10, 1..2] of real;
    plrAngle: array[1..10, 1..2] of real;  //plr juoksu suunta

    ballCoords: array [1..2] of smallint;
    ballKorkeus: real;
    ballAngle: real;
    ballHeAngle: real;
    ballNopeus: real;

    ukonNaytto: array [1..2] of smallint;
    kenttaXY: array [1..2] of smallint;
    framePotit: array [1..10, 1..2] of real;
    asentoKerroin: array [1..10, 1..2] of integer;
    patternIndex: array [1..10, 1..2] of integer;
    powerbar: smallint;
    powerBool: boolean;
    refLiputus: array [1..2] of byte;
    refDelay: array [1..2] of smallint;
    lRefCoordsKohdeY: array [1..2] of real;
    lRefCoordsY: array [1..2] of real;
    lRefSuunta: array [1..2] of real;
    refNopeus: array [1..2] of real;
    refframePotit: array [1..2] of real;
    refasentoKerroin: array [1..2] of integer;
    patternIndexLRef: array [1..2] of integer;
    quitPanel: boolean;
    heittaja: array [1..2] of byte;
    liukkari: array [1..10, 1..2] of boolean;
    kaatunut: array [1..10, 1..2] of boolean;

    keeperCoords: array [1..2, 1..2] of smallint;
    keeperNopeus: array [1..2] of real;
    keeperAngle: array [1..2] of real;  //plr juoksu suunta
    keeperpatternIndex: array [1..2] of integer;
    keeperframePotit: array [1..2] of real;
    keeperasentoKerroin: array [1..2] of integer;
    keeperAnim: array [1..2] of byte;
    palloKeeperilla: array [1..2] of boolean;

    framepotti_pallo: real;
    pallon_patternindex: byte;
    autoRunning: byte;


    //n‰m‰ vain freepractisessa
    plrEtaisyys: real; //plr to mouse et‰isyys
    plrSuunta: real;

  end;

  TPuoliaikaStatsit = record
    shots: array [1..2,1..2] of word;        //tID, onTarger/offTarget
    Goalkicks: array [1..2] of word;
    Corners: array [1..2] of word;
    Freekicks: array [1..2] of word;
    Throwins: array [1..2] of word;
    Offsides: array [1..2] of word;
    Possession: array [1..2] of word;
    Tackling: array [1..2, 1..2] of word;   //tID, success/unsuccess
    Heading: array [1..2, 1..2] of word;    //tID, success/unsuccess
    Passing: array [1..2, 1..2] of word;    //tID, success/unsuccess
  end;

  TPlayerStatMuisti = record
    gametype: byte;
    nation: byte;
    stat: byte;
  end;

  TRankingList = record
    id: array [0..49] of word;
    name: array [0..49] of string;
    rank: array [0..49] of integer;
  end;

  TFilterSettings = record
    noFull: boolean;
    noEmpty: boolean;
    location: byte;
    noPassword: boolean;
  end;

  pRGBTripleArray = ^TRGBTripleArray;
  TRGBTripleArray = ARRAY[0..PixelCountMax-1] OF TRGBTriple;

var

  RankingList: TRankingList;

  Chat_settings: TChat_settings;
  FilterSettings: TFilterSettings;
  Joukkue_data: TJoukkue_data;
  Lipun_rect: TLipun_rect;
  Numero_systeemi: TNumero_systeemi;
  Settings: TSettings;
  Kits_muistiin: TKits_muistiin;
  Ingame_data: TIngame_data;
  PuoliaikaStatsit: TPuoliaikaStatsit;
  PlayerStatMuisti: TPlayerStatMuisti;
  MatchDetails: TMatchDetails;
  PelaajaData: TPelaajaData;
  PrivateServerSettings: TPrivateServerSettings;

  Career_data: TCareer_data;

  IP_osoite: string;

  please_wait_arvo: boolean;

  httpkohde: byte;

  oma_login_name: string;
  oma_login_password: string;
  oma_adminstatus: byte;   //0=player, 1=admin, 2=master
  oma_team: word;
  oma_team_name: string;
  oma_socket: integer;
  oma_lobbyindex: integer;
  oma_skin: byte;
  oma_shoe: byte;
  oma_hair: byte;
  oma_number: byte;
  oma_body: byte;
  vipMinsRemaining: integer;
  omaUDPKey: byte;

  team_image: byte;


  selected_skin: string='winter2003';

  bmp1: TBitmap;

  publicServersList: TPublicServersList;
  ChallengeTeamsList: TChallengeTeamsList;
  LivescoreList: TLivescoreList;
  PlayerStatsList: TPlayerStatsList;
  TeamStatsList: TTeamStatsList;

  selectedGameType: byte; //1=public, 2=haaste
  selectedServerID: smallint;

  udpSkip: byte;
  publicChattersReceived: boolean;
  chat_mode: byte;
  chat_selected_textfield: byte;
  chat_kursori_delay: byte;
  chat_kenelle: string[20];
  chat_lause: string[120];
  peli_chat_msg: array [1..10] of string;
  peli_chat_color: array [1..10] of byte;

  scorerDelay: smallint;
  joinerDelay: smallint;
  scorer: string;
  joiner: string;

  temptxt,temptxt2: string;

  replyName: string;
  chatVisible: boolean=true;
  spam: boolean;
  kickattavaNimi: string;

implementation

end.



