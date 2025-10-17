# SQL_MySQL — Prácticas y Proyectos en MySQL Workbench

**Autor:** Irving Rodríguez Rodríguez  
**Base de datos:** MySQL Workbench 8.0  
**Estado:** En desarrollo continuo 

---

## Descripción general

Este repositorio contiene mis **prácticas, ejercicios y proyectos realizados en MySQL Workbench**, organizados por días de estudio.  
Cada carpeta representa una sesión práctica del curso, con scripts SQL, consultas, y proyectos enfocados en dominar los fundamentos y temas avanzados del lenguaje **SQL**.

El objetivo de este repositorio es **documentar mi progreso y dominio de SQL**, mostrando buenas prácticas en consultas, modelado, documentación y optimización.

---
| Carpeta  | Contenido principal                             | Enfoque                                                                                                                                                                                                                                                                                    |
| -------- | ----------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ |
| `Día 1`  | Introducción teórica al lenguaje SQL            | Conceptos fundamentales                                                                                                                                                                                                                                                                    |
| `Día 2`  | Creación de esquema y carga de datos            | Proyecto “NetflixDB”: base de datos relacional con tablas de Series, Actores, Episodios y Actuaciones                                                                                                                                                                                      |
| `Día 3`  | Consultas SQL básicas e intermedias             | Filtrado, ordenamiento, agrupación y funciones agregadas aplicadas sobre la base “NetflixDB”                                                                                                                                                                                               |
| `Día 4`  | Combinaciones de tablas (JOINS)                 | Prácticas con `INNER JOIN`, `LEFT JOIN`, `RIGHT JOIN` y `UNION ALL` para combinar información entre múltiples tablas                                                                                                                                                                       |
| `Día 5`  | Subconsultas, CTEs y funciones avanzadas        | Uso de `CASE`, `IF`, `CTE`, subconsultas, funciones matemáticas y de cadena, y desarrollo del **Proyecto Día 5**                                                                                                                                                                           |
| `Día 6`  | Funciones de ventana y análisis avanzado        | Implementación de `ROW_NUMBER`, `RANK`, `DENSE_RANK`, `PARTITION BY`, `REGEXP` y consultas con `CTE` para análisis de datos; incluye el **Proyecto Día 6**                                                                                                                                 |
| `Día 7`  | Diseño y modelado de bases de datos             | Creación de modelos entidad–relación en **MySQL Workbench**, análisis de **cardinalidades**, y generación de esquemas y datos (`empresa_schema.sql` y `empresa_data.sql`) para las bases de datos **Empresa** y **Librería**                                                               |
| `Día 8`  | Creación de tablas con comandos DDL, DML y CRUD | Uso de comandos `CREATE`, `ALTER`, `INSERT`, `UPDATE` y `DELETE`; implementación de **auto incrementos**, **índices**, gestión de **usuarios y permisos**, y desarrollo de tablas completas aplicando los principios de manipulación de datos                                              |
| `Día 9`  | Procedimientos almacenados y transacciones      | Creación y ejecución de **procedimientos almacenados** con parámetros de entrada y salida, manejo de **transacciones** con `COMMIT` y `ROLLBACK`, y desarrollo del **Proyecto Día 9** sobre operaciones automáticas y seguras en bases de datos relacionales                               |
| `Día 10` | Vistas y triggers                               | Creación de **vistas** (`CREATE VIEW`, `ALTER VIEW`) y pruebas de **disparadores** (`TRIGGER`) con `BEFORE`/`AFTER` en `INSERT`, `UPDATE` y `DELETE`; incluye el **Proyecto Día 10 – Vistas 1 y 2** (`Vistas.sql`, `Proyecto 10 - Vista.sql`, `Proyecto 10 - Vista 2.sql`, `Triggers.sql`) |
| `Día 11` | **Proyecto – Sistema de Reservas de Hotel**     | Desarrollo de un **sistema de reservas hoteleras** con tres tablas principales (`clientes`, `reservas`, `habitaciones`), uso de **claves foráneas**, **restricciones de integridad referencial** y relaciones **uno a muchos** para modelar la conexión entre huéspedes, reservas y habitaciones |

*(Esta lista se actualizará conforme avance el proyecto.)*

---

## Temas cubiertos

- Creación y modelado de bases de datos  
- Inserción y manipulación de datos  
- Filtrado y ordenamiento (`WHERE`, `ORDER BY`, `GROUP BY`)  
- Funciones agregadas (`COUNT`, `SUM`, `AVG`, `MIN`, `MAX`)  
- Combinaciones de tablas (`JOIN`, `UNION`, `INTERSECT`)  
- Subconsultas y expresiones comunes (`CTE`)  
- Condicionales (`CASE`, `IF`)  
- Funciones matemáticas y de cadena  
- Funciones de ventana (`ROW_NUMBER`, `RANK`, `DENSE_RANK`)  
- Creación de vistas, procedimientos almacenados y triggers  
- Optimización y buenas prácticas en consultas SQL  

---

## Ejemplo de formato de los scripts

Todos los archivos `.sql` están documentados siguiendo el siguiente encabezado:

```sql
/*
Autor: Irving Rodríguez
Fecha: 2025-10-08
Base de datos: MySQL Workbench 8.0
Descripción: Consulta para reporte mensual de ventas agrupadas por producto.
Temas: SELECT, JOIN, GROUP BY, SUM, ORDER BY
*/
