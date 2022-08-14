CREATE DATABASE peluqueriaCanina;

use peluqueriaCanina;

CREATE TABLE Dueno (DNI int null PRIMARY KEY, Nombre varchar(30) not null, 
Apellido varchar(30) not null, Telefono bigint not null, Direccion varchar(50) not null
)


CREATE TABLE Historial (ID_Historial int not null auto_increment PRIMARY KEY, Fecha date not null,
Perro int not null, Descripcion varchar(300) not null, Monto int,
CONSTRAINT FOREIGN KEY (Perro) PREFERENCES Perro(ID_Perro)
)

/* Carga de datos en las tablas para prueba*/
INSERT INTO Dueno (DNI, Nombre, Apellido, Telefono, Direccion) VALUES (84245823, "Ignacio", "DiPaolo", 1178529845, "calle Publica s/n");
INSERT INTO Dueno (DNI, Nombre, Apellido, Telefono, Direccion) VALUES (76249823, "Jacobo", "Benetto", 1137595566, "calle Publica s/n");
INSERT INTO Dueno (DNI, Nombre, Apellido, Telefono, Direccion) VALUES (65244354, "Nahuel", "Castelli", 1153784355, "calle Publica s/n");

INSERT INTO Perro (Nombre, Fecha_nac, Sexo, DNI_dueno) VALUES ("Tintin","2020-04-23", "Macho", 84245823);
INSERT INTO Perro (Nombre, Fecha_nac, Sexo, DNI_dueno) VALUES ("Firu","2017-11-16", "Hembra", 76249823);
INSERT INTO Perro (Nombre, Fecha_nac, Sexo, DNI_dueno) VALUES ("Roco","2014-08-28", "Macho", 65244354);

INSERT INTO Historial (Fecha, Perro, Descripcion, Monto) VALUES ("2022-12-05", "2", "Pulgicida", 430);
INSERT INTO Historial (Fecha, Perro, Descripcion, Monto) VALUES ("2022-03-19", "3", "Alimento Balanceado", 1200);
INSERT INTO Historial (Fecha, Perro, Descripcion, Monto) VALUES ("2022-07-13", "1", "Sobre Saborizado", 250);


/* Ejercicio9. Escriba una consulta que permita actualizar la dirección de un dueño. Su nueva dirección es Libertad 123 */

UPDATE Dueno 
SET Direccion = "Libertad 123" 
WHERE DNI = 84245823;


