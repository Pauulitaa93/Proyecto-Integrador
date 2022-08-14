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

