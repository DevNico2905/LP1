Algoritmo algoritmo_1
	Definir salarioBase, ventasD1, ventasD2, ventasD3, ventasTotal, incentivo, pagoD1, pagoD2, pagoD3 Como real
	
	Escribir "Calcular salario"
	Escribir "Ingresa las ventas del departamento N° 1:"
	Leer ventasD1
	Escribir "Ingresa las ventas del departamento N° 2:"
	Leer ventasD2
	Escribir "Ingresa las ventas del departamento N° 3:"
	Leer ventasD3
	Escribir "Ingresa el salario base."
	Leer salarioBase
	
	incentivo = salarioBase * 0.2
	ventasTotal = ventasD1 + ventasD2 + ventasD3
	
	si ventasD1 > (ventasTotal * 0.33)Entonces
		pagoD1 = salarioBase + incentivo
	SiNo
		pagoD1 = salarioBase
	FinSi
	
	si ventasD2 > (ventasTotal * 0.33)Entonces
		pagoD2 = salarioBase + incentivo
	SiNo
		pagoD2 = salarioBase
	FinSi
	
	si ventasD3 > (ventasTotal * 0.33)Entonces
		pagoD3 = salarioBase + incentivo
	SiNo
		pagoD3 = salarioBase
	FinSi
	
	Escribir "El pago para el Departamento N° 1 es de: $", pagoD1
	Escribir "El pago para el Departamento N° 2 es de: $", pagoD2
	Escribir "El pago para el Departamento N° 3 es de: $", pagoD3

	
FinAlgoritmo
