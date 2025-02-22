Nombre = input("¿Cuál es tu nombre? ")
if Nombre.isdigit():
  print("Error al ingresar los datos, nombre no corresponde a dato numérico.")
else:
  edad = int(input("¿Cuántos años tienes? "))
  if edad < 0 or edad > 130:
      print("Error al ingresar los datos, edad debe ser entre (1-130)")
  else:
    if edad < 18:
        print("Menor de edad")
    else:
        print("Mayor de edad")