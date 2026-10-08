SELECT genre, COUNT(*) AS movie_count
FROM movies
WHERE Rating > 8
GROUP BY genre;