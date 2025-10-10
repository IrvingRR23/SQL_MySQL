/*
Autor: Irving Rodríguez
Fecha: 09-10-2025
Base de datos: MySQL Workbench 8.0
Descripción: Muestra la duración total de episodios por temporada para una serie específica, filtrando aquellas con más de 400 minutos totales.
Temas: SELECT, SUM, GROUP BY, HAVING
*/

SELECT SUM(duracion) AS duracion_total, temporada  
FROM episodios 
WHERE serie_id = 2 
GROUP BY temporada 
HAVING SUM(duracion) > 400;
