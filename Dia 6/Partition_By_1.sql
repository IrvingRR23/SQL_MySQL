SELECT 
titulo,
temporada,
fecha_estreno,
ROW_NUMBER() OVER(
	PARTITION BY temporada
    ORDER BY fecha_estreno DESC
) AS ranking_temporada
FROM Episodios