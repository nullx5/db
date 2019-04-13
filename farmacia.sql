CREATE DATABASE farmacia;

USE farmacia;

-- TABLA MEDICAMENTOS Y DATOS
CREATE TABLE medicamento(
	id_medicamento INT PRIMARY KEY AUTO_INCREMENT,
	nombre VARCHAR(60),
	id_tipo INT,          -- FOREIGN KEY OF TABLE tipo
	f_ingreso DATE,
	f_vencimiento DATE,
	PVP FLOAT(8,2),
	existencia VARCHAR(2),
	id_presentacion INT,  -- FOREIGN KEY OF TABLE  presentacion
	contraindicaciones TEXT,
	unidad VARCHAR(50),
	posologia_rec VARCHAR(60),
	cant_pres INT(5),
	id_laboratorio INT    -- FOREIGN KEY OF TABLE  presentacion
);

-- TABLA TIPO Y DATOS
CREATE TABLE tipo(
	id_tipo INT PRIMARY KEY AUTO_INCREMENT,
	nombre VARCHAR(30)		
);

INSERT INTO  tipo (nombre) VALUES ("antiestres"),
("antipiretico"),
("antiespasmodico"),
("antigripal"),
("antiviral"),
("antiinflamatorio"),
("diuretico"),
("anticonceptivo"),
("antidepresivo"),
("antibiotico"),
("antialergico"),
("antiparasitario"),
("analgesico"),
("antiacido"),
("antidiarreico"),
("laxante"),
("antiinfeccioso"),
("antitusivo"),
("antiulceroso"),
("mucolitico");

--TABLA PRESENTACION Y DATOS
CREATE TABLE presentacion(
	id_presentacion INT PRIMARY KEY AUTO_INCREMENT,
	nombre VARCHAR(30)	
);

INSERT INTO presentacion (nombre) VALUES ("gotas"),
("jarabe"),
("pastas"),
("unguento"),
("jalea"),
("spray"),
("inhalador"),
("polvo"),
("inyeccion"),
("aceite"),
("supositorio"),
("ovulos"),
("ducha"),
("solucion"),
("perlas"),
("capsula"),
("tabletas"),
("emulsion"),
("infusion"),
("granulado");

-- TABLA LABORATORIOS Y DATOS
CREATE TABLE laboratorio(
	id_laboratorio INT PRIMARY KEY AUTO_INCREMENT,
	nombre VARCHAR(30)	
);

INSERT INTO laboratorio (nombre) VALUES ("Jhonson & Jhonson"),
("Pfizer"),
("Merck & Co"),
("Abbie Inc"),
("Bristol-Myers Squibb"),
("Eli Lilly  and Company"),
("Biogen"),
("Abbott Laboratories"),
("Striker Corporation"),
("Regeneron"),
("Biotecnol"),
("ChinaGen"),
("Dabur"),
("Horizon Pharma"),
("Ionis"),
("Ipsen"),
("Grindecks"),
("Julphar"),
("Kimia"),
("McGuff");

-- TABLA CLIENTE Y DATOS
CREATE TABLE cliente(
	id_cliente INT PRIMARY KEY AUTO_INCREMENT,
	nombre VARCHAR(40),
	apellidos VARCHAR(40),
	direccion VARCHAR(80),
	celular VARCHAR(15),
	id_tipo_doc INT,  -- FOREIGN KEY OF TABLE tipo_documento
	id_tipo_clic INT, -- FOREIGN KEY OF TABLE tipo_ciente
	correo_e VARCHAR(20),
	f_vencimiento DATE,
	n_documento VARCHAR(20)
);

-- TABLA TIPO_DOCUMENTO Y DATOS
CREATE TABLE tipo_documento(
	id_tipo_doc INT PRIMARY KEY AUTO_INCREMENT,
	nombre VARCHAR(20)
);

INSERT INTO tipo_documento (nombre) VALUES ("R.C"),
("T.I"), 
("C.C"), 
("C.E");

-- TABLA TIPO_CLIENTE Y DATOS
CREATE TABLE tipo_cliente(
	id_tipo_cli INT PRIMARY KEY AUTO_INCREMENT,
	nombre VARCHAR(20)	
);

INSERT INTO tipo_cliente (nombre) VALUES ("sanitas"), 
("nueva eps"), 
("salud vida"), 
("compensar"), 
("famisanar"), 
("coomeva"), 
("medimas"), 
("comfenalco"), 
("saludcoop"), 
("aliansa salud"), 
("suramericana"), 
("salud total"), 
("cruz blanca"), 
("mutualser"), 
("coosalud"), 
("comfacor"), 
("comfamiliar"), 
("capresoca"), 
("emssanar"), 
("caprecom");

-- TABLA MEDICO Y DATOS
CREATE TABLE medico(
	id_medico INT PRIMARY KEY AUTO_INCREMENT,
	nombre VARCHAR(60),
	id_esp INT -- FOREIGN KEY OF TABLE especialidad
);

INSERT INTO medico (nombre) VALUES ("Jorge Romero"), 
("Marina Leon"), 
("Carolina Herrera"), 
("Roberto Perez"), 
("Carlos Marin"), 
("Victor Rojas"), 
("Jorge Moreno"), 
("Luiza Gomez"), 
("Manuel Rojas"), 
("Marian Blanco"),
("Juan Leon"),
("Carlos Diaz"),
("Susana Rondon"),
("Pedro Molina"),
("Luis Mateus"),
("Marco Barrientos"),
("Cristina Aguilera"),
("Edgar Cood"),
("Adolfo Echeverry"),
("Jose Morena");

-- TABLA ESPECIALIDAD Y DATOS
CREATE TABLE especialidad(
	id_esp INT PRIMARY KEY AUTO_INCREMENT,
	nombre VARCHAR(30)
);

INSERT INTO especialidad (nombre) VALUES ("ginecologia"),
("urologia"),
("geriatria"),
("cardiologia"),
("infectologia"),
("Neurologia"),
("Oftanmologia"),
("Oncologia"),
("Pediatria"),
("Psiquiatria"),
("Neurocirugia"),
("Angiologia"),
("Dermatologia"),
("Obstetricia"),
("Otorrinonaringologia"),
("Traumatologia"),
("Inmunologia"),
("Neurofisiologia"),
("Microbiologia"),
("Parasitologia");

-- TABLA RECETA Y DATOS
CREATE TABLE receta(
	id_receta INT PRIMARY KEY AUTO_INCREMENT,
	id_cliente INT,
	id_medico INT,
	f_generacion DATE
);

-- TABLA RECETA_MEDICAMENTO Y DATOS
CREATE TABLE receta_medicamento(
	id INT PRIMARY KEY AUTO_INCREMENT,
	id_medicamento INT, -- FOREIGN KEY OF TABLE  medicamento
	cantidad INT(4),
	dosis VARCHAR(30),
	frecuencia VARCHAR (30)
);
