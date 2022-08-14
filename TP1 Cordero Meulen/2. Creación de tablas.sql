CREATE TABLE dueno(
DNI bigint,
NombreDueno varchar(25),
Apellido varchar(25),
Telefono bigint,
Dirección varchar(25));

CREATE TABLE perro(
ID_Perro int,
NombrePerro varchar(25),
Fech_nac date,
Sex char,
DNI_dueno bigint
);

CREATE TABLE historial(
ID_Historial int,
Fecha date,
Perro int,
Descripcion varchar(25),
Monto bigint
);
