Algoritmo algoritmo_4 //4.	Elaborar un algoritmo que encuentre el mayor valor
	//entre un grupo de datos positivos. 
	Definir cantidad_De_Datos Como Entero
	Definir dato, mun_Mayor Como Real
	Escribir "¡Encontrar el número mayor!"
	Escribir "¿Cuantos datos va a ingresar?"
	Leer cantidad_De_Datos
	
	si	cantidad_De_Datos > 0 Entonces
		Escribir "Ingresa los datos"
		
		para i = 1 Hasta cantidad_De_Datos Con Paso 1 Hacer
			Leer dato
			si dato > 0 Entonces
				si dato > num_Mayor Entonces
					num_Mayor = dato
				FinSi
			SiNo
				i = cantidad_De_Datos
				Escribir "Los datos deben ser positivos. Vuelve a iniciar."
				salir = Verdadero
			FinSi
		FinPara
		si salir == Falso Entonces
			Escribir "El número mayor entre el grupo de datos es: ",num_Mayor
		FinSi
	SiNo
		Escribir "¡Opción invalida!"
	FinSi
FinAlgoritmo
