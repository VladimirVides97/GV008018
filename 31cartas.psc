Algoritmo cartas31
	//creacion del mazo
	Dimension varaja[4,12];
	//jugador
	definir varaja,jugador,pedir,cart1j,cart2j,cart3j,cartaextra,volver,otraCarta como caracter;
	Definir i,j,totalj,n1,n2,n3,nex,cj Como Entero;
	Dimension Djugador[10];
	//banco
	Definir cart1b,cart2b,cart3b,cartaextrabanco como caracteres;
	Definir totalb,n1b,n2b,n3b,nexb,cb como entero;
	Dimension Dbanco[10];
	//insercion de datos de cartas  varaja de Diamantes
	varaja[0,0]="2D";
	varaja[0,1]="3D";
	varaja[0,2]="4D";
	varaja[0,3]="5D";
	varaja[0,4]="6D";
	varaja[0,5]="7D";
	varaja[0,6]="8D";
	varaja[0,7]="9D";
	varaja[0,8]="JD";
	varaja[0,9]="QD";
	varaja[0,10]="KD";
	varaja[0,11]="ASD";
	//insercion de datos de cartas  varaja trebol
	varaja[1,0]="2T";
	varaja[1,1]="3T";
	varaja[1,2]="4T";
	varaja[1,3]="5T";
	varaja[1,4]="6T";
	varaja[1,5]="7T";
	varaja[1,6]="8T";
	varaja[1,7]="9T";
	varaja[1,8]="JT";
	varaja[1,9]="QT";
	varaja[1,10]="KT";
	varaja[1,11]="AST";
	//insercion de datos de cartas  varaja corazones
	varaja[2,0]="2C";
	varaja[2,1]="3C";
	varaja[2,2]="4C";
	varaja[2,3]="5C";
	varaja[2,4]="6C";
	varaja[2,5]="7C";
	varaja[2,6]="8C";
	varaja[2,7]="9C";
	varaja[2,8]="JC";
	varaja[2,9]="QC";
	varaja[2,10]="KC";
	varaja[2,11]="ASC";
	//insercion de datos de cartas  varaja espada
	varaja[3,0]="2E";
	varaja[3,1]="3E";
	varaja[3,2]="4E";
	varaja[3,3]="5E";
	varaja[3,4]="6E";
	varaja[3,5]="7E";
	varaja[3,6]="8E";
	varaja[3,7]="9E";
	varaja[3,8]="JE";
	varaja[3,9]="QE";
	varaja[3,10]="KE";
	varaja[3,11]="ASE";
	//datos del jugador
	Escribir "¡Hola cual es tu nombre??";
	Leer jugador;
	Repetir
		Escribir "";
		Escribir jugador," el juego es obtener una mano de mano con un valor en puntos tran cercanos a 31 o exactamente dicho valor";
		Escribir "";
		Escribir "*Mazo de cartas a usar*";
		//mostrar varaja de cartas
		Para i<-0 Hasta 3 Con Paso 1 Hacer            
			Escribir ""; //Esto es solo para dar un poco de formato
			Para j<-0 Hasta 11 Con Paso 1 Hacer
				Escribir Sin Saltar varaja[i,j], " ";
			FinPara        
		FinPara
		//repartir carta al banco
		Repetir
			cart1b <- varaja[azar(4),azar(12)];
			cart2b <- varaja[azar(4),azar(12)];
			cart3b <- varaja[azar(4),azar(12)];
			//repartir carta al  jugador
			cart1j <- varaja[azar(4),azar(12)];
			cart2j <- varaja[azar(4),azar(12)];
			cart3j <- varaja[azar(4),azar(12)];
		Hasta Que cart1b <> cart2b && cart2b <> cart3b && cart1b <> cart3b && cart1j <> cart2j && cart2j <> cart3j && cart1j <> cart3j && cart1j <> cart1b && cart1j <> cart2b && cart1j <> cart3b && cart2j <> cart1b && cart2j <> cart2b && cart2j <> cart3b && cart3j <> cart1b && cart3j <> cart2b && cart3j <> cart3b
		//comprobacion de cartas sin repetir
		Dbanco[0]<-cart1b;
		Dbanco[1]<-cart2b;
		Dbanco[2]<-cart3b;
		Djugador[0]<-cart1j;
		Djugador[1]<-cart2j;
		Djugador[2]<-cart3j;
		//mostrar
		Escribir "";

		Escribir "";
		Escribir jugador," tus cartas son: ",cart1j," ",cart2j," ",cart3j;
		Escribir "";
		Segun cart1j Hacer
			'2D':
				n1<-2;
			'3D':
				n1<-3;
			'4D':
				n1<-4;
			'5D':
				n1<-5;
			'6D':
				n1<-6;
			'7D':
				n1<-7;
			'8D':
				n1<-8;
			'9D':
				n1<-9;
			'JD':
				n1<-10;
			'QD':
				n1<-10;
			'KD':
				n1<-10;
				//fin diamantes
			'2T':
				n1<-2;
			'3T':
				n1<-3;
			'4T':
				n1<-4;
			'5T':
				n1<-5;
			'6T':
				n1<-6;
			'7T':
				n1<-7;
			'8T':
				n1<-8;
			'9T':
				n1<-9;
			'JT':
				n1<-10;
			'QT':
				n1<-10;
			'KT':
				n1<-10;
				//fin trebol
			'2C':
				n1<-2;
			'3C':
				n1<-3;
			'4C':
				n1<-4;
			'5C':
				n1<-5;
			'6C':
				n1<-6;
			'7C':
				n1<-7;
			'8C':
				n1<-8;
			'9C':
				n1<-9;
			'JC':
				n1<-10;
			'QC':
				n1<-10;
			'KC':
				n1<-10;
				//fin corazones
			'2E':
				n1<-2;
			'3E':
				n1<-3;
			'4E':
				n1<-4;
			'5E':
				n1<-5;
			'6E':
				n1<-6;
			'7E':
				n1<-7;
			'8E':
				n1<-8;
			'9E':
				n1<-9;
			'JE':
				n1<-10;
			'QE':
				n1<-10;
			'KE':
				n1<-10;
			De Otro Modo:
				Escribir "";
				Escribir "Tienes un AS:  Cuanto deseas que valga?  1 o 11";
				Leer n1;
		Fin Segun
		Segun cart2j Hacer
			'2D':
				n2<-2;
			'3D':
				n2<-3;
			'4D':
				n2<-4;
			'5D':
				n2<-5;
			'6D':
				n2<-6;
			'7D':
				n2<-7;
			'8D':
				n2<-8;
			'9D':
				n2<-9;
			'JD':
				n2<-10;
			'QD':
				n2<-10;
			'KD':
				n2<-10;
				//fin diamantes
			'2T':
				n2<-2;
			'3T':
				n2<-3;
			'4T':
				n2<-4;
			'5T':
				n2<-5;
			'6T':
				n2<-6;
			'7T':
				n2<-7;
			'8T':
				n2<-8;
			'9T':
				n2<-9;
			'JT':
				n2<-10;
			'QT':
				n2<-10;
			'KT':
				n2<-10;
				//fin trebol
			'2C':
				n2<-2;
			'3C':
				n2<-3;
			'4C':
				n2<-4;
			'5C':
				n2<-5;
			'6C':
				n2<-6;
			'7C':
				n2<-7;
			'8C':
				n2<-8;
			'9C':
				n2<-9;
			'JC':
				n2<-10;
			'QC':
				n2<-10;
			'KC':
				n2<-10;
				//fin corazones
			'2E':
				n2<-2;
			'3E':
				n2<-3;
			'4E':
				n2<-4;
			'5E':
				n2<-5;
			'6E':
				n2<-6;
			'7E':
				n2<-7;
			'8E':
				n2<-8;
			'9E':
				n2<-9;
			'JE':
				n2<-10;
			'QE':
				n2<-10;
			'KE':
				n2<-10;
			De Otro Modo:
				Escribir "";
				Escribir "Tienes un AS:  Cuanto deseas que valga?  1 o 11";
				Leer n2;
		Fin Segun
		Segun cart3j Hacer
			'2D':
				n3<-2;
			'3D':
				n3<-3;
			'4D':
				n3<-4;
			'5D':
				n3<-5;
			'6D':
				n3<-6;
			'7D':
				n3<-7;
			'8D':
				n3<-8;
			'9D':
				n3<-9;
			'JD':
				n3<-10;
			'QD':
				n3<-10;
			'KD':
				n3<-10;
				//fin diamantes
			'2T':
				n3<-2;
			'3T':
				n3<-3;
			'4T':
				n3<-4;
			'5T':
				n3<-5;
			'6T':
				n3<-6;
			'7T':
				n3<-7;
			'8T':
				n3<-8;
			'9T':
				n3<-9;
			'JT':
				n3<-10;
			'QT':
				n3<-10;
			'KT':
				n3<-10;
				//fin trebol
			'2C':
				n3<-2;
			'3C':
				n3<-3;
			'4C':
				n3<-4;
			'5C':
				n3<-5;
			'6C':
				n3<-6;
			'7C':
				n3<-7;
			'8C':
				n3<-8;
			'9C':
				n3<-9;
			'JC':
				n3<-10;
			'QC':
				n3<-10;
			'KC':
				n3<-10;
				//fin corazones
			'2E':
				n3<-2;
			'3E':
				n3<-3;
			'4E':
				n3<-4;
			'5E':
				n3<-5;
			'6E':
				n3<-6;
			'7E':
				n3<-7;
			'8E':
				n3<-8;
			'9E':
				n3<-9;
			'JE':
				n3<-10;
			'QE':
				n3<-10;
			'KE':
				n3<-10;
			De Otro Modo:
				Escribir "";
				Escribir "Tienes un AS:  Cuanto deseas que valga?  1 o 11";
				Leer n3;
		Fin Segun
		//banca
		Segun cart1b Hacer
			'2D':
				n1b<-2;
			'3D':
				n1b<-3;
			'4D':
				n1b<-4;
			'5D':
				n1b<-5;
			'6D':
				n1b<-6;
			'7D':
				n1b<-7;
			'8D':
				n1b<-8;
			'9D':
				n1b<-9;
			'JD':
				n1b<-10;
			'QD':
				n1b<-10;
			'KD':
				n1b<-10;
			'ASD':
				n1b<-11;
				//fin diamantes
			'2T':
				n1b<-2;
			'3T':
				n1b<-3;
			'4T':
				n1b<-4;
			'5T':
				n1b<-5;
			'6T':
				n1b<-6;
			'7T':
				n1b<-7;
			'8T':
				n1b<-8;
			'9T':
				n1b<-9;
			'JT':
				n1b<-10;
			'QT':
				n1b<-10;
			'KT':
				n1b<-10;
			'AST':
				n1b<-11;
				//fin trebol
			'2C':
				n1b<-2;
			'3C':
				n1b<-3;
			'4C':
				n1b<-4;
			'5C':
				n1b<-5;
			'6C':
				n1b<-6;
			'7C':
				n1b<-7;
			'8C':
				n1b<-8;
			'9C':
				n1b<-9;
			'JC':
				n1b<-10;
			'QC':
				n1b<-10;
			'KC':
				n1b<-10;
			'ASC':
				n1b<-11;
				//fin corazones
			'2E':
				n1b<-2;
			'3E':
				n1b<-3;
			'4E':
				n1b<-4;
			'5E':
				n1b<-5;
			'6E':
				n1b<-6;
			'7E':
				n1b<-7;
			'8E':
				n1b<-8;
			'9E':
				n1b<-9;
			'JE':
				n1b<-10;
			'QE':
				n1b<-10;
			'KE':
				n1b<-10;
			'ASE':
				n1b<-11;
		Fin Segun
		Segun cart2b Hacer
			'2D':
				n2b<-2;
			'3D':
				n2b<-3;
			'4D':
				n2b<-4;
			'5D':
				n2b<-5;
			'6D':
				n2b<-6;
			'7D':
				n2b<-7;
			'8D':
				n2b<-8;
			'9D':
				n2b<-9;
			'JD':
				n2b<-10;
			'QD':
				n2b<-10;
			'KD':
				n2b<-10;
			'ASD':
				n2b<-11;
				//fin diamantes
			'2T':
				n2b<-2;
			'3T':
				n2b<-3;
			'4T':
				n2b<-4;
			'5T':
				n2b<-5;
			'6T':
				n2b<-6;
			'7T':
				n2b<-7;
			'8T':
				n2b<-8;
			'9T':
				n2b<-9;
			'JT':
				n2b<-10;
			'QT':
				n2b<-10;
			'KT':
				n2b<-10;
			'AST':
				n2b<-11;
				//fin trebol
			'2C':
				n2b<-2;
			'3C':
				n2b<-3;
			'4C':
				n2b<-4;
			'5C':
				n2b<-5;
			'6C':
				n2b<-6;
			'7C':
				n2b<-7;
			'8C':
				n2b<-8;
			'9C':
				n2b<-9;
			'JC':
				n2b<-10;
			'QC':
				n2b<-10;
			'KC':
				n2b<-10;
			'ASC':
				n2b<-11;
				//fin corazones
			'2E':
				n2b<-2;
			'3E':
				n2b<-3;
			'4E':
				n2b<-4;
			'5E':
				n2b<-5;
			'6E':
				n2b<-6;
			'7E':
				n2b<-7;
			'8E':
				n2b<-8;
			'9E':
				n2b<-9;
			'JE':
				n2b<-10;
			'QE':
				n2b<-10;
			'KE':
				n2b<-10;
			'ASE':
				n2b<-11;
		Fin Segun
		Segun cart3b Hacer
			'2D':
				n3b<-2;
			'3D':
				n3b<-3;
			'4D':
				n3b<-4;
			'5D':
				n3b<-5;
			'6D':
				n3b<-6;
			'7D':
				n3b<-7;
			'8D':
				n3b<-8;
			'9D':
				n3b<-9;
			'JD':
				n3b<-10;
			'QD':
				n3b<-10;
			'KD':
				n3b<-10;
			'ASD':
				n3b<-11;
				//fin diamantes
			'2T':
				n3b<-2;
			'3T':
				n3b<-3;
			'4T':
				n3b<-4;
			'5T':
				n3b<-5;
			'6T':
				n3b<-6;
			'7T':
				n3b<-7;
			'8T':
				n3b<-8;
			'9T':
				n3b<-9;
			'JT':
				n3b<-10;
			'QT':
				n3b<-10;
			'KT':
				n3b<-10;
			'AST':
				n3b<-11;
				//fin trebol
			'2C':
				n3b<-2;
			'3C':
				n3b<-3;
			'4C':
				n3b<-4;
			'5C':
				n3b<-5;
			'6C':
				n3b<-6;
			'7C':
				n3b<-7;
			'8C':
				n3b<-8;
			'9C':
				n3b<-9;
			'JC':
				n3b<-10;
			'QC':
				n3b<-10;
			'KC':
				n3b<-10;
			'ASC':
				n3b<-11;
				//fin corazones
			'2E':
				n3b<-2;
			'3E':
				n3b<-3;
			'4E':
				n3b<-4;
			'5E':
				n3b<-5;
			'6E':
				n3b<-6;
			'7E':
				n3b<-7;
			'8E':
				n3b<-8;
			'9E':
				n3b<-9;
			'JE':
				n3b<-10;
			'QE':
				n3b<-10;
			'KE':
				n3b<-10;
			'ASC':
				n3b<-11;
		Fin Segun
		totalb=n1b+n2b+n3b;
		totalj=n1+n2+n3;
		Escribir "Tu total es: ",totalj;
		Si totalj == 31 && totalb < 31 || totalj == 31 && totalb > 31 Entonces
			Escribir "";
			Escribir "**************************************************************";
			escribir "Felicidades ",jugador," Ganasta el Juego";
			Escribir "Tus cartas son: ",Djugador[0]," ",Djugador[1]," ",Djugador[2];
			Escribir "Tu total es de: ",totalj;
			Escribir "**************************************************************";
			Escribir "Cartas de la banca: ",cart1b," , ",cart2b," , ",cart3b;
			Escribir "Total de la banca: ",totalb;
			Escribir "**************************************************************";
		SiNo
			Si totalb == 31 || totalj > 31 Entonces
				Escribir "";
				Escribir "**************************************************************";
				escribir "Fin del juego:  Perdiste ",jugador;
				Escribir "Tus cartas son: ",Djugador[0]," ",Djugador[1]," ",Djugador[2];
				Escribir "Tu total es de: ",totalj;
				Escribir "**************************************************************";
				Escribir "Cartas de la banca: ",cart1b," , ",cart2b," , ",cart3b;
				Escribir "Total de la banca: ",totalb;
				Escribir "**************************************************************";
			SiNo
				Escribir "";
				Escribir "Quieres quedarte con esas cartas, o continuaras jugando?";
				Escribir "si deseas continuar el banco te dara una carta mas asta que le indiques que ya no quieres otra carta mas";
				Escribir "";
				Escribir " Continuar = c o quedarse = q";
				Leer pedir;
				Segun pedir Hacer
					"c":
						cj<-1;
						Repetir
							Escribir "";
							Repetir
								cartaextra <-varaja[azar(4),azar(12)];
							Hasta Que cartaextra <> cart1j && cartaextra <> cart2j && cartaextra <> cart3j && cartaextra <> cart1b && cartaextra <> cart2b && cartaextra <> cart3b && cartaextra <> Djugador[3] && cartaextra <> Djugador[4] && cartaextra <> Djugador[5] && cartaextra <> Djugador[6] && cartaextra <> Djugador[7] && cartaextra <> Djugador[8]  && cartaextra <> Djugador[9]
							Escribir "Tu carta es: ",cartaextra;
							Djugador[2+cj]<-cartaextra;
							Segun cartaextra Hacer
								'2D':
									nex<-2;
								'3D':
									nex<-3;
								'4D':
									nex<-4;
								'5D':
									nex<-5;
								'6D':
									nex<-6;
								'7D':
									nex<-7;
								'8D':
									nex<-8;
								'9D':
									nex<-9;
								'JD':
									nex<-10;
								'QD':
									nex<-10;
								'KD':
									nex<-10;
								'ASD':
									Escribir "";
									Escribir "Tu carta es un ASD:  Cuanto deseas que valga?  1 o 11";
									Leer nex;
									//fin diamantes
								'2T':
									nex<-2;
								'3T':
									nex<-3;
								'4T':
									nex<-4;
								'5T':
									nex<-5;
								'6T':
									nex<-6;
								'7T':
									nex<-7;
								'8T':
									nex<-8;
								'9T':
									nex<-9;
								'JT':
									nex<-10;
								'QT':
									nex<-10;
								'KT':
									nex<-10;
								'AST':
									Escribir "";
									Escribir "Tu carta es un AST:  Cuanto deseas que valga?  1 o 11";
									Leer nex;
									//fin trebol
								'2C':
									nex<-2;
								'3C':
									nex<-3;
								'4C':
									nex<-4;
								'5C':
									nex<-5;
								'6C':
									nex<-6;
								'7C':
									nex<-7;
								'8C':
									nex<-8;
								'9C':
									nex<-9;
								'JC':
									nex<-10;
								'QC':
									nex<-10;
								'KC':
									nex<-10;
								'ASC':
									Escribir "";
									Escribir "Tu carta es un ASC:  Cuanto deseas que valga?  1 o 11";
									Leer nex;
									//fin corazones
								'2E':
									nex<-2;
								'3E':
									nex<-3;
								'4E':
									nex<-4;
								'5E':
									nex<-5;
								'6E':
									nex<-6;
								'7E':
									nex<-7;
								'8E':
									nex<-8;
								'9E':
									nex<-9;
								'JE':
									nex<-10;
								'QE':
									nex<-10;
								'KE':
									nex<-10;
								'ASE':
									Escribir "";
									Escribir "Tu carta es un ASE:  Cuanto deseas que valga?  1 o 11";
									Leer nex;
							Fin Segun
							totalj<-totalj+nex;
							Escribir "Tu total es ahora de: ",totalj;
							cj=cj+1;
							si totalj < 31 Entonces
								Escribir "";
								Escribir "Quieres otra carta?";
								Escribir " SI = s o NO = n";
								Leer otraCarta;
							FinSi
						Hasta Que otraCarta = "n" || totalj >= 31
						Si totalj <= 31 Entonces
							cb<-1;
							Repetir
								Repetir	
									cartaextrabanco <-varaja[azar(4),azar(12)];
								Hasta Que cartaextrabanco <> cart1j && cartaextrabanco <> cart2j && cartaextrabanco <> cart3j && cartaextrabanco <> cart1b && cartaextrabanco <> cart2b && cartaextrabanco <> cart3b && cartaextrabanco <> cartaextra && cartaextrabanco <> Dbanco[3] && cartaextrabanco <> Dbanco[4] && cartaextrabanco <> Dbanco[5] && cartaextrabanco <> Dbanco[6] && cartaextrabanco <> Dbanco[7] && cartaextrabanco <> Dbanco[8] && cartaextrabanco <> Dbanco[9]
								Dbanco[2+cb]<-cartaextrabanco;
								cb=cb+1;
								Segun cartaextrabanco Hacer
									'2D':
										nexb<-2;
									'3D':
										nexb<-3;
									'4D':
										nexb<-4;
									'5D':
										nexb<-5;
									'6D':
										nexb<-6;
									'7D':
										nexb<-7;
									'8D':
										nexb<-8;
									'9D':
										nexb<-9;
									'JD':
										nexb<-10;
									'QD':
										nexb<-10;
									'KD':
										nexb<-10;
									'ASD':
										nexb<-11;
										//fin diamantes
									'2T':
										nexb<-2;
									'3T':
										nexb<-3;
									'4T':
										nexb<-4;
									'5T':
										nexb<-5;
									'6T':
										nexb<-6;
									'7T':
										nexb<-7;
									'8T':
										nexb<-8;
									'9T':
										nexb<-9;
									'JT':
										nexb<-10;
									'QT':
										nexb<-10;
									'KT':
										nexb<-10;
									'AST':
										nexb<-11;
										//fin trebol
									'2C':
										nexb<-2;
									'3C':
										nexb<-3;
									'4C':
										nexb<-4;
									'5C':
										nexb<-5;
									'6C':
										nexb<-6;
									'7C':
										nexb<-7;
									'8C':
										nexb<-8;
									'9C':
										nexb<-9;
									'JC':
										nexb<-10;
									'QC':
										nexb<-10;
									'KC':
										nexb<-10;
									'ASC':
										nexb<-11;
										//fin corazones
									'2E':
										nexb<-2;
									'3E':
										nexb<-3;
									'4E':
										nexb<-4;
									'5E':
										nexb<-5;
									'6E':
										nexb<-6;
									'7E':
										nexb<-7;
									'8E':
										nexb<-8;
									'9E':
										nexb<-9;
									'JE':
										nexb<-10;
									'QE':
										nexb<-10;
									'KE':
										nexb<-10;
									'ASE':
										nexb<-11;
								Fin Segun
								totalb <- totalb+nexb;
							Hasta Que totalb == 31 || totalb == 29 || totalb == 30 || totalb == 28 || totalb > 31
							Si totalj == totalb || totalj = 31 || totalb > 31 || totalj > totalb && totalj <= 31 Entonces
								Escribir "";
								Escribir "**************************************************************";
								escribir "Felicidades ",jugador," Ganasta el Juego";
								Escribir "Tus cartas son: ",Djugador[0]," ",Djugador[1]," ",Djugador[2]," ",Djugador[3]," ",Djugador[4]," ",Djugador[5]," ",Djugador[6]," ",Djugador[7]," ",Djugador[8]," ",Djugador[9];
								Escribir "Tu total es de: ",totalj;
								Escribir "**************************************************************";
								Escribir "Cartas de la banca: ",Dbanco[0]," ",Dbanco[1]," ",Dbanco[2]," ",Dbanco[3]," ",Dbanco[4]," ",Dbanco[5]," ",Dbanco[6]," ",Dbanco[7]," ",Dbanco[8]," ",Dbanco[9];
								Escribir "Total de la banca: ",totalb;
								Escribir "**************************************************************";
							SiNo
								Escribir "";
								Escribir "**************************************************************";
								escribir "Fin del juego:  Perdiste ",jugador;
								Escribir "Tus cartas son: ",Djugador[0]," ",Djugador[1]," ",Djugador[2]," ",Djugador[3]," ",Djugador[4]," ",Djugador[5]," ",Djugador[6]," ",Djugador[7]," ",Djugador[8]," ",Djugador[9];
								Escribir "Tu total es de: ",totalj;
								Escribir "**************************************************************";
								Escribir "Cartas de la banca: ",Dbanco[0]," ",Dbanco[1]," ",Dbanco[2]," ",Dbanco[3]," ",Dbanco[4]," ",Dbanco[5]," ",Dbanco[6]," ",Dbanco[7]," ",Dbanco[8]," ",Dbanco[9];
								Escribir "Total de la banca: ",totalb;
								Escribir "**************************************************************";
							Fin Si
						SiNo
							Si totalj == totalb || totalj == 31 || totalb > 31 || totalj > totalb && totalj <= 31 Entonces
								Escribir "";
								Escribir "**************************************************************";
								escribir "Felicidades ",jugador," Ganasta el Juego";
								Escribir "Tus cartas son: ",Djugador[0]," ",Djugador[1]," ",Djugador[2]," ",Djugador[3]," ",Djugador[4]," ",Djugador[5]," ",Djugador[6]," ",Djugador[7]," ",Djugador[8]," ",Djugador[9];
								Escribir "Tu total es de: ",totalj;
								Escribir "**************************************************************";
								Escribir "Cartas de la banca: ",Dbanco[0]," ",Dbanco[1]," ",Dbanco[2]," ",Dbanco[3]," ",Dbanco[4]," ",Dbanco[5]," ",Dbanco[6]," ",Dbanco[7]," ",Dbanco[8]," ",Dbanco[9];
								Escribir "Total de la banca: ",totalb;
								Escribir "**************************************************************";
							SiNo
								Escribir "";
								Escribir "**************************************************************";
								escribir "Fin del juego:  Perdiste ",jugador;
								Escribir "Tus cartas son: ",Djugador[0]," ",Djugador[1]," ",Djugador[2]," ",Djugador[3]," ",Djugador[4]," ",Djugador[5]," ",Djugador[6]," ",Djugador[7]," ",Djugador[8]," ",Djugador[9];
								Escribir "Tu total es de: ",totalj;
								Escribir "**************************************************************";
								Escribir "Cartas de la banca: ",Dbanco[0]," ",Dbanco[1]," ",Dbanco[2]," ",Dbanco[3]," ",Dbanco[4]," ",Dbanco[5]," ",Dbanco[6]," ",Dbanco[7]," ",Dbanco[8]," ",Dbanco[9];
								Escribir "Total de la banca: ",totalb;
								Escribir "**************************************************************";
							Fin Si
						Fin Si
					'q':
						cb<-1;
						Mientras totalb < 31 Hacer
							Repetir	
								cartaextrabanco <-varaja[azar(4),azar(12)];
							Hasta Que cartaextrabanco <> cart1j && cartaextrabanco <> cart2j && cartaextrabanco <> cart3j && cartaextrabanco <> cart1b && cartaextrabanco <> cart2b && cartaextrabanco <> cart3b && cartaextrabanco <> cartaextra && cartaextrabanco <> Dbanco[3] && cartaextrabanco <> Dbanco[4] && cartaextrabanco <> Dbanco[5] && cartaextrabanco <> Dbanco[6] && cartaextrabanco <> Dbanco[7] && cartaextrabanco <> Dbanco[8] && cartaextrabanco <> Dbanco[9]
							Dbanco[2+cb]<-cartaextrabanco;
							cb=cb+1;
							Segun cartaextrabanco Hacer
								'2D':
									nexb<-2;
								'3D':
									nexb<-3;
								'4D':
									nexb<-4;
								'5D':
									nexb<-5;
								'6D':
									nexb<-6;
								'7D':
									nexb<-7;
								'8D':
									nexb<-8;
								'9D':
									nexb<-9;
								'JD':
									nexb<-10;
								'QD':
									nexb<-10;
								'KD':
									nexb<-10;
								'ASD':
									nexb<-11;
									//fin diamantes
								'2T':
									nexb<-2;
								'3T':
									nexb<-3;
								'4T':
									nexb<-4;
								'5T':
									nexb<-5;
								'6T':
									nexb<-6;
								'7T':
									nexb<-7;
								'8T':
									nexb<-8;
								'9T':
									nexb<-9;
								'JT':
									nexb<-10;
								'QT':
									nexb<-10;
								'KT':
									nexb<-10;
								'AST':
									nexb<-11;
									//fin trebol
								'2C':
									nexb<-2;
								'3C':
									nexb<-3;
								'4C':
									nexb<-4;
								'5C':
									nexb<-5;
								'6C':
									nexb<-6;
								'7C':
									nexb<-7;
								'8C':
									nexb<-8;
								'9C':
									nexb<-9;
								'JC':
									nexb<-10;
								'QC':
									nexb<-10;
								'KC':
									nexb<-10;
								'ASC':
									nexb<-11;
									//fin corazones
								'2E':
									nexb<-2;
								'3E':
									nexb<-3;
								'4E':
									nexb<-4;
								'5E':
									nexb<-5;
								'6E':
									nexb<-6;
								'7E':
									nexb<-7;
								'8E':
									nexb<-8;
								'9E':
									nexb<-9;
								'JE':
									nexb<-10;
								'QE':
									nexb<-10;
								'KE':
									nexb<-10;
								'ASE':
									nexb<-11;
							Fin Segun
							totalb <- totalb+nexb;
						Fin Mientras
						Si totalj == totalb || totalj = 31 || totalb > 31 || totalj > totalb && totalj <= 31 Entonces
							Escribir "";
							Escribir "**************************************************************";
							escribir "Felicidades ",jugador," Ganasta el Juego";
							Escribir "Tus cartas son: ",Djugador[0]," ",Djugador[1]," ",Djugador[2]," ",Djugador[3]," ",Djugador[4]," ",Djugador[5]," ",Djugador[6]," ",Djugador[7]," ",Djugador[8]," ",Djugador[9];
							Escribir "Tu total es de: ",totalj;
							Escribir "**************************************************************";
							Escribir "Cartas de la banca: ",Dbanco[0]," ",Dbanco[1]," ",Dbanco[2]," ",Dbanco[3]," ",Dbanco[4]," ",Dbanco[5]," ",Dbanco[6]," ",Dbanco[7]," ",Dbanco[8]," ",Dbanco[9];
							Escribir "Total de la banca: ",totalb;
							Escribir "**************************************************************";
						SiNo
							Escribir "";
							Escribir "**************************************************************";
							escribir "Fin del juego:  Perdiste ",jugador;
							Escribir "Tus cartas son: ",Djugador[0]," ",Djugador[1]," ",Djugador[2]," ",Djugador[3]," ",Djugador[4]," ",Djugador[5]," ",Djugador[6]," ",Djugador[7]," ",Djugador[8]," ",Djugador[9];
							Escribir "Tu total es de: ",totalj;
							Escribir "**************************************************************";
							Escribir "Cartas de la banca: ",Dbanco[0]," ",Dbanco[1]," ",Dbanco[2]," ",Dbanco[3]," ",Dbanco[4]," ",Dbanco[5]," ",Dbanco[6]," ",Dbanco[7]," ",Dbanco[8]," ",Dbanco[9];
							Escribir "Total de la banca: ",totalb;
							Escribir "**************************************************************";
						Fin Si
				Fin Segun
			Fin Si
		Fin Si
		Escribir jugador," Quires volver a jugar??";
		Escribir " SI = s NO = n";
		Leer volver;
		Limpiar Pantalla;
	Hasta Que volver == "n"
FinAlgoritmo
