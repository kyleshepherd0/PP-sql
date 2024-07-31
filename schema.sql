CREATE TABLE Team_statistics (
    year INT,
    team VARCHAR(100),
    srs DOUBLE PRECISION,
    osrs DOUBLE PRECISION,
    dsrs DOUBLE PRECISION,
    qbr DOUBLE PRECISION,
    dpr DOUBLE PRECISION
);

\COPY Team_statistics FROM '/Users/kyleshepherd/Downloads/ParlayPerfector/sql/data/fullTeamData.csv' DELIMITER ',' CSV HEADER;

create table nfl_schedule( 
    year INT, 
    week INT,
    home_team VARCHAR(100),
    away_team VARCHAR(100),
    home_points INT,
    margin INT,
    total INT
);