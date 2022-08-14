CREATE DATABASE peluqueria_canina;
USE peluqueria_canina;

CREATE TABLE Cliente (
    DNI INT PRIMARY KEY NOT NULL,
    Nombre VARCHAR(15) NOT NULL,
    Apellido VARCHAR(15) NOT NULL,
    Telefono INT NOT NULL,
    Direccion VARCHAR(50) NOT NULL
);

CREATE TABLE Perro (
    IdPerro INT PRIMARY KEY NOT NULL,
    Nombre VARCHAR(10) NOT NULL,
    FechaNac DATE,
    Sexo VARCHAR(6) NOT NULL,
    DNI_Cliente INT NOT NULL,
    FOREIGN KEY (DNI_Cliente)
        REFERENCES Cliente (DNI)
);
 
CREATE TABLE Historial (
    IdHistorial INT PRIMARY KEY NOT NULL,
    Fecha DATE NOT NULL,
    Perro INT NOT NULL,
    Descripcion VARCHAR(30) NOT NULL,
    Monto INT NOT NULL,
    FOREIGN KEY (Perro)
        REFERENCES Perro (IdPerro)
);

INSERT INTO cliente VALUES
('37695231', 'Florencia', 'Gonzalez', '351487962', 'Tolosa 2531'),
('28956412', 'Juan', 'Gallardo', '357298647', 'Cartagena 2147'),
('31896745', 'Sandra', 'Perez', '351748963', 'Vigo 789'),
('17965741', 'Jose', 'Bravo', '351962584', 'La Coruña 1622'),
('32698456', 'Lucia', 'Sisterna', '386952695', 'Avenida Madrid 650');

INSERT INTO Perro VALUES
('1', 'Arya', '2018-04-14', 'Hembra', '17965741'),
('2', 'Palta', '2016-10-05', 'Macho', '31896745'),
('3', 'Kani', '2022-01-15', 'Hembra', '28956412'),
('4', 'Juani', '2019-03-17', 'Hembra', '37695231'),
('5', 'Muni', '2021-03-21', 'Macho', '32698456');

INSERT INTO historial values 
('1', '2022-07-14', '4', 'baño y corte', '1500'),
('2', '2022-07-24', '2', 'baño', '700'),
('3', '2022-07-05', '3', 'cancelacion de deuda', '2500'),
('4', '2022-07-10', '5', 'baño y corte', '1500'),
('5', '2022-07-02', '1', 'baño', '700');
------------------
INSERT INTO Perro VALUES
('6', 'Toby', '2022-04-07', 'Macho', '31896745');
------------------
SELECT 
    *
FROM
    Historial
ORDER BY fecha ASC;
------------------
SELECT 
    fecha, perro, nombre
FROM
    historial
        INNER JOIN
    perro ON historial.perro = perro.IdPerro
WHERE
    fecha LIKE '2022-__-__';