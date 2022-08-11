#Cada estudiante deberá  resolver  UN (1) ejercicio a elección (diferentes entre cada uno de los integrantes) de los 10 ejercicios propuestos por el docente y subir en su propia rama del GitHub.

#Escribir el código en Python que permita realizar lo siguiente:

#1) Crear una lista en Python denominada “Dueno” que contenga los siguientes valores:

  #  28957346,  Juan,  Perez, 4789689,  Belgrano 101

 # Dichos datos se corresponden  con los datos del dueño de un perro (DNI, nombre, apellido, teléfono y dirección). Muestre en pantalla el teléfono del dueño si el DNI es mayor a 26000000.
 
dueno = ["Juan", "Perez",28957346, 4789689, "Belgrano 101"]

for i in dueno:
    if dueno[2] > 26000000:
        print(dueno[3])
    break
        

