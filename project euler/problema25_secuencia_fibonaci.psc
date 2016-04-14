Proceso sin_titulo
	acumFN1<-1;
	acumFN2<-0;
	acumFNsum<-0;
	cont<-0;
	mientras cont<10000 Hacer
		acumFNsum<-acumFN1+acumFN2;
		acumFN2<-acumFN1;
		acumFN1<-acumFNsum;
		cont<-cont+1;
		Escribir "contador ",cont;
		escribir acumFN1;
	FinMientras
FinProceso
