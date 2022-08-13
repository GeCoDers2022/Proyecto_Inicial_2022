""" 5)Crear una tupla en Python con el nombre de Historial la cual contenga los siguientes valores: 2350, 5960, 23000, 1000, 8900
Que representa montos de atención en pesos por diferentes servicios/consultas de la mascota Puppy.
Calcular el monto total gastado a lo largo del tiempo por atención de Puppy. Si el gasto efectuado es menor a 30000,
mostrar en pantalla dicho resultado, caso contrario mostrar el mensaje Gastos por encima de lo presupuestado """

print ("\nEjercicio 5")

Historial = 2350, 5960, 23000, 1000, 8900
monto= sum(Historial)
limite = 30000

if monto< limite :
    print ("El monto toal gastado es de: " + str (monto))
else:
    print ("Gastos por encima del presupuesto, el gasto ha sido de " + str(monto) + " pesos. Supera el presupuesto en " + str(monto-limite) + " pesos")

"""6)Crear una tupla en Python con el nombre de Historial2 la cual contenga los siguientes valores:23500, 5960, 2300, 10200, 8900
Que representa montos de atención en pesos por diferentes servicios/consultas de la mascota Frida.
Calcular el monto total gastado a lo largo del tiempo por atención de Frida.
Crear una función que cuente cuantos gastos fueron superiores a 5000 mostrando  el número calculado en pantalla"""

print ("\nEjercicio 6")

Historial2 = 23500, 5960, 2300, 10200, 8900
montoTotal = sum (Historial2)
cont = 0

for i in range (0,len(Historial2),1):
    if Historial2 [i] > 5000:
        cont +=1


print (str(cont) + " son los valores que superan los $5000 ")
