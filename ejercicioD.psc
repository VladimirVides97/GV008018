SubProceso VerificarNumero (arreglo)
	Definir num como entero;
	Definir encon como logico;
	Escribir "";
	Escribir "Ingrese un numero entero";
	Leer num;
	encon = Falso;
		Para c<-0 hasta tamanio-1 con paso 1 hacer
			si num = arreglo[c] entonces
				Escribir "si existe";
				encon = verdadero;
			FinSi
		FinPara
	si encon = Falso Entonces
		Escribir "no existe";
	FinSi
FinSubProceso

Algoritmo AdivinarNumero
	Definir arreglo,tamanio,c Como Entero;
	Escribir "Numero de posiciones del arreglo";
	Leer tamanio;
	Dimension arreglo[tamanio];
	//dar valores a las posiciones
	Para c<-0 Hasta tamanio-1 Con Paso 1 Hacer
		arreglo[c]<-azar(99);
	FinPara
	para c<-0 hasta tamanio-1 con paso 1 hacer
		Escribir sin saltar arreglo[c]," ";
	FinPara
	//subproceso
	VerificarNumero(arreglo);
	//mostrar arreglo
	para c<-0 hasta tamanio-1 con paso 1 hacer
		Escribir sin saltar arreglo[c]," ";
	FinPara
	
FinAlgoritmo
