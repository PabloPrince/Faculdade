Program questao15 ;
var
nt,nvb,nvn,nvv:integer;
pornvb,pornvn,pornvv:real;
 Begin
  write('Digite o total de eleitores: ');
  read(nt);
  write('Digite o total de votos brancos: ');
  read(nvb);
  write('Digite o total de votos nulos: ');
  read(nvn);
  write('Digite o total de votos válidos: ');
  read(nvv);
  	pornvb:=(nvb/nt)*100;
  	pornvn:=(nvn/nt)*100;
  	pornvv:=(nvv/nt)*100;
  		if(pornvb+pornvn+pornvv)=100 then
  			writeln('O percentual de votos em branco é: ',pornvb:2:2);
  			writeln('O percentual de votos nulos é: ',pornvn:2:2);
  			writeln('O percentual de votos válidos é: ',pornvv:2:2);
  		end
  		else
  		begin
  			write('Erro no percentual');
  		end;
 End.
