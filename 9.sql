SELECT title, genre, worldwide
FROM movies m
WHERE (SELECT COUNT(*) FROM movies WHERE genre = m.genre AND worldwide > m.worldwide) <=
      (SELECT FLOOR(COUNT(*) * 0.2) FROM movies WHERE genre = m.genre);