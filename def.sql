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




 --Municipios
CREATE TABLE municipios(
    id serial PRIMARY KEY,
    name VARCHAR (50) UNIQUE NOT NULL
);
INSERT INTO municipios(name) VALUES ("Abasolo");
INSERT INTO municipios(name) VALUES ("Agualeguas");
INSERT INTO municipios(name) VALUES ("Los Aldamas");
INSERT INTO municipios(name) VALUES ("Allende");
INSERT INTO municipios(name) VALUES ("Anahuac");
INSERT INTO municipios(name) VALUES ("Apodaca");
INSERT INTO municipios(name) VALUES ("Aramberri");
INSERT INTO municipios(name) VALUES ("Bustamante");
INSERT INTO municipios(name) VALUES ("Cadereyta Jimenez");
INSERT INTO municipios(name) VALUES ("Carmen");
INSERT INTO municipios(name) VALUES ("Cerralvo");
INSERT INTO municipios(name) VALUES ("Cienega de Flores");
INSERT INTO municipios(name) VALUES ("China");
INSERT INTO municipios(name) VALUES ("Dr. Arroyo");
INSERT INTO municipios(name) VALUES ("Dr. Coss");
INSERT INTO municipios(name) VALUES ("Dr. Gonzalez");
INSERT INTO municipios(name) VALUES ("Galeana");
INSERT INTO municipios(name) VALUES ("Garcia");
INSERT INTO municipios(name) VALUES ("San Pedro Garza Garcia");
INSERT INTO municipios(name) VALUES ("Gral. Bravo");
INSERT INTO municipios(name) VALUES ("Gral. Escobedo");
INSERT INTO municipios(name) VALUES ("Gral. Teran");
INSERT INTO municipios(name) VALUES ("Gral. Trevi");
INSERT INTO municipios(name) VALUES ("Gral. Zaragoza");
INSERT INTO municipios(name) VALUES ("Gral. Zuazua");
INSERT INTO municipios(name) VALUES ("Guadalupe");
INSERT INTO municipios(name) VALUES ("Los Herreras");
INSERT INTO municipios(name) VALUES ("Higueras");
INSERT INTO municipios(name) VALUES ("Hualahuises");
INSERT INTO municipios(name) VALUES ("Iturbide");
INSERT INTO municipios(name) VALUES ("Juarez");
INSERT INTO municipios(name) VALUES ("Lampazos de Naranjo");
INSERT INTO municipios(name) VALUES ("Linares");
INSERT INTO municipios(name) VALUES ("Marin");
INSERT INTO municipios(name) VALUES ("Melchor Ocampo");
INSERT INTO municipios(name) VALUES ("Mier y Noriega");
INSERT INTO municipios(name) VALUES ("Mina");
INSERT INTO municipios(name) VALUES ("Montemorelos");
INSERT INTO municipios(name) VALUES ("Monterrey");
INSERT INTO municipios(name) VALUES ("Paras");
INSERT INTO municipios(name) VALUES ("Pesqueria");
INSERT INTO municipios(name) VALUES ("Los Ramones");
INSERT INTO municipios(name) VALUES ("Rayones");
INSERT INTO municipios(name) VALUES ("Sabinas Hidalgo");
INSERT INTO municipios(name) VALUES ("Salinas Victoria");
INSERT INTO municipios(name) VALUES ("San Nicolas de los Garza");
INSERT INTO municipios(name) VALUES ("Hidalgo");
INSERT INTO municipios(name) VALUES ("Santa Catarina");
INSERT INTO municipios(name) VALUES ("Santiago");
INSERT INTO municipios(name) VALUES ("Vallecillo");
INSERT INTO municipios(name) VALUES ("Villaldam");
