Program questao73 ;
var
n,p:string;
i,q,cont:integer;
nota,maior:real;
 Begin
  for cont:=1 to 5 do
  begin
  	writeln('Digite o nome do aluno');
  	readln(n);
  		repeat
  		writeln('Digite a idade de ',n,': ');
  		readln(i);
  		until((i >= 1) and (i <= 120));
  			repeat
  			writeln('Digite a nota de ',n,': ');
  			readln(nota);
  			until((nota >= 0) and (nota <= 10));
  				if (cont = 1) then
  				begin
  					p:=n;
  					maior:=nota;
  					q:=i;
  				end
				  else if (nota > maior) then
				  begin
				  	p:=n;
				  	q:=i;
				  	maior:=nota;
				  end;			  	
  end;
  writeln('O nome do aluno que tirou a maior nota é: ',p);
  writeln('A idade de ',p,' é: ',q);
  writeln('A nota de ',p,' é: ',maior:2:2);				  	
 End.
