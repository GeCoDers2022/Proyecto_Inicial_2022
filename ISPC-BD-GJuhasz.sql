CREATE DATABASE peluqueriaCanina;

use peluqueriaCanina;

CREATE TABLE Dueno (DNI int null PRIMARY KEY, Nombre varchar(30) not null, 
Apellido varchar(30) not null, Telefono bigint not null, Direccion varchar(50) not null
)


CREATE TABLE Historial (ID_Historial int not null auto_increment PRIMARY KEY, Fecha date not null,
Perro int not null, Descripcion varchar(300) not null, Monto int,
CONSTRAINT FOREIGN KEY (Perro) PREFERENCES Perro(ID_Perro)
)



/*Ejercicio 3*/

DELETE FROM Perro inner join Historial on Perro.ID_Perro = Historial.Perro

Where (Historial.Fecha) = min (Historial.Fecha);




