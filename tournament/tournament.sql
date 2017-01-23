-- Table definitions for the tournament project.
--

CREATE TABLE players (
    name TEXT,
    id SERIAL,
    PRIMARY KEY(id)
);

CREATE TABLE matches (
    winner INTEGER,
    loser INTEGER
);

CREATE VIEW wins AS
SELECT players.id, count(winner) AS win_count
FROM players left join matches on players.id = matches.winner
GROUP BY players.id;

CREATE VIEW loses AS
SELECT players.id, count(loser) AS lose_count
FROM players left join matches on players.id = matches.loser
GROUP BY players.id;

