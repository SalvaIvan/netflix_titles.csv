#Conexión y Exploración Inicial:
SELECT * FROM netflix_test.netflix_limpio;


DESCRIBE netflix_test.netflix_limpio;

SHOW COLUMNS FROM netflix_test.netflix_limpio;

#Top 10 países con más títulos en Netflix:
SELECT country, COUNT(*) AS title_count
FROM netflix_test.netflix_limpio
GROUP BY country
ORDER BY title_count DESC
LIMIT 10;

#Géneros más populares:
SELECT type, COUNT(*) AS type_count
FROM netflix_test.netflix_limpio
GROUP BY type
ORDER BY type_count DESC;

#Cantidad de títulos lanzados por año:
SELECT release_year, COUNT(*) AS title_count
FROM netflix_test.netflix_limpio
GROUP BY release_year
ORDER BY release_year;
