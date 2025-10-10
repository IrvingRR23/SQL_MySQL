/*
Autor: Irving Rodríguez
Fecha: 09-10-2025
Base de datos: MySQL Workbench 8.0
Descripción: Filtra las series que pertenecen a los géneros Drama o Ciencia ficción.
Temas: SELECT, WHERE, OR
*/

SELECT * FROM series
WHERE (genero = "Drama" OR genero = "Ciencia ficción");
