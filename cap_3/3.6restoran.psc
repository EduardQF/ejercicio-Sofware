Proceso sin_titulo
	Escribir "cantidad completo italiano";
	Leer  cant_1;
	Escribir "cantidad completo a la chilena";
	Leer  cant_2;
	Escribir "cantidad hamburguesa-queso";
	Leer  cant_3;
	Escribir "cantidad churrasco";
	Leer  cant_4;
	Escribir "cantidad cerveza";
	Leer  cant_5;
	Escribir "cantidad bebida";
	Leer  cant_6;
	cantvend_compit<-690*cant_1;
	cantvend_comch<-890*cant_2;
	cantvend_ham<-990*cant_3;
	cantvend_chu<-1100*cant_4;
	cantvend_cer<-700*cant_5;
	cantvend_beb<-500*cant_6;
	cuenta_sin_iva<-cantvend_compit+cantvend_comch+cantvend_ham+cantvend_chu+cantvend_cer+cantvend_beb;
	iva<-(cuenta_sin_iva*19)/100;
	cuenta_con_iva<-redon(cuenta_sin_iva+iva);
	num_unid<-(cant_1)+(cant_2)+(cant_3)+(cant_4)+(cant_5)+(cant_6);
	Escribir "cantidad ed unidades consumidas: ",num_unid;
	Escribir " la cuenta de la orden es:",cuenta_con_iva;
	
FinProceso
