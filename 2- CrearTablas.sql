CREATE TABLE dueno(
DNI bigint,
Nombre varchar(25),
Apellido varchar(25),
Telefono bigint,
Direccion varchar(50),
constraint DNI_pk PRIMARY KEY(DNI));

CREATE TABLE perro(
ID_Perro int,
Nombre varchar(25),
Fecha_nac date,
Sexo char,
DNI_dueno bigint,
CONSTRAINT ID_Perro PRIMARY KEY(ID_Perro),
CONSTRAINT DNI_dueno foreign key(DNI_dueno) REFERENCES dueno(DNI)
);

CREATE TABLE historial(
ID_Historial int,
Fecha date,
Perro int,
Descripcion varchar(100),
Monto float,
CONSTRAINT ID_Historial PRIMARY KEY(ID_Historial),
CONSTRAINT ID_Perro foreign key(Perro) REFERENCES perro(ID_Perro)
);
