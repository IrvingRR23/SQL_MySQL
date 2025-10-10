SELECT 
	titulo,
    rating_imdb,
    DENSE_RANK() OVER (ORDER BY rating_imdb DESC) AS ranking_imdb
FROM Episodios