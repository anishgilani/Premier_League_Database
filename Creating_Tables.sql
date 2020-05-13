CREATE TABLE Sponsors
(
	SName VARCHAR2(20), 
	CONSTRAINT sponsors_sname_pk PRIMARY KEY (SName)
);

CREATE TABLE Manager
(
	MName CHAR(20),
	Nationality CHAR(20),
	CurrentlyManages CHAR(30),
	CONSTRAINT manager_mname_pk PRIMARY KEY (MName) 
);

CREATE TABLE Player
(
	FirstName CHAR(20),
	LastName CHAR(20),
	MiddleInitial CHAR(1),
	DOB DATE,
	Goals NUMBER(3),
	Assists NUMBER(3),
	CurrentTeam CHAR(30),
	PlayerID NUMBER(9),
	CONSTRAINT player_playerid_pk PRIMARY KEY (PlayerID)
);

CREATE TABLE Team
(
	TName CHAR(30),
	Stadium VARCHAR2(20),
	CONSTRAINT team_tname_pk PRIMARY KEY (TName)
);

CREATE TABLE Fixture
(
	Winner CHAR(30),
	HomeTeam CHAR(30),
	AwayTeam CHAR(30),
	HomeScore NUMBER(2),
	AwayScore NUMBER(2),
	Location VARCHAR2(30),
	FixtureDate DATE,
	FixtureID CHAR(20),
	CONSTRAINT fixture_fixtureid_pk PRIMARY KEY (FixtureID)	
);

CREATE TABLE PerformanceTable
(
	TName CHAR(30),
	Position VARCHAR2(10),
	Wins NUMBER(2),
	Losses NUMBER(2),
	Draws NUMBER(2),
	Points NUMBER(2),
	CONSTRAINT ptable_tname_pk PRIMARY KEY (TName)
);

CREATE TABLE SponsorsPlayer
(
	SName VARCHAR2(20),
	PlayerID NUMBER(9),
	CONSTRAINT splayer_sname_playerid_pk PRIMARY KEY (SName, PlayerID)
);

CREATE TABLE SponsorsTeam
(
	SName VARCHAR2(20),
	TName CHAR(30),
	CONSTRAINT steam_sname_tname_pk PRIMARY KEY (SName, TName)
);

CREATE TABLE HasManaged
(
	TName CHAR(30),
	MName CHAR(20),
	CONSTRAINT hasmanaged_tname_mname_pk PRIMARY KEY (TName, MName)
);

CREATE TABLE HasPlayedFor
(
	TName CHAR(30),
	PlayerID NUMBER(9),
	CONSTRAINT hasplayedfor_tname_playerid_pk PRIMARY KEY (TName, PlayerID)
);

CREATE TABLE FixturePlayed
(
	FixtureID CHAR(20),
	TName CHAR(30),
	CONSTRAINT fplayed_fid_tname_pk PRIMARY KEY (FixtureID, TName) 
);

CREATE TABLE GKStats
(
	Saves NUMBER(4),
	CleanSheets NUMBER(4),
	GoalID CHAR(4),
	PlayID NUMBER(9),
	CONSTRAINT gkstats_goalid_playid_pk PRIMARY KEY (GoalID, PlayID)
);