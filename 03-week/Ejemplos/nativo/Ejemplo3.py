def obtener_nombre():
    nombre = input("¿Cuál es tu nombre? ")
    if nombre.isdigit():
        print("Error al ingresar los datos, nombre no corresponde a dato numérico.")
        exit()
    return nombre

def obtener_edad():
    try:
        edad = int(input("¿Cuántos años tienes? "))
        if edad < 0 or edad > 130:
            print("Error al ingresar los datos, edad debe ser entre (1-130)")
            exit()
        return edad
    except ValueError:
        print("Error al ingresar los datos, edad debe ser un número entero.")
        exit()

def verificar_mayoria_edad(edad):
    if edad < 18:
        print("Menor de edad")
    else:
        print("Mayor de edad")

def main():
    nombre = obtener_nombre()
    edad = obtener_edad()
    verificar_mayoria_edad(edad)

if __name__ == "__main__":
    main()