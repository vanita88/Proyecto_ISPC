tuple = "Toto"
Toto = ( 8520, 9510, 7530, 3570, 1590 )
max_value = None

for num in Toto:
    if (max_value is None or num > max_value):
        max_value = num

print('El mayor precio gastado en la atención de Toto es:', max_value)