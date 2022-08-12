CREATE DATABASE peluqueriacanina;
USE peluqueriacanina;

CREATE TABLE Dueno (DNI int not null PRIMARY KEY, Nombre varchar(30) not null, Apellido varchar(30) not null , Telefono bigint not null, Direccion varchar(50) not null 
)

CREATE TABLE Perro (ID_perro int not null auto_increment PRIMARY KEY, Nombre varchar(30) not null, Fecha_nac date, Sexo varchar(10) not null, DNI_dueno int not null,
CONSTRAINT FOREIGN KEY (DNI_dueno) REFERENCES Dueno(DNI)
)

CREATE TABLE Historial (ID_historial int not null auto_increment PRIMARY KEY, Fecha date not null, Perro int not null, Descripcion varchar(300) not null, Monto int, 
CONSTRAINT FOREIGN KEY (Perro) REFERENCES Perro(ID_perro)
)

/* Carga de datos en las tablas para prueba*/
INSERT INTO Dueno (DNI, Nombre, Apellido, Telefono, Direccion) VALUES (77241813, "Pedro", "Lopez", 3521437782, "calle Publica s/n");
INSERT INTO Dueno (DNI, Nombre, Apellido, Telefono, Direccion) VALUES (45241810, "Patricio", "Ponce", 3521437782, "calle Publica s/n");
INSERT INTO Dueno (DNI, Nombre, Apellido, Telefono, Direccion) VALUES (45241815, "Pedro", "Ponce", 3521437782, "calle Publica s/n");

INSERT INTO Perro (Nombre, Fecha_nac, Sexo, DNI_dueno) VALUES ("Rocko","2022-07-14", "Macho", 45241815);
INSERT INTO Perro (Nombre, Fecha_nac, Sexo, DNI_dueno) VALUES ("Frida","2022-07-14", "Hembra", 45241810);
INSERT INTO Perro (Nombre, Fecha_nac, Sexo, DNI_dueno) VALUES ("Milaneso","2010-12-04", "Macho", 77241813);

INSERT INTO Historial (Fecha, Perro, Descripcion, Monto) VALUES ("2022-07-24", "2", "Shampoo especial", 550);
INSERT INTO Historial (Fecha, Perro, Descripcion, Monto) VALUES ("2022-07-12", "3", "Acondicionador para pelo rizado", 750);
INSERT INTO Historial (Fecha, Perro, Descripcion, Monto) VALUES ("2022-01-24", "2", "Alergico al Shampo usar Neutro", 550);
INSERT INTO Historial (Fecha, Perro, Descripcion, Monto) VALUES ("2000-05-06", "1", "Usar Marca CanShoo", 5000);

/* Ejercicio1. Realice la consulta correspondiente para crear la tabla Perro, teniendo en cuenta sus claves foráneas y primarias.
ESTA TABLA HA SIDO CREADA EN LA LINEA 7 */

/* Ejercicio2. Inserte en la tabla correspondiente un nuevo animal (perro) como paciente y el dueño asociado a ese animal. */
INSERT INTO Dueno (DNI, Nombre, Apellido, Telefono, Direccion) VALUES (45241813, "Luciano", "Velez", 3521437782, "9 de julio 23");
INSERT INTO Perro (Nombre, Fecha_nac, Sexo, DNI_dueno) VALUES ("Uma","2021-12-04", "Femenino", 45241813);

/* Ejercicio4. Actualice la fecha de nacimiento de algún animal (perro) que usted considere.*/
UPDATE Perro 
SET Fecha_nac = "2015-06-06"
WHERE ID_perro=3;

/* Ejercicio5. Realice una consulta multitabla que arroje el nombre de todos los perros cuyos dueños se llaman Pedro */
SELECT Perro.Nombre
FROM Perro inner join Dueno on Perro.DNI_Dueno = Dueno.DNI
WHERE Dueno.Nombre = "Pedro";

/* Ejercicio6. Obtener todos los perros que asistieron a la peluquería en 2022 */
SELECT Perro.Nombre
FROM Perro inner join Historial on Perro.ID_perro = Historial.Perro
WHERE year(Historial.Fecha) = 2000;

/* Ejercicio7. Obtener los ingresos percibidos en Julio del 2022 */
SELECT Sum(monto)
FROM Historial
WHERE year(Fecha) = 2022 and month(Fecha)=07;

/* Ejercicio8. Insertar un nuevo registro en la tabla historial de un perro cuyo ID Perro es igual a 10. */
INSERT INTO Historial ( Fecha, Perro, Descripcion, Monto ) values ("2022-10-20", 10, "Sacar puntos castracion", 500);

/* Ejercicio9. Escriba una consulta que permita actualizar la dirección de un dueño. Su nueva dirección es Libertad 123 */
UPDATE Dueno 
SET Direccion = "Libertad 123" 
WHERE DNI = 45241813;

/* Ejercicio10. Vaciar la tabla historial y resetear el contador del campo ID.*/
TRUNCATE TABLE Historial;
/* Prueba de que ID_historial se reseteo */
INSERT INTO Historial (Fecha, Perro, Descripcion, Monto) VALUES ("2022-07-24", "2", "Shampoo especial", 550);

/*Ejercicio11. Obtener todos los dueños que tengan perros de menos de 5 años de edad que no hayan visitado la peluquería en el año 2022.*/
SELECT Dueno.Nombre
FROM Historial inner join Perro on Historial.Perro =Perro.ID_Perro and Perro inner join Dueno on Perro.DNI_Dueno = Dueno.DNI
WHERE year(Fecha) <> 2022 and (2022-year(Fecha_nac))<5;

/*Ejercicio12. Obtener todos los perros de sexo “Macho” nacidos entre 2020 y 2022.*/
SELECT ID_Perro, Nombre
FROM Perro
WHERE (Year(Fecha_nac) between 2020 and 2022 )and Sexo="Macho";




