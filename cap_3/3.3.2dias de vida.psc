Proceso dias_de_vida
	Escribir "dia de hoy";
	leer d,m,a;
	Escribir "fecha de nacimiento";
	Leer dias,mes,ano;
	hoy_d<-d;
	hoy_m<-m;
	hoy_a<- a;
	dia<-hoy_d-dias;
	meses<-(hoy_m-mes)*31;
	anos<-(hoy_a-ano)*365;
	visiesto<- trunc((hoy_a -ano)/4);
	dias_vividos<-anos+dia+meses+ visiesto;
	escribir "tu edad es: ", dias_vividos," dias de vida"; 
FinProceso