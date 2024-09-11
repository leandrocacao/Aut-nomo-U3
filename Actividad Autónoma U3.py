# Este programa calcula el promedio de las notas de un estudiante y determinando su rendimiento.

# El usuario ingresa las notas del primer, segundo, y tercer parcial, así como el examen final.

# Luego de eso, el programa evalúa el promedio y muestra el rendimiento del estudiante dependiendo sus notas.

# En este caso, se utiliza un bucle "while" para poder repetir el ingreso de datos, y estructuras condicionales (if, elif, else) para evaluar el rendimiento. 


while True:
    nombre = input("Ingrese el Nombre del Estudiante: ")
    apellido = input("Ingrese el Apellido del Estudiante: ")
    curso = input("Ingrese el Curso del Estudiante: ")

    total_notas = 0
    cantidad_notas = 0

    notas = ["Primer parcial", "Segundo parcial", "Tercer parcial", "Examen final"]
    for parcial in notas:
        nota = float(input(f"Ingrese la Nota del {parcial}: "))
        total_notas += nota
        cantidad_notas += 1

    while True:
        nota = float(input("Ingrese una nota adicional (ingrese un valor negativo para terminar): "))
        if nota < 0:
            break
        total_notas += nota
        cantidad_notas += 1


    promedio = total_notas / cantidad_notas

    if promedio >= 90:
        rendimiento = "Sobresaliente"
    elif promedio >= 75:
        rendimiento = "Bueno"
    elif promedio >= 50:
        rendimiento = "Regular"
    else:
        rendimiento = "Insuficiente"

    print(f"\nEl estudiante {nombre} {apellido} del curso {curso} tiene un promedio de {promedio:.2f}.")
    print(f"Rendimiento: {rendimiento}")

    if rendimiento == "Sobresaliente":
        print(f"¡Felicidades {nombre} {apellido}, eres sobresaliente del curso {curso} con un promedio de {promedio:.2f}!")
    elif rendimiento == "Bueno":
        print(f"Buen trabajo {nombre} {apellido}, tu rendimiento es bueno con un promedio de {promedio:.2f}.")
    elif rendimiento == "Regular":
        print(f"{nombre} {apellido}, tu rendimiento es regular con un promedio de {promedio:.2f}.")
    else:
        print(f"{nombre} {apellido}, tu rendimiento es insuficiente con un promedio de {promedio:.2f}.")

    continuar = input("\n¿Quieres calcular el promedio para otro estudiante? (s/n): ")
    if continuar.lower() != 's':
        print("¡Gracias por tu consulta!")
        break
