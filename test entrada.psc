Proceso sin_titulo
	Definir acumDesnutridos1 Como Numerica
	//inicializamos contadores y acumuladores
	acumDesnutridos1<-0;
	acumNormales1<-0;
	acumSobrepeso1<-0;
	acumDesnutridos2<-0;
	acumNormales2<-0;
	acumSobrepeso2<-0;
	acumDesnutridos3<-0;
	acumNormales3<-0;
	acumSobrepeso3<-0;
	acumDesnutridos4<-0;
	acumNormales4<-0;
	acumSobrepeso4<-0;
	acumDesnutridos5<-0;
	acumNormales5<-0;
	acumSobrepeso5<-0;
	acumDesnutridos6<-0;
	acumNormales6<-0;
	acumSobrepeso6<-0;
	acumDesnutridos7<-0;
	acumNormales7<-0;
	acumSobrepeso7<-0;
	acumDesnutridos8<-0;
	acumNormales8<-0;
	acumSobrepeso8<-0;
	acumDesnutridos9<-0;
	acumNormales9<-0;
	acumSobrepeso9<-0;
	acum_numAtencion<-0;
	max<-0;
	acum_c1<-0;
	acum_c2<-0;
	acum_c3<-0;
	acum_c4<-0;
	acum_c5<-0;
	acum_c6<-0;
	
	Repetir
		
		Repetir
			Escribir "INGRESE OPCION 1: para ingresar datos del niño";
			Escribir "INGRESE OPCION 2: para mostrar datos de los centros acistenciales";
			Leer op;
			si (op<1)||(op>2) Entonces
				Escribir "la opcion ingresada no es valida";
			FinSi
			
			Repetir
				Escribir "ingrese centro de atencion"
				leer centro
				si(centro>6)||(centro<1) Entonces
					Escribir "WARNING,centro no registrado"
				FinSi
			Hasta Que(centro<=6)&&(centro>=1) 
				Segun centro Hacer
					1:
						acum_c1<-acum_c1+1;
					2:
						acum_c2<-acum_c2+1;
					3:
						acum_c3<-acum_c3+1;
					4:
						acum_c4<-acum_c4+1;
					5:
						acum_c5<-acum_c5+1;
					6:
						acum_c6<-acum_c6+1;	
					De Otro Modo:
				Fin Segun
		Hasta Que (op==1)||(op==2)
		Limpiar Pantalla
		si (op==1) Entonces
			Repetir
				//pedimos os datos al usuario
				Repetir
					Escribir "ingrese edad del niño";
					Leer edad;
					si (edad<0)||(edad>9) Entonces
						Escribir "WARNING la edad ingresada es invalida";
					FinSi
				Hasta Que (edad>0)&&(edad<=9)
				Repetir
					Escribir "ingrese peso del niño";
					leer peso;
					si (peso<0)Entonces
						Escribir "WARNING el peso ingresada es invalida";
					FinSi
				Hasta Que (peso>0)
				
				//calculamos los rangos
				nutricion_max<-(3*edad+7)+4;
				nutricion_min<-(3*edad+7)-4;
				
				Segun edad Hacer
					1:
						Si peso<nutricion_min Entonces
							escribir "el niño se encuentra desnutrido";
							acumDesnutridos1<-acumDesnutridos+1
						Sino
							Si peso>nutricion_max Entonces
								Escribir "el niño esta sobre peso"
								acumNormales1<-acumNormales+1;
							Sino
								Escribir "el niño se encuentra en buena forma";
								acumSobrepeso1<-acumSobrepeso+1;
							Fin Si
						Fin Si	
					2:
						Si peso<nutricion_min Entonces
							escribir "el niño se encuentra desnutrido";
							acumDesnutridos2<-acumDesnutridos+1
						Sino
							Si peso>nutricion_max Entonces
								Escribir "el niño esta sobre peso"
								acumNormales2<-acumNormales+1;
							Sino
								Escribir "el niño se encuentra en buena forma";
								acumSobrepeso2<-acumSobrepeso+1;
							Fin Si
						Fin Si	
					3:
						Si peso<nutricion_min Entonces
							escribir "el niño se encuentra desnutrido";
							acumDesnutridos3<-acumDesnutridos+1
						Sino
							Si peso>nutricion_max Entonces
								Escribir "el niño esta sobre peso"
								acumNormales3<-acumNormales+1;
							Sino
								Escribir "el niño se encuentra en buena forma";
								acumSobrepeso3<-acumSobrepeso+1;
							Fin Si
						Fin Si	
					4:
						Si peso<nutricion_min Entonces
							escribir "el niño se encuentra desnutrido";
							acumDesnutridos4<-acumDesnutridos+1
						Sino
							Si peso>nutricion_max Entonces
								Escribir "el niño esta sobre peso"
								acumNormales4<-acumNormales+1;
							Sino
								Escribir "el niño se encuentra en buena forma";
								acumSobrepeso4<-acumSobrepeso+1;
							Fin Si
						Fin Si	
					5:
						Si peso<nutricion_min Entonces
							escribir "el niño se encuentra desnutrido";
							acumDesnutridos5<-acumDesnutridos+1
						Sino
							Si peso>nutricion_max Entonces
								Escribir "el niño esta sobre peso"
								acumNormales5<-acumNormales+1;
							Sino
								Escribir "el niño se encuentra en buena forma";
								acumSobrepeso5<-acumSobrepeso+1;
							Fin Si
						Fin Si	
					6:
						Si peso<nutricion_min Entonces
							escribir "el niño se encuentra desnutrido";
							acumDesnutridos6<-acumDesnutridos+1
						Sino
							Si peso>nutricion_max Entonces
								Escribir "el niño esta sobre peso"
								acumNormales6<-acumNormales+1;
							Sino
								Escribir "el niño se encuentra en buena forma";
								acumSobrepeso6<-acumSobrepeso+1;
							Fin Si
						Fin Si	
					7:
						Si peso<nutricion_min Entonces
							escribir "el niño se encuentra desnutrido";
							acumDesnutridos7<-acumDesnutridos+1
						Sino
							Si peso>nutricion_max Entonces
								Escribir "el niño esta sobre peso"
								acumNormales7<-acumNormales+1;
							Sino
								Escribir "el niño se encuentra en buena forma";
								acumSobrepeso7<-acumSobrepeso+1;
							Fin Si
						Fin Si	
					8:
						Si peso<nutricion_min Entonces
							escribir "el niño se encuentra desnutrido";
							acumDesnutridos8<-acumDesnutridos+1
						Sino
							Si peso>nutricion_max Entonces
								Escribir "el niño esta sobre peso"
								acumNormales8<-acumNormales+1;
							Sino
								Escribir "el niño se encuentra en buena forma";
								acumSobrepeso8<-acumSobrepeso+1;
							Fin Si
						Fin Si	
					9:	
						Si peso<nutricion_min Entonces
							escribir "el niño se encuentra desnutrido";
							acumDesnutridos9<-acumDesnutridos+1
						Sino
							Si peso>nutricion_max Entonces
								Escribir "el niño esta sobre peso"
								acumNormales9<-acumNormales+1;
							Sino
								Escribir "el niño se encuentra en buena forma";
								acumSobrepeso9<-acumSobrepeso+1;
							Fin Si
						Fin Si	
					de otro Modo:	
				Fin Segun
				acum_numAtencion<-acum_numAtencion+1;
				leer tecla
				Limpiar Pantalla
			Hasta Que (op==1) 
		Sino
			desnutridos<-acumDesnutridos1+acumDesnutridos2+acumDesnutridos3+acumDesnutridos4+acumDesnutridos5+acumDesnutridos6+acumDesnutridos7+acumDesnutridos8+acumDesnutridos9;
			normales<-acumNormales1+acumNormales2+acumNormales3+acumNormales4+acumNormales5+acumNormales6+acumNormales7+acumNormales8+acumNormales9;
			sobrePeso<-acumSobrepeso1+acumSobrepeso2+acumSobrepeso3+acumSobrepeso4+acumSobrepeso5+acumSobrepeso6+acumSobrepeso7+acumSobrepeso8+acumSobrepeso9;
			//comparamos a los niños desnutridos por edades
			desnutridos1_3<-acumDesnutridos1+acumDesnutridos2+acumDesnutridos3;
			desnutridos4_6<-acumDesnutridos4+acumDesnutridos5+acumDesnutridos6;
			desnutridos7_9<-cumDesnutridos7+acumDesnutridos8+acumDesnutridos9;
			
			Escribir "numero de atenciones",acum_numAtencion;
			Escribir "cantidad de niños con sobre peso: ",sobrePeso;
			Escribir "cantidad de niños en buenas condiciones: ",normales;
			Escribir "cantidad de niños desnutridos: ",desnutridos;
			
			si (desnutridos1_3>desnutridos4_6)&&(desnutridos1_3>desnutridos7_9) Entonces
				max<-desnutridos1_3
				Escribir "la mayor cantidad de niños desnutridos se encuentran en: el rango 1-3"
			Sino
				si (desnutridos4_6>desnutridos7_9)Entonces
					Escribir "la mayor cantidad de niños desnutridos se encuentran en:el rango 4-6"
				Sino
					Escribir "la mayor cantidad de niños desnutridos se encuentran en:el rango 7-9"
				FinSi
			FinSi
			si acum_c1>max Entonces
				max<-acum_c1
			FinSi
			si acum_c2>max Entonces
				max<-acum_c2
			Sino
				si acum_c3>max Entonces
					max<-acum_c3
				Sino
					si acum_c4>max Entonces
						max<-acum_c4
					Sino
						si acum_c5>max Entonces
							max<-acum_c5
						Sino
							si acum_c6>max Entonces
								max<-acumc_6;
							FinSi
						FinSi
					FinSi
				FinSi
			FinSi
		FinSi
		escribir "el centro de atencion con mas asistencia es: ",max;
		
	Hasta Que (op==2)
	


	FinProceso
