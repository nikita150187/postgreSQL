CREATE TABLE players (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100),
    join_date DATE
);

CREATE TABLE games (
    id SERIAL PRIMARY KEY,
    title VARCHAR(100),
    genre VARCHAR(50)
);

CREATE TABLE scores (
    id SERIAL PRIMARY KEY,
    player_id INTEGER REFERENCES players(id),
    game_id INTEGER REFERENCES games(id),
    score INTEGER,
    date_played DATE
);
