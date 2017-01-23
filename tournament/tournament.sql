-- Table definitions for the tournament project.
--
-- Put your SQL 'create table' statements in this file; also 'create view'
-- statements if you choose to use it.
--
-- You can write comments in this file by starting them with two dashes, like
-- these lines here.

DROP DATABASE IF EXISTS tournament;
CREATE DATABASE tournament;
\c tournament

CREATE TABLE players (
    name TEXT,
    id SERIAL,
    PRIMARY KEY(id)
);

CREATE TABLE matches (
    winner INTEGER,
    loser INTEGER,
    id SERIAL,
    PRIMARY KEY(id),
    FOREIGN KEY(winner) REFERENCES players (id),
    FOREIGN KEY(loser) REFERENCES players (id)
);

CREATE VIEW wins AS
SELECT players.id, count(winner) AS win_count
FROM players left join matches on players.id = matches.winner
GROUP BY players.id;

CREATE VIEW loses AS
SELECT players.id, count(loser) AS lose_count
FROM players left join matches on players.id = matches.loser
GROUP BY players.id;

CREATE VIEW standings AS
SELECT players.id, players.name, wins.win_count, wins.win_count + loses.lose_count
FROM players, wins, loses
WHERE players.id = wins.id and players.id = loses.id
ORDER BY wins.win_count;















