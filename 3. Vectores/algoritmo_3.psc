Algoritmo algoritmo_3
	Definir cantiDatos, Dato Como Entero
	Escribir "¿Cuántos datos se desean ingresar?"
	Leer cantiDatos
	Dimension Array[cantiDatos]
	Para i = 1 Hasta cantiDatos
		Escribir "Ingrese el dato para la posición N°" i
		Leer Dato
		Array[i] = Dato
	FinPara
FinAlgoritmo