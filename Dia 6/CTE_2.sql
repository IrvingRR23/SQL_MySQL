WITH FechasMinimas AS (
	SELECT 
	Series.serie_id, 
	min(Episodios.fecha_estreno) As Min_fecha
	FROM Series
	INNER JOIN Episodios
	ON Series.serie_id = Episodios.serie_id
	GROUP BY Series.serie_id
)

SELECT COUNT(Episodios.episodio_id),
FechasMinimas.serie_id
FROM FechasMinimas
INNER JOIN Episodios
ON FechasMinimas.serie_id = Episodios.serie_id
GROUP BY FechasMinimas.serie_id