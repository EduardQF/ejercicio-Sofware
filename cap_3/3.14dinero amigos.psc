Proceso sin_titulo
	Escribir "ingrese cantidad de dinero aportada por amigo1";
	leer amigo1;
	Escribir "ingrese cantidad de dinero aportada por amigo2";
	leer amigo2;
	Escribir "ingrese cantidad de dinero aportada por amigo3";
	leer amigo3;
	diner_total<-amigo1+amigo2+amigo3;
	am1<-(amigo1*100)/diner_total;
	am2<-(amigo2*100)/diner_total;
	am3<-(amigo3*100)/diner_total;
	Escribir "los porsentajes que entrego cada amigo es:";
	Escribir "porsentaje amigo 1 es:",am1,"%";
	Escribir "porsentaje amigo 2 es:",am2,"%";
	Escribir "porsentaje amigo 3 es:",am3,"%";
FinProceso

