Algoritmo algoritmo_6 // 6. Elaborar un algoritmo que determine el valor equivalente en el sistema numérico decimal, de un número de cinco dígitos octales.
	Definir numeroUsuario, numeroOctal, zero, one, two, three, four, numeroDecimal Como entero
	Escribir "Ingresa un número octal de 5 dígitos."
	Leer numeroUsuario
	numeroOctal = numeroUsuario
	four = trunc(numeroOctal/10000)
		numeroOctal = numeroOctal - (four * 10000)
	three = trunc(numeroOctal/1000)
		numeroOctal = numeroOctal - (three * 1000)
	two = trunc(numeroOctal/100)
		numeroOctal = numeroOctal - (two * 100)
	one = trunc(numeroOctal/10)
		numeroOctal = numeroOctal - (one * 10)
	zero = numeroOctal
	
	numeroDecimal = (zero * 8^0) + (one * 8^1) + (two * 8^2) + (three * 8^3) + (four * 8^4)
	
	si numeroUsuario >= 100000 o numeroUsuario < 10000 Entonces
		Escribir "Recuerda, el número debe ser de 5 dígitos."
	SiNo
		si four > 7 o three > 7 o two > 7 o one > 7 o zero > 7 Entonces
			Escribir "¡Error!"
			Escribir "El Sistema Octal es en base 8. Este sistema utiliza los símbolos 0, 1, 2, 3, 4, 5, 6 y 7."
		SiNo
			Escribir "El número Octal ",numeroUsuario " es ", numeroDecimal " en el sistema decimal."
		FinSi
	FinSi
FinAlgoritmo
