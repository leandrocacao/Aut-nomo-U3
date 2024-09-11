// Este programa permite calcular el promedio de las notas de un estudiante y determinar su rendimiento.
// Se solicita el nombre, apellido y curso del estudiante. Luego, el programa pide las notas de los tres parciales y el examen final, que deben ser ingresadas 
// por el usuario. Si se ingresa una nota negativa, se detiene el ingreso de datos.
// Al final, se calcula el promedio y se clasifica el rendimiento del estudiante.
// Se utilizan estructuras selectivas (Si, Sino) para evaluar el rendimiento y estructuras repetitivas (Mientras) para el ingreso de notas.

Proceso CalcularPromedioEstudiante
    Definir nombre, apellido, curso Como Cadena
    Definir nota, total_notas, promedio Como Real
    Definir rendimiento, continuar, terminar Como Cadena
    Definir cantidad_notas Como Entero
	
    continuar <- "s" 
	
    Mientras continuar = "s" Hacer
		
        total_notas <- 0
        cantidad_notas <- 4 
		
        Escribir "Ingrese el Nombre del Estudiante: "
        Leer nombre
        Escribir "Ingrese el Apellido del Estudiante: "
        Leer apellido
        Escribir "Ingrese el Curso del Estudiante: "
        Leer curso
		
        Escribir "Ingrese la Nota del Primer parcial: "
        Leer nota
        total_notas <- total_notas + nota
		
        Escribir "Ingrese la Nota del Segundo parcial: "
        Leer nota
        total_notas <- total_notas + nota
		
        Escribir "Ingrese la Nota del Tercer parcial: "
        Leer nota
        total_notas <- total_notas + nota
		
        Escribir "Ingrese la Nota del Examen final: "
        Leer nota
        total_notas <- total_notas + nota
		
        terminar <- "n"
        
        Mientras terminar <> "s" Hacer
            Escribir "Ingrese un valor negativo para finalizar: "
            Leer nota
            Si nota < 0 Entonces
                terminar <- "s" 
            Sino
                total_notas <- total_notas + nota
                cantidad_notas <- cantidad_notas + 1
            FinSi
        FinMientras
		
        promedio <- total_notas / cantidad_notas
		
        Si promedio >= 90 Entonces
            rendimiento <- "Sobresaliente"
        Sino
            Si promedio >= 75 Entonces
                rendimiento <- "Bueno"
            Sino
                Si promedio >= 50 Entonces
                    rendimiento <- "Regular"
                Sino
                    rendimiento <- "Insuficiente"
                FinSi
            FinSi
        FinSi
		
        Escribir "El estudiante ", nombre, " ", apellido, " del curso ", curso, " tiene un promedio de ", promedio, "."
        Escribir "Rendimiento: ", rendimiento
		
        Si rendimiento = "Sobresaliente" Entonces
			Escribir "¡Felicidades ", nombre, " ", apellido, ", eres sobresaliente en el curso ", curso, " con un promedio de ", promedio, "!"
		Sino
			Si rendimiento = "Bueno" Entonces
				Escribir "Buen trabajo ", nombre, " ", apellido, ", tu rendimiento es bueno en el curso ", curso, " con un promedio de ", promedio, "."
			Sino
				Si rendimiento = "Regular" Entonces
					Escribir nombre, " ", apellido, ", tu rendimiento es regular en el curso ", curso, " con un promedio de ", promedio, "."
				Sino
					Escribir nombre, " ", apellido, ", tu rendimiento es insuficiente en el curso ", curso, " con un promedio de ", promedio, "."
				FinSi
			FinSi
		FinSi
		
        Escribir "\¿Quieres calcular el promedio para otro estudiante? (s/n): "
        Leer continuar
    FinMientras
	
    Escribir "¡Gracias por consultar!"
FinProceso
