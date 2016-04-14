Proceso incluso_los_numeros_de_fibonacci
	acumFN1<-1;
	acumFN2<-0;
	acumFNsum<-0;
	cont<-0;
	suma<-0;
	mientras cont<32 Hacer
		acumFNsum<-acumFN1+acumFN2;
		acumFN2<-acumFN1;
		acumFN1<-acumFNsum;
		cont<-cont+1;
		Escribir "contador ",cont;
		escribir acumFN1;
		si cont>=31 Entonces
			suma<-suma+acumFN1;
		FinSi
	FinMientras
	Escribir "la suma de los 2 ultimos numeros de fibonacci es: ",suma;
FinProceso
