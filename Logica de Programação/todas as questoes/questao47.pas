Program questao47 ;
var
  a1,a2,a3:real;
 Begin
     write('Digite a primeira altura:');
     read(a1);
     
     write('Digite a segunda altura:');
     read(a2);
     
	write('Digite a terceira altura:');
     read(a3);
     
	If ((a1 >= 0.6 ) and (a1 <= 1) ) and ((a2 >= 0.6 ) and 
	(a2 <= 1)) and ((a3 >= 0.6 ) and (a3 <= 1)) then
     begin
     write('As pessoas s�o baix�ssimas');
     end;
     	If ((a1 >= 1.01 ) and (a1 <= 1.5) ) and ((a2 >= 1.01 ) and 
		(a2 <= 1.5)) and ((a3 >= 1.01 ) and (a3 <= 1.5)) then
     	begin
     	write('As pessoas s�o baixas');
     	end;
     If ((a1 >= 1.51 ) and (a1 <= 1.8) ) and ((a2 >= 1.51 ) and 
	(a2 <= 1.8)) and ((a3 >= 1.51 ) and (a3 <= 1.8)) then
     begin
     write('As pessoas tem alturas normais');
     end;
     	if (a1 > 1.8) and (a2 > 1.8) and (a3 > 1.8) then
     	begin
     	write('As tr�s pessoas s�o altas');
     	end;
 End.
