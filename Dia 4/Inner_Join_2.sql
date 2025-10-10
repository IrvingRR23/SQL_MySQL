SELECT Series.titulo AS titulo_serie, 
Episodios.titulo AS titulo_episodio,
duracion FROM Series
INNER JOIN Episodios
ON Series.serie_id = Episodios.serie_id
WHERE Series.titulo = "Stranger Things"
LIMIT 10