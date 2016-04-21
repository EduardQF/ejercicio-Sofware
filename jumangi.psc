Proceso sin_titulo
	avanceJ1 <-0;
	avanceJ2 <-0;
	avanceJ3 <-0;
	contJ <-0;
	repetir
		// jugador1
		Escribir "jugador 1 jugada",contJ+1;
		Escribir "---------------------------";
		Dados <-(Azar [6]+1)+(Azar [6]+1);
		avanceJ1 <-dados + avanceJ1;
		par <-avanceJ1%2;
		si(par!=0)Entonces
			si (avanceJ1=3)||(avanceJ1=5)||(avanceJ1=7)Entonces
				avanceJ1<-avanceJ1-2;
			FinSi
			si (avanceJ1=11)||(avanceJ1=17) Entonces
				avanceJ1<-avanceJ1-4;
			FinSi
			si (avanceJ1=23)Entonces
				avanceJ1<-avanceJ1-6;
			FinSi
			si (avanceJ1=13) entonces
				avanceJ1<-0;
			FinSi
			si (avanceJ1=9)||(avanceJ1=15)||(avanceJ1=21)Entonces
				avanceJ1<-avanceJ1-3;
			FinSi
		Sino
			si (avanceJ1=10)||(avanceJ1=20)Entonces
				avanceJ1<-avanceJ1+5;
			Sino
				SI (par = 0) ENTONCES
					avanceJ1 <-avanceJ1 + 2;
				FinSi
			FinSi
		FinSi
		Escribir "la suma de los dados fue: ",dados;
		Escribir "casilla del jugador 1 es: ", avanceJ1;
		Esperar Tecla;
		Limpiar Pantalla;
		// jugador2
		Escribir "jugador 2 jugada",contJ+1;
		Escribir "---------------------------";
		Dados <-(Azar [6]+1)+(Azar [6]+1);
		avanceJ2<-dados + avanceJ2;
		par <-avanceJ2%2;
		
		si(par!=0)Entonces
			si (avanceJ2=3)||(avanceJ2=5)||(avanceJ2=7)Entonces
				avanceJ2<-avanceJ2-2;
			FinSi
			si (avanceJ2=11)||(avanceJ2=17) Entonces
				avanceJ2<-avanceJ2-4;
			FinSi
			si (avanceJ2=23)Entonces
				avanceJ2<-avanceJ2-6;
			FinSi
			si (avanceJ2=13) entonces
				avanceJ2<-0;
			FinSi
			si (avanceJ2=9)||(avanceJ2=15)||(avanceJ2=21)Entonces
				avanceJ2<-avanceJ2-3;
			FinSi
		Sino
			si (avanceJ2=10)||(avanceJ2=20)Entonces
				avanceJ2<-avanceJ2+5;
			Sino
				SI (par = 0) ENTONCES
					avanceJ2 <-avanceJ2 + 2;
				FinSi
			FinSi
		FinSi
		Escribir "la suma de los dados fue: ",dados;
		Escribir "casilla del jugador 2 es:", avanceJ2;
		Esperar tecla;
		Limpiar Pantalla;
		// jugador3
		Escribir "jugador 3 jugada",contJ+1;
		Escribir "---------------------------";
		Dados <-(Azar [6]+1)+(Azar [6]+1);
		avanceJ3<-dados + avanceJ3;
		par <-avanceJ3%2;
		si(par!=0) Entonces
			si (avanceJ3=3)||(avanceJ3=5)||(avanceJ3=7)Entonces
				avanceJ3<-avanceJ3-2;
			FinSi
			si (avanceJ3=11)||(avanceJ3=17) Entonces
				avanceJ3<-avanceJ3-4;
			FinSi
			si (avanceJ3=23)Entonces
				avanceJ3<-avanceJ3-6;
			FinSi
			si (avanceJ3=13) entonces
				avanceJ3<-0;
			FinSi
			si (avanceJ3=9)||(avanceJ3=15)||(avanceJ3=21)Entonces
				avanceJ3<-avanceJ3-3;
			FinSi
		sino
			si (avanceJ3=10)||(avanceJ3=20)Entonces
				avanceJ3<-avanceJ3+5;
			Sino
				SI (par = 0) ENTONCES
					avanceJ3<-avanceJ3+2;
				Finsi	
			FinSi
		FinSi
		Escribir "la suma de los dados fue: ",dados;
		Escribir "casilla del jugador 3 es: ", avanceJ3;
		contJ <-contJ + 1;
		esperar tecla;
		Limpiar Pantalla;
	Hasta Que (avanceJ1> 27) || (avanceJ2> 27) || (avanceJ3> 27)
	
	si (avanceJ1>avanceJ2)&&(avanceJ1>avanceJ3)Entonces
		Escribir "el jugador 1 gana con ",contJ," jugadas";
	Sino
		si (avanceJ2>avanceJ3) Entonces
			Escribir "el jugador 2 gana con ",contJ," jugadas";
		Sino
			Escribir "el jugador 3 gana con ",contJ," jugadas";
		FinSi
	FinSi
FinProceso

