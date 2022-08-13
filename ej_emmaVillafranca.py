import os
os.system("cls")
#punto 1
dueno = [28957346,  "Juan",  "Perez", 4789689,  "Belgrano 101"]

if dueno[0] > 26000000 :
    print(dueno[3])

#Punto 2
Dueno2 =[23546987, "Maria",  "Perez", 4789689,  "Pueyrredon  811"]

for i in Dueno2:
   if i == Dueno2[0]  or i == Dueno2[2]:
    continue 
   print(i) 

#Punto 3
Perro = [13,  "Puppy",  "12/12/2012" , "Macho", 123]
Perro[2] = "13/12/2012"
Perro[4] = 28957346 
print(Perro)

#Punto 4
Perro2 = [14,  "Fido",  "12/12/2012" , "Macho", 23546987]
for i in reversed(Perro2):
    print(i)
#Punto 5
Historial2 = (23500, 5960, 2300, 10200, 8900) 
sumaPuppy = sum(Historial2)
if sumaPuppy < 30000 :
    print(sumaPuppy)
else :
    print("Gastos por encima de lo presupuestado")        
