SELECT 
	Series.titulo 'Titulo de la Serie', 
	Series.año_lanzamiento AS 'Año de Lanzamiento', 
	AVG(Episodios.rating_imdb) AS 'Rating Promedio',
	Series.Genero AS 'Género'
FROM 
	Series
JOIN Episodios
ON Series.serie_id = Episodios.serie_id
WHERE
	Series.genero IN (SELECT genero FROM (
					  SELECT genero, 
                      COUNT(serie_id)
                      FROM Series
					  GROUP BY genero
					  ORDER BY COUNT(serie_id) DESC
					  LIMIT 3)As Top3)
GROUP BY Series.serie_id
ORDER BY AVG(Episodios.rating_imdb) DESC
