Proceso ejercicio_medio3
	Escribir "ingrese cantidad de segundos";
	Leer seguns;
	horas<-trunc((seguns/60)/60);
	minutos<-trunc(seguns/60)-(60*horas);
	segunds<-seguns-(horas*60*60)-(minutos*60);
	Escribir "hora:",horas," minutos:",minutos," segundos:",segunds;
FinProceso
