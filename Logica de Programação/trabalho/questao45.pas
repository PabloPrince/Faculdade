Program questao45 ;
var
p1,p2,p3,p4,t1,t2,t3,t4,mp,mt,mf:real;
 Begin
 	write('Digite a primeira nota de prova:');
 	read(p1);
 	write('Digite a segunda nota de prova:');
 	read(p2);
 	write('Digite a terceira nota de prova:');
 	read(p3);
 	write('Digite a quarta nota de prova:');
 	read(p4);
 		write('Digite a primeira nota de trabalho:');
 		read(t1);
 		write('Digite a segunda nota de trabalho:');
 		read(t2);
 		write('Digite a terceira nota de trabalho:');
 		read(t3);
 		write('Digite a quarta nota de trabalho:');
 		read(t4);
 			mp := (p1+p2+p3+p4)/4;
 			mt := (t1+t2+t3+t4)/4;
   			mf := (0.8*mp+0.2*mt);
 				If (mf >= 6) then
 				begin
 				write('Aprovado');
 				end;
 				If (mf < 6) then
 				begin
 				write('Não aprovado');
 				end;
 End.
