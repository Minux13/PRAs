CREATE DATABASE pras;
\c pras

/*
    La tabla programas guarda el formulario de PRAs en una sola peticion
    Los comentarios señalan las caracteristicas y el funcionamiento de 
    las partes de la base de datos
*/


CREATE TABLE programas( 
    id serial PRIMARY KEY,
    tipo_auditoria INTEGER,             --Llave externa de la tabla tipo_auditoria
    organo_fiscalizador INTEGER,        --Llave externa de la tabla organo_fiscalizador
    anio_cuenta_publica DATE,
    num_auditoria VARCHAR (50),
    tipo_entidad INTEGER,               --Llave externa de la tabla tipo_entidad
    entidad INTEGER,                    --Llave externa de la tabla entidades 
    estatus_auditoria INTEGER,          --Llave externa de la tabla estatus_auditorias
    fondo INTEGER,                      --Llave externa de la tabla fondos
    inicio DATE, 
    cierre DATE, 
    municipio INTEGER,                  --Llave externa de la tabla municipios
    obra VARCHAR(150),
    accion INTEGER,                     --Llave externa de la tabla acciones
    observacion INTEGER,                --Llave externa de la tabla observaciones
    estatus_observacion INTEGER,        --Llave externa de la tabla estatus de observaciones
    clasificacion INTEGER,              --Llave externa de la tabla clasificaciones
    tipo INTEGER,                       --Llave externa de la tabla tipos
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


