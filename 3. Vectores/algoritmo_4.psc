Algoritmo algoritmo_4
	Definir tama�oArray1, Dato, suma, tama�oArray2, tama�oArray3, x, z Como Entero
	Definir promedio Como Real
	x = 0
	z = 0
	Escribir "�Cu�ntos datos se desean ingresar?"
	Leer tama�oArray1
	
	Dimension Array1[tama�oArray1]
	
	//Leer datos 
	Para i = 1 Hasta tama�oArray1
		Escribir "Ingrese el dato para la posici�n N�" i
		Leer Dato
		Array1[i] = Dato
		suma = suma + Dato
	FinPara
	
	//promedio
	promedio = suma / tama�oArray1
	
	//Sacar el tama�o de los dos nuevos Arrays
	para i = 1 Hasta tama�oArray1
		si Array1[i] <= promedio Entonces
			tama�oArray2 = tama�oArray2 + 1
		SiNo
			tama�oArray3 = tama�oArray3 + 1
		FinSi
	FinPara
	
	
	//Crear y llenar los dos nuevos Arrays
	Dimension Array2[tama�oArray2]
	Dimension Array3[tama�oArray3]
	
	Para i = 1 Hasta tama�oArray1
		si Array1[i] <= promedio Entonces
			x = x + 1
			Array2[x] = Array1[i]
		FinSi
	FinPara
	
	Para i = 1 Hasta tama�oArray1
		si Array1[i] > promedio Entonces
			z = z + 1
			Array3[z] = Array1[i]
		FinSi
	FinPara
	Escribir ""
	
	//Imprimir los 3 arrays
	Escribir "Array Original: " Sin Saltar
	Para i = 1 hasta tama�oArray1
		Escribir Array1[i] " " Sin Saltar
	FinPara
	Escribir ""
	Escribir "El promedio de los elementos es:  ", promedio
	Escribir "Elementos menores o iguales al promedio: " Sin Saltar
	Para i = 1 hasta tama�oArray2
		Escribir Array2[i] " " Sin Saltar
	FinPara
	Escribir ""
	Escribir "Elementos superiores al promedio: " Sin Saltar
	Para i = 1 hasta tama�oArray3
		Escribir Array3[i] " " Sin Saltar
	FinPara
	Escribir ""
FinAlgoritmo