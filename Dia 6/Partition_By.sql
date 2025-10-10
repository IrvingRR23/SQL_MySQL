SELECT 
titulo,
genero,
año_lanzamiento,
ROW_NUMBER() OVER(
	PARTITION BY genero
    ORDER BY año_lanzamiento 
) AS ranking_por_genero
FROM Series