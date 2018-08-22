Program questao55 ;
var
qpen:integer;
novc,oitc,seic,cinc:real;
 Begin
    write('Digite a quantidade de pen drives que você quer comprar: ');
    read(qpen);
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
 End.
