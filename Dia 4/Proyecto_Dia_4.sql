-- Pregunta 1
SELECT genero, COUNT(serie_id) FROM series
group by genero
order by COUNT(serie_id) desc 

-- Pregunta 2
SELECT Series.titulo AS "Titulo de la Serie",
AVG(Episodios.rating_imdb) AS "Rating Promedio",
COUNT(Episodios.episodio_id) AS "Numero de episodios"
FROM Series
INNER JOIN Episodios
ON Series.serie_id = Episodios.serie_id
GROUP BY Series.titulo
ORDER BY AVG(Episodios.rating_imdb) DESC 
LIMIT 3

-- Pregunta 3

SELECT Series.titulo AS "Titulo de la Serie",
COUNT(Episodios.episodio_id) AS "Numero de Episodios",
SUM(Episodios.duracion) AS "Duracion Total de la Serie"
FROM Series
INNER JOIN Episodios
ON Series.serie_id = Episodios.serie_id
WHERE Series.titulo = "Stranger Things"
GROUP BY Series.titulo