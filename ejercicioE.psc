subproceso pocicion (arr)
	
	Definir encontrado Como Logico;
	Definir num como entero;
	
	Escribir "Nuero a buscar";
	Leer num;
	
	encontrado = falso;
	
	Para i<-0 Hasta 5 Con Paso 1 Hacer
		si num = arr[i] Entonces
			Escribir "El numero: ",num," esta en la pocicion: ",i;
			encontrado = Verdadero;
		FinSi
	FinPara
	si encontrado = Falso Entonces
		Escribir "El numero no esta en ninguna pocicion del arreglo";
	FinSi
FinSubProceso

Algoritmo BuscarPocicion
	Definir arr Como Entero;
	Dimension arr[6];
	
	arr[0]<-1;
	arr[1]<-2;
	arr[2]<-3;
	arr[3]<-4;
	arr[4]<-5;
	arr[5]<-6;
	
	pocicion(arr);
	
FinAlgoritmo
