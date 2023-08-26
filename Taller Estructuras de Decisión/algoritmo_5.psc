Algoritmo algoritmo_5 //5. Hacer un algoritmo que determine la suma del valor menor y mayor en un grupo de 4 datos.
	Definir A,B,C,D, mayor_1,menor_1,menor_2, mayor_2, mayor_def, menor_def, suma Como Real
	Escribir "Ingresa los 4 datos a evaluar: "
	Leer A,B,C,D
	
	// Evalua el mayor y el menor entre A y B
	si A > B Entonces
		mayor_1 = A
		menor_1 = B
	SiNo
		mayor_1 = B
		menor_1 = A
	FinSi
	
	// Evalua el mayor y el menor entre C y D
	si C > D Entonces
		mayor_2 = C
		menor_2 = D
	SiNo
		mayor_2 = D
		menor_2 = C
	FinSi
	
	//Evalua el mayor definitivo
	si mayor_1 > mayor_2 Entonces
		mayor_def = mayor_1
	SiNo
		mayor_def = mayor_2
	FinSi
	
	//Evalua el menor definitivo
	si menor_1 < menor_2 Entonces
		menor_def = menor_1
	SiNo
		menor_def = menor_2
	FinSi
	
	suma = mayor_def + menor_def
	
	Escribir "El mayor es: ", mayor_def
	Escribir "El menor es ", menor_def
	Escribir "La suma de los dos es: ", suma
	
FinAlgoritmo
