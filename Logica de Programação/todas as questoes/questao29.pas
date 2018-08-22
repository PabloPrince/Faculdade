Program questao29 ;
var
cor:string;
 Begin
  write('Digite uma cor: ');
  read(cor);
  	if (cor = 'azul') then
  	begin
  		write('A cor é azul');
  	end
	  else if (cor = 'verde') then
	  begin
	  	write('A cor é verde');	
	  end
	  	else
	  	begin
	  		write('A cor digitada foi: ',cor);
	  	end;	
 End.
