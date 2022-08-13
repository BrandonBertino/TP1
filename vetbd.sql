CREATE DATABASE vet;
use vet;

CREATE TABLE dueno(
DNI bigint,
Nombre varchar(25),
Apellido varchar(25),
Telefono bigint,
Direccion varchar(50),
CONSTRAINT DNI_pk PRIMARY KEY(DNI));

INSERT INTO dueno VALUES(28957346,  "Darius",  "Di", 4789689, "Belgrano 101");
INSERT INTO dueno VALUES(23546987,  "Maria",  "Perez", 4789689,  "Pueyrredon  811");

CREATE TABLE perro(
ID_Perro int,
Nombre varchar(25),
Fecha_nac date,
Sexo char,
DNI_dueno bigint,
CONSTRAINT ID_Perro PRIMARY KEY(ID_Perro),
CONSTRAINT DNI_dueno foreign key(DNI_dueno) REFERENCES dueno(DNI)
);

INSERT INTO perro VALUES(13,  "Alfio",  '2012-12-12' , 'H', 28957346);
INSERT INTO perro VALUES(14,  "Fido",  '2012-12-12' , 'M', 23546987);


CREATE TABLE historial(
ID_Historial int,
Fecha date,
Perro int,
Descripcion varchar(100),
Monto float,
CONSTRAINT ID_Historial PRIMARY KEY(ID_Historial),
CONSTRAINT ID_perro foreign key(Perro) REFERENCES perro(ID_Perro)
);


INSERT INTO historial VALUE(1, '2018-09-15', 13, "Peluqueria", 2350.00);
INSERT INTO historial VALUE(2, '2018-11-16', 13, "Atención Clínica", 5960.00);
INSERT INTO historial VALUE(3, '2022-07-12', 13, "Castración", 23000.00);
INSERT INTO historial VALUE(4, '2022-07-15', 14, "Peluqueria", 3540.00);
INSERT INTO historial VALUE(5, '2022-07-25', 14, "Atención Clínica", 6500.00);

SELECT perro.Nombre AS "nombre_perro", dueno.DNI, dueno.nombre AS "nombre_due" FROM perro INNER JOIN dueno WHERE perro.DNI_dueno = dueno.DNI AND dueno.Nombre="Pedro";
