Proceso diferencia_cuadrados_y_suma_cuadrados
	acum_cuadrados<-0;
	acum_suma<-0;
	contador<-0;
	Repetir
		contador<-contador+1;
		acum_suma<-acum_suma+contador;
		acum_cuadrados<-acum_cuadrados+(contador)^2;
	Hasta Que (contador=100) 
	diferencia<-(acum_suma^2)-acum_cuadrados;

	Escribir "el cuadrado de cuadrados de los primeros cien números    naturales y el cuadrado de la suma es:",diferencia;
FinProceso
