-- CREATE TABLE Teams (
--     id SERIAL PRIMARY KEY,
--     name VARCHAR(255),
--     abbreviation VARCHAR(10),
--     city VARCHAR(255)
-- );

-- CREATE TABLE Players (
--     id SERIAL PRIMARY KEY,
--     name VARCHAR(255),
--     team_id INT REFERENCES Teams(id),
--     position VARCHAR(50)
--     ranking INT,
--     year INT
-- );

-- CREATE TABLE Games (
--     id SERIAL PRIMARY KEY,
--     date DATE,
--     home_team_id INT REFERENCES Teams(id),
--     away_team_id INT REFERENCES Teams(id),
--     home_team_score INT,
--     away_team_score INT
-- );

-- CREATE TABLE Stats (
--     id SERIAL PRIMARY KEY,
--     player_id INT REFERENCES Players(id),
--     game_id INT REFERENCES Games(id),
--     stat_name VARCHAR(255),
--     stat_value FLOAT
-- );

CREATE TABLE Team_statistics (
    year INT,
    team VARCHAR(100),
    srs DOUBLE PRECISION,
    osrs DOUBLE PRECISION,
    dsrs DOUBLE PRECISION,
    qbr DOUBLE PRECISION,
    dpr DOUBLE PRECISION
);

\COPY Team_statistics(year, team, srs, osrs, dsrs, qbr, dpr) FROM '/sql/data/fullTeamData.csv' DELIMITER ',' CSV HEADER;

