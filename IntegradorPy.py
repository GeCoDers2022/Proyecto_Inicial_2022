# 2)   Crear una lista en Python denominada “Dueno2”  y recorrerla con un bucle  mostrando sus elementos por pantalla con excepción del DNI y el apellido. Los elementos de la lista son:

#   35296796,  “L”,  “Perez”, 4789689,  “Pueyrredon  811”

 #que representan los datos del dueño de un perro (DNI, nombre, apellido, teléfono y dirección) 

Dueno2 = [23546987, "Yngwie", "Malmsteen", 36275643, "Pueyredon 811"]
Dueno2.remove(Dueno2[2])

for i in range(1,len(Dueno2)):
    print(Dueno2[i])
