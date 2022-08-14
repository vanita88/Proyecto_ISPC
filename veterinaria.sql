create database veterinaria;
use veterinaria;
CREATE TABLE Dueno (
DNI INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
Nombre VARCHAR(15) NOT NULL,
Apellido VARCHAR(15) NOT NULL,
Telefono VARCHAR(50) NOT NULL,
Direccion VARCHAR(50) NOT NULL);

CREATE TABLE Perro (
ID_Perro INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
Nombre VARCHAR(50) NOT NULL,
Fecha_nac DATE NOT NULL,
Sexo VARCHAR(50) NOT NULL,
DNI_dueno VARCHAR(50) NOT NULL);

CREATE TABLE Historial (
ID_Historial INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
Fecha DATE NOT NULL,
Descripcion VARCHAR(50) NOT NULL,
Monto INT NOT NULL,
Perro INT NOT NULL);

ALTER TABLE Perro ADD CONSTRAINT Perro_DNI_dueno_Dueno_Direccion FOREIGN KEY (DNI_dueno) REFERENCES Dueno(Direccion);
ALTER TABLE Historial ADD CONSTRAINT Historial_Perro_Perro_DNI_dueno FOREIGN KEY (Perro) REFERENCES Perro(DNI_dueno);



insert into dueno(
DNI,
Nombre,
Apellido,
Telefono,
Direccion
)
VALUES (
        '3949384',
        'Pedro',
        'Soria',
        '3888228844',
        'Haiti 43'
    ), (
        '49829471',
        'Agustina',
        'Piolini',
        '388858664',
        'Colombia 43'
    ), (
        '56482019',
        'Magda',
        'Pior',
        '3888235563',
        'Consiglio 455'
    );
    
insert into perro(
ID_Perro,
Nombre,
Fecha_nac,
Sexo,
DNI_dueno
)
VALUES (
        '1',
        'Puppy',
        '2019-04-02',
        'Macho',
        '3949384'
    ), (
        '2',
        'Pancho',
        '2018-03-24',
        'Macho',
        '49829471'
    ), (
        '3',
        'Simona',
        '2021-10-18',
        'Hembra',
        '56482019'
    );
    
insert into historial(
ID_Historial,
Fecha,
Perro,
Descripcion,
Monto
)

VALUES (
        "1",
        '2021-04-12',
        '1',
        'vacunacion antirrabica',
        '1800'
    ), (
        "2",
        '2022-05-01',
        '2',
        'operacion de quiste',
        '5000'
    ), (
        "3",
        '2022-07-03',
        '3',
        'desparasitario',
        '3000'
    );
    
 
DELETE perro
FROM perro, historial
WHERE
    ID_Perro = Perro
    AND Fecha < '2021-12-31';
    


    
    