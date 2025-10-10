SELECT Series.titulo AS "Título de la Serie",
Episodios.titulo AS "Título del Episodio",
Episodios.duracion AS "Duración" 
FROM Episodios
RIGHT JOIN Series
ON Episodios.serie_id = Series.serie_id
WHERE Episodios.duracion > 30
ORDER BY Series.titulo ASC
