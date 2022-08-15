##ejercicio8
 #Crear una función para determinar el valor mínimo de atención gastada en “Olivia” 
def min(numeros):
    menor = numeros[0]

    for n in numeros:
        if n < menor:
             menor = n


    return menor

historial4=( 7510, 7960, 76180, 800, 4100)

print(min(historial4))



            
