Algoritmo algoritmo_5
	Definir cantidadEquipos, cantidadPartidos Como Entero
	Definir InformaciónEquipos, InformaciónPartidos Como Entero
	Definir CódigoYPuntos, aux, aux2, j Como Entero
	
	Escribir "Clasificación del Campeonato Profesional de Fútbol"
	Escribir ""
	Escribir "¿Cuántos equipos jugaron el campeonato?"
	Leer cantidadEquipos
	si cantidadEquipos <= 1 Entonces
		Escribir "¡Error! La cantidad de equipos debe ser mayor a 1."
	SiNo
		// Se pide la información de los equipos.
		Dimension InformaciónEquipos[cantidadEquipos, 8]
		Para i = 1 Hasta cantidadEquipos Hacer
			Limpiar Pantalla
			Escribir "Registre el equipo N°", i
			Escribir ""
			Escribir "- Código del equipo: "
			Leer InformaciónEquipos[i,1]
			Escribir "- Partidos jugados: "
			Leer InformaciónEquipos[i,2]
			Escribir "- Partidos ganados:"
			Leer InformaciónEquipos[i,3]
			Escribir "- Partidos empatados:"
			Leer InformaciónEquipos[i,4]
			Escribir "- Partidos perdidos:"
			Leer InformaciónEquipos[i,5]
			Escribir "- Goles a favor:"
			Leer InformaciónEquipos[i,6]
			Escribir "- Goles en contra:"
			Leer InformaciónEquipos[i,7]
			Escribir "- Puntos:"
			Leer InformaciónEquipos[i,8]
		FinPara
		
		Limpiar Pantalla
		Escribir "¿Cuántos partidos se jugaron a fecha?"
		Leer cantidadPartidos
		si cantidadPartidos < 1 Entonces
			Escribir "¡Error! La cantidad de partidos debe ser mayor a 1."
		SiNo
			//Se pide la información de los partidos
			Dimension InformaciónPartidos[cantidadPartidos,4]
			Para i = 1 Hasta cantidadPartidos Hacer
				Limpiar Pantalla
				Escribir "Registro del partido N°", i
				Escribir ""
				Escribir "- Código del equipo local:"
				Leer InformaciónPartidos[i,1]
				Escribir "- Goles del equipo local:"
				Leer InformaciónPartidos[i,2]
				Escribir "- Código del equipo visitante:"
				Leer InformaciónPartidos[i,3]
				Escribir "- Goles del equipo visitante:"
				Leer InformaciónPartidos[i,4]
			FinPara
		FinSi
		
		Limpiar Pantalla
		// Voy a hacer una matriz que contenga el código de cada equipo con su respectivo puntaje
		Dimension CódigoYPuntos[cantidadEquipos,2]
		Para i = 1 Hasta cantidadEquipos Hacer
			CódigoYPuntos[i,1] = InformaciónEquipos[i,1]
			CódigoYPuntos[i,2] = InformaciónEquipos[i,8]
		FinPara
		//Imprimo la matriz original con los códigos y puntos según el usuario los ingresó
		Escribir "             Equipos"
		Escribir " Código                   Puntos"
		
		Para i = 1 Hasta cantidadEquipos Hacer
			Escribir "| ", CódigoYPuntos[i,1], "                      ", CódigoYPuntos[i,2]
		FinPara
		//Ordenamiento por método burbuja
		Para j = 1 Hasta cantidadEquipos - 1 Hacer
			Para i = 1 Hasta cantidadEquipos - 1 Hacer
				si CódigoYPuntos[i,2] <= CódigoYPuntos[i + 1, 2] Entonces
					aux = CódigoYPuntos[i,2];							aux2 = CódigoYPuntos[i,1];
					CódigoYPuntos[i,2] = CódigoYPuntos[i + 1, 2];		CódigoYPuntos[i,1] = CódigoYPuntos[i + 1, 1];
					CódigoYPuntos[i + 1, 2] = aux;						CódigoYPuntos[i + 1, 1] = aux2;
				FinSi
			FinPara
		FinPara
		//Imprimo la matriz ordenada
		Escribir ""
		Escribir "Tabla de clasificación del Campeonato"
		Escribir "        Equipos en orden"
		Escribir " Código                   Puntos"
		
		Para i = 1 Hasta cantidadEquipos Hacer
			Escribir "| ", CódigoYPuntos[i,1], "                      ", CódigoYPuntos[i,2]
		FinPara
	FinSi
FinAlgoritmo
