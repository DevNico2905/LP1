Algoritmo algoritmo_9
	Definir accion, cantiCorredores, ID, categoria, cilindraje, aceptados, noAceptados Como Entero
	Definir cantiPorCate1, cantiPorCate2, cantiPorCate3, cantiPorCate4, cantiPorCate5 Como Entero
	Definir nombre Como Caracter
	Definir bandera Como Logico
	bandera = Verdadero
	Repetir
		Escribir "¡Bienvenido a Gladiadores!"
		Escribir ""
		Escribir "Registrar corredores."
		Escribir "- ¿Cuantos corredores desea inscribir?"
		Leer cantiCorredores
		
		si cantiCorredores <= 0 Entonces
			Escribir "La cantidad de corredores debe ser mayor o igual a 1."
			Escribir "Presione Enter para reiniciar"
			Esperar Tecla
			Limpiar Pantalla
		SiNo
			Para i = 1 Hasta cantiCorredores Con Paso 1 Hacer
				Limpiar Pantalla
				Escribir "Registro de datos del corredor N° ", i
				Escribir ""
				Escribir "- Identificación:"
				Leer ID
				Escribir "- Nombres:"
				Leer nombre
				Escribir "Categoría a participar [1-5]"
				Escribir "-- 1. Cilindrajes de motos hasta 100cc."
				Escribir "-- 2. Cilindrajes de motos de 101cc hasta 250cc."
				Escribir "-- 3. Cilindrajes de motos de 251cc hasta 350cc."
				Escribir "-- 4. Cilindrajes de motos de 351cc hasta 500cc."
				Escribir "-- 5. Cilindrajes de motos superiores a 500cc."
				Leer categoria
				si categoria < 1 o categoria > 5 Entonces
					i = cantiCorredores
					Escribir "Categoría no válida."
					Escribir "Presione Enter para reiniciar"
					Esperar Tecla
					Limpiar Pantalla
				SiNo
					Escribir "- Cilindraje de la moto."
					Leer cilindraje
					si cilindraje <= 0 Entonces
						i = cantiCorredores
						Escribir "El cilindraje debe ser mayor a 0."
						Escribir "Presione Enter para reiniciar"
						Esperar Tecla
						Limpiar Pantalla
					SiNo
						Segun categoria Hacer
							1:
								si cilindraje <= 100 Entonces
									aceptados = aceptados + 1
									cantiPorCate1 = cantiPorCate1 + 1
									Escribir ""
									Escribir "Corredor/a: ", Mayusculas(nombre)
									Escribir "ID: ", ID
									Escribir "¡Felicitaciones, ha sido aceptado!"
									Escribir "Presione Enter para continuar"
									Esperar Tecla
								SiNo
									noAceptados = noAceptados + 1
									Escribir ""
									Escribir "Corredor/a: ", Mayusculas(nombre)
									Escribir "ID: ", ID
									Escribir "¡Error! No ha sido aceptado."
									Escribir "Presione Enter para continuar"
									Esperar Tecla
								FinSi
							2:
								si cilindraje > 100 y cilindraje <= 250 Entonces
									aceptados = aceptados + 1
									cantiPorCate2 = cantiPorCate2 + 1
									Escribir ""
									Escribir "Corredor/a: ", Mayusculas(nombre)
									Escribir "ID: ", ID
									Escribir "¡Felicitaciones, ha sido aceptado!"
									Escribir "Presione Enter para continuar"
									Esperar Tecla
								SiNo
									noAceptados = noAceptados + 1
									Escribir ""
									Escribir "Corredor/a: ", Mayusculas(nombre)
									Escribir "ID: ", ID
									Escribir "¡Error! No ha sido aceptado."
									Escribir "Presione Enter para continuar"
									Esperar Tecla
								FinSi
							3:
								si cilindraje > 250 y cilindraje <= 350 Entonces
									aceptados = aceptados + 1
									cantiPorCate3 = cantiPorCate3 + 1
									Escribir ""
									Escribir "Corredor/a: ", Mayusculas(nombre)
									Escribir "ID: ", ID
									Escribir "¡Felicitaciones, ha sido aceptado!"
									Escribir "Presione Enter para continuar"
									Esperar Tecla
								SiNo
									noAceptados = noAceptados + 1
									Escribir ""
									Escribir "Corredor/a: ", Mayusculas(nombre)
									Escribir "ID: ", ID
									Escribir "¡Error! No ha sido aceptado."
									Escribir "Presione Enter para continuar"
									Esperar Tecla
								FinSi
							4:
								si cilindraje > 350 y cilindraje <= 500 Entonces
									aceptados = aceptados + 1
									cantiPorCate4 = cantiPorCate4 + 1
									Escribir ""
									Escribir "Corredor/a: ", Mayusculas(nombre)
									Escribir "ID: ", ID
									Escribir "¡Felicitaciones, ha sido aceptado!"
									Escribir "Presione Enter para continuar"
									Esperar Tecla
								SiNo
									noAceptados = noAceptados + 1
									Escribir ""
									Escribir "Corredor/a: ", Mayusculas(nombre)
									Escribir "ID: ", ID
									Escribir "¡Error! No ha sido aceptado."
									Escribir "Presione Enter para continuar"
									Esperar Tecla
								FinSi
							5:
								si cilindraje > 500 Entonces
									aceptados = aceptados + 1
									cantiPorCate5 = cantiPorCate5 + 1
									Escribir ""
									Escribir "Corredor/a: ", Mayusculas(nombre)
									Escribir "ID: ", ID
									Escribir "¡Felicitaciones, ha sido aceptado!"
									Escribir "Presione Enter para continuar"
									Esperar Tecla
								SiNo
									noAceptados = noAceptados + 1
									Escribir ""
									Escribir "Corredor/a: ", Mayusculas(nombre)
									Escribir "ID: ", ID
									Escribir "¡Error! No ha sido aceptado."
									Escribir "Presione Enter para continuar"
									Esperar Tecla
								FinSi
						FinSegun
					FinSi
				FinSi
				si i == cantiCorredores Entonces
					bandera = Falso
				FinSi
			FinPara
		FinSi
	Hasta Que bandera = Falso
	Limpiar Pantalla
	Escribir "Corredores aceptados para la categoría 1: ", cantiPorCate1
	Escribir "Corredores aceptados para la categoría 2: ", cantiPorCate2
	Escribir "Corredores aceptados para la categoría 3: ", cantiPorCate3
	Escribir "Corredores aceptados para la categoría 4: ", cantiPorCate4
	Escribir "Corredores aceptados para la categoría 5: ", cantiPorCate5
	Escribir "Cantidad total de corredores aceptados: ", aceptados
FinAlgoritmo
