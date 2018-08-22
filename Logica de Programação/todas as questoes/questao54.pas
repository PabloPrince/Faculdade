Program questao54 ;
var
f,i:integer;
s:char;
 Begin
    write('Digite o sexo o candidato ');
    read(s);
    write('Digite a idade do candidato ');
    read(i);
    write('Digite o número respectivo a formação escolar do candidato:
    1 para fundamental, 2 para médio e 3 para superior ');
    read(f);
    if ((s = 'f') or (s = 'F')) and (i <= 25) and (f = 2) then
    begin
    write('Cargo disponível: Recepcionista');
    end
		else if ((s = 'm') or (s = 'M')) and (i >= 40) and (f = 1) then
    		begin
		write('Cargo disponível: Servente');
  	  	end
  	  	     else if ((s = 'f') or (s = 'F') or (s = 'm') or (s = 'M')) and (i <= 30) and (f = 3) then
    			begin
    			write('Cargo disponível: Auxiliar de RH');
    			end
    				else
    				begin
    				write('Nenhuma vaga disponível para este candidato');
    				end;
    		
 End.
