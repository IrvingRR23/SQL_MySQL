WITH epi_info AS(
	SELECT 
		serie_id,
		COUNT(episodio_id) AS numero_episodios,
		AVG(rating_imdb) AS rating_imdb_promedio
	FROM episodios
	GROUP BY serie_id
)

SELECT 
	Series.titulo,
	epi_info.numero_episodios,
    epi_info.rating_imdb_promedio
FROM epi_info
INNER JOIN Series
ON epi_info.serie_id = Series.serie_id
ORDER BY epi_info.rating_imdb_promedio DESC