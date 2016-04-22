Proceso sin_titulo
	corredor<-1;
	etapa<-0;
	tramo<-0;
	etapa<-0;
	mejorh1<-0;
	mejorh2<-0;
	mejorh3<-0;
	mejorh4<-0;
	mejorh5<-0;
	mejorh6<-0;
	mejorh7<-0;
	mejorh8<-0;
	mejorh9<-0;
	mejorh10<-0;
	ts1<-1000000;
	ts2<-1000000;
	ts3<-1000000;
	ts4<-1000000;
	ts5<-1000000;
	ts6<-1000000;
	ts7<-1000000;
	ts8<-1000000;
	ts9<-1000000;
	ts10<-1000000;
	tramoMax1<-0;
	tramoMax2<-0;
	tramoMax3<-0;
	tramoMax4<-0;
	tramoMax5<-0;
	tramoMax6<-0;
	tramoMax7<-0;
	tramoMax8<-0;
	tramoMax9<-0;
	tramoMax10<-0;
	acumtt1<-0;
	acumtt2<-0;
	acumtt3<-0;
	acumtt4<-0;
	acumtt5<-0;
	acumtt6<-0;
	acumtt7<-0;
	acumtt8<-0;
	acumtt9<-0;
	acumtt10<-0;
	//inicializar variables tiempo
	Repetir
		Escribir "ingrese cantidad de tramos de la etapa ",etapa+1;
		repetir
			leer canTramos;
			si (canTramos<0) Entonces
				Escribir "cantidad de tramos no validos";
			FinSi
		Hasta Que(canTramos>0)
		
		Repetir
			Repetir
				Escribir "ingrese tiempo demorado del corredor ",corredor," en el tramo ",tramo+1," en hh:mm:ss";
				Segun corredor Hacer
					1: 	repetir
							leer hora1,minuto1,segund1;
							si(hora1<0)||(minuto1<0)||(segund1<0)  Entonces
								Escribir "tiempo ingresado invalido";
							FinSi
						Hasta Que(hora1>0)&&(minuto1>=0)&&(segund1>=0) 
					2:	repetir
							leer hora2,minuto2,segund2;
							si(hora2<0)||(minuto2<0)||(segund2<0)  Entonces
								Escribir "tiempo ingresado invalido";
							FinSi
						Hasta Que(hora2>0)&&(minuto2>=0)&&(segund2>=0) 
					3:	repetir
							leer hora3,minuto3,segund3;
							si(hora3<0)||(minuto3<0)||(segund3<0)  Entonces
								Escribir "tiempo ingresado invalido";
							FinSi
						Hasta Que(hora3>0)&&(minuto3>=0)&&(segund3>=0) 
						
					4:	repetir
							leer hora4,minuto4,segund4;	
							si(hora4<0)||(minuto3<0)||(segund4<0)  Entonces
								Escribir "tiempo ingresado invalido";
							FinSi
						Hasta Que(hora4>0)&&(minuto4>=0)&&(segund4>=0) 
					5:	repetir
							leer hora5,minuto5,segund5;
							si(hora5<0)||(minuto4<0)||(segund5<0)  Entonces
								Escribir "tiempo ingresado invalido";
							FinSi
						Hasta Que(hora5>0)&&(minuto5>=0)&&(segund5>=0) 
					6:	repetir
							leer hora6,minuto6,segund6;
							si(hora6<0)||(minuto5<0)||(segund6<0)  Entonces
								Escribir "tiempo ingresado invalido";
							FinSi
						Hasta Que(hora6>0)&&(minuto6>=0)&&(segund6>=0) 
					7:	repetir
							leer hora7,minuto7,segund7;
							si(hora7<0)||(minuto6<0)||(segund7<0)  Entonces
								Escribir "tiempo ingresado invalido";
							FinSi
						Hasta Que(hora7>0)&&(minuto7>=0)&&(segund7>=0) 
					8:	repetir
							leer hora8,minuto8,segund8;
							si(hora8<0)||(minuto7<0)||(segund8<0)  Entonces
								Escribir "tiempo ingresado invalido";
							FinSi
						Hasta Que(hora8>0)&&(minuto8>=0)&&(segund8>=0) 
					9:	repetir
							leer hora9,minuto9,segund9;
							si(hora9<0)||(minuto9<0)||(segund9<0)  Entonces
								Escribir "tiempo ingresado invalido";
							FinSi
						Hasta Que(hora9>0)&&(minuto9>=0)&&(segund9>=0) 
					10:
						repetir
							leer hora10,minuto10,segund10;
							si(hora10<0)||(minuto10<0)||(segund10<0)  Entonces
								Escribir "tiempo ingresado invalido";
							FinSi
						Hasta Que(hora10>0)&&(minuto10>=0)&&(segund10>=0) 
				FinSegun
				corredor<-corredor+1;
			Hasta Que corredor>=10 
			//comparar mejor tramo
			ts1<-(hora1*3600)+(minuto1*60)+segund1;
			si(ts1<mejorh1) Entonces
				mejorh1<-ts1;
				tramoMax1<-tramo+1;
			FinSi
			ts2<-(hora2*3600)+(minuto2*60)+segund2;
			si(ts2<mejorh2) Entonces
				mejorh2<-ts2;
				tramoMax2<-tramo+1;
			FinSi
			ts3<-(hora3*3600)+(minuto3*60)+segund3;
			si(ts3<mejorh3) Entonces
				mejorh3<-ts3;
				tramoMax3<-tramo+1;
			FinSi
			ts4<-(hora4*3600)+(minuto4*60)+segund4;
			si(ts4<mejorh4) Entonces
				mejorh4<-ts4;
				tramoMax4<-tramo+1;
			FinSi
			ts5<-(hora5*3600)+(minuto5*60)+segund5;
			si(ts5<mejorh5) Entonces
				mejorh5<-ts5;
				tramoMax5<-tramo+1;
			FinSi
			ts6<-(hora6*3600)+(minuto6*60)+segund6;
			si(ts6<mejorh6) Entonces
				mejorh6<-ts6;
				tramoMax6<-tramo+1;
			FinSi
			ts7<-(hora7*3600)+(minuto7*60)+segund7;
			si(ts7<mejorh7) Entonces
				mejorh7<-ts7;
				tramoMax7<-tramo+1;
			FinSi
			ts8<-(hora8*3600)+(minuto8*60)+segund8;
			si(ts8<mejorh8) Entonces
				mejorh8<-ts8;
				tramoMax8<-tramo+1;
			FinSi
			ts9<-(hora9*3600)+(minuto9*60)+segund9;
			si(ts9<mejorh9) Entonces
				mejorh9<-ts9;
				tramoMax9<-tramo+1;
			FinSi
			ts10<-(hora10*3600)+(minuto10*60)+segund10;
			si(ts10<mejorh10) Entonces
				mejorh10<-ts10;
				tramoMax10<-tramo+1;
			FinSi
			corredor<-0;
			tramo<-tramo+1;
			acumtt1<-acumtt1+ts1;
			acumtt2<-acumtt2+ts2;
			acumtt3<-acumtt3+ts3;
			acumtt4<-acumtt4+ts4;
			acumtt5<-acumtt5+ts5;
			acumtt6<-acumtt6+ts6;
			acumtt7<-acumtt7+ts7;
			acumtt8<-acumtt8+ts8;
			acumtt9<-acumtt9+ts9;
			acumtt10<-acumtt10+ts10;
		Hasta Que (tramo=canTramos)
		Escribir "el mejor tramo del corredor 1 fue: ",tramoMax1+1;
		Escribir "el mejor tramo del corredor 2 fue: ",tramoMax2+1;
		Escribir "el mejor tramo del corredor 3 fue: ",tramoMax3+1;
		Escribir "el mejor tramo del corredor 4 fue: ",tramoMax4+1;
		Escribir "el mejor tramo del corredor 5 fue: ",tramoMax5+1;
		Escribir "el mejor tramo del corredor 6 fue: ",tramoMax6+1;
		Escribir "el mejor tramo del corredor 7 fue: ",tramoMax7+1;
		Escribir "el mejor tramo del corredor 8 fue: ",tramoMax8+1;
		Escribir "el mejor tramo del corredor 9 fue: ",tramoMax9+1;
		Escribir "el mejor tramo del corredor 10 fue: ",tramoMax10+1;
		si(acumtt1>acumtt2)&&(acumtt1>acumtt3)&&(acumtt1>acumtt4)&&(acumtt1>acumtt5)&&(acumtt1>acumtt6)&&(acumtt1>acumtt7)&&(acumtt1>acumtt8)&&(acumtt1>acumtt9)&&(acumtt1>acumtt10)Entonces
			Escribir "el mejor en esta etapa fue el corredor 1 con un tiempo total de: ",trunc(ts1/3600),":",trunc((ts1-((trunc(ts1/3600))*3600))/60),":",ts1-(trunc((ts1-((trunc(ts1/3600))*3600))/60));
		Sino
			si(acumtt2>acumtt3)&&(acumtt2>acumtt4)&&(acumtt2>acumtt5)&&(acumtt2>acumtt6)&&(acumtt2>acumtt7)&&(acumtt2>acumtt8)&&(acumtt2>acumtt9)&&(acumtt2>acumtt10) Entonces
				Escribir "el mejor en esta etapa fue el corredor 2 con un tiempo total de:",trunc(ts2/3600),":",trunc((ts2-((trunc(ts2/3600))*3600))/60),":",ts2-(trunc((ts2-((trunc(ts2/3600))*3600))/60));
			Sino
				si(acumtt3>acumtt4)&&(acumtt3>acumtt5)&&(acumtt3>acumtt6)&&(acumtt3>acumtt7)&&(acumtt3>acumtt8)&&(acumtt3>acumtt9)&&(acumtt3>acumtt10) Entonces
					Escribir "el mejor en esta etapa fue el corredor 3 con un tiempo total de:",trunc(ts3/3600),":",trunc((ts3-((trunc(ts3/3600))*3600))/60),":",ts3-(trunc((ts3-((trunc(ts3/3600))*3600))/60));	
				Sino
					si(acumtt4>acumtt5)&&(acumtt4>acumtt6)&&(acumtt4>acumtt7)&&(acumtt4>acumtt8)&&(acumtt4>acumtt9)&&(acumtt4>acumtt10) Entonces
						Escribir "el mejor en esta etapa fue el corredor 4 con un tiempo total de:",trunc(ts4/3600),":",trunc((ts4-((trunc(ts4/3600))*3600))/60),":",ts4-(trunc((ts4-((trunc(ts4/3600))*3600))/60));
					Sino
						si(acumtt5>acumtt6)&&(acumtt5>acumtt7)&&(acumtt5>acumtt8)&&(acumtt5>acumtt9)&&(acumtt5>acumtt10) Entonces
							Escribir "el mejor en esta etapa fue el corredor 5 con un tiempo total de:",trunc(ts5/3600),":",trunc((ts5-((trunc(ts5/3600))*3600))/60),":",ts5-(trunc((ts5-((trunc(ts5/3600))*3600))/60));	
						Sino
							si(acumtt6>acumtt7)&&(acumtt6>acumtt8)&&(acumtt6>acumtt9)&&(acumtt6>acumtt10)  Entonces
								Escribir "el mejor en esta etapa fue el corredor 6 con un tiempo total de:",trunc(ts6/3600),":",trunc((ts6-((trunc(ts6/3600))*3600))/60),":",ts6-(trunc((ts6-((trunc(ts6/3600))*3600))/60));	
							Sino
								si(acumtt7>acumtt8)&&(acumtt7>acumtt9)&&(acumtt7>acumtt10) Entonces
									Escribir "el mejor en esta etapa fue el corredor 7 con un tiempo total de:",trunc(ts7/3600),":",trunc((ts7-((trunc(ts7/3600))*3600))/60),":",ts7-(trunc((ts7-((trunc(ts7/3600))*3600))/60));	
								Sino
									si(acumtt8>acumtt9)&&(acumtt8>acumtt10) entonces
										Escribir "el mejor en esta etapa fue el corredor 8 con un tiempo total de:",trunc(ts8/3600),":",trunc((ts8-((trunc(ts8/3600))*3600))/60),":",ts8-(trunc((ts8-((trunc(ts8/3600))*3600))/60));
									sino	
										si(acumtt9>acumtt10) Entonces
											Escribir "el mejor en esta etapa fue el corredor 9 con un tiempo total de:",trunc(ts9/3600),":",trunc((ts9-((trunc(ts9/3600))*3600))/60),":",ts9-(trunc((ts9-((trunc(ts9/3600))*3600))/60));
										Sino
											Escribir "el mejor en esta etapa fue el corredor 10 con un tiempo total de:",trunc(ts10/3600),":",trunc((ts10-((trunc(ts10/3600))*3600))/60),":",ts10-(trunc((ts10-((trunc(ts10/3600))*3600))/60));
										FinSi
									FinSi
								FinSi
							FinSi
						FinSi
					FinSi
				FinSi
			FinSi
		FinSi
		Esperar tecla;
		Limpiar Pantalla;
		etapa<-etapa+1;
	Hasta Que (etapa=5) 
	
FinProceso
