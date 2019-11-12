/*
    La tabla programas guarda el formulario de PRAs en una sola peticion
    Los comentarios señalan las caracteristicas y el funcionamiento de 
    las partes de la base de datos
*/


CREATE TABLE IF NOT EXISTS pras( 
    id serial PRIMARY KEY,
    tipo_auditoria INTEGER REFERENCES tipo_auditoria(id),           --Llave externa de la tabla tipo_auditoria
    organo_fiscalizador INTEGER REFERENCES organo_fiscalizador(id), --Llave externa de la tabla organo_fiscalizador
    anio_cuenta_publica DATE,
    num_auditoria VARCHAR (50),
    tipo_entidad INTEGER REFERENCES tipo_entidad(id),               --Llave externa de la tabla tipo_entidad
    entidad INTEGER REFERENCES entidades(id) ,                      --Llave externa de la tabla entidades 
    estatus_auditoria INTEGER REFERENCES estatus_auditorias(id),    --Llave externa de la tabla estatus_auditorias
    fondo INTEGER REFERENCES fondos(id),                            --Llave externa de la tabla fondos
    inicio DATE, 
    cierre DATE, 
    municipio INTEGER REFERENCES municipios(id),                    --Llave externa de la tabla municipios
    obra VARCHAR(150),
    accion INTEGER REFERENCES acciones(id),                         --Llave externa de la tabla acciones
    observacion INTEGER REFERENCES observaciones(id),               --Llave externa de la tabla observaciones
    estatus_observacion INTEGER REFERENCES observaciones(id),       --Llave externa de la tabla estatus de observaciones
    clasificacion INTEGER REFERENCES clasificaciones(id),           --Llave externa de la tabla clasificaciones
    tipo INTEGER REFERENCES tipos(id),                              --Llave externa de la tabla tipos
    observado FLOAT,
    solventado FLOAT,
    pendiente_solventar FLOAT,
    reintegrar FLOAT,
    atendido FLOAT,
    pendiente_atender FLOAT,
    notificacion_solventacion DATE,
    observaciones VARCHAR(1024),
    documentos VARCHAR(512)
);




 -- Creacion del catalogo de auditorías
CREATE TABLE auditorias( 
    id serial PRIMARY KEY,
    name VARCHAR (50) UNIQUE NOT NULL
);
INSERT INTO auditorias(name) VALUES ("Financiera");
INSERT INTO auditorias(name) VALUES ("Desempeño");
INSERT INTO auditorias(name) VALUES ("Obra Pública");
INSERT INTO auditorias(name) VALUES ("Normativas");




 -- Creacion del catalogo de organo_fiscalizador
CREATE TABLE organo_fiscalizador( 
    id serial PRIMARY KEY,
    name VARCHAR (50) UNIQUE NOT NULL
);
INSERT INTO organo_fiscalizador(name) VALUES ("ASF");
INSERT INTO organo_fiscalizador(name) VALUES ("SFP");
INSERT INTO organo_fiscalizador(name) VALUES ("ASE");
INSERT INTO organo_fiscalizador(name) VALUES ("CYTG");




 /************** Entidades **************/

 /*
    Dos tablas una (tipo_entidad) con los tipos de entidad (Gobierno del Estado u Organismo)
    y otra (entidades) que contiene las dependencias del Gobierno junto con los organismos
    con una columna que especifica el tipo de entidad al que petenece. 
 */

 --Contiene el tipo de entidad del PRA
CREATE TABLE tipo_entidad(
    id serial PRIMARY KEY,
    name VARCHAR (50) UNIQUE NOT NULL
);
INSERT INTO tipo_entidad(name) VALUES ("Gobierno del Estado");
INSERT INTO tipo_entidad(name) VALUES ("Organismo");

 -- Contiene todos los valores de las Dependencias y Organismos, con una columna que especifica el tipo de entidad (Gobierno u Organismo)
CREATE TABLE entidades( 
    id serial PRIMARY KEY,
    name VARCHAR (50) UNIQUE NOT NULL,
    tipo_entidad INTEGER
);




 --Municipios
CREATE TABLE municipios(
    id serial PRIMARY KEY,
    name VARCHAR (50) UNIQUE NOT NULL
);
INSERT INTO municipios(name) VALUES 
("Abasolo"),
("Agualeguas"),
("Los Aldamas"),
("Allende"),
("Anahuac"),
("Apodaca"),
("Aramberri"),
("Bustamante"),
("Cadereyta Jimenez"),
("Carmen"),
("Cerralvo"),
("Cienega de Flores"),
("China"),
("Dr. Arroyo"),
("Dr. Coss"),
("Dr. Gonzalez"),
("Galeana"),
("Garcia"),
("San Pedro Garza Garcia"),
("Gral. Bravo"),
("Gral. Escobedo"),
("Gral. Teran"),
("Gral. Trevi"),
("Gral. Zaragoza"),
("Gral. Zuazua"),
("Guadalupe"),
("Los Herreras"),
("Higueras"),
("Hualahuises"),
("Iturbide"),
("Juarez"),
("Lampazos de Naranjo"),
("Linares"),
("Marin"),
("Melchor Ocampo"),
("Mier y Noriega"),
("Mina"),
("Montemorelos"),
("Monterrey"),
("Paras"),
("Pesqueria"),
("Los Ramones"),
("Rayones"),
("Sabinas Hidalgo"),
("Salinas Victoria"),
("San Nicolas de los Garza"),
("Hidalgo"),
("Santa Catarina"),
("Santiago"),
("Vallecillo"),
("Villaldam")
;

