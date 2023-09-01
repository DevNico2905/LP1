Algoritmo algoritmo_3 //3.	Encontrar la raíz cuadrada, el cuadrado y el cubo de un grupo de números enteros positivos.
	Definir cantidad_De_Datos, dato, i, j Como Entero
	Escribir "¡Bienvenido! Calcular raíz, cuadrado y el cubo"
	Escribir "¿Cuantos números desea calcular?"
	Leer cantidad_De_Datos
	
	si cantidad_De_Datos > 0 Entonces
		
		Dimension grupo_numeros(cantidad_De_Datos)
		
		Escribir "Ingresa los datos: "
		
		Para i=0 Hasta cantidad_De_Datos - 1 Con Paso 1 Hacer
			Leer dato
			si dato > 0 Entonces
				grupo_numeros(i) = dato
			SiNo
				i = cantidad_De_Datos - 1
				salto = Verdadero 
			FinSi
		FinPara
		
		si salto Entonces
			Escribir "Los datos solo pueden ser números enteros positivos. Vuelva a iniciar."
		SiNo
			Para j=0 Hasta cantidad_De_Datos - 1 Con Paso 1 Hacer
				raizC = raiz(grupo_numeros(j))
				cuadrado = (grupo_numeros(j)^ 2)
				cubo = (grupo_numeros(j)^ 3)
				Escribir "Dato N° ", j + 1, " = ",grupo_numeros(j)," | Raíz cuadrada: ", raizC, " | Cuadrado: ", cuadrado, " | Cubo: ", cubo
			FinPara
		FinSi
	SiNo
		Escribir "¡Opción no válida!"
	FinSi
FinAlgoritmo