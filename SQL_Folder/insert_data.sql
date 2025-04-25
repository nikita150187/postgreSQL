INSERT INTO players (name, join_date)
VALUES 
    ('Peter', '2023-05-01'),
    ('Sara', '2024-03-12'),
    ('Molly', '2024-01-22'),
    ('Lina', '2024-04-01');

INSERT INTO games (title, genre)
VALUES 
    ('Game A', 'Action'),
    ('Game B', 'Strategy'),
    ('Game C', 'Action'),
    ('Game D', 'Puzzle');

INSERT INTO scores (player_id, game_id, score, date_played)
VALUES 
    (1, 1, 250, '2024-04-20'),
    (1, 2, 200, '2024-04-21'),
    (2, 1, 150, '2024-04-22'),
    (2, 3, 300, '2024-04-23'),
    (3, 3, 400, '2024-04-18'),
    (4, 4, 100, '2024-04-19');
