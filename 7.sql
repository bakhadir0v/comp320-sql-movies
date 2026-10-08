SELECT title, genre, rating
FROM movies m
WHERE rating = (
  SELECT MAX(rating)
  FROM movies 
  WHERE genre = m.genre
);