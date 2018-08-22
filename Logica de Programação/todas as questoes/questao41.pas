Program questao41 ;
var
cor:string;
 Begin
  write('Digite uma cor: ');
  read(cor);
  	if ((cor = 'azul') or (cor = 'branco') or (cor = 'verde') or (cor = 'amarelo')) then
  	begin
  		write('Essa cor pertence a bandeira do Brasil');
  	end
	  else
	  begin
	  	write('Essa cor não pertence a bandeira do Brasil');
	  end;	  	
 End.
