Program questao53 ;
var
nom1,nom2,nom3:string;
 Begin
     write('Digite o primeiro nome: ');
     read(nom1);
     write('Digite o segundo nome: ');
     read(nom2);
     write('Digite o terceiro nome: ');
     read(nom3);
     	if (nom1 < nom2) and (nom1 < nom3) and (nom2 < nom3) then
     	begin
     	write (nom1, ' ', nom2, ' ', nom3);
     	end;
     		if (nom1 < nom2) and (nom1 < nom3) and (nom2 > nom3) then
     		begin
     		write (nom1, ' ', nom3, ' ', nom2);
     		end;
     			if (nom2 < nom1) and (nom2 < nom3) and (nom1 < nom3) then
     			begin
     			write(nom2, ' ', nom1, ' ', nom3);
     			end;
     				if (nom2 < nom1) and (nom2 < nom3) and (nom1 > nom3) then
     				begin
     				write(nom2, ' ', nom3, ' ', nom1);
     				end;
     					if (nom3 < nom1) and (nom3 < nom2) and (nom2 < nom1) then
     					begin
     					write(nom3,' ', nom2,' ', nom1);
     					end;
     						if (nom3 < nom1) and (nom3 < nom2) and (nom2 > nom1) then
     						begin
     						write(nom3,' ', nom1, ' ', nom2);
     						end;
 End.
