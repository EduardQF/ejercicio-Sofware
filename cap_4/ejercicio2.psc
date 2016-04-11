Proceso sin_titulo
	Escribir "ingrese cifra a clasificar";
	Repetir
		Leer diner;
		si (diner>99000) o (diner<=0) Entonces
			Escribir "sifra no registrada";
			Escribir "ingrese nuevamente la sifra a clasificar";
		FinSi
	Hasta Que (diner>0) y (diner<=99000)
	
	diesmiles<-trunc(diner/10000);
	miles<-trunc(diner/1000)-(diesmiles*10);
	cientos<-trunc(diner/100)-((miles*10)+(diesmiles*100));
	decenas<-trunc(diner/10)-((miles*100)+(diesmiles*1000)+(cientos*10));
	unidades<-trunc(diner)-((miles*1000)+(diesmiles*10000)+(cientos*100)+(decenas*10));
	
	val_1<-(diesmiles%2);
	Si val_1=0 Entonces
		Escribir diesmiles/2," billetes de $20000";
		Escribir "0 billetes de $10000";
	Sino
		Escribir trunc(diesmiles/2),"billetes de $20000";
		Escribir ,"1 billetes de $10000";
	FinSi
	
	val_2<-miles%2;
	Si miles<5 Entonces
		Si val_2=0 Entonces
			Escribir miles/2," billetes de $2000";
			Escribir "0 billetes de $1000";
		Sino
			Escribir trunc(miles/2)," billetes de $2000";
			Escribir "1 billetes de $1000";
		FinSi
	Sino
		Si val_2=1 Entonces
			Escribir trunc(miles/5)," billetes de $5000";
			Escribir ((miles-5)/2)," billetes de $2000";
			Escribir "0 billetes de $1000";
		Sino
			Escribir trunc(miles/5)," billetes de $5000";
			Escribir trunc((miles-5)/2)," billetes de $2000";
			Escribir "1 billetes de $1000";
		FinSi
	FinSi
	
	Si cientos<5 Entonces
		Escribir cientos ," monedas de  $100";
	Sino
		Escribir trunc(cientos/5)," monedas de  $500";
		Escribir cientos-5," monedas de  $100";
	FinSi
	
	Si decenas<5 Entonces
		Escribir decenas," moneda de $10";
	Sino
		Escribir trunc(decenas/5)," monedas de  $50";
		Escribir decenas-5," monedas de  $10";
	FinSi
	
	Si unidades<5 Entonces
		Escribir unidades, " monedas de  $1";
	Sino
		Escribir trunc(unidades/5)," monedas de  $5";
		Escribir  unidades-5," monedas de  $1";
	FinSi
FinProceso
