Algoritmo algoritmo_4
	// 4. Hacer un algoritmo que determine cuál es el mayor
	//en un grupo de cuatro datos diferentes.
	Definir A,B,C,D, mayor_1, mayor_2, mayor_def Como Real
	Escribir "Ingresa los 4 datos a evaluar: "
	Leer A,B,C,D
	
	// Evalua el mayor entre A y B
	si A > B Entonces
		mayor_1 = A
	SiNo
		mayor_1 = B
	FinSi
	
	// Evalua el mayor entre C y D
	si C > D Entonces
		mayor_2 = C
	SiNo
		mayor_2 = D
	FinSi
	
	//Evalua el mayor definitivo
	si mayor_1 > mayor_2 Entonces
		mayor_def = mayor_1
	SiNo
		mayor_def = mayor_2
	FinSi
	
	Escribir "El mayor es: ", mayor_def	
FinAlgoritmo