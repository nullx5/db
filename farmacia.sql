-- CREATE DATABASE farmacia;

USE farmacia;

-- TABLA MEDICAMENTOS Y DATOS
CREATE TABLE medicamento(
	idmedicamento INT PRIMARY KEY AUTO_INCREMENT,
	nombre VARCHAR(60),
	idtipo INT,          -- FOREIGN KEY OF TABLE tipo
	f_ingreso DATE,
	f_vencimiento DATE,
	PVP FLOAT(8,2),
	existencia VARCHAR(2),
	idpresentacion INT,  -- FOREIGN KEY OF TABLE  presentacion
	contraindicaciones TEXT,
	unidad VARCHAR(50),
	posologia_rec VARCHAR(60),
	cant_pres INT(5),
	idlaboratorio INT    -- FOREIGN KEY OF TABLE  laboratorio
);

INSERT INTO medicamento (nombre, idtipo, f_ingreso, f_vencimiento, PVP, existencia, idpresentacion, contraindicaciones, unidad, posologia_rec, cant_pres, idlaboratorio)
VALUES ("acetaminofen", 13, "2018/06/03", "2020/06/03", 2000, "SI", 17, "daño renal", 10, "1 cada 8 horas", 20, 4),
("amoxicilina", 10,"2018/01/02", "2020/01/02", 4000, "SI", 16, "diarrea-vomito", 10, "1 cada 6 horas", 30, 6),
("lomecan", 17, "2018/02/03", "2020/02/03", 20000, "SI", 12, "hipersensibilidad", 10, "1 en la noche", 10, 5),
("metronidazol", 12, "2018/03/03", "2020/03/03", 3000, "SI", 3, "nauseas,vomito estreñimiento", 10, "1 cada 8 horas", 30, 4),
("milanta", 14, "2018/04/06", "2020/04/04", 5000, "SI", 2, "debilidad muscular", 1, "3 veces al dia", 1, 3),
("pangetan", 15, "2018/04/05", "2020/04/05", 3000, "SI", 16, "somnolencia, mareos", 10, "1 cada 6 horas", 10, 6),
("aspirina", 13, "2018/03/10", "2020/03/10", 1000, "SI", 3, "alergia al componente", 2, "1 cada 8 horas", 10, 8),
("alcohol", 19, "2018/04/09", "2020/04/09", 40000, "SI", 6, "alteracion de la tiroides", 1, "en caso de heridas", 1, 10),
("voltaren", 3, "2018/05/05", "2020/05/05", 6000, "SI", 4, "alergia, irritacion", 1, "masajes", 1, 12),
("mexana", 8, "2018/01/06", "2020/01/06", 8000, "SI", 8, "paralisis muscular", 1, "uso diario", 1, 15),
("isodine", 19, "2018/05/05", "2020/05/05", 6500, "SI", 14, "altera la flora oral", 1, "desinfectar heridas", 1, 7),
("mebucaina", 6, "2018/07/05", "2020/07/05", 3500, "SI", 17, "irritacion oral", 4, "1 cada 8 horas", 12, 6),
("decadron", 10, "2018/02/02", "2020/02/02", 9500, "SI", 14, "insomnio, alergia", 1, "2 gotas 2 veces diarias", 1, 2),
("ibuprofeno", 6, "2018/07/05", "2020/07/05", 3000, "SI", 16, "mareo, vision borrosa", 10, "1 cada 6 horas", 10, 12),
("naproxeno", 13, "2018/04/02", "2020/04/02", 2000, "SI", 3, "somnolencia, mareos", 10, "1 cada 8 horas", 10, 13),
("diazepan", 16, "2018/01/03", "2020/01/03", 35000, "SI", 16, "somnolencia, debilidad", 10, "1/2 en la noche", 30, 17),
("bisolvon", 20, "2018/02/04", "2020/02/04", 10000, "SI", 2, "vomito, diarrea", 1, "3 cucharadas al dia", 1, 1),
("dristan", 4, "2018/07/03", "2020/07/03", 1500, "SI", 8, "ritmo cardiaco acelerado", 1, "1 en la noche", 3, 19),
("loratadina", 11, "2018/09/09", "2020/09/09", 25000, "SI", 2, "nerviosismo, dolor de cabeza",	1, "1 en la noche", 20, 16),
("belara", 19, "2018/05/01", "2020/05/01", 20000, "SI", 9, "colico o ausencia menstrual", 1, "1 cada 28 dias", 1, 20);

