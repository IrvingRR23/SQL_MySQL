SELECT titulo, año_lanzamiento,
CASE
	WHEN año_lanzamiento >= 2020 THEN 'Nueva'
    WHEN año_lanzamiento between 2010 AND 2019 THEN 'Clasica'
    ELSE 'Antigua'
    END AS Categoria
FROM series