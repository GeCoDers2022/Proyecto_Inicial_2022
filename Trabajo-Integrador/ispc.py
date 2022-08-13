from datetime import datetime

#8) Crear una tupla en Python con el nombre de “Historial4” la cual contenga los siguientes valores:
Historial4=(7510, 7960, 76180, 800, 4100)
#Que representa montos de atención en pesos por diferentes servicios/consultas de la mascota “Olivia”. Cree una función para determinar el valor mínimo de atención gastada en “Olivia”  mostrándolo en pantalla.
def valorMinimoAtencion(tupla):
    minimo = min(list(tupla))
    print("el valor minimo de atencion gastada es:", minimo)

valorMinimoAtencion(Historial4)

#9) Crear una tupla en Python con el nombre de “Historial5” la cual contenga los siguientes valores:
Historial5=(8520, 9510, 7530, 3570, 1590)
#Que representa montos de atención en pesos por diferentes servicios/consultas de la mascota “Toto”. Crear una función para determinar el valor máximo de atención gastada en “Toto”.
def valorMaximoAtencion(tupla):
    maximo = max(list(tupla))
    print("el valor maximo de atencion gastada es:", maximo)

valorMaximoAtencion(Historial5)
