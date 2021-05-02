DROP DATABASE IF EXISTS soccer_league;

CREATE DATABASE soccer_league;

\c soccer_league;

CREATE TABLE teams(
    id SERIAL PRIMARY KEY,
    name VARCHAR(15)
);

CREATE TABLE matches(
    id SERIAL PRIMARY KEY,
    team_1_id INT REFERENCES teams,
    team_2_id INT REFERENCES teams
);

CREATE TABLE players(
    id SERIAL PRIMARY KEY,
    name VARCHAR(50)
);

CREATE TABLE goals(
    player_id INT REFERENCES players,
    match_id INT REFERENCES matches
);

CREATE TABLE season (
    start_date DATE,
    end_date DATE
);