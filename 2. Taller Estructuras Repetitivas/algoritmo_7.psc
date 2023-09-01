Algoritmo algoritmo_7
	Definir opcionFinal Como Entero
	Definir codigo, nombre Como Caracter
	Definir  numHijos, salarioPorHora, numHorasTrabajo, devengado, retencion, subsidio, totalPagar  Como Real
	Escribir "¡Bienvenido!"
	Escribir "Esta herramienta te sirve para calcular el devengado,"
	Escribir "retención, subsidio y el total a pagar de tus empleados."
	Escribir " "

	Repetir
		Escribir "Por favor ingrese la siguiente información de su empleado: "
		Escribir "Código:"
		Leer codigo
		Escribir "Nombre:"
		Leer nombre
		Escribir "Número de hijos:"
		leer numHijos
		Escribir "Salario por hora:"
		Leer salarioPorHora
		Escribir "Número de horas trabajadas al mes:"
		leer numHorasTrabajo
		Escribir " "
		
		devengado = salarioPorHora*numHorasTrabajo
		si devengado < 300000 Entonces
			si numHijos > 6 Entonces
				retencion = 0
			FinSi
			si numHijos <= 6 Entonces
				retencion =  devengado * (((6 - numHijos)/2) / 100)
			FinSi
		SiNo
			si devengado >= 300000 Entonces
				si numHijos < 3 Entonces
					retencion = devengado * 0.03
				FinSi
				si numHijos >= 3 Entonces
					retencion = devengado * ((10/numHijos)/100)
				FinSi
			FinSi
		FinSi
		subsidio = numHijos * 1200
		totalPagar = (devengado - retencion) + subsidio
		
		Escribir "Para: ", Mayusculas(nombre)
		Escribir "Con código: ", codigo
		Escribir "El devengado es: ", devengado ", la retención es: ", retencion ", y el subsidio es: ", subsidio
		Escribir "Total a pagar: " redon(totalPagar)
		Escribir ""
		Escribir "Escriba (1) para calcular el total a pagar de otro empleado."
		Escribir "Escriba (2) para salir."
		Leer opcionFinal
		si opcionFinal == 1 Entonces
			Limpiar Pantalla
		FinSi
	Hasta Que opcionFinal == 2
	Escribir "¡Con gusto!"
FinAlgoritmo