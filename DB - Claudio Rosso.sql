
/*
PASOS POR CADA ESTUDIANTE: 

A. Crear Base de Datos y Tablas según Modelo Relacional.
B. Realizar puntos 1 y 2
C. Elegir algunos de los puntos 3 al 12 y agregarlo al script  
(diferentes entre cada uno de los integrantes)
D. Subir Script .sql con todos los puntos mencionados a su rama del GitHub grupal

1) Realice la consulta correspondiente para crear la tabla Perro, 
teniendo en cuenta sus claves foráneas y primarias.

2.) Inserte en la tabla correspondiente un nuevo animal (perro) como paciente
 y el dueño asociado a ese animal.

4.)Actualice la fecha de nacimiento de algún animal (perro) que usted considere.
*/

CREATE DATABASE peluqueria_canina

use peluqueria_canina

create table Dueño 
(
DNI_Dueño int primary key not null,
Nombre_Dueño varchar(15),
Apellido_Dueño varchar(15)
Telefono_Dueño int primary key not null,
Direccion_Dueño varchar(15),
)

create table Perro 
(
ID_Perro int primary key not null,
Nombre_Perro varchar(15),
FechaNacimiento_Perro date,
Sexo_Perro varchar(15),
DNI_Dueño2 int,
foreign key(DNI_Dueño2) references Dueño(DNI_Dueño)
)

create table Historial 
(
ID_Historial int primary key not null,
Fecha date,
Descripcion varchar(15),
Monto int,
ID_Perro2 int,
foreign key(ID_Perro2) references Perro(ID_Perro)
)

insert into Dueño values 
("1", "Diego", "Alvarez", "4786320", "Roma 122"), 
("2", "Pablo", "Rios", "4786458", "Milan 862"),
("3", "Juan", "Paz", "4853320", "Palermo 1552"),
("4", "Hugo", "Mendez", "4785550", "Junin 2225"),
("5", "Ana", "Ruiz", "4333320", "Belgrano 12"),

insert into Perro values 
("1", "Pepe", "2011-12-1", "Macho", "3"), 
("2", "Toby", "2014-2-3", "Macho", "4"),
("3", "Toto", "2013-8-22", "Macho", "2"),
("4", "Pety", "2020-12-5", "Hembra", "2"),
("5", "Black", "2018-4-20", "Macho", "5"),

insert into Perro values 
("1",  "2022-8-9","Corte pelo", "$1000", "3"), 
("2",  "2022-8-9", "Bañado","$600", "2"),
("3",  "2022-8-10","Corte uñas", "$400", "5"),
("4",  "2022-8-11","Bañado y peinado", "$900", "4"),
("5",  "2022-8-11","Bañado", "$600", "1"),

update Perros set FechaNacimiento_Perro = "2015-2-3" where ID_Perro = 2