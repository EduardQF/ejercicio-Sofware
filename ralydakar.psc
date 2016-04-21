Proceso sin_titulo
	corredor<-0;
	etapa<-0;
	tramo<-0;
	etapa<-0;
	//inicializar variables tiempo
	Repetir
		Escribir "ingrese cantidad de tramos de la etapa ",etapa+1;
		leer canTramos;
		Repetir
			Repetir
				Escribir "ingrese tiempo demorado del corredor ",corredor+1," en el tramo ",tramo+1," en hh:mm:ss";
				Segun corredor Hacer
					1:leer hora1,minuto1,segund1;
					2:leer hora2,minuto2,segund2;
					3:leer hora3,minuto3,segund3;
					4:leer hora4,minuto4,segund4;				
					5:leer hora5,minuto5,segund5;
					6:leer hora6,minuto6,segund6;
					7:leer hora7,minuto7,segund7;
					8:leer hora8,minuto8,segund8;
					9:leer hora9,minuto9,segund9;
					De Otro Modo:
						leer hora10,minuto10,segund10;	
				FinSegun
				corredor<-corredor+1;
			Hasta Que corredor=10 
			acumhh1<-acumhh1+hora1;acummm1<-acummm1+minuto1;acumss1<-segund1+acumss1;
			acumhh2<-acumhh2+hora2;acummm2<-acummm2+minuto2;acumss2<-segund2+acumss1;
			acumhh3<-acumhh3+hora3;acummm3<-acummm3+minuto3;acumss3<-segund3+acumss3;
			acumhh4<-acumhh4+hora4;acummm4<-acummm4+minuto4;acumss4<-segund4+acumss4;
			acumhh5<-acumhh5+hora5;acummm5<-acummm5+minuto5;acumss5<-segund5+acumss5;
			acumhh6<-acumhh6+hora6;acummm6<-acummm6+minuto6;acumss6<-segund6+acumss6;
			acumhh7<-acumhh7+hora7;acummm7<-acummm7+minuto7;acumss7<-segund7+acumss7;
			acumhh8<-acumhh8+hora8;acummm8<-acummm8+minuto8;acumss8<-segund8+acumss8;
			acumhh9<-acumhh9+hora9;acummm9<-acummm9+minuto9;acumss9<-segund9+acumss9;
			acumhh10<-acumhh10+hora10;acummm10<-acummm10+minuto10;acumss10<-segund10+acumss10;
			
			tramo<-tramo+1;
		Hasta Que (tramo=canTramos)
		Escribir "el tiempo demorado del jugador 1 es;",acumhh1,":",acummm1,":",acumss1,"en la etapa:",etapa+1;
		Escribir "el tiempo demorado del jugador 2 es;",acumhh2,":",acummm2,":",acumss2,"en la etapa:",etapa+1;
		Escribir "el tiempo demorado del jugador 3 es;",acumhh3,":",acummm3,":",acumss3,"en la etapa:",etapa+1;
		Escribir "el tiempo demorado del jugador 4 es;",acumhh4,":",acummm4,":",acumss4,"en la etapa:",etapa+1;
		Escribir "el tiempo demorado del jugador 5 es;",acumhh5,":",acummm5,":",acumss5,"en la etapa:",etapa+1;
		Escribir "el tiempo demorado del jugador 6 es;",acumhh6,":",acummm6,":",acumss6,"en la etapa:",etapa+1;
		Escribir "el tiempo demorado del jugador 7 es;",acumhh7,":",acummm7,":",acumss7,"en la etapa:",etapa+1;
		Escribir "el tiempo demorado del jugador 8 es;",acumhh8,":",acummm8,":",acumss8,"en la etapa:",etapa+1;
		Escribir "el tiempo demorado del jugador 9 es;",acumhh9,":",acummm9,":",acumss9,"en la etapa:",etapa+1;
		Escribir "el tiempo demorado del jugador 10 es;",acumhh10,":",acummm10,":",acumss10,"en la etapa:",etapa+1;
		
		etapa<-etapa+1;
	Hasta Que (etapa=5) 
	
	
FinProceso
