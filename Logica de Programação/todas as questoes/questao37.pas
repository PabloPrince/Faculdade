Program questao37 ;
var
x:string;
 Begin
  write('Digite a sigla do seu estado em minusculo: ');
  read(x);
  	if (x = 'rj') then
  	begin
  		write('Carioca');
  	end
  		else if (x = 'sp') then
  		begin
  			write('Paulista');
  		end
  			else if (x = 'mg') then
  			begin
  				write('Mineiro');
  			end
  			else
  			begin
  				write('Outros estados');
  			end;	
 End.
