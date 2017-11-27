unit typet;

interface

type

  TPublicServersList = record
    name: array of string;
    ID: array of smallint;
    plrCount: array of byte;
    maxPlrs: array of byte;
    password: array of boolean;
  end;

  TChallengeTeamsList = record
    name: array of string;
    plrOnline: array of byte;
    ranking: array of word;
    playing: array of boolean;
    location: array of byte;
  end;

  TLivescoreList = record
    sID: array of smallint;
    time: array of byte;
    score1: array of byte;
    score2: array of byte;
    name1: array of string;
    name2: array of string;
  end;

  TPlayerStatsList = record
    name: array of string;
    team: array of string;
    apps: array of integer;
    gls: array of integer;
    asts: array of integer;
    pass: array of integer;
    tck: array of integer;
    head: array of integer;
  end;

  TTeamStatsList = record
    team: array of string;
    rank: array of integer;

    biggestWinName: array [1..2] of string;
    biggestWinID: array [1..2] of integer;
    biggestWinResult: array [1..2] of byte;

    highestScoringName: array [1..2] of string;
    highestScoringID: array [1..2] of integer;
    highestScoringResult: array [1..2] of byte;

    mostGamesWonRowALLname: string;
    mostGamesWonRowALLID: integer;
    mostGamesWonRowALLresult: integer;
    mostGamesWithoutLoseALLname: string;
    mostGamesWithoutLoseALLID: integer;
    mostGamesWithoutLoseALLresult: integer;
    mostGamesLostRowALLname: string;
    mostGamesLostRowALLID: integer;
    mostGamesLostRowALLresult: integer;
    mostGamesWithoutWinALLname: string;
    mostGamesWithoutWinALLID: integer;
    mostGamesWithoutWinALLresult: integer;
    highestRankALLname: string;
    highestRankALLID: integer;
    highestRankALLresult: integer;
    lowestRankALLname: string;
    lowestRankALLID: integer;
    lowestRankALLresult: integer;

    mostGamesWonRowMomentname: string;
    mostGamesWonRowMomentID: integer;
    mostGamesWonRowMomentresult: integer;
    mostGamesWithoutLoseMomentname: string;
    mostGamesWithoutLoseMomentID: integer;
    mostGamesWithoutLoseMomentresult: integer;
    mostGamesLostRowMomentname: string;
    mostGamesLostRowMomentID: integer;
    mostGamesLostRowMomentresult: integer;
    mostGamesWithoutWinMomentname: string;
    mostGamesWithoutWinMomentID: integer;
    mostGamesWithoutWinMomentresult: integer;
    highestRankMomentname: string;
    highestRankMomentID: integer;
    highestRankMomentresult: integer;
    lowestRankMomentname: string;
    lowestRankMomentID: integer;
    lowestRankMomentresult: integer;

  end;

  TTripleByte = record
    b1,b2,b3: byte;
  end;

  TRankLasku = record
    rank: array [1..2,1..2] of smallint; //eka=voitto, toinen tasapeli
  end;

  TSuccessRate = record   //laukauksissa tarkoittaa ontarget ja offtarget
    stats: array [1..2] of word; //onnistuneet, epaOnnistuneet
  end;

  TPosition = record
    pos: array [1..4] of integer; //ylä,ala,vasen,oikea
  end;

  TMatchDetails = record
    name: array [1..2] of string[20];
    shirt_colors: array [1..2,1..3] of byte;
    goalKicks: array [1..2] of byte;
    corners: array [1..2] of byte;
    freeKicks: array [1..2] of byte;
    throwins: array [1..2] of byte;
    homeAreaPossession: array [1..2] of integer;
    middleAreaPossession: array [1..2] of integer;
    awayAreaPossession: array [1..2] of integer;

    id: array of integer;
    username: array of string;
    assists: array of byte;                  
    position: array of TPosition;
    joukkue: array of byte;  //koti tai vieras, eli 1 tai 2
    passing: array of TSuccessRate;
    tackling: array of TSuccessRate;
    heading: array of TSuccessRate;
    shots: array of TSuccessRate;
    offsides: array of byte;
          
    scorerID: array of integer;
    aika: array of byte;
    ownGoal: array of byte;
  end;

  TTempBall = record
    ballAngle: real;
    ballNopeus: real;
    ballCoords: array [1..2] of real;
    ballKorkeus: real;
    ballHeAngle: real;
  end;  

implementation

end.
