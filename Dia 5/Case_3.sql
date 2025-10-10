SELECT titulo,
CASE
	WHEN genero = 'Drama' THEN 'Dramático'
    WHEN genero = 'Comedia' THEN 'Divertido'
    ELSE 'Otro'
    END AS 'Categoría de Género'
FROM Series