Proceso sin_titulo
	Escribir "ingrese cantidad de alumnos aprobados";
	leer apro;
	Escribir "ingrese cantidad de alumnos rerobrados";
	Leer repro;
	Escribir "ingrese cantidad de alumnos destacados";
	Leer dest;
	total<- apro+repro;
	por_apro<- redon((apro*100)/total);
	por_repro<- redon((repro*100)/total);
	por_destacados<-redon((dest*100)/total);
	Escribir "porsentaje de alumnos aprobados:",por_apro,"%";
	Escribir "porsentaje de alumnos reprobados: ",por_repro,"%";
	Escribir "posentaje de alumnos destacados: ",por_destacados,"%";
FinProceso
