Program Indice_massa_corporal ;
var
vnome:array [1..500] of string;
vidade:array [1..500] of integer;
valtura:array [1..500] of real;
vpeso:array [1..500] of real;
cont:integer;
 Begin
 for cont:=1 to 500 do
 begin
 	writeln('Digite o nome da ',cont,'. pessoa: ');
	read(vnome[cont]);
		repeat
			writeln('Digite a idade de ',vnome[cont],': ');
			read(vidade[cont]);
		until((vidade[cont]>=15)and(vidade[cont]<=70));
			repeat
				writeln('Digite a altura de ',vnome[cont],': ');
				read(valtura[cont]);
			until((valtura[cont]>=1.0)and(valtura[cont]<=2.40));
				repeat
					writeln('Digite o peso de ',vnome[cont],': ');
					read(vpeso[cont]);
				until((vpeso[cont]>=30)and(vpeso[cont]<=300));
 end;
 	for cont:=1 to 500 do
	begin
		if(((vpeso[cont]/(valtura[cont]*valtura[cont]))>=20.0) and
		((vpeso[cont]/(valtura[cont]*valtura[cont]))<=26.0)) then
		begin
			writeln('Nome: ',vnome[cont]);
			writeln('Idade: ',vidade[cont]);
			writeln('Altura: ',valtura[cont]:2:2);
			writeln('Peso: ',vpeso[cont]:2:2);
		end;
	end;		
		 				 
 End.
