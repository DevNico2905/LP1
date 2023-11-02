Algoritmo algoritmo_4
	Definir tamañoArray1, Dato, suma, tamañoArray2, tamañoArray3, x, z Como Entero
	Definir promedio Como Real
	x = 0
	z = 0
	Escribir "¿Cuántos datos se desean ingresar?"
	Leer tamañoArray1
	
	Dimension Array1[tamañoArray1]
	
	//Leer datos 
	Para i = 1 Hasta tamañoArray1
		Escribir "Ingrese el dato para la posición N°" i
		Leer Dato
		Array1[i] = Dato
		suma = suma + Dato
	FinPara
	
	//promedio
	promedio = suma / tamañoArray1
	
	//Sacar el tamaño de los dos nuevos Arrays
	para i = 1 Hasta tamañoArray1
		si Array1[i] <= promedio Entonces
			tamañoArray2 = tamañoArray2 + 1
		SiNo
			tamañoArray3 = tamañoArray3 + 1
		FinSi
	FinPara
	
	
	//Crear y llenar los dos nuevos Arrays
	Dimension Array2[tamañoArray2]
	Dimension Array3[tamañoArray3]
	
	Para i = 1 Hasta tamañoArray1
		si Array1[i] <= promedio Entonces
			x = x + 1
			Array2[x] = Array1[i]
		FinSi
	FinPara
	
	Para i = 1 Hasta tamañoArray1
		si Array1[i] > promedio Entonces
			z = z + 1
			Array3[z] = Array1[i]
		FinSi
	FinPara
	Escribir ""
	
	//Imprimir los 3 arrays
	Escribir "Array Original: " Sin Saltar
	Para i = 1 hasta tamañoArray1
		Escribir Array1[i] " " Sin Saltar
	FinPara
	Escribir ""
	Escribir "El promedio de los elementos es:  ", promedio
	Escribir "Elementos menores o iguales al promedio: " Sin Saltar
	Para i = 1 hasta tamañoArray2
		Escribir Array2[i] " " Sin Saltar
	FinPara
	Escribir ""
	Escribir "Elementos superiores al promedio: " Sin Saltar
	Para i = 1 hasta tamañoArray3
		Escribir Array3[i] " " Sin Saltar
	FinPara
	Escribir ""
FinAlgoritmo