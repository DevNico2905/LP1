Algoritmo algoritmo_1
Definir numeroImpar, suma, n como entero
	
Escribir "�Bienvenido!"
Escribir "Calcul�remos la suma de los n�meros impares comprendidos entre: "
Escribir " 1 (incluy�ndolo) y el n�mero que tu ingreses (incluy�ndolo tambi�n)"
Leer n
Escribir "Los n�meros impares comprendidos entre 1 y ", n " son: "
Para i = 1 Hasta n Con Paso 2 Hacer
	numeroImpar = i
	Escribir numeroImpar
	suma = suma +  numeroImpar
Fin Para
Escribir "Y la suma de esto n�meros es: ", suma
FinAlgoritmo