-- TABLA TIPO Y DATOS
CREATE TABLE tipo(
	idtipo INT PRIMARY KEY AUTO_INCREMENT,
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
("anciolitico"),
("antiinfeccioso"),
("antitusivo"),
("anticeptico"),
("mucolitico");

-- TABLA PRESENTACION Y DATOS
CREATE TABLE presentacion(
	idpresentacion INT PRIMARY KEY AUTO_INCREMENT,
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
	idlaboratorio INT PRIMARY KEY AUTO_INCREMENT,
	nombre VARCHAR(30)	
);

INSERT INTO laboratorio (nombre) VALUES ("Jhonson & Jhonson"),
("Pfizer"),
("Merck "),
("Bayer"),
("Genoma lab"),
("Genfar"),
("Biogen"),
("Abbott"),
("Adventia"),
("Regeneron"),
("Biotecnol"),
("Alcor"),
("Alergan"),
("Novartis"),
("Procaps"),
("Tecnoquimicas"),
("Lasante"),
("Baxter"),
("Biochem"),
("Chalver");

-- TABLA CLIENTE Y DATOS
CREATE TABLE cliente(
	idcliente INT PRIMARY KEY AUTO_INCREMENT,
	nombres VARCHAR(40),
	apellidos VARCHAR(40),
	direccion VARCHAR(80),
	celular VARCHAR(15),
	idtipodoc INT,  -- FOREIGN KEY OF TABLE tipo_documento
	idtipocli INT, -- FOREIGN KEY OF TABLE tipo_ciente
	correo_e VARCHAR(20),
	f_vencimiento DATE,
	n_documento VARCHAR(20)
);

INSERT INTO cliente (nombres, apellidos, direccion, celular, idtipodoc, idtipocli, correo_e, f_vencimiento, n_documento) VALUES ("Juan Carlos", "Diaz Leon", "calle 17 6-20", "3125678910", 3, 8, "jkld@gmail.com", "2021/09/08", "28678902"),
("Carmen", "Medina", "calle 13 5-21", "3127678415", 2, 6, "carmenmed@gmail.com", "2021/03/09", "28634911"),
("Maria ", "Rojas", "calle 10 6-22", "3225779910", 3, 10, "medina@gmail.com", "2021/10/13", "65568909"),
("Susana", "Perez", "calle 15 9-28", "3116679916", 1, 5, "susi@gmail.com", "2021/07/18", "24645956"),
("Carolina", "Herran", "calle 103 2-24", "3129658920", 3, 7, "carol@gmail.com", "2021/09/12", "34568902"),
("Marina", "Botero", "calle 9  9-25", "3148678917", 3, 4, "maribot@gmail.com", "2021/12/13", "68978923"),
("Jorge", "Suarez Diaz", "calle 1 7-20", "3168978956", 3, 3, "jorges@gmail.com", "2021/09/14", "45675609"),
("Pilar", "Gomez", "cra 3 9-08", "3125078915", 3, 2, "pilgom@gmail.com", "2021/05/18", "656789567"),
("Luz Mery", "Moreno", "cra 7 9-09", "3105778914", 3, 9, "lucym@gmail.com", "2021/01/30", "78978456"),
("Blanca", "Gonzalez", "calle 3 9-10", "3505674910", 3, 11, "blanc@gmail.com", "2021/08/17", "54778989"),
("Lilia", "Martinez", "cra 8 9-17", "3124870913", 3, 17, "liligo@gmail.com", "2021/12/30", "12278342"),
("Giovani", "Agulo", "cra 3 68-12", "3116670967", 3, 12, "giovan@gmail.com", "2021/09/19", "11178953"),
("Daniela", "Patiño", "calle 34 9-33", "3172671918", 3, 14, "dapati@gmail.com", "2021/05/20", "12378432"),
("Laura", "Avila Gomez", "cra 3 9-14", "3129679166", 3, 19, "laus@gmail.com", "2021/03/31", "678789478"),
("Sara Sofia", "Henao", "cra 56 92-15", "3125654145", 3, 17, "sarih@gmail.com", "2021/07/22", "67798792"),
("Gabriel", "Romero", "calle 35 67 89", "3113738980", 3, 13, "gabo@gmail.com", "2021/04/19", "89778900"),
("Ana", "Beltran", "cra 55 67-90", "3124674310", 3, 20, "anabel@gmail.com", "2021/05/24", "111789872"),
("Janeth", "Duarte", "calle 37 97-91", "3146370913", 3, 18, "jaduar@gmail.com", "2021/11/11", "67754302"),
("Rubiela", "Guzman", "cra 35 67-92", "3125548913", 3, 16, "rubyguz@gmail.com", "2021/09/26", "11111780"),
("Danna", "Mejia", "calle 65  6-93", "3216773100", 3, 1, "dannasmj@gmail.com", "2021/13/14", "567819654");

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
	idtipocli INT PRIMARY KEY AUTO_INCREMENT,
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
	idmedico INT PRIMARY KEY AUTO_INCREMENT,
	nombre VARCHAR(60),
	idesp INT -- FOREIGN KEY OF TABLE especialidad
);

