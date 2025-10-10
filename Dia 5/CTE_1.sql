WITH FechasMinimas AS (
	SELECT 
	Series.serie_id,
	min(Episodios.fecha_estreno) As Min_fecha
	FROM Series
	INNER JOIN Episodios
	ON Series.serie_id = Episodios.serie_id
	GROUP BY Series.serie_id
)

SELECT
FechasMinimas.Min_fecha AS 'Fecha de Estreno',
FechasMinimas.serie_id AS 'Serie ID',
Series.titulo AS 'Titulo de la Serie',
Episodios.episodio_id AS 'Episodio ID',
Episodios.titulo AS 'Titulo del Episodio'
FROM FechasMinimas
INNER JOIN Episodios
ON FechasMinimas.serie_id = Episodios.serie_id
AND FechasMinimas.Min_fecha = Episodios.fecha_estreno
AND Episodios.episodio_id = (
	SELECT MIN(E2.episodio_id)
    FROM Episodios E2
    WHERE E2.serie_id = Episodios.serie_id
		AND e2.fecha_estreno = Episodios.fecha_estreno
)
JOIN Series
ON FechasMinimas.serie_id = Series.serie_id
ORDER BY series.FechasMinimas.Min_fecha