Proceso ejercicio_medio2
	Escribir "ingrese cantidad de dinero aportada por persona 1";
	leer persona1;
	Escribir "ingrese cantidad de dinero aportada por persona 2";
	leer persona2;
	Escribir "ingrese cantidad de dinero aportada por persona 3";
	leer persona3;
	dinero_total<-persona1+persona2+persona3;
	porciento1<-persona1*100/dinero_total;
	porciento2<-persona2*100/dinero_total;
	porciento3<-persona3*100/dinero_total;
	Escribir "el porsentaje de la persona 1 es: ",porciento1,"%";
	Escribir "el porsentaje de la persona 2 es: ",porciento2,"%";
	Escribir "el porsentaje de la persona 3 es: ",porciento3,"%";
FinProceso
