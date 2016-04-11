Proceso sin_titulo
	
	Repetir
		Escribir "ingrese nota a clasificar";
		Leer nota;
		Si (nota>7.0) o (nota<1.0) Entonces
			Escribir "la nota ingresada no es valida.";
		FinSi
	Hasta Que (nota>=1.0) y (nota<=7.0)

	Si (nota>=1.0) y (nota<=3.9) Entonces
		Escribir "su nota es: insuficiente";
	Sino
		si (nota>=4.0) y (nota<=4.9) Entonces
			Escribir "su nota es: suficiente";
		Sino
			si (nota>=5.0) y (nota<=5.9) Entonces
				Escribir "su nota es: buena";
			Sino
				si (nota>=6.0) y (nota<=7.0) Entonces
					Escribir "su nota es: muy buena";
				FinSi
			FinSi
		FinSi
	FinSi
FinProceso
