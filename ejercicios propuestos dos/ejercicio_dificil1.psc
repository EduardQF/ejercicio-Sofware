Proceso sin_titulo
	Escribir "ingrese numero de 4 digitos";
	Leer digito;
	miles<-trunc(digito/1000);
	cientos<-trunc(digito/100)-((miles*10));
	decenas<-trunc(digito/10)-((miles*100)+(cientos*10));
	unidades<-trunc(digito)-((miles*1000)+(cientos*100)+(decenas*10));
	resultado<-miles+cientos+decenas+unidades;
	Escribir "la suma de sus digitos es: ",resultado;
	
FinProceso
