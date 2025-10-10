/*
Autor: Irving Rodríguez
Fecha: 09-10-2025
Base de datos: MySQL Workbench 8.0
Descripción: Muestra las series lanzadas después del año 2020.
Temas: SELECT, WHERE, operadores relacionales
*/

SELECT titulo, año_lanzamiento 
FROM series 
WHERE año_lanzamiento > 2020;
