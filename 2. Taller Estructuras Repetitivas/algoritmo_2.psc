Algoritmo algoritmo_2
	Definir cantidad_De_Datos Como Entero
	Definir dato, promedio,suma_Datos, suma_Varianza, varianza, desviacion Como Real
	Definir salto como logico
	Escribir "¿Sobre cuantos datos quiere calcular la desviación estandar?"
	Leer cantidad_De_Datos
	
	si cantidad_De_Datos > 0 Entonces
		
		Dimension grupo_De_Datos(cantidad_De_Datos)
		
		Escribir "Ingresa los datos: "
		
		Para i = 0  Hasta cantidad_De_Datos - 1 Con Paso 1 Hacer
			Leer dato
			si dato >= 0 Entonces
				grupo_De_Datos(i) = dato
				suma_Datos = suma_Datos + grupo_De_Datos(i)
			SiNo
				i = cantidad_De_Datos - 1
				j = cantidad_De_Datos - 1
				salto = Verdadero 
			FinSi
		FinPara
		
		promedio = suma_Datos/cantidad_De_Datos
		
		Para j = 0  Hasta cantidad_De_Datos - 1 Con Paso 1 Hacer
			suma_Varianza = suma_Varianza + ((grupo_De_Datos(j) - promedio) ^ 2)
		FinPara
		
		varianza = suma_Varianza/cantidad_De_Datos
		desviacion = raiz(varianza)
		
		si salto Entonces
			Escribir "Los datos solo pueden ser valores positivos. Vuelva a iniciar"
		SiNo
			Escribir "La desviación típica del grupo de datos es: ", desviacion
		FinSi
		
	SiNo
		Escribir "Opción no válida!"
	FinSi
FinAlgoritmo