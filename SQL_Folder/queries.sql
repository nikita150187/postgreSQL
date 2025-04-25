--  All Players and Their Scores
SELECT p.name, g.title, s.score
FROM players p
INNER JOIN scores s ON p.id = s.player_id
INNER JOIN games g ON s.game_id = g.id;



--  High Scorers
SELECT p.name, SUM(s.score) AS total_score
FROM players p
JOIN scores s ON p.id = s.player_id
GROUP BY p.name
ORDER BY total_score DESC
LIMIT 3;



-- Players Who Didn’t Play Any Games
SELECT p.name
FROM players p
LEFT JOIN scores s ON p.id = s.player_id
WHERE s.id IS NULL;



--  Popular Game Genres
SELECT g.genre, COUNT(s.id) AS games_played
FROM games g
JOIN scores s ON g.id = s.game_id
GROUP BY g.genre
ORDER BY games_played DESC
LIMIT 1;



--  Recently Joined Players
SELECT name
FROM players
WHERE join_date >= CURRENT_DATE - INTERVAL '30 days';



-- Players' Favorite Games
SELECT p.name, g.title, COUNT(s.id) AS play_count
FROM players p
JOIN scores s ON p.id = s.player_id
JOIN games g ON s.game_id = g.id
GROUP BY p.name, g.title
ORDER BY play_count DESC;
