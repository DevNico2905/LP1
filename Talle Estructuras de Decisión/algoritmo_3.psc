Algoritmo algoritmo_3 // 3. Se tienen tres esferas (A,B,C) de diferente peso, elaborar un algoritmo que determine cu�l esla esfera de mayor peso.
		Definir PesoA, PesoB, PesoC como real
		
		Escribir "Ingrese el peso de la esfera A:"
		Leer PesoA
		Escribir "Ingrese el peso de la esfera B:"
		Leer PesoB
		Escribir "Ingrese el peso de la esfera C:"
		Leer PesoC
		
		si PesoA > PesoB y PesoA > PesoC Entonces
			Escribir "La esfera de mayor peso es la A."
		SiNo
			si PesoB > PesoA y PesoB > PesoC Entonces
				Escribir "La esfera de mayor peso es la B."
			SiNo
				si PesoC > PesoA y PesoC > PesoB Entonces
					Escribir "La esfera de mayor peso es la C."
				SiNo
					Escribir "No se pudo realizar el c�lculo esperado"
				FinSi
			FinSi
		FinSi
		
		
FinAlgoritmo

