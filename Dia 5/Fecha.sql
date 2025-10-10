/* Select titulo, fecha_estreno, 
DATE_ADD(fecha_estreno, INTERVAL -30 DAY) AS 
'Fecha de Estreno - 30 dias',
YEAR(fecha_estreno),
MONTH(fecha_estreno),
DAY(fecha_estreno) 
FROM episodios */
SELECT *,
DATEDIFF(CURDATE(), fecha_estreno) AS 'Dias desde el Estreno'
FROM episodios