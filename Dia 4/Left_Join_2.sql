Select Series.titulo AS "Título de la Serie",
Episodios.titulo AS "Título del Episodio",
Episodios.rating_imdb AS "Rating IMDB"
From Series
Left Join Episodios
ON Series.serie_id = Episodios.serie_id
WHERE Series.titulo = "Stranger Things"
ORDER BY Episodios.rating_imdb DESC