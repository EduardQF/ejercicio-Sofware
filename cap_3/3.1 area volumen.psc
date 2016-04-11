Proceso area_volumen_de_un_cilindro
	Escribir "¿radio de la base?";
	Leer r;
	Escribir "¿altura del cilindro?";
	Leer h;
	i <- 3.14;
	area_cilindro<-(2*r*i*h)+(2*i*r^2);
	volumen_cilindro <-i* r^2*h;
	Escribir "El area del cilindro es:", area_cilindro, "cm2";
	Escribir "El volumen del cilindro es:", volumen_cilindro,"cm3";
FinProceso
