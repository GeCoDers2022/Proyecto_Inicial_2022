# Ejercicio 1





Dueno = [28957346, "Juan", "Perez", 4789689, "Belgrano 101"]

if Dueno[0] > 26000000:
    print("El numero de Telefono es:" + str(Dueno[3]))






# Ejercicio 2






Dueno2 = [23546987, "Maria", "Perez", 4789689, "Pueyredon 811"]
Dueno2.remove(Dueno2[2])

for i in range(1, len(Dueno2)):
    print(Dueno2[i])





# Ejercicio 3






Perro = [13, "Puppy", "12/12/2012", "Macho", 123]

Perro[2] = "13/12/2012"
Perro[4] = 28957346

print(Perro)





# Ejercicio 4





Perro2 = [14, "Fido", "12/12/2012", "Macho", 23546987]
length = len(Perro2)

for i in range(length // 2):
    Perro2[i], Perro2[length - i - 1] = Perro2[length - i - 1], Perro2[i]

print(Perro2)





#Ejercicio 5





Historial = (2350, 5960, 23000, 1000, 8900)

def sumarGastos(tupla):
    tupla = sum(list(tupla))
    if (tupla < 30000):
        print(tupla)
    else:
        print("Gastos por encima de lo presupuestado")

sumarGastos(Historial)





#Ejercicio 6





Historial2 = (23500, 5960, 2300, 10200, 8900)

montoTotal = sum(Historial2)
cont = 0

for i in range (0, len(Historial2),1):
    if Historial2[i] > 5000:
        cont +=1

print(str(cont)+" valores superan los $5000.")






#Ejercicio 7




Historial3 = (9530, 4120, 4580, 1500, 890, 7516, 426)
gastoPromedio = sum(Historial3/len(Historial3))
limite = 4500

print("El promedio de gastos de Lennon es: " + str(gastoPromedio))

if gastoPromedio > limite:
    print("Se a excedido del gasto promedio de su mascota por " + str(gastoPromedio-limite)+ " pesos")






#Ejercicio 8






Historial4 = (7510, 7960, 76280, 800, 4100)

print("El valor minimo de gasto de atencion gastado en Olivia es: " + str(min(Historial4)))




#Ejercicio 9




Historial5 = (8520, 9510, 7530, 3570, 1590)

print("El valor maximo de gasto de atencion gastado en Toto es: " + str(max(Historial5)))





#Ejerciocio 10




Clientes = ("Juan", "Mario", "Ariel", "Josefina", "Marianela", )

print(sorted(Clientes))

