Algoritmo algoritmo_10
	Definir nombreDeUsuario Como Caracter
	Definir tipoDePrograma, valorCreditoPregrado, valorCreditoPosgrado, valorAPagar Como Entero
	Definir promedioAcademico Como Real
	
	valorCreditoPregrado = 50000
	valorCreditoPosgrado = 300000
	
	Escribir "Calculadora Académica"
	Escribir "	Ingresa tu nombre de usuario"
	Leer nombreDeUsuario
	Limpiar Pantalla
	Escribir "	¡Bienvenido/a, ", nombreDeUsuario "!"
	Escribir "	¿A qué tipo de programa perteneces?"
	Escribir "	1. Pregrado."
	Escribir "	2. Posgrado."
	Escribir "	Elija una opción (1 o 2): "
	Leer tipoDePrograma
		
	Segun tipoDePrograma Hacer
		1: 	Escribir "Ingresa tu promedio académico"
			Leer promedioAcademico
			si promedioAcademico < 2.5 Entonces
				Escribir "Lo siento. No podrá matricularse."
			SiNo
				si promedioAcademico >= 2.5 y promedioAcademico < 3.5 Entonces
					valorAPagar = 15 * valorCreditoPregrado
					Escribir "Deberás pagar: $" valorAPagar
					Escribir "Por 15 créditos registrados."
				SiNo
					si promedioAcademico >= 3.5 y promedioAcademico < 4.0 Entonces
						valorAPagar = 20 * valorCreditoPregrado
						Escribir "Deberás pagar: $" valorAPagar
						Escribir "Por 20 créditos registrados."
					SiNo
						si promedioAcademico >= 4.0 y promedioAcademico < 4.5 Entonces
							valorAPagar = (25 * valorCreditoPregrado) * 0.90
							Escribir "¡Felicitaciones! Por tu promedio has obtenido un descuento del 10%"
							Escribir "Deberás pagar: $" valorAPagar
							Escribir "Por 25 créditos registrados."
						SiNo
							si promedioAcademico >= 4.5 y promedioAcademico < 5.0 Entonces
								valorAPagar = (28 * valorCreditoPregrado) * 0.75
								Escribir "¡Felicitaciones! Por tu promedio has obtenido un descuento del 25%"
								Escribir "Deberás pagar: $" valorAPagar
								Escribir "Por 28 créditos registrados."
							SiNo
								Escribir "Promedio no válido"
							FinSi
						FinSi
					FinSi
				FinSi
			FinSi
		
		2: Escribir "Ingresa tu promedio académico"
			Leer promedioAcademico
			si promedioAcademico < 4.5 Entonces
				valorAPagar = 10 * valorCreditoPosgrado
				Escribir "Deberás pagar: $" valorAPagar
				Escribir "Por 10 créditos registrados."
			SiNo
				si promedioAcademico >= 4.5 y promedioAcademico < 5.0 Entonces
					valorAPagar = (20 * valorCreditoPosgrado) * 0.80
					Escribir "¡Felicitaciones! Por tu promedio has obtenido un descuento del 20%"
					Escribir "Deberás pagar: $" valorAPagar
					Escribir "Por 20 créditos registrados."
				SiNo
					Escribir "Promedio no válido"
				FinSi
			FinSi
		De Otro Modo:
			Escribir "Opción no válida."
	FinSegun
FinAlgoritmo
