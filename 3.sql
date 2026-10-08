SELECT title, genre, rating, metacritic
FROM movies
WHERE metacritic IS NOT NULL
  AND metacritic != ''
  AND metacritic > (rating * 10);