\c ipl;

CREATE TABLE matches(id integer,
season varchar(50),
city varchar(50),
date varchar(50),
team1 varchar(100),
team2 varchar(100),
toss_winner varchar(100),
toss_decision varchar(50),
result varchar(50),
dl_applied integer,
winner varchar(100),
win_by_runs integer,
win_by_wickets integer,
player_of_match varchar(100),
venue varchar(100),
umpire1 varchar(100),
umpire2 varchar(100),
umpire3 varchar(100),
PRIMARY KEY(id));

COPY matches(id,
season,
city,
date,
team1,
team2,
toss_winner,
toss_decision,
result,
dl_applied,
winner,
win_by_runs,
win_by_wickets,
player_of_match,
venue,
umpire1,
umpire2,
umpire3) FROM '/karan/IPL_Project1/matches.csv' DELIMITER ',' CSV HEADER;

CREATE TABLE deliveries(match_id integer,
inning integer,
batting_team varchar(100),
bowling_team varchar(100),
over integer,
ball integer,
batsman varchar(100), 
non_striker varchar(100),
bowler varchar(100),
is_super_over integer,
wide_runs integer,
bye_runs integer,
legbye_runs integer,
noball_runs integer,
penalty_runs integer,
batsman_runs integer,
extra_runs integer,
total_runs integer,
player_dismissed varchar(100),
dismissal_kind varchar(100),
fielder varchar(100));

COPY deliveries(match_id,
inning,
batting_team,
bowling_team,
over,
ball,
batsman,
non_striker,
bowler,
is_super_over,
wide_runs,
bye_runs,
legbye_runs,
noball_runs,
penalty_runs,
batsman_runs,
extra_runs,
total_runs,
player_dismissed,
dismissal_kind,
fielder) FROM '/karan/IPL_Project1/deliveries.csv' DELIMITER ',' CSV HEADER;
