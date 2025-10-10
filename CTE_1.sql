SELECT 
Series.serie_id, 
min(Episodios.fecha_estreno) As Min_fecha,
Episodios.episodio_id
FROM Series
INNER JOIN Episodios
ON Series.serie_id = Episodios.serie_id
GROUP BY Episodios.episodio_id