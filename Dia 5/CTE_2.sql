WITH Conteo AS(
	SELECT s.año_lanzamiento AS año,
    COUNT(*) AS total
    FROM Series s
    WHERE genero = 'Ciencia ficción'
    GROUP BY año
)

SELECT año AS año_lanzamiento, 
total AS total_series
FROM Conteo