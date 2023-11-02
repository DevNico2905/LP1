Algoritmo algoritmo_5
	Definir cantidadEquipos, cantidadPartidos Como Entero
	Definir Informaci�nEquipos, Informaci�nPartidos Como Entero
	Definir C�digoYPuntos, aux, aux2, j Como Entero
	
	Escribir "Clasificaci�n del Campeonato Profesional de F�tbol"
	Escribir ""
	Escribir "�Cu�ntos equipos jugaron el campeonato?"
	Leer cantidadEquipos
	si cantidadEquipos <= 1 Entonces
		Escribir "�Error! La cantidad de equipos debe ser mayor a 1."
	SiNo
		// Se pide la informaci�n de los equipos.
		Dimension Informaci�nEquipos[cantidadEquipos, 8]
		Para i = 1 Hasta cantidadEquipos Hacer
			Limpiar Pantalla
			Escribir "Registre el equipo N�", i
			Escribir ""
			Escribir "- C�digo del equipo: "
			Leer Informaci�nEquipos[i,1]
			Escribir "- Partidos jugados: "
			Leer Informaci�nEquipos[i,2]
			Escribir "- Partidos ganados:"
			Leer Informaci�nEquipos[i,3]
			Escribir "- Partidos empatados:"
			Leer Informaci�nEquipos[i,4]
			Escribir "- Partidos perdidos:"
			Leer Informaci�nEquipos[i,5]
			Escribir "- Goles a favor:"
			Leer Informaci�nEquipos[i,6]
			Escribir "- Goles en contra:"
			Leer Informaci�nEquipos[i,7]
			Escribir "- Puntos:"
			Leer Informaci�nEquipos[i,8]
		FinPara
		
		Limpiar Pantalla
		Escribir "�Cu�ntos partidos se jugaron a fecha?"
		Leer cantidadPartidos
		si cantidadPartidos < 1 Entonces
			Escribir "�Error! La cantidad de partidos debe ser mayor a 1."
		SiNo
			//Se pide la informaci�n de los partidos
			Dimension Informaci�nPartidos[cantidadPartidos,4]
			Para i = 1 Hasta cantidadPartidos Hacer
				Limpiar Pantalla
				Escribir "Registro del partido N�", i
				Escribir ""
				Escribir "- C�digo del equipo local:"
				Leer Informaci�nPartidos[i,1]
				Escribir "- Goles del equipo local:"
				Leer Informaci�nPartidos[i,2]
				Escribir "- C�digo del equipo visitante:"
				Leer Informaci�nPartidos[i,3]
				Escribir "- Goles del equipo visitante:"
				Leer Informaci�nPartidos[i,4]
			FinPara
		FinSi
		
		Limpiar Pantalla
		// Voy a hacer una matriz que contenga el c�digo de cada equipo con su respectivo puntaje
		Dimension C�digoYPuntos[cantidadEquipos,2]
		Para i = 1 Hasta cantidadEquipos Hacer
			C�digoYPuntos[i,1] = Informaci�nEquipos[i,1]
			C�digoYPuntos[i,2] = Informaci�nEquipos[i,8]
		FinPara
		//Imprimo la matriz original con los c�digos y puntos seg�n el usuario los ingres�
		Escribir "             Equipos"
		Escribir " C�digo                   Puntos"
		
		Para i = 1 Hasta cantidadEquipos Hacer
			Escribir "| ", C�digoYPuntos[i,1], "                      ", C�digoYPuntos[i,2]
		FinPara
		//Ordenamiento por m�todo burbuja
		Para j = 1 Hasta cantidadEquipos - 1 Hacer
			Para i = 1 Hasta cantidadEquipos - 1 Hacer
				si C�digoYPuntos[i,2] <= C�digoYPuntos[i + 1, 2] Entonces
					aux = C�digoYPuntos[i,2];							aux2 = C�digoYPuntos[i,1];
					C�digoYPuntos[i,2] = C�digoYPuntos[i + 1, 2];		C�digoYPuntos[i,1] = C�digoYPuntos[i + 1, 1];
					C�digoYPuntos[i + 1, 2] = aux;						C�digoYPuntos[i + 1, 1] = aux2;
				FinSi
			FinPara
		FinPara
		//Imprimo la matriz ordenada
		Escribir ""
		Escribir "Tabla de clasificaci�n del Campeonato"
		Escribir "        Equipos en orden"
		Escribir " C�digo                   Puntos"
		
		Para i = 1 Hasta cantidadEquipos Hacer
			Escribir "| ", C�digoYPuntos[i,1], "                      ", C�digoYPuntos[i,2]
		FinPara
	FinSi
FinAlgoritmo
