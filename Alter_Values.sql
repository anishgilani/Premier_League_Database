ALTER TABLE Manager
ADD CONSTRAINT manager_cmanages_fk FOREIGN KEY (CurrentlyManages)
REFERENCES Team (TName);

ALTER TABLE Player
ADD CONSTRAINT player_cteam_fk FOREIGN KEY (CurrentTeam)
REFERENCES Team (TName);

ALTER TABLE Team
ADD CONSTRAINT team_tname_fk FOREIGN KEY (TName)
REFERENCES PerformanceTable (TName);

ALTER TABLE SponsorsPlayer
ADD CONSTRAINT sponsorsplayer_sname_fk FOREIGN KEY (SName)
REFERENCES Sponsors (SName);

ALTER TABLE SponsorsPlayer
ADD CONSTRAINT sponsorsplayer_playerid_fk FOREIGN KEY (PlayerID)
REFERENCES Player (PlayerID);

ALTER TABLE SponsorsTeam
ADD CONSTRAINT sponsorsteam_sname_fk FOREIGN KEY (SName)
REFERENCES Sponsors (SName);

ALTER TABLE SponsorsTeam
ADD CONSTRAINT sponsorsteam_tname_fk FOREIGN KEY (TName)
REFERENCES Team (TName);

ALTER TABLE HasManaged
ADD CONSTRAINT hasmanaged_tname_fk FOREIGN KEY (TName)
REFERENCES Team (TName);

ALTER TABLE HasManaged
ADD CONSTRAINT hasmanaged_mname_fk FOREIGN KEY (MName)
REFERENCES Manager (MName);

ALTER TABLE HasPlayedFor
ADD CONSTRAINT hasplayedfor_tname_fk FOREIGN KEY (TName)
REFERENCES Team (TName);

ALTER TABLE HasPlayedFor
ADD CONSTRAINT hasplayedfor_playerid_fk FOREIGN KEY (PlayerID)
REFERENCES Player (PlayerID);

ALTER TABLE FixturePlayed
ADD CONSTRAINT fixtureplayed_fid_fk FOREIGN KEY (FixtureID)
REFERENCES Fixture (FixtureID);

ALTER TABLE FixturePlayed
ADD CONSTRAINT fixtureplayed_tname_fk FOREIGN KEY (TName)
REFERENCES Team (TName);

ALTER TABLE GKStats
ADD CONSTRAINT gkstats_playid_fk FOREIGN KEY (PlayID)
REFERENCES Player (PlayerID);  