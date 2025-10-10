# 💾 SQL_MySQL — Prácticas y Proyectos en MySQL Workbench

**Autor:** Irving Rodríguez Rodríguez  
**Base de datos:** MySQL Workbench 8.0  
**Estado:** En desarrollo continuo 🚀  

---

## 📚 Descripción general

Este repositorio contiene mis **prácticas, ejercicios y proyectos realizados en MySQL Workbench**, organizados por días de estudio.  
Cada carpeta representa una sesión práctica del curso, con scripts SQL, consultas, y proyectos enfocados en dominar los fundamentos y temas avanzados del lenguaje **SQL**.

El objetivo de este repositorio es **documentar mi progreso y dominio de SQL**, mostrando buenas prácticas en consultas, modelado, documentación y optimización.

---

## Estructura del repositorio

| Carpeta | Contenido principal | Enfoque |
|----------|----------------------|----------|
| `Día 1` | Introducción teórica al lenguaje SQL | Conceptos fundamentales |
| `Día 2` | Creación de esquema y carga de datos | Proyecto “NetflixDB”: base de datos relacional con tablas de Series, Actores, Episodios y Actuaciones |
| `Día 3` | Consultas SQL básicas e intermedias | Filtrado, ordenamiento, agrupación y funciones agregadas aplicadas sobre la base “NetflixDB” |
| `Día 4` | Combinaciones de tablas (JOINS) | Prácticas con `INNER JOIN`, `LEFT JOIN`, `RIGHT JOIN` y `UNION ALL` para combinar información entre múltiples tablas |
| `Día 5` | Subconsultas, CTEs y funciones avanzadas | Uso de `CASE`, `IF`, `CTE`, subconsultas, funciones matemáticas y de cadena, y desarrollo del **Proyecto Día 5** |



*(Esta lista se actualizará conforme avance el proyecto.)*

---

## 🧠 Temas cubiertos

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
