Algoritmo algoritmo_7
	Definir valorUnitario, cantidadDeUnidades, subTotal, total Como Entero
	valorUnitario = 800000
	
	Escribir "�Hola, bienvenido!"
	Escribir "�Cuant�s unidades comprar�?"
	Leer cantidadDeUnidades
	
	subTotal = cantidadDeUnidades * valorUnitario
	
	si cantidadDeUnidades >= 1 y cantidadDeUnidades < 5 Entonces
		total = subTotal * 0.90
		Escribir "Valor a pagar: $", total
	SiNo
		si	cantidadDeUnidades >= 5 y cantidadDeUnidades < 10 Entonces
			total = subTotal * 0.80
			Escribir "Valor a pagar: $", total
		SiNo
			si	cantidadDeUnidades >= 10 Entonces
				total = subTotal * 0.60
				Escribir "Valor a pagar: $", total
			SiNo
				Escribir "Opci�n no v�lida"
			FinSi
		FinSi
	FinSi
FinAlgoritmo
