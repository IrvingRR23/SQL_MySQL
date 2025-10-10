/*
Autor: Irving Rodríguez
Fecha: 09-10-2025
Base de datos: MySQL Workbench 8.0
Descripción: Consultas de análisis avanzadas sobre actores, series y episodios para obtener métricas de participación, rating y duración.
Temas: SELECT, COUNT, AVG, ORDER BY, funciones agregadas
*/

-- Pregunta 1
-- ¿Quién es el actor o actriz que ha participado en la mayor cantidad de series?
SELECT actor_id, COUNT(serie_id) AS numero_de_series 
FROM actuaciones 
GROUP BY actor_id;

-- Pregunta 2
-- ¿Cuál es la serie con mejor rating promedio según IMDb?
SELECT serie_id, AVG(rating_imdb) AS rating_promedio 
FROM episodios 
GROUP BY serie_id
ORDER BY rating_promedio DESC;

-- Pregunta 3
-- ¿Cuál es el episodio con la duración más larga?
SELECT * FROM episodios
ORDER BY duracion DESC;
