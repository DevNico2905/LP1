Algoritmo algoritmo_10
	Definir cantiVehículos, tipo, modelo, capacidad Como Entero
	Definir a,b,c,d,e Como Entero
	Definir bandera Como Logico
	bandera = Verdadero
	Repetir
		Escribir "¡Vamos a hacer un censo de tus vehículos!"
		Escribir ""
		Escribir "Registrar vehículos."
		Escribir "- ¿Cuantos vehículos desea registrar?"
		Leer cantiVehículos
		
		si cantiVehículos <= 0 Entonces
			Escribir "La cantidad de vehículos debe ser mayor o igual a 1."
			Escribir "Presione Enter para reiniciar"
			Esperar Tecla
			Limpiar Pantalla
		SiNo
			Para i = 1 Hasta cantiVehículos Con Paso 1 Hacer
				Limpiar Pantalla
				Escribir "Información del vehículo N° ", i
				Escribir ""
				Escribir "Tipo de vehículo [1-2]"
				Escribir "-- 1. Buseta."
				Escribir "-- 2. Bus."
				Leer tipo
				si tipo < 1 o tipo > 2 Entonces
					i = cantiVehículos
					Escribir "Tipo de vehículo no válido."
					Escribir "Presione Enter para reiniciar"
					Esperar Tecla
					Limpiar Pantalla
				SiNo
					Escribir "Modelo del vehículo."
					Leer modelo
					si modelo <= 0 Entonces
						i = cantiVehículos
						Escribir "Modelo no válido."
						Escribir "Presione Enter para reiniciar"
						Esperar Tecla
						Limpiar Pantalla
					SiNo
						Escribir "Capacidad del vehículo."
						Leer capacidad
						si capacidad <= 0 Entonces
							i = cantiVehículos
							Escribir "La capacidad debe ser mayor a 0."
							Escribir "Presione Enter para reiniciar"
							Esperar Tecla
							Limpiar Pantalla
						SiNo
							si modelo < 1995 Entonces
								a = a + 1
							FinSi
							si modelo >= 1995 y capacidad <= 35 Entonces
								b = b + 1
							FinSi
							Segun tipo Hacer
								1:
									si capacidad <= 35 Entonces
										d = d + 1
									FinSi
								2:
									si modelo > 1995 y capacidad > 35 Entonces
										c = c + 1
									FinSi
							FinSegun
							Escribir ""
							Escribir "¡Ha sido registrado!"
							Escribir "Presione Enter para continuar"
							Esperar Tecla
						FinSi
					FinSi
				FinSi
				si i == cantiVehículos Entonces
					bandera = Falso
				FinSi
			FinPara
		FinSi
	Hasta Que bandera = Falso
	Limpiar Pantalla
	Escribir "El censo realizado fue el siguiente:"
	Escribir "- Vehículos cuyo modelo sea anterior a 1995: ", a
	Escribir "- Vehículos cuyo modelo sea de 1995 o después y con capacidad menor a 35 pasajeros: ", b
	Escribir "- Buses cuyo modelo sea posterior a 1995 con capacidad mayor de 35 pasajeros: ", c
	Escribir "- Busetas con capacidad menor de 35 pasajeros: ", d
	Escribir "- El total de vehículos de la empresa: ", cantiVehiculos
FinAlgoritmo