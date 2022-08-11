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
 3.)Borre un animal que ya no va a ser atendido. Para ello consulte antes en el historial, algún animal que ya no sea atendido desde hace mucho tiempo..
 */

--Punto 1) Creación de la base de datos y sus respectivas tablas
CREATE DATABASE peluqueria_canina3;

USE peluqueria_canina3;

CREATE TABLE
    `dueno` (
        `DNI` INT NOT NULL,
        `Nombre` VARCHAR(25) NOT NULL,
        `Apellido` VARCHAR(25) NOT NULL,
        `Telefono` INT NULL,
        `Direccion` VARCHAR(50) NULL,
        PRIMARY KEY (`DNI`)
    );

CREATE TABLE
    `perro` (
        `ID_Perro` INT NOT NULL,
        `Nombre` VARCHAR(25) NOT NULL,
        `Fecha_nac` DATE NULL,
        `Sexo` VARCHAR(6) NULL,
        `DNI_dueno` INT NOT NULL,
        PRIMARY KEY (`ID_Perro`),
        INDEX `DNI_dueno_idx` (`DNI_dueno` ASC) VISIBLE,
        CONSTRAINT `DNI_dueno` FOREIGN KEY (`DNI_dueno`) REFERENCES `peluqueria_canina`.`dueno` (`DNI`) ON DELETE NO ACTION ON UPDATE NO ACTION
    );

CREATE TABLE
    `historial` (
        `ID_Historial` INT NOT NULL,
        `Fecha` DATE NOT NULL,
        `Perro` INT NOT NULL,
        `Descripcion` VARCHAR(200) NULL,
        `Monto` INT NOT NULL,
        PRIMARY KEY (`ID_Historial`),
        INDEX `Perro_idx` (`Perro` ASC) VISIBLE,
        CONSTRAINT `Perro` FOREIGN KEY (`Perro`) REFERENCES `peluqueria_canina`.`perro` (`ID_Perro`) ON DELETE NO ACTION ON UPDATE NO ACTION
    );

--Punto 2) Insertado de dueños, animales e historial
INSERT INTO
    `dueno` (
        `DNI`,
        `Nombre`,
        `Apellido`,
        `Telefono`,
        `Direccion`
    )
VALUES (
        '40172056',
        'Juan',
        'Marquez',
        '34245605',
        'Echague 482'
    ), (
        '36948372',
        'Josefina',
        'Gonzalez',
        '34275830',
        'Pedro Zenteno 2254'
    ), (
        '31268953',
        'Mario',
        'Lorea',
        '34259838',
        '9 de Julio 1130'
    );

INSERT INTO
    `perro` (
        `ID_Perro`,
        `Nombre`,
        `Fecha_nac`,
        `Sexo`,
        `DNI_dueno`
    )
VALUES (
        '1',
        'Umma',
        '2016-10-13',
        'Hembra',
        '26172056'
    ), (
        '2',
        'Toto',
        '2020-06-24',
        'Macho',
        '36948372'
    ), (
        '3',
        'Frida',
        '2014-03-08',
        'Hembra',
        '40268953'
    );

INSERT INTO
    `historial` (
        `ID_Historial`,
        `Fecha`,
        `Perro`,
        `Descripcion`,
        `Monto`
    )
VALUES (
        "1",
        '2021-11-07',
        '1',
        'Baño y corte de pelo',
        '1500'
    ), (
        "2",
        '2022-02-24',
        '2',
        'Limpieza del canal auditivo',
        '700'
    ), (
        "3",
        '2022-05-10',
        '3',
        'Baño',
        '1000'
    );

--Punto 3) Borrado de todo animal que NO haya sido atendido nuevamente desde fin de año del 2021
DELETE perro
FROM perro, historial
WHERE
    ID_Perro = Perro
    AND Fecha < '2021-12-31';