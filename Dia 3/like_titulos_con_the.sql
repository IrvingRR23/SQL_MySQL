/*
Autor: Irving Rodríguez
Fecha: 09-10-2025
Base de datos: MySQL Workbench 8.0
Descripción: Muestra las series cuyo título contiene la palabra 'The'.
Temas: SELECT, WHERE, LIKE, comodines
*/

SELECT titulo FROM series
WHERE titulo LIKE "%The%";
