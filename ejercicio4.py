# Ejercicio 4





Perro2 = [14, "Fido", "12/12/2012", "Macho", 23546987]
length = len(Perro2)

for i in range(length // 2):
    Perro2[i], Perro2[length - i - 1] = Perro2[length - i - 1], Perro2[i]

print(Perro2)