create database pelucanina;
use pelucanina;

	create table Dueno(
	DNI int primary key not null,
	Nombre varchar (20) not null,
	Apellido varchar (20) not null,
	Telefono int (15) not null,
	Direccion varchar(30) not null
	);
    
    create table Perro (
    ID_Perro int primary key not null auto_increment,
    Nombre varchar (15) not null,
    Fecha_nac date not null,
    Sexo varchar (10) not null,
    DNI_Dueno int,
    
    constraint foreign key (DNI_Dueno) references Dueno (DNI)
    );
    
    create table Historial (
    ID_Historial int not null primary key auto_increment,
    Fecha date,
    Perro int not null,
    Descripcion varchar (250) not null,
    Monto int (10) not null,
    
    constraint foreign key (Perro) references Perro (ID_Perro)    
    );
    
insert into Dueno (DNI, Nombre, Apellido, Telefono, Direccion)
values (30223431, 'Lorena', 'Denhoff', 1134219989, 'Piovano 3535'),
       (31635474, 'Cristian', 'Glock', 1124516213, 'Urquiza 1877'),
       (25897123, 'Brenda', 'Gonzalez', 11789654, 'Isabel 897'),
       (12536405, 'Cristina', 'Rugeri', 1163614160, 'España 165'),
       (18236547, 'Claudia', 'Fernandez', 11369852, 'Granada 6589'),
       (41023654, 'Soledad', 'Aguirre', 1114785223, 'Cuzco 5689');
       
insert into Perro (Nombre, Fecha_nac,Sexo, DNI_Dueno)
values ('Ron', '2008-09-12', 'Masculino', 30223431),
	   ('Lily', '2012-04-06', 'Femenimo', 31635474),
       ('Olaff', '2013-06-28', 'Masculino', 25897123),
       ('Sofy', '2020-02-20', 'Femenino', 12536405),
       ('Cuba', '2009-03-12', 'Maculino', 18236547),
       ('Frodo', '2017-02-17', 'Masculino', 41023654);
       
insert into Historial (Fecha, Perro, Descripcion, Monto)
values ('2010-02-03', 01, 'Baño completo con corte', 700 ),
	   ('2014-04-05', 02, 'Baño completo', 500 ),
       ('2015-06-07', 03, 'Baño especial' ,800 ),
       ('2021-08-09', 04, 'Corte de uñas', 600),
       ('2022-10-20', 05, 'Corte con shampoo piel sensible', 1000),
       ('2019-12-30', 06, 'Desenredado', 650),
       ('2021-11-18', 01, 'Baño completo especial',1500),
       ('2022-05-15', 01, 'Baño completo especial', 1500),
       ('2020-08-23', 06, 'Corte de uñas', 800);

/*3.Borre un animal que ya no va a ser atendido.
 Para ello consulte antes en el historial, algún animal que ya no sea atendido desde hace mucho tiempo.*/
 
 /* Consulto cuándo fue la última vez que se atendió al perro 02*/
 select max(Fecha ) as Fecha, Perro from pelcanina.Historial where Perro = 02; 

/*Deshabilito y vuelvo a habilitar la revisión de las restricciones para poner eliminar el dato*/
set foreign_key_checks=0;
delete from Perro where ID_Perro=02;
set foreign_key_checks=1;

/*4.Actualice la fecha de nacimiento de algún animal (perro) que usted considere.*/
update Perro
set Fecha_nac = '2022-02-17'
where ID_Perro = 06;

/*5.Realice una consulta multitabla que arroje el nombre de todos los perros cuyos dueños se llaman Pedro*/
select Perro.Nombre
from Perro inner join Dueno on Perro.DNI_Dueno = Dueno.DNI
where Dueno.Nombre = 'Pedro';

/*6.Obtener todos los perros que asistieron a la peluquería en 2022*/
select Perro.Nombre
from Perro inner join Historial on Perro.ID_Perro = Historial.Perro
where year (Historial.Fecha) = 2022;

/*7.Obtener los ingresos percibidos en Julio del 2022*/
select sum(Monto)
from Historial
where year (Fecha) = 2022 and month (Fecha) = 07;

/*8.Insertar un nuevo registro en la tabla historial de un perro cuyo ID Perro es igual a 10
Agrego un nuevo registro en la table Perro para poder agregar en Historial*/
insert into Perro (Nombre, Fecha_nac,Sexo, DNI_Dueno)
values ('Oddie', '2020-09-28', 'Masculino', 30223431);

insert into Historial (Fecha, Perro, Descripcion, Monto)
values ('2019-07-07', 10, 'Baño completo y corte de uñas', 1700 );

/*9.Escriba una consulta que permita actualizar la dirección de un dueño. Su nueva dirección es Libertad 123*/
update Dueno
set Direccion = 'Libertad 123'
where DNI = 12536405;

/*10.Vaciar la tabla historial y resetear el contador del campo ID.*/
truncate table Historial;
select * from (Historial);

/*11.Obtener todos los dueños que tengan perros de menos de 5 años de edad 
que no hayan visitado la peluquería en el año 2022*/
select Dueno.Nombre
from Historial inner join Perro on Historial.Perro = Perro.ID_Perro 
     and Perro inner join Dueno on Perro.Dni_Dueno = Dueno.DNI
where year (Fecha) != 2022 and (2022 - year(Fecha_nac))<5;

/*12.Obtener todos los perros de sexo “Macho” nacidos entre 2020 y 2022.*/
select ID_Perro, Nombre
from Perro
where (year (Fecha_nac)  between 2020 and 2022) and Sexo = 'Masculino';



