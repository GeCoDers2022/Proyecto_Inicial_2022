# consultas generales
Select * from dueno;
Select * from perro;
Select * from historial;

# insert datos manual
INSERT INTO dueno (DNI, Nombre, Apellido, Telefono, Direccion)
VALUES
		(22266262, "Pepe", "Argento", 4242526, "Avellaneda 123"),
        (32323322, "Fatiga", "Argento", 323232, "Avellaneda 123"),
        (55545454, "Moni", "Argento", 545435345, "Avellaneda 123"),
        (66656656, "Coqui", "Argento", 3453454334, "Avellaneda 123"),
        (34433431, "Paola", "Argento", 345343443, "Avellaneda 123");
        

# insert datos perro
INSERT INTO perro (Nombre, Fecha_nac, Sexo, DNI_dueno)
VALUES
		("Firulais", 2018-10-10,"Femenino", 22266262),
        ("lulu", 2018-05-10,"Femenino",  323232);


# ejercicio N.9 actualizar la dirección de un dueño. Su nueva dirección es Libertad 123
UPDATE `ispc`.`dueno` SET `Direccion` = 'Libertad 123' WHERE (`DNI` = '22266262');
