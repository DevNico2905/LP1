Algoritmo algoritmo_11
	Definir añoRef1, añoRef2,  inscritos, sexo, añoNacimiento, estadoCivil Como Entero
	Definir numHS,numHC,numMS, numMC,totalS, totalC, totalElecc24, totalElecc26 Como Entero
	Definir bandera Como Logico
	bandera = Verdadero
	añoRef1 = 2023
	añoRef2 = 2025
	Repetir
		Escribir "¡Registro para las elecciones nacionales 2024!"
		Escribir ""
		Escribir "Registro de votantes."
		Escribir "- ¿Cuantos votantes deasea registrar?"
		Leer inscritos
		
		si inscritos <= 0 Entonces
			Escribir "La cantidad de personas a registras debe ser mayor o igual a 1."
			Escribir "Presione Enter para reiniciar"
			Esperar Tecla
			Limpiar Pantalla
		SiNo
			Para i = 1 Hasta inscritos Con Paso 1 Hacer
				Limpiar Pantalla
				Escribir "Registro del votante N° ", i
				Escribir ""
				Escribir "Sexo [1-2]"
				Escribir "-- 1. Masculino."
				Escribir "-- 2. Femenino."
				Leer sexo
				si sexo < 1 o sexo > 2 Entonces
					i = inscritos
					Escribir "Opción no válida."
					Escribir "Presione Enter para reiniciar"
					Esperar Tecla
					Limpiar Pantalla
				SiNo
					Escribir "Año de nacimiento:"
					Leer añoNacimiento
					si añoNacimiento <= 1823 Entonces // Que no hayan personas con más de 200 años :)
						i = añoNacimiento
						Escribir "Año no válido."
						Escribir "Presione Enter para reiniciar"
						Esperar Tecla
						Limpiar Pantalla
					SiNo
						Escribir "Estado civil [1-2]"
						Escribir "-- 1. Soltero."
						Escribir "-- 2. Casado."
						Leer estadoCivil
						si estadoCivil < 1 o estadoCivil > 2 Entonces
							i = estadoCivil
							Escribir "Estado civil no válido."
							Escribir "Presione Enter para reiniciar"
							Esperar Tecla
							Limpiar Pantalla
						SiNo
							si (añoRef1 - añoNacimiento) < 18 Entonces
								Escribir ""
								Escribir "No cumple con la edad para votar en las elecciones nacionales 2024"
								si (añoRef2 - añoNacimiento) < 18 Entonces
									Escribir "Tampoco cumple la edad para votar en las elecciones nacionales 2026"
								FinSi
								si (añoRef2 - añoNacimiento) >= 18 Entonces
									Escribir "Podrá votar en las elecciones nacionales 2026"
									totalElecc26 = totalElecc26 + 1
								FinSi
							sino
								totalElecc24 = totalElecc24 + 1
								totalElecc26 = totalElecc26 + 1
								Escribir ""
								Escribir "¡Ha sido registrado!"
							FinSi
							Escribir "Presione Enter para continuar"
							Esperar Tecla
							si sexo == 1 y estadoCivil == 1 Entonces
								numHS = numHS + 1
							FinSi
							si sexo == 1 y estadoCivil == 2 Entonces
								numHC = numHC + 1
							FinSi
							si sexo == 2 y estadoCivil == 1 Entonces
								numMS = numMS + 1
							FinSi
							si sexo == 2 y estadoCivil == 2 Entonces
								numMC = numMC + 1
							FinSi
							si estadoCivil == 1 Entonces
								totalS = totalS + 1
							FinSi
							si estadoCivil == 2 Entonces
								totalC = totalC + 1
							FinSi
						FinSi
					FinSi
				FinSi
				si i == inscritos Entonces
					bandera = Falso
				FinSi
			FinPara
		FinSi
	Hasta Que bandera = Falso
	Limpiar Pantalla
	Escribir "El registro que tenemos es el siguiente:"
	Escribir "- Número de hombres solteros: ", numHS
	Escribir "- Número de hombres casados: ", numHC
	Escribir "- Número de mujeres solteras: ", numMS
	Escribir "- Número de mujeres casadas: ", numMC
	Escribir "- Total de personas solteras: ", totalS
	Escribir "- Total de personas casadas: ", totalC
	Escribir "- Total votantes elecciones nacional 2024: ", totalElecc24
	Escribir "- Total votantes elecciones nacional 2026: ", totalElecc26
FinAlgoritmo