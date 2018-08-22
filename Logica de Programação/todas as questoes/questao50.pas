Program questao50 ;
var
i:integer;
 Begin
  write('Digite sua idade: ');
  read(i);
  	if ((i >= 5) and (i <=7)) then
  	begin
  		write('Categoria infantil A');
  	end
  		else if ((i >= 8) and (i <= 10)) then
  		begin
  			write('Categoria infantil B');
  		end
  			else if ((i >= 11) and (i <= 13)) then
  			begin
  				write('Categoria Juvenil A');
  			end
  				else if ((i >= 14) and (i <= 17)) then
  				begin
  					write('Categoria Juvenil B');
  				end
  					else if ((i >= 18) and (i <= 120)) then
  					begin
  						write('Categoria Senior');
  					end
  						else
  						begin
  							write('Não se encaixa em nenhuma categoria');
  						end;
 End.
