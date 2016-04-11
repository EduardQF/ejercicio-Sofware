Proceso dias_de_vida
	Escribir "que dia naciste";
	Leer dias;
	Escribir "mes en que naciste";
	Leer mes;
	Escribir "año en que naciste";
	Leer ano;
	hoy_d<-18;
	hoy_m<-3;
	hoy_a<- 2016;
	dia<-hoy_d-dias;
	meses<-(hoy_m-mes)*31;
	anos<-(hoy_a-ano)*365;
	visiesto<- trunc((hoy_a -ano)/4);
	dias_vividos<-anos+dia+meses+ visiesto;
	Escribir "dia",dia;
	Escribir "meses",meses;
	Escribir "anos", anos;
	Escribir "visiesto", visiesto;
	escribir "tu edad es", dias_vividos; 
FinProceso
