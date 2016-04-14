Proceso campeonato
	//inicializamos las variables
	contGoles<-0;
	contGolesC<-0;
	contPartidos<-0;
	contPuntos<-0;
	ganados<-0;
	perdidos<-0;
	empates<-0;
	Mientras (contPartidos<10) Hacer
		Escribir "ingrese datos del partido",contPartidos+1;
		Escribir "-----------------------------------";
		Escribir "ingrese goles echos";
		leer goles;
		Escribir "ingrese goles echos por el equipo contrario";
		leer golesC;
		si (goles<golesC) Entonces
			puntos<-0;
			perdidos<-perdidos+1;
		Sino
			si (goles>golesC) entonces
				puntos<-3;
				ganados<-ganados+1;
			Sino
				puntos<-1;
				empates<-empates+1;
			FinSi
		FinSi
		contGoles<-contGoles+goles;
		contGolesC<-contGolesC+golesC;
		contPuntos<-contPuntos+puntos;
		contPartidos<-contPartidos+1;
		
		Limpiar Pantalla;
	FinMientras
	Escribir "resultados del equipo:";
	Escribir "la cantidad de goles a favor son: ",contGoles;
	Escribir "la cantidad de goles en contra son: ",contGolesC;
	Escribir "la diferencia de goles es de:",(contgoles-contGolesC);
	Escribir "puntos del equipo: ",contPuntos;
	Escribir " partidos ganados: ",ganados;
	Escribir " partidos perdidos: ",perdidos;
	Escribir " partidos empatados: ",empates;
	si (contPuntos<10) Entonces
		Escribir "la clsificacion del equipo es: liguilla de promoción";
	Sino
		si (contPuntos>20) Entonces
			Escribir "la clasificación del equipo es: liguilla de campiotato";		
		Sino
			Escribir  "la clasificacion del equipo es: no liguilla";
		FinSi
	FinSi
	
FinProceso
