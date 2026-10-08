SELECT * FROM (SELECT title, genre, worldwide
FROM movies
WHERE genre = 'Sci-Fi'
ORDER BY worldwide DESC limit (SELECT FLOOR(COUNT(*) * 0.2) FROM movies WHERE genre = 'Sci-Fi'))
ORDER BY title; 