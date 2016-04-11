Proceso ejercicio4
	Repetir//obtener grado de la empresa
		Escribir "ingrese grado en la empresa";
		Leer grado;
		Escribir "";
		Si (grado>3) o (grado<0) Entonces
			Escribir "el grado ingreado no es valido";
		FinSi
	Hasta Que (grado>=1) y (grado<=3);
	
	Repetir//obtener horas trabajadas
		Escribir "ingrese horas trabajadas al mes";
		Leer hora;
		Escribir "";
		si (hora>336) o (hora<=120)  Entonces
			Escribir "horas trabajadas invalidas";
		FinSi
	Hasta Que (hora>=120) y (hora<=336)
	
	//obtener la isapre perteneciente
	Escribir "Isapres:";
	Escribir "1. Colmena";
	Escribir "2. Ban medica";
	Escribir "3. Vida 3";
	Escribir "4. Fonasa";
	Repetir
		Escribir "ingrese codigo de Isapre";
		leer isapre;
		Escribir "";
		si (isapre>4) o (isapre<1) Entonces
			Escribir "codigo invalido";
		FinSi
	Hasta Que (isapre<=4) y (isapre>=1)
	
	//obtener AFP perteneciente
	Escribir "AFP";
	Escribir "1.Ban Sander";
	Escribir "2.Geometrica SA";
	Escribir "3.Cuprum";
	Escribir "4.Provida";
	Repetir
		Escribir "ingrese codigo de AFP";
		Leer AFP;
		Escribir "";
		si (AFP>4) o (AFP<1) Entonces
			Escribir "codigo invalido";
		FinSi
	Hasta Que (AFP<=4) y (AFP>=1)
	
	//calcular sueldo base
	Si grado=1 Entonces
		sueldo_b<-450000;
	Sino
		si grado=2 Entonces
		    sueldo_b<-550000;	
		Sino
			sueldo_b<-700000;
		FinSi
	FinSi
	
	//calculamos las horas extras
	horas_ex<-(hora-160)/4;
	Si horas_ex>7 Entonces
		pag_hora<-3500;
	Sino
		Si (horas_ex>=4) y (horas_ex<=7) Entonces
			pag_hora<-3000;
		Sino
			Si (horas_ex>0) y (horas_ex<4) Entonces
				pag_hora<-2000;
			Sino
				pag_hora<-0;
			FinSi
		FinSi
	FinSi
	
	//calculamos descuento por  Isapre
	Si isapre=1 Entonces
		desc_isapre<-(sueldo_b*6.5)/100;
	Sino
		Si isapre=2 Entonces
			desc_isapre<-(sueldo_b*7.3)/100;
		Sino
			Si isapre=3 Entonces
				desc_isapre<-(sueldo_b*7)/100;
			Sino
				desc_isapre<-(sueldo_b*7)/100;
			FinSi
		FinSi
	FinSi
	
	//calculamos descuento por AFP
	Si AFP=1 Entonces
		desc_AFP<-(sueldo_b*12)/100;
	Sino
		Si AFP=2 Entonces
			desc_AFP<-(sueldo_b*13.4)/100;
		Sino
			Si AFP=3 Entonces
				desc_AFP<-(sueldo_b*12.3)/100;
			Sino
				desc_AFP<-(sueldo_b*12.9)/100;
			FinSi
		FinSi
	FinSi
	
	//ahora juntamos todos los datos obtenidos para calcular el sueldo liquido
	sueldoliquido<-(sueldo_b+pag_hora*4)-(desc_isapre+desc_AFP);
	Escribir "Sueldo liquido mensual del empleado es:",sueldoliquido;
FinProceso
