"""3)  Crear un lista en Python denominado “Perro” que contenga los siguientes valores:

  13,  Puppy,  12/12/2012 , Macho, 123

Que se corresponde con los datos de un perro de nuestra base de datos (Id_Perro, nombre, fecha de nacimiento, sexo y dni del dueño). Modificar la fecha de nacimiento por 13/12/2012 y reemplazar “dni del dueño” por 28957346 ."""

perro =[13,"Puppy",12/12/2012,"Macho",123]

for x in range(len(perro)):
        if perro[x] == 12/12/2012:
            perro[x] = 28957346
        
print(perro)