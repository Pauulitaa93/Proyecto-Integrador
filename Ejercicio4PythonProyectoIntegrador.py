 # Crear un lista en Python denominado “Perro2” que contenga los siguientes valores:
Perro2=[14,"Fido","12/12/2012" ,"Macho", 23546987]

#Recorrer la lista “Perro” con un bucle y mostrar sus elementos por pantalla , comenzando desde el último hasta el primero.
print(Perro2)
print('recorrer lista en reversa y con numero de elemento:')
for i, e in reversed(list(enumerate(Perro2))):
     print(i, e)