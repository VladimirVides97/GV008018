Algoritmo multiplo3
	Definir N,M,c Como Entero;
	Escribir "Ingrese el primer numero";
	Leer N;
	Escribir "Ingrese el segundo numero";
	Leer M;
	c<-0;
	si N < M Entonces
		Mientras N<=M Hacer
			si N Es Divisible Por 3 Entonces
				c<-c+1;
			FinSi
			N<-N+1;
		FinMientras
		Escribir c," Multiplos de 3";
	SiNo
		Mientras M<=N Hacer
			si M Es Divisible Por 3 Entonces
				c<-c+1;
			FinSi
			M<-M+1;
		FinMientras
		Escribir c," Multiplos de 3";
	FinSi
FinAlgoritmo
