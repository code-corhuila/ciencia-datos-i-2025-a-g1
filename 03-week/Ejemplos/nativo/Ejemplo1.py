# Solicitamos al usuario que ingrese su nombre
Nombre = input("¿Cuál es tu nombre? ")

# Verificamos si el nombre ingresado es un número
if Nombre.isdigit():
    # Si el nombre es un número, mostramos un mensaje de error y terminamos el programa
    print("Error al ingresar los datos, nombre no corresponde a dato numérico.")
    exit()

# Solicitamos al usuario que ingrese su edad
edad = input("¿Cuántos años tienes? ")

# Verificamos si la edad ingresada es un número
if not edad.isdigit():
    # Si la edad no es un número, mostramos un mensaje de error y terminamos el programa
    print("Error al ingresar los datos, edad debe ser un número.")
    exit()

# Convertimos la edad a un número entero
edad = int(edad)

# Verificamos si la edad está en el rango válido (1-130)
if edad < 0 or edad > 130:
    # Si la edad no está en el rango válido, mostramos un mensaje de error y terminamos el programa
    print("Error al ingresar los datos, edad debe ser entre (1-130)")
    exit()

# Verificamos si la persona es menor de edad (menos de 18 años)
if edad < 18:
    # Si la persona es menor de edad, mostramos un mensaje
    print("Menor de edad")
else:
    # Si la persona es mayor de edad, mostramos un mensaje
    print("Mayor de edad")