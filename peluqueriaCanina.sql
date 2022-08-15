create database peluqueriaCanina;
use peluqueriaCanina;

	create table Dueno(
	DNI int primary key not null,
	Nombre varchar (30) not null,
	Apellido varchar (30) not null,
	Telefono int (20) not null,
	Direccion varchar(40) not null
	);
    
    create table Perro (
    ID_Perro int primary key not null auto_increment,
    Nombre varchar (20) not null,
    Fecha_nac date not null,
    Sexo varchar (15) not null,
    DNI_Dueno int,
    
    constraint foreign key (DNI_Dueno) references Dueno (DNI)
    );
    
    create table Historial (
    ID_Historial int not null primary key auto_increment,R
    Fecha date,
    Perro int not null,
    Descripcion varchar (300) not null,
    Monto int (20) not null,
    
    constraint foreign key (Perro) references Perro (ID_Perro)    
    );
    
insert into Dueno (DNI, Nombre, Apellido, Telefono, Direccion)
values (40256721, 'Maria', 'Gonzales', 1136891753, 'La Causa 432'),
       (35623089, 'Carlos', 'Ranciovich', 1175648962, 'San Martin 4369'),
       (23456721, 'Hernan', 'Valleros', 1165789363, 'Castro Barros 5678'),
       (16964328, 'Laura', 'Gimenez', 1143678453, 'Av. Rivadavia 5386'),
       (20412567, 'Román', 'Riquelme', 1145782341, 'Bransen 805'),
  
       
insert into Perro (Nombre, Fecha_nac,Sexo, DNI_Dueno)
values ('Rocky', '2007-08-16', 'Masculino', 16964328),
	   ('Tina', '2021-07-09', 'Femenimo', 20412567),
       ('Tesla', '2013-06-28', 'Masculino',23456721 ),
       ('Tobby', '2020-02-20', 'Masculino', 35623089),
       ('Lizzy', '2009-03-12', 'Femenino', 40256721),
     
       
insert into Historial (Fecha, Perro, Descripcion, Monto)
values 
	   ('2020-07-30', 06, 'Corte de uñas', 700);
       ('2018-04-16', 01, 'Baño completo con corte', 900 ),
       ('2015-06-07', 03, 'Baño especial' ,800 ),
       ('2019-09-25', 04, 'Corte de uñas', 600),
       ('2022-11-23', 05, 'Corte con shampoo garrapatas y pulgas', 1000),
       ('2021-11-28', 06, 'Corte uñas', 600),
       ('2022-12-22', 01, 'Baño completo especial',1300),

       


/*4.Actualice la fecha de nacimiento de algún animal (perro) que usted considere.*/
update Perro
set Fecha_nac = '2008-08-18'
where ID_Perro = 03;


/*6.Obtener todos los perros que asistieron a la peluquería en 2022*/
select Perro.Nombre
from Perro inner join Historial on Perro.ID_Perro = Historial.Perro
where year (Historial.Fecha) = 2022;

/*9.Escriba una consulta que permita actualizar la dirección de un dueño. Su nueva dirección es Libertad 123*/
update Dueno
set Direccion = 'Libertad 123'
where DNI = 35623089;

/*10.Vaciar la tabla historial y resetear el contador del campo ID.*/
truncate table Historial;
select * from (Historial);






