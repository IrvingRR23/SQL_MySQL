/*
Autor: Irving Rodríguez
Fecha: 09-10-2025
Base de datos: MySQL Workbench 8.0
Descripción: Agrupa las series por año de lanzamiento y cuenta cuántas hay por cada año.
Temas: SELECT, COUNT, GROUP BY, ORDER BY
*/

SELECT año_lanzamiento, COUNT(año_lanzamiento) AS cantidad_de_series 
FROM series
GROUP BY año_lanzamiento
ORDER BY año_lanzamiento ASC;
