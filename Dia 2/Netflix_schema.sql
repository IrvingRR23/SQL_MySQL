/*
Autor: Irving Rodríguez
Fecha: 08-10-2025
Base de datos: MySQL Workbench 8.0
Descripción: Creación de tablas principales (Series, Episodios, Actores y Actuaciones) para la base de datos NetflixDB.
Temas: CREATE DATABASE, CREATE TABLE, PRIMARY KEY, FOREIGN KEY, relaciones muchos a muchos
Nota: Ejercicio implementado como parte del curso de SQL en Udemy.
*/


CREATE DATABASE IF NOT EXISTS NetflixDB;
USE NetflixDB;

-- Creación de la tabla Series
CREATE TABLE IF NOT EXISTS Series (
    serie_id INT AUTO_INCREMENT PRIMARY KEY,
    titulo VARCHAR(255) NOT NULL,
    descripcion TEXT,
    año_lanzamiento INT,
    genero VARCHAR(255)
);

-- Creación de la tabla Episodios
CREATE TABLE IF NOT EXISTS Episodios (
    episodio_id INT AUTO_INCREMENT PRIMARY KEY,
    serie_id INT,
    titulo VARCHAR(255) NOT NULL,
    duracion INT,
    rating_imdb DECIMAL(3,1),
    temporada INT,
    descripcion TEXT,
    fecha_estreno DATE,
    FOREIGN KEY (serie_id) REFERENCES Series(serie_id)
);

-- Creación de la tabla Actores
CREATE TABLE IF NOT EXISTS Actores (
    actor_id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(255) NOT NULL,
    fecha_nacimiento DATE
);

-- Creación de la tabla Actuaciones (relación muchos a muchos entre Actores y Series)
CREATE TABLE IF NOT EXISTS Actuaciones (
    actor_id INT,
    serie_id INT,
    personaje VARCHAR(255),
    FOREIGN KEY (actor_id) REFERENCES Actores(actor_id),
    FOREIGN KEY (serie_id) REFERENCES Series(serie_id),
    PRIMARY KEY (actor_id, serie_id)
);