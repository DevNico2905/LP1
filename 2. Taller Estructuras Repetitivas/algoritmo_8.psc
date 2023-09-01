Algoritmo algoritmo_8
	Definir nombre, seguir Como Caracter
	Definir cantidadDeHectareas, valorAPagar, descuento1, descuento2 Como Real
	Definir tipoFumigacion Como Entero
	Repetir
		Escribir "�Bienvenido a FumiAmigos!"
		Escribir ""
		Escribir "Para realizar un cotizaci�n."
		Escribir "Por favor ingrese la siguiente informaci�n:"
		Escribir ""
		Escribir "- Nombre:"
		Leer nombre
		Escribir "- �Cu�ntas hect�reas desea fumigar?"
		Leer cantidadDeHectareas
		Escribir "- Escriba el tipo de fumigaci�n a realizar [1-4]"
		Escribir "-- 1. Fumigaci�n contra malas hierbas, 10 d�lares por hect�rea."
		Escribir "-- 2. Fumigaci�n contra langostas, 15 d�lares por hect�rea."
		Escribir "-- 3. Fumigaci�n contra gusanos, 20 d�lares por hect�rea."
		Escribir "-- 4. Fumigaci�n contra todo lo anterior, 30 d�lares por hect�rea."
		Leer tipoFumigacion
		
		Segun tipoFumigacion Hacer
			1:
				valorAPagar = cantidadDeHectareas * 10
			2:
				valorAPagar	= cantidadDeHectareas * 15
			3:
				valorAPagar = cantidadDeHectareas * 20
			4:
				valorAPagar = cantidadDeHectareas * 30
			De Otro Modo:
				Escribir "�Tipo de fumigaci�n no v�lida!"
		FinSegun
		si tipoFumigacion < 1 o tipoFumigacion > 4 Entonces
			Escribir "Presione Enter para reiniciar"
			Esperar Tecla
			Limpiar Pantalla
			seguir = "si"
		SiNo
			Escribir "-------------------------------------------------------------------"
			Escribir "Se�or/a: ", Mayusculas(nombre)
			Escribir "Subtotal:          ", valorAPagar
			si cantidadDeHectareas > 1000 Entonces
				descuento1 = valorAPagar * 0.05
				Escribir "Descuento 5%:      ", descuento1
			FinSi
			
			si valorAPagar > 3000 Entonces
				descuento2 = valorAPagar * 0.1
				Escribir "Descuento 10%:     ", descuento2
			FinSi
			valorAPagar = valorAPagar - (descuento1 + descuento2)
			Escribir "Total:             ", redon(valorAPagar) " d�lares."
			Escribir ""
			Escribir "�Desea realizar otra cotizaci�n? Si/No"
			Leer seguir
			si Mayusculas(seguir) == "SI" Entonces
				Limpiar Pantalla
			FinSi
		FinSi
	Hasta Que "NO" == Mayusculas(seguir)
	Escribir "�Con gusto!"
FinAlgoritmo
