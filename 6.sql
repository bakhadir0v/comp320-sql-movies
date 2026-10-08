SELECT title, genre, totalVotes
FROM movies m 
WHERE totalVotes = (
  SELECT MAX(totalVotes)
  FROM movies 
  WHERE genre = m.genre
);