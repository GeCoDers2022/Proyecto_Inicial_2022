CREATE DATABASE peluyvetcanina;
USE peluyvetcanina;

CREATE TABLE Dueno
(
DNI int not null,
Nombre varchar(25) not null,
Apellido varchar(25) not null,
Telefono bigint not null,
Direccion varchar(30) not null,
CONSTRAINT ID_dueno PRIMARY KEY (DNI)
);

/* Ejercicio 1. Realice la consulta correspondiente para crear la tabla Perro, teniendo en cuenta sus claves foráneas y primarias.*/
CREATE TABLE Perro
(
ID_Perro int auto_increment not null, 
Nombre varchar(25) not null,
Fecha_nac date not null,
Sexo char(1) not null,
DNI_dueno int not null,
CONSTRAINT ID_mascota PRIMARY KEY (ID_Perro),
CONSTRAINT DNI_dueno FOREIGN KEY REFERENCES Dueno (DNI)
);

CREATE TABLE Historial 
(
ID_historial int auto_increment not null,
Fecha date not null,
Perro int not null,
Descripcion varchar(300) not null,
Monto int not null,
CONSTRAINT ID_h PRIMARY KEY (ID_historial),
CONSTRAINT mascota FOREIGN KEY (Perro) REFERENCES Perro (ID_perro)
)

/* Ejercicio 2. Inserte en la tabla correspondiente un nuevo animal (perro) como paciente y el dueño asociado a ese animal.*/
/* Primero cargamos datos del Dueño*/
INSERT INTO Dueno (DNI, Nombre, Apellido, Telefono, Direccion)
VALUES (31456978, 'Fabian', 'Lopez', 3794124578, 'Salta 124');
/* Segundo cargamos al perro como paciente, al dueño correspondinte */
INSERT INTO Perro (Nombre, Fecha_nac,Sexo, DNI_Dueno)
VALUES ('Tomy', '2020-09-15', 'M', 31456978);

/* Ejercicio 4. Actualice la fecha de nacimiento de algún animal (perro) que usted considere.*/
UPDATE Perro
SET Fecha_nac = '2020-08-07'
WHERE ID_Perro = 2;

/* Ejercicio 9. Escriba una consulta que permita actualizar la dirección de un dueño. Su nueva dirección es Libertad 123 */
UPDATE Dueno 
SET Direccion = "Libertad 123" 
WHERE DNI = 34711578;

/* Ejercicio 12. Obtener todos los perros de sexo “Macho” nacidos entre 2020 y 2022.*/
SELECT ID_Perro, Nombre
FROM Perro
WHERE (year (Fecha_nac)  between 2020 and 2022) and Sexo = 'M';