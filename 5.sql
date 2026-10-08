SELECT title, genre, budget
FROM movies m
WHERE budget > (
  SELECT AVG(budget)
  FROM movies 
  WHERE genre = m.genre
);