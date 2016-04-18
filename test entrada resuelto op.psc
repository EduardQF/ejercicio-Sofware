Proceso sin_titulo
	
	cont_estados<-0;
	cont_ninios<-0;
	cont_centros<-0;
	cont_atenciones<-0;
	cant_denut<-0;
	cant_sobrep<-0;
	cant_normal<-0;
	cont_edad_1<-0;
	cont_edad_2<-0;
	cont_edad_3<-0;
	lugarMax<-0;
	maxAtencion<-0;
	lugMaxSobre<-0;
	cantMaxSobre<-0;
	
	Escribir "ingresar la cantidad de centros asistenciales";
	leer cant_centros;
	Mientras (cont_centros<cant_centros) Hacer
			Escribir "ingresar la cantidad de atenciones para el centro asistencial:",cont_centros+1;
			leer cant_atenciones;
			
			si (cant_atenciones>=maxAtencion) Entonces
				maxAtencion<-cant_atenciones;
				lugarMax<-cont_centros+1;
			FinSi
			Mientras (cont_atenciones<cant_atenciones) Hacer
				Escribir "ingrese edad de la atencion",cont_atenciones+1;
				leer edad;
				Escribir "ingrese peso de la atencion",cont_atenciones+1;
				leer peso;
				rangoInferior<-(3*edad+7)-4;
				rangoSuperior<-(3*edad+7)+4;
				si (peso<rangoInferior) Entonces
					cant_Desnut<-cant_desnut+1;
					si (edad>=1 && edad<=3) Entonces
						cont_edad_1<-cont_edad_1+1;
					Sino
						si (edad>=4 && edad<=7) Entonces
							cont_edad_2<-cont_edad_2+1;
						Sino
							cont_edad_3<-cont_edad_3+1;
						FinSi
					FinSi
						
						
						
					si (peso>=rangoSuperior) Entonces
						cant_sobrep<-cant_sobrep+1;
					Sino
						cant_normal<-cat_normal+1;
					FinSi
				FinSi
				
				cont_atenciones<-cont_atenciones+1;
			FinMientras
			si(cant_sobrep>=maxsobr) Entonces
				cantMaxSobre<-cant_sobrep;
				lugMaxSobre<-cont_centros+1;
			FinSi
			
			Escribir "la cantidad de atenciones de rango de desnutricion es: ",cant_desnut;
			Escribir "la cantidad de atenciones de rango de sobrepeso es: ",cant_sobrep;
			Escribir "la cantidad de atenciones de rango de normales es: ",cant_natur;
			cont_atenciones<-0;
			cant_denut<-0;
			cant_normal<-0;
			cant_sobrep<-0;
			cont_centros<-cont_centros+1;	
	FinMientras
	Escribir "el centro com mayorcantidad de  atencion fue: ",lugarMax,"con un total de ",maxAtencion," atenciones";
	Escribir "el centro con mayor cantidad de niños con sobrepeso fue: ",lugMaxSobre," con un total de",cantMaxSobre," de niños con sobre peso";
	
FinProceso 
