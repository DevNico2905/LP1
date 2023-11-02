Algoritmo algoritmo_2
	Escribir "¡BIENVENIDO!"
	Escribir "¿De cuántos elementos quiere hacer el Array?"
	Leer NumDimen
	
	si NumDimen <= 0 Entonces
		Escribir "¡Error! El número de elementos debe ser mayor a 0"
	SiNo
		Dimension Array[NumDimen]
		Dimension MayorYPosicion[1,2]
		MayorYPosicion[1,1] = 0
		MayorYPosicion[1,2] = 0
		
		Para i = 1 hasta NumDimen
			Escribir "Ingrese el elemento N°" i
			Leer elemento
			Array[i] = elemento
			
			si elemento > MayorYPosicion[1,1] Entonces
				MayorYPosicion[1,1] = elemento
				MayorYPosicion[1,2] = i
			FinSi
		FinPara
		
		Escribir "El valor del elemento mayor es: " MayorYPosicion[1,1] ". Y éste se encuentra en la posición: N°" MayorYPosicion[1,2]
	FinSi
FinAlgoritmo
