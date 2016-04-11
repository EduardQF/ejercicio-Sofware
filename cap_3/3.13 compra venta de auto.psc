Proceso sin_titulo
	Escribir "ingrese costo del vehículo";
	leer precio;
	gan_ven<-(precio*8)/100;
	imp_loc<-(precio*3)/100;
	imp_est<-(precio*3)/100;
	precio_t<-precio+gan_ven+imp_est+imp_loc;
	cost_ad<-gan_ven+imp_loc+imp_est;
	Escribir "el valor del veiculo es:$", precio;
	Escribir "costos adicionales: $",cost_ad;
	Escribir "el precio total del veiculo es: $", precio_t;
	
FinProceso
