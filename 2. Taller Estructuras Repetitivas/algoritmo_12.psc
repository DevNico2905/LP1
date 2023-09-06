Algoritmo algoritmo_12
	Definir codigo, codigoOtrasEntidades Como Caracter
	Definir anteAgua, actuAgua, anteEnergia, actuEnergia, anteTelefono, actuTelefono Como Real
	Definir claveTelefonica, pagoTelefonica, claveReparaciones, pagoReparaciones Como Real
	Definir avaluo, otrasEntidades Como Entero
	Definir pAgua, pagoLuz, pagoTelefono, tMunicipal, pOtrasE, total Como Real
	Definir bandera Como Logico
	bandera = Verdadero
	
	Repetir
		Escribir "�Empresas P�blicas!"
		Escribir ""
		Escribir "Recolecci�n de datos para pagos de facturas."
		Escribir "C�digo del usuario:"
		Leer codigo
		Escribir "Aval�o de la propiedad:"
		Leer avaluo
		
		si avaluo <= 0 Entonces
			Escribir "El aval�o deber ser mayor a 0."
			Escribir "Presione Enter para reiniciar"
			Esperar Tecla
			Limpiar Pantalla
		SiNo
			Escribir "Lectura anterior del agua en m3:"
			Leer anteAgua
			si anteAgua <= 0 Entonces
				Escribir "Opci�n no v�lida."
				Escribir "Presione Enter para reiniciar"
				Esperar Tecla
				Limpiar Pantalla
			SiNo
				Escribir "Lectura actual del agua en m3:"
				Leer actuAgua
				si actuAgua <= 0 Entonces
					Escribir "Opci�n no v�lida."
					Escribir "Presione Enter para reiniciar"
					Esperar Tecla
					Limpiar Pantalla
				SiNo
					Escribir "Lectura anterior de energ�a en kw/h:"
					Leer anteEnergia
						si anteEnergia <= 0 Entonces
							Escribir "Opci�n no v�lida,"
							Escribir "Presione Enter para reiniciar"
							Esperar Tecla
							Limpiar Pantalla
						SiNo
							Escribir "Lectura actual de energ�a en kw/h:"
							Leer actuEnergia
							si actuEnergia <= 0 Entonces
								Escribir "Opci�n no v�lida,"
								Escribir "Presione Enter para reiniciar"
								Esperar Tecla
								Limpiar Pantalla
							SiNo
								Escribir "Lectura anterior de tel�fono:"
								Leer anteTelefono
								si anteTelefono <= 0 Entonces
									Escribir "Opci�n no v�lida,"
									Escribir "Presione Enter para reiniciar"
									Esperar Tecla
									Limpiar Pantalla
								SiNo
									Escribir "Lectura actual de tel�fono:"
									Leer actuTelefono
									si actuTelefono <= 0 Entonces
										Escribir "Opci�n no v�lida,"
										Escribir "Presione Enter para reiniciar"
										Esperar Tecla
										Limpiar Pantalla
									SiNo
										Escribir "Otras entidades [1-2]"
										Escribir "1. Si hay cobro."
										Escribir "2. Si no hay cobro."
										Leer otrasEntidades
										si otrasEntidades <= 0 o otrasEntidades > 2 Entonces
											Escribir "Opci�n no v�lida,"
											Escribir "Presione Enter para reiniciar"
											Esperar Tecla
											Limpiar Pantalla
										SiNo
											Segun otrasEntidades Hacer
												1:
													Escribir "C�digo de usuario:"
													Leer codigoOtrasEntidades
													Escribir "Clave telef�nica."
													Escribir "1. Si aplica."
													Escribir "2. Si no aplica."
													leer  claveTelefonica
													si claveTelefonica = 1 Entonces
														Escribir "Pago telefonica:"
														Leer pagoTelefonica
													FinSi
													Escribir "Clave reparaciones"
													Escribir "1. Si aplica."
													Escribir "2. Si no aplica."
													leer  claveReparaciones
													si claveReparaciones = 1 Entonces
														Escribir "Pago reparaciones."
														Leer pagoReparaciones
													FinSi
											FinSegun
											bandera = Falso
										FinSi
									FinSi
								FinSi
							FinSi
						FinSi
					FinSi
				FinSi
		FinSi
	Hasta Que bandera = Falso
	si (actuAgua - anteAgua) > 20 Entonces
		pAgua = ((actuAgua - anteAgua) - 20) * 2000
	SiNo
		pAgua = 0
	FinSi
	pagoLuz = (actuEnergia - anteEnergia)  * 1000
	pagoTelefono = (actuTelefono - anteTelefono) * 6
	tMunicipal = avaluo * 0.01
	pOtrasE = pagoTelefonica + pagoReparaciones
	total = pAgua + pagoLuz + pagoTelefono + tMunicipal + pOtrasE
	Limpiar Pantalla
	Escribir "Usuario: ", codigo
	Escribir "El total de valores a pagar son los siguientes:"
	Escribir "- Agua: ", pAgua
	Escribir "- Luz: ", pagoLuz
	Escribir "- Tel�fono: ", pagoTelefono
	Escribir "- Tasa Municipal de aseo: ", tMunicipal
	Escribir "- Otras Entidades: ", pOtrasE
	Escribir "-- Total: ", total
FinAlgoritmo