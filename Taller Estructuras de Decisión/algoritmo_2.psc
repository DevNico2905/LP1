Algoritmo algoritmo_2
	Definir pEsferaA, pEsferaB, pEsferaC, pEsferaD Como Entero
	
	Escribir "Ingresa el peso de la esfera A"
	Leer pEsferaA
	Escribir "Ingresa el peso de la esfera B"
	Leer pEsferaB
	Escribir "Ingresa el peso de la esfera C"
	Leer pEsferaC
	Escribir "Ingresa el peso de la esfera D"
	Leer pEsferaD
	
	SI	pEsferaA = pEsferaB y pEsferaB = pEsferaC Entonces
		//Si la esfera D es la diferente.
		si pEsferaA > pEsferaD	Entonces
			Escribir "La esfera D tiene un peso diferente a las demás. Y es de menor peso"
		SiNo
			Escribir "La esfera D tiene un peso diferente a las demás. Y es de mayor peso"
		FinSi
		
	SiNo
		//Sí la esfera C es la diferente
		si pEsferaA = pEsferaB y pEsferaB = pEsferaD Entonces
			
			si pEsferaA > pEsferaC	Entonces
				Escribir "La esfera C tiene un peso diferente a las demás. Y es de menor peso"
			SiNo
				Escribir "La esfera C tiene un peso diferente a las demás. Y es de mayor peso"
			FinSi
			
		SiNo
			//Sí la esfera B es la diferente
			si pEsferaA = pEsferaC y pEsferaC = pEsferaD Entonces
				
				si pEsferaA > pEsferaB	Entonces
					Escribir "La esfera B tiene un peso diferente a las demás. Y es de menor peso"
				SiNo
					Escribir "La esfera B tiene un peso diferente a las demás. Y es de mayor peso"
				FinSi
				
			SiNo
				//Sí la esfera A es la diferente.
				si pEsferaB = pEsferaC y pEsferaC = pEsferaC Entonces
					si pEsferaB > pEsferaA	Entonces
						Escribir "La esfera A tiene un peso diferente a las demás. Y es de menor peso"
					SiNo
						Escribir "La esfera A tiene un peso diferente a las demás. Y es de mayor peso"
					FinSi
				SiNo
					Escribir "No se pudo hacer el cálculo esperado."
				FinSi
			FinSi
		FinSi
	FinSi
FinAlgoritmo
