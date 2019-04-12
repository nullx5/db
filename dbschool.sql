-- Before Add PATH mysql.exe

CREATE DATABASE escuela_db;

USE escuela_db;

CREATE TABLE alumnos(
	dni_al INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	nombre_al CHAR(15) NOT NULL,
	apellido1_al CHAR(15) NOT NULL,
	apellido2_al CHAR(15) NOT NULL,
	edad_al INT,
	telefono_al CHAR(15),
	direccion_al CHAR(30),
	ciudad_al CHAR(15)	
);

CREATE TABLE profesores(
	dni_p INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
	nombre_p CHAR(15) NOT NULL,
	apellido1_p CHAR(15) NOT NULL,
	apellido2_a CHAR(15) NOT NULL,
	edad_p INT,
	telefono_P CHAR(15),
	direccion_p CHAR(30),
	ciudad_p CHAR(15),
	especialidad CHAR(20),
	n_cuenta CHAR(20)	
);

CREATE TABLE asignaturas(
	cod_as INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
	nombre_as CHAR(20) NOT NULL,
	creditos_as INT NOT NULL,
	facultad_as CHAR(50),
	id_dni_p INT,
	CONSTRAINT fk_asignaturas_profesores FOREIGN KEY (id_dni_p) REFERENCES profesores(dni_p) ON DELETE CASCADE ON UPDATE CASCADE		
);

CREATE TABLE alumnos_asignaturas(
	id_dni_al INT,
	id_cod_as INT,
	nota_al INT,
	CONSTRAINT fk_alumnos_asignaturas_alumnos FOREIGN KEY (id_dni_al) REFERENCES alumnos (dni_al) ON DELETE CASCADE ON UPDATE CASCADE,
	CONSTRAINT fk_alumnos_asignaturas_asignatura FOREIGN KEY (id_cod_as) REFERENCES asignaturas (cod_as) ON DELETE CASCADE ON UPDATE CASCADE
);