Algoritmo algoritmo_5 //5.	Hacer un algoritmo que encuentre la suma de los
	//valores mayor y menor entre un grupo de datos positivos. 
	Definir cantidad_De_Datos Como Entero
	Definir dato, mun_Mayor, num_Menor, suma Como Real
	Definir bandera Como Logico
	bandera = Verdadero
	Escribir "¡Calcular la suma del número mayor y el menor!"
	Escribir "¿Cuantos datos va a ingresar?"
	Leer cantidad_De_Datos
	
	si	cantidad_De_Datos > 0 Entonces
		para i = 1 Hasta cantidad_De_Datos Con Paso 1 Hacer
			Escribir "Ingresa el número ", i ": "
			Leer dato
			
			si dato < 0 Entonces
				i = cantidad_De_Datos
				salto = Verdadero
			FinSi
			
			si bandera Entonces
				num_Mayor = dato
				num_Menor = dato
				bandera = Falso
			FinSi
			
			si dato > num_Mayor Entonces
				num_Mayor = dato
			FinSi
			si dato < num_Menor Entonces
				num_Menor = dato
			FinSi
			si salto Entonces
				Escribir "Los datos solo pueden ser valores positivos. Vuelva a iniciar"
			FinSi
		FinPara
		suma = num_Mayor + num_Menor
		Escribir "El número mayor es ", num_Mayor ", el menor es ", num_Menor," y la suma da: ", suma
	SiNo
		Escribir "¡Opción invalida!"
	FinSi
FinAlgoritmo
