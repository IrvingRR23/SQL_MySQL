SELECT * FROM series 
INNER JOIN Episodios
ON Series.serie_id = Episodios.serie_id
LIMIT 10