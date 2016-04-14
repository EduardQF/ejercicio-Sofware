Proceso diagonales_en_espiral
	inicial<-1;
	cont<-0;
	dist<-2;
	suma<-1;
	Repetir
		Escribir "ingrese medida del lado del cuadrado";
		leer medida;
		si(medida<0)Entonces
			Escribir "WARNING, dano incorrecto";
		FinSi
	Hasta Que (medida>0)
	cant<-trunc(medida/2);

	Para cont1<-1 Hasta cant Con Paso 1 Hacer
		Repetir
			inicial<-inicial+dist;
			suma<-suma+inicial;
			cont<-cont+1;
		Hasta Que (cont=4) 
		dist<-dist+2;
		cont<-0;
	FinPara
	Escribir "la suma de los numeros en diagonal es: ",suma;
	
FinProceso
