# Tupla Historial3
Historial3 = (9530, 4120, 4580, 1500, 890,7516,426)
gastosLennon = len(Historial3)
total = 0
promedio = 0

#print( gastosLennon)

for elem in Historial3:
    total = total + elem

promedio = total / gastosLennon

#print(total)
#print(round(promedio, 2))

if promedio > 4500:
    print("Se ha excedido del gasto promedio para su mascota")
else:
    print("El promedio de gastos de Lennon es: ", round(promedio, 2))
