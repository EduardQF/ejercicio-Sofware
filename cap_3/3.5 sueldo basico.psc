Proceso ejercicio35
	Escribir "ingrese su sueldo base";
	Leer sb;
	Escribir "ingrese sus horas extras";
	Leer extras;
	Escribir "ingrese el valor de las horas extras";
	Leer valore;
	valore_ex <- extras*valore;
	sueldo_liquido<- valore_ex+sb;
	veinte_xsiento <- (sueldo_liquido*20)/100;
	sueldo_bruto <- sueldo_liquido-veinte_xsiento;
	Escribir "Sueldo Basico es de:",sueldo_liquido;
	Escribir "porsentaje de descuento",veinte_xsiento;
	Escribir "total ganado",sueldo_bruto;
FinProceso
