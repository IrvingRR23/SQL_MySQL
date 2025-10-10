/*
Autor: Irving Rodríguez
Fecha: 09-10-2025
Base de datos: MySQL Workbench 8.0
Descripción: Muestra los actores ordenados por fecha de nacimiento de más reciente a más antigua.
Temas: SELECT, ORDER BY, DESC
*/

SELECT nombre, fecha_nacimiento FROM actores
ORDER BY fecha_nacimiento DESC;
