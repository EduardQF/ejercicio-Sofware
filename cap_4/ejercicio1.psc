Proceso mayor_numero
	//leer los numeros pedidios al usuario
	Escribir "ingrese numero1";
	Leer num1;
	Escribir "ingrese numero2";
	Leer num2;
	Escribir "ingrese numero3";
	Leer num3;
	Escribir "ingrese numero4";
	Leer num4;
	//a traves de la estructura si-sino obtengo el numero mayor que se almacena en
	//la variable mayor 
	Si (num1>num2) y (num1>num3) y (num1>num4) Entonces
		mayor<-num1;
	Sino
		Si (num2>num3) y (num2>num4) Entonces
			mayor<-num2;
		Sino
			Si num3>num4 Entonces
				mayor<-num3;
			Sino
				mayor<-num4;
			FinSi
		FinSi
	FinSi
	Escribir "El numero mayor es: ",mayor;
FinProceso
