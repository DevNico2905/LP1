Algoritmo algoritmo_1
Definir numeroImpar, suma, numeroUsuario como entero
	
Escribir "¡Bienvenido!"
Escribir "Calculáremos la suma de los números impares comprendidos entre: "
Escribir " 1 (incluyéndolo) y el número que tu ingreses (incluyéndolo también)"
Leer numeroUsuario
Escribir "Los números impares comprendidos entre 1 y ", numeroUsuario " son: "
Para i = 1 Hasta numeroUsuario Con Paso 2 Hacer
	numeroImpar = i
	Escribir numeroImpar
	suma = suma +  numeroImpar
Fin Para
Escribir "Y la suma de esto números es: ", suma
FinAlgoritmo
