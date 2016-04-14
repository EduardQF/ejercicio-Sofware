Proceso sum_numPrimos
	total<-0;
	cant_mostrados <- 1;
	num<-3;
	Mientras num<2000000 Hacer
		es_primo <- Verdadero;
		Para i<-3 hasta rc(num) con paso 2 Hacer 
			Si num%i = 0 entonces
				es_primo <- Falso;
			FinSi
		FinPara
		Si es_primo Entonces
			cant_mostrados <- cant_mostrados + 1;
			Escribir num;
			total<-total+num;
		FinSi
		num<-num+2;
	FinMientras
	Limpiar Pantalla;
	Escribir total;
FinProceso
