Algoritmo algoritmo_9 // :  0-2 0% ; 3-5 10% ; 6-10 15% ; 11 en adelante 20%. 
	Definir cantidadDeProducto, precioProducto, valorFinal Como Entero
	
	Escribir "¡Hola, Bienvenido!"
	Escribir "Calcula el valor total de la compra."
	Escribir "Ingresa la cantidad de manzanas a llevar: "
	Leer cantidadDeProducto
	Escribir "Ingresa el precio por unidad del producto: $"
	Leer precioProducto
	
	si cantidadDeProducto >= 0 y cantidadDeProducto <= 2 Entonces
		valorFinal = (cantidadDeProducto * precioProducto)
	SiNo
		si	cantidadDeProducto >= 3 y cantidadDeProducto <= 5 Entonces
			valorFinal = (cantidadDeProducto * precioProducto) * 0.90
		SiNo
			si cantidadDeProducto >= 6 y cantidadDeProducto <= 10 Entonces
				valorFinal = (cantidadDeProducto * precioProducto) * 0.85
			SiNo
				si cantidadDeProducto > 10 Entonces
					valorFinal = (cantidadDeProducto * precioProducto) * 0.80
				SiNo
					Escribir "Valores no válidos"
				FinSi
			FinSi
		FinSi
	FinSi
	Escribir "El valor de su compra es: $", valorFinal
FinAlgoritmo