INSERT INTO medico (nombre, idesp) VALUES ("Jorge Romero", 5), 
("Marina Leon", 4), 
("Carolina Herrera", 3), 
("Roberto Perez", 2), 
("Carlos Marin", 1), 
("Victor Rojas", 6), 
("Jorge Moreno", 7), 
("Luisa Gomez", 8), 
("Manuel Rojas", 9), 
("Marian Blanco", 10),
("Juan Leon", 15),
("Carlos Diaz", 14),
("Susana Rondon", 13),
("Pedro Molina", 12),
("Luis Mateus", 11),
("Marco Barrientos", 16),
("Cristina Aguilera", 17),
("Edgar Cood", 18),
("Adolfo Echeverry", 19),
("Jose Moreno", 20);

-- TABLA ESPECIALIDAD Y DATOS
CREATE TABLE especialidad(
	idesp INT PRIMARY KEY AUTO_INCREMENT,
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
("Gastroenterologia"),
("Dermatologia"),
("Obstetricia"),
("Otorrinolaringologia"),
("Traumatologia"),
("Inmunologia"),
("Neurofisiologia"),
("Microbiologia"),
("Parasitologia");

-- TABLA RECETA Y DATOS
CREATE TABLE receta(
	idreceta INT PRIMARY KEY AUTO_INCREMENT,
	idcliente INT,   -- FOREIGN KEY OF TABLE cliente
	idmedico INT,   -- FOREIGN KEY OF TABLE medico
	f_generacion DATE
);

INSERT INTO receta (idcliente, idmedico, f_generacion) VALUES (5, 4, "2019/17/04"),
(3, 8, "2019/15/04"),
(7, 2, "2019/11/04"),
(9, 5, "2019/10/04"),
(2, 7, "2019/07/04"),
(1, 9, "2019/09/04"),
(6, 1, "2019/05/04"),
(8, 3, "2019/07/04"),
(11, 5, "2019/07/04"),
(12, 7, "2019/06/04"),
(10, 11, "2019/06/04"),
(16, 13, "2019/05/04"),
(17, 15, "2019/05/04"),
(20, 17, "2019/04/04"),
(19, 19, "2019/04/04"),
(14, 20, "2019/04/04"),
(16, 12, "2019/05/04"),
(9, 14, "2019/05/04"),
(15, 16, "2019/02/04"),
(18, 18, "2019/02/04");

-- TABLA RECETA_MEDICAMENTO Y DATOS
CREATE TABLE receta_medicamento(
	id INT PRIMARY KEY AUTO_INCREMENT,
	idmedicamento INT, -- FOREIGN KEY OF TABLE  medicamento
	cantidad INT(4),
	dosis VARCHAR(30),
	frecuencia VARCHAR (30)
);
