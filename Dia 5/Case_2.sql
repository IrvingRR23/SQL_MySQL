SELECT titulo,
CASE
	WHEN año_lanzamiento < 2010 THEN 'Antigua'
    ELSE 'Reciente'
    END AS 'Antigüedad'
FROM Series