Algoritmo algoritmo_8 //8.	En un juego de preguntas que se responde "SI" o "NO", gana quien responda correctamentelas tres preguntas. 
	//Si se responde mal cualquiera de ellas, ya no se pregunta la siguiente y termina el juego.
	//Diseñe un algoritmo que solucione el juego de preguntas.
	Definir Respuesta1, Respuesta2, Respuesta3, nombreDeUsuario Como Caracter
	Respuesta1 = "SI"
	Respuesta2 = "SI"
	Respuesta3 = "SI"
	
	Escribir "Ingresa tu nombre de usuario: "
	Leer nombreDeUsuario
	Escribir "Bienvenido ", nombreDeUsuario
	Escribir "Este juego lo gana quien responda correctamente las tres preguntas."
	Escribir "Si se responde mal cualquiera de ellas, ya no se pregunta la siguiente y termina el juego."
	Escribir "Solo puedes contestar con SI o NO."
	Escribir "	"
	
	Escribir "1.¿Simón Bolívar libertó a Colombia?"
	Leer RespuestaDelUsuario1
	si Mayusculas(RespuestaDelUsuario1) = Respuesta1 Entonces
		Escribir "2.¿Camilo Torres fue un guerrillero?"
		Leer RespuestaDelUsuario2
		si Mayusculas(RespuestaDelUsuario2) = Respuesta2 Entonces
			Escribir "3.¿El Binomio de Oro es un grupo de música vallenata?"
			Leer RespuestaDelUsuario3
			si	Mayusculas(RespuestaDelUsuario3) = Respuesta3 Entonces
				Escribir "¡Felicitaciones, ", nombreDeUsuario "! Haz ganado."
			SiNo
				Escribir "Lo siento ", nombreDeUsuario ". Has perdido."
			FinSi
		SiNo
			Escribir "Lo siento, ", nombreDeUsuario ". Has perdido."
		FinSi
	SiNo
		Escribir "Lo siento, ", nombreDeUsuario ". Has perdido."
	FinSi
	
FinAlgoritmo
