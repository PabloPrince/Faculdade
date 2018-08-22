Program questao89 ;
var
m1,m2,m3:array [1..5,1..4] of integer;
contl,contc:integer;
 Begin
  for contl:=1 to 5 do
  begin
  	for contc:=1 to 4 do
  	begin
  		m1[contl,contc]:=random(20);
  	end;
  end;
  	for contl:=1 to 5 do
  	begin
  		for contc:=1 to 4 do
  		begin
  			m2[contl,contc]:=random(20);
  		end;
  	end;
		for contl:=1 to 5 do
  		begin
  			for contc:=1 to 4 do
  			begin
  				m3[contl,contc]:=m1[contl,contc]+m2[contl,contc];
  			end;
  		end;
  			writeln('A primeira matriz');
			for contl:=1 to 5 do
			begin
				for contc:=1 to 4 do
				begin
					write(m1[contl,contc],' ');
				end;
				writeln(' ');
			end;
				writeln(' ');
				writeln('A segunda matriz');
				for contl:=1 to 5 do
				begin
					for contc:=1 to 4 do
					begin
						write(m2[contl,contc],' ');
					end;
					writeln(' ');
				end;
					writeln(' ');
					writeln('A primeira matriz');
					for contl:=1 to 5 do
					begin
						for contc:=1 to 4 do
						begin
							write(m3[contl,contc],' ');
						end;
						writeln(' ');
					end;		  	  	
 End.
