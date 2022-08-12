CREATE DATABASE peluqueria_canina;
USE peluqueria_canina;


CREATE TABLE Dueno
(
DNI_dueno int not null primary key, 
Nombre varchar(20),
Apellido varchar(20),
Telefono int,
Direccion varchar(20)
);

CREATE TABLE Perro
(
ID_perro int primary key not null,
Nombre varchar(20),
Fecha_Nacimiento date, 
Sexo varchar(20),
DNI_dueno1 int,
foreign key(DNI_dueno1) references Dueno(DNI_dueno)
);

CREATE TABLE Historial
(
ID_historial int primary key not null,
Fecha date, 
Descripcion varchar (30),
Monto int,
ID_perro1 int, foreign key(ID_perro1) references Perro(ID_perro)
);

insert into Dueno values 
("35632130", "Mariano", "Rodriguez", "4235678", "San Martin 50"),
("34698752", "Emilia", "Juarez", "4789652", "Mitre 500"),
("40365147", "Mariana", "Sanchez", "4236985", "Perales 1000"),
("22587312", "Victor", "Nieva", "4123658", "Belgrano 360"),
("30269854", "Ariel", "García", "4333320", "Rivadavia 577");

insert into Perro values 
("1", "Mandy", "2015-2-25", "Hembra", "35632130"), 
("2", "Kiko", "2020-1-7", "Macho", "40365147"),
("3", "Tomy", "2016-6-24", "Macho", "34698752"),
("4", "Alice", "2018-6-20", "Hembra", "30269854"),
("5", "Gromm", "2015-1-25", "Macho", "22587312");

insert into Historial values 
("1",  "2022-2-7","Corte", "500", "5"), 
("2",  "2022-5-7", "Baño","500", "1"),
("3",  "2022-7-8","Higiene dental", "200", "4"),
("4",  "2022-8-9","Combo completo", "1000", "2"),
("5",  "2022-8-10","Combo completo", "1000", "3");

SELECT *FROM Dueno;
UPDATE Dueno SET Direccion = 'Libertad 123' WHERE DNI_dueno = '40365147';











