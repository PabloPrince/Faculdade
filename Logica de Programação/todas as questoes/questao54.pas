Program questao54 ;
var
f,i:integer;
s:char;
 Begin
    write('Digite o sexo o candidato ');
    read(s);
    write('Digite a idade do candidato ');
    read(i);
    write('Digite o n�mero respectivo a forma��o escolar do candidato:
    1 para fundamental, 2 para m�dio e 3 para superior ');
    read(f);
    if ((s = 'f') or (s = 'F')) and (i <= 25) and (f = 2) then
    begin
    write('Cargo dispon�vel: Recepcionista');
    end
		else if ((s = 'm') or (s = 'M')) and (i >= 40) and (f = 1) then
    		begin
		write('Cargo dispon�vel: Servente');
  	  	end
  	  	     else if ((s = 'f') or (s = 'F') or (s = 'm') or (s = 'M')) and (i <= 30) and (f = 3) then
    			begin
    			write('Cargo dispon�vel: Auxiliar de RH');
    			end
    				else
    				begin
    				write('Nenhuma vaga dispon�vel para este candidato');
    				end;
    		
 End.
