/*
Autor: Irving Rodríguez
Fecha: 09-10-2025
Base de datos: MySQL Workbench 8.0
Descripción: Muestra todas las series que no pertenecen a los géneros Drama ni Drama histórico.
Temas: SELECT, WHERE, NOT IN, exclusión de valores
*/

SELECT * FROM series
WHERE genero NOT IN ("Drama", "Drama histórico");
