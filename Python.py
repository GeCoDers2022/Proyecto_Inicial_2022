#Ejercicio Número 7
Historial3 = (9530, 4120, 4580, 1500, 890, 7516, 426)
def gastosPromedioLennon(tupla):
    promedio = round(sum(list(tupla)) / len(tupla))
    if(promedio > 4500):
        print("Su promedio de gasto es de",promedio,"pesos. ","Se ha excedido del gasto promedio para su mascota.")
    else:
        print("Su promedio de gasto es de",promedio,"pesos.")
gastosPromedioLennon(Historial3)
