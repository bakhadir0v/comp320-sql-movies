SELECT title, genre, runtime
FROM movies m 
WHERE CAST(runtime AS INTEGER) = (
  SELECT MAX(CAST(runtime AS INTEGER))
  FROM movies 
  WHERE genre = m.genre
);