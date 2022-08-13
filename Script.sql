CREATE DATABASE Proyecto2022;
USE DATABASE Proyecto2022;


CREATE TABLE dueno(
DNI bigint,
Nombre varchar(25),
Apellido varchar(25),
Telefono bigint,
Direccion varchar(50),
CONSTRAINT DNI_pk PRIMARY KEY(DNI));

INSERT INTO dueno VALUES(45957346, 'Reynaldo', 'Suarez', 4789689, 'Gorriti 101');
INSERT INTO dueno VALUES(32948547, 'Clara', 'Pomilio', 4236884, 'Aguirre Camara 1545');

CREATE TABLE perro(
ID_Perro int,
Nombre varchar(25),
Fecha_nac date,
Sexo char,
DNI_dueno bigint,
CONSTRAINT ID_Perro PRIMARY KEY(ID_Perro),
CONSTRAINT ID_Perro1 foreign key(DNI_dueno) REFERENCES dueno(DNI));

INSERT INTO perro VALUES(13, 'Puppy', '2011-02-22' , 'M', 45957346);
INSERT INTO perro VALUES(14, 'Fido', '2013-07-13' , 'M', 32948547);

CREATE TABLE historial(
ID_Historial int,
Fecha date,
Perro int,
Descripcion varchar(100),
Monto float,
CONSTRAINT ID_Historial PRIMARY KEY(ID_Historial),
CONSTRAINT ID_dog foreign key(Perro) REFERENCES perro(ID_Perro));

INSERT INTO historial VALUES(1, '2018-09-15', 13, 'Peluqueria', 2350.00);
INSERT INTO historial VALUES(2, '2018-11-16', 13, 'Atención Clínica', 5960.00);
INSERT INTO historial VALUES(3, '2022-07-12', 13, 'Castración', 23000.00);
INSERT INTO historial VALUES(4, '2022-07-15', 14, 'Peluqueria', 3540.00);
INSERT INTO historial VALUES(5, '2022-07-25', 14, 'Atención Clínica', 6500.00);


--Realice la consulta correspondiente para crear la tabla Perro, teniendo en cuenta sus claves foráneas y primarias.

--Inserte en la tabla correspondiente un nuevo animal (perro) como paciente y el dueño asociado a ese animal.


INSERT INTO dueno VALUES(23546987, 'Mónica', 'Hache', 4359680, 'Córdoba 2525');
INSERT INTO dueno VALUES (32871645, 'Gisela', 'Lucero', 4258525,'Corrientes 1068');
INSERT INTO perro VALUES(15, 'Toto', '2016-08-20', 'M', 23546987);

INSERT INTO perro VALUES(16, 'Sasha', '2019-05-21', 'H', 32871645);


-- Ejercicio 7 - Obtener los ingresos percibidos en Julio del 2022:

SELECT * FROM historial WHERE Fecha>='2022-07-01' AND Fecha<'2022-08-01';

SELECT SUM(Monto) AS "Total_Julio_2022" 
FROM historial WHERE Fecha>='2022-07-01' AND Fecha<'2022-08-01';






