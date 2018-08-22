Program questao28 ;
var
u:string;
s:integer;
 Begin
  write('Digite seu nome: ');
  read(u);
  write('Digite sua senha: ');
  read(s);
  	if ((u = 'aluno') and (s = 123)) then
  	begin
  		write('Logado com sucesso');
  	end
	  else
	  begin
	  	write('Erro no login');
	  end;	  	
 End.
