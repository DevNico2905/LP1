Algoritmo algoritmo_1
	Escribir "¡Bienvenido, ingrese 5 valores para el Array!"
	Dimension Array[5]
	
	Para i = 1 hasta 5
		Escribir "Ingrese el valor para la posición #" i
		Leer valor
		Array[i] = valor
	FinPara
	
	Escribir "Los elementos son: [ " Sin Saltar
	Para w = 1 Hasta 5
		Escribir Array[w] " " Sin Saltar
	FinPara
	Escribir "]"
	Escribir "Hasta luego!"
FinAlgoritmo
