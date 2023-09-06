Algoritmo algoritmo_10
	Definir cantiVeh�culos, tipo, modelo, capacidad Como Entero
	Definir a,b,c,d,e Como Entero
	Definir bandera Como Logico
	bandera = Verdadero
	Repetir
		Escribir "�Vamos a hacer un censo de tus veh�culos!"
		Escribir ""
		Escribir "Registrar veh�culos."
		Escribir "- �Cuantos veh�culos desea registrar?"
		Leer cantiVeh�culos
		
		si cantiVeh�culos <= 0 Entonces
			Escribir "La cantidad de veh�culos debe ser mayor o igual a 1."
			Escribir "Presione Enter para reiniciar"
			Esperar Tecla
			Limpiar Pantalla
		SiNo
			Para i = 1 Hasta cantiVeh�culos Con Paso 1 Hacer
				Limpiar Pantalla
				Escribir "Informaci�n del veh�culo N� ", i
				Escribir ""
				Escribir "Tipo de veh�culo [1-2]"
				Escribir "-- 1. Buseta."
				Escribir "-- 2. Bus."
				Leer tipo
				si tipo < 1 o tipo > 2 Entonces
					i = cantiVeh�culos
					Escribir "Tipo de veh�culo no v�lido."
					Escribir "Presione Enter para reiniciar"
					Esperar Tecla
					Limpiar Pantalla
				SiNo
					Escribir "Modelo del veh�culo."
					Leer modelo
					si modelo <= 0 Entonces
						i = cantiVeh�culos
						Escribir "Modelo no v�lido."
						Escribir "Presione Enter para reiniciar"
						Esperar Tecla
						Limpiar Pantalla
					SiNo
						Escribir "Capacidad del veh�culo."
						Leer capacidad
						si capacidad <= 0 Entonces
							i = cantiVeh�culos
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
							Escribir "�Ha sido registrado!"
							Escribir "Presione Enter para continuar"
							Esperar Tecla
						FinSi
					FinSi
				FinSi
				si i == cantiVeh�culos Entonces
					bandera = Falso
				FinSi
			FinPara
		FinSi
	Hasta Que bandera = Falso
	Limpiar Pantalla
	Escribir "El censo realizado fue el siguiente:"
	Escribir "- Veh�culos cuyo modelo sea anterior a 1995: ", a
	Escribir "- Veh�culos cuyo modelo sea de 1995 o despu�s y con capacidad menor a 35 pasajeros: ", b
	Escribir "- Buses cuyo modelo sea posterior a 1995 con capacidad mayor de 35 pasajeros: ", c
	Escribir "- Busetas con capacidad menor de 35 pasajeros: ", d
	Escribir "- El total de veh�culos de la empresa: ", cantiVehiculos
FinAlgoritmo