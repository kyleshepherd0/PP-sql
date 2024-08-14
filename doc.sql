-- Different league schedules that are used
create table nfl_schedule( 
    year INT, 
    week INT,
    home_team VARCHAR(100),
    away_team VARCHAR(100),
    home_points INT,
    away_points INT,
    margin INT,
    total INT
);

create table nba_schedule (
    year INT,
    date DATE,
    home_team VARCHAR(100),
    away_team VARCHAR(100),
    home_points INT,
    away_points INT,
    margin INT,
    total INT
);

-- This is a template for every different team for lookup values
create table nba_team_{ID}(
    year INT,
    plyer INT,
    position VARCHAR(100),
    classification VARCHAR(100)
);

-- This is a template for each player's individual correlation table
create table nba_player_{ID}(
    prop INT,
    comparison DOUBLE,
    value DOUBLE
);

-- This is a template for each different sport's player lookup table with their assinged ID
create table nba_players(
    name VARCHAR(100),
    id INT
);