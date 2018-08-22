Program questao56 ;
var
qpen:integer;
desnovc,vfnovc,novc,desoitc,vfoitc,oitc,desseic,vfseic,seic,descinc,vfcinc,cinc:real;
p:char;
 Begin
    write('O cliente é parceiro: Digite s para sim e n para n ');
    read(p);
    write('Digite a quantidade de pen drives que você quer comprar: ');
    read(qpen);
  if (p = 's') or (p = 'S') then
   begin
    if (qpen <= 100) then
     begin
       novc := qpen * 9.00;
       desnovc := (novc*30)/100;
       vfnovc := (novc-desnovc);
	  write('A compra tem o valor de: ',vfnovc:2:2,' ','E tem um desconto de: ',desnovc:2:2);
     end;
		if (qpen >= 101) and (qpen <= 500) then
		begin
		  oitc := qpen * 8.00;
		  desoitc := (oitc*30)/100;
       	  vfoitc := (oitc-desoitc);
		  write('A compra tem o valor de: ',vfoitc:2:2,' ','E tem um desconto de: ',desoitc:2:2);
		end;
			if (qpen >= 501) and (qpen <= 1000) then
			begin
			  seic := qpen * 6.80;
			  desseic := (seic*30)/100;
       		  vfseic := (seic-desseic);
			  write('A compra tem o valor de: ',vfseic:2:2,' ','E tem um desconto de: ',desseic:2:2);
			end;
				if (qpen > 1000) then
				begin
				  cinc := qpen * 5.50;
				  descinc := (cinc*30)/100;
       			  vfcinc := (cinc-descinc);
				  write('A compra tem o valor de: ',vfcinc:2:2,' ','E tem um desconto de: ',descinc:2:2);
 	   			end;
   end
  else
   begin
    if (qpen <= 100) then
     begin
       novc := qpen * 9.00;
	  write('A compra tem o valor de: ',novc:2:2);
     end;
		if (qpen >= 101) and (qpen <= 500) then
		begin
		  oitc := qpen * 8.00;
		  write('A compra tem o valor de: ',oitc:2:2);
		end;
			if (qpen >= 501) and (qpen <= 1000) then
			begin
			  seic := qpen * 6.80;
			  write('A compra tem o valor de: ',seic:2:2);
			end;
				if (qpen > 1000) then
				begin
				  cinc := qpen * 5.50;
				  write('A compra tem o valor de: ',cinc:2:2);
				end;
   end;			  
 End.
