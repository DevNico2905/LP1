Algoritmo algoritmo_6
	Definir cantidadTernas Como Entero
	Definir valor1, valor2, valor3 Como Real
	Definir valor1C, valor2C, valor3C, resultado Como Real
	Escribir "¡Bienvenido!"
	Escribir "¿Cuantos trios de valores generan un triángulo rectángulo?"
	Escribir "Ya lo veremos...!"
	Escribir ""
	Escribir "¿Cuantas ternas desea evaluar?"
	Leer cantidadTernas
	
	si cantidadTernas > 0 Entonces
		Para i = 1 Hasta cantidadTernas Con Paso 1 Hacer
			Escribir "Ingrese los valores de la terna N° ", i
			Leer valor1, valor2, valor3
			valor1C = valor1^2
			valor2C = valor2^2
			valor3C = valor3^2
			si valor1C + valor2C == valor3C Entonces
				resultado = resultado + 1
			FinSi
		Fin Para
	FinSi
	Escribir "La cantidad de ternas que generan un triángulo rectángulo es: ", resultado
FinAlgoritmo
