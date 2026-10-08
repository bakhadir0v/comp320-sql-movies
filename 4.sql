SELECT title
FROM movies
WHERE genre IN ('Romance', 'Sci-Fi')
GROUP BY title
HAVING count(*) > 1;