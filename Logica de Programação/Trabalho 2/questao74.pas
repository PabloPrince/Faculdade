Program questao74 ;
var
cont,menor,cont2,maior,s,p,n:integer;
media,mediap:real;
 Begin
 cont:=1;
  repeat
	write('Digite um n�mero: ');
	read(n);
	s:=s+n;	
		if cont = 1 then
		begin
			maior := n;
		end
			else if (n > maior) then
			begin
				maior := n;
			end;
				if cont = 1 then
				begin
				menor := n;
				end
					else if (n < menor) then
					begin
						menor := n;
					end;
				if (n mod 2 = 0) then
				begin
				cont2:=1;
					p:= p+n;
				cont2:=cont2+1;	
				end;
	cont:=cont+1;			
  until(n=0);
  	cont:=cont-1;						
  	media:= s/cont;
	mediap:=p/cont2;
	writeln('A soma dos n�meros digitados �: ',s);
	writeln('A quantidade de n�meros digitados �: ',cont);
	writeln('O maior n�mero digitado �: ',maior);
	writeln('O menor n�mero digitado �: ',menor);
	writeln('A m�dia dos n�meros digitados �: ',media);
	writeln('A m�dia dos n�meros pares �: ',mediap);   		  			  	
 End.
