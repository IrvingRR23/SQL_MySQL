SELECT 
temporada,
titulo,
rating_imdb,
ROW_NUMBER() OVER (
	PARTITION BY temporada
    ORDER BY rating_imdb DESC
) AS 'Ranking IMDb'
FROM Episodios
WHERE serie_id = '2'