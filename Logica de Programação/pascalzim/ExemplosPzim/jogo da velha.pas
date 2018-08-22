program jogo_do_galo_final;
uses crt;
var jogada:integer;
    vez:char;
    posicao:array[1..9] of string;
    fim:integer;
    i:integer;
    vencedor:char;
 
{========================}
 
procedure teclas;
begin
        clrscr;
        writeln;
        writeln('Teclas do Jogo');
        writeln;
        writeln(' 7 | 8 | 9 ');
        writeln('---+---+---');
        writeln(' 4 | 5 | 6 ');
        writeln('---+---+---');
        writeln(' 1 | 2 | 3 ');
end;
 
{=======================}
 
procedure jogo;
begin
        gotoxy(30,10);
        writeln('Jogo do Galo');
        gotoxy(30,12);
        writeln(' ',posicao[7],' | ',posicao[8],' | ',posicao[9]);
        gotoxy(30,13);
        writeln('---+---+---');
        gotoxy(30,14);
        writeln(' ',posicao[4],' | ',posicao[5],' | ',posicao[6]);
        gotoxy(30,15);
        writeln('---+---+---');
        gotoxy(30,16);
        writeln(' ',posicao[1],' | ',posicao[2],' | ',posicao[3]);
 
end;
 
{========================}
 
procedure verifica;
begin
        if (posicao[1]+posicao[2]+posicao[3]) = 'XXX' then vencedor:='X';
        if (posicao[4]+posicao[5]+posicao[6]) = 'XXX' then vencedor:='X';
        if (posicao[7]+posicao[8]+posicao[9]) = 'XXX' then vencedor:='X';
        if (posicao[1]+posicao[4]+posicao[7]) = 'XXX' then vencedor:='X';
        if (posicao[2]+posicao[5]+posicao[8]) = 'XXX' then vencedor:='X';
        if (posicao[3]+posicao[6]+posicao[9]) = 'XXX' then vencedor:='X';
        if (posicao[7]+posicao[5]+posicao[3]) = 'XXX' then vencedor:='X';
        if (posicao[1]+posicao[5]+posicao[9]) = 'XXX' then vencedor:='X';
        if (posicao[1]+posicao[2]+posicao[3]) = 'OOO' then vencedor:='O';
        if (posicao[4]+posicao[5]+posicao[6]) = 'OOO' then vencedor:='O';
        if (posicao[7]+posicao[8]+posicao[9]) = 'OOO' then vencedor:='O';
        if (posicao[1]+posicao[4]+posicao[7]) = 'OOO' then vencedor:='O';
        if (posicao[2]+posicao[5]+posicao[8]) = 'OOO' then vencedor:='O';
        if (posicao[3]+posicao[6]+posicao[9]) = 'OOO' then vencedor:='O';
        if (posicao[7]+posicao[5]+posicao[3]) = 'OOO' then vencedor:='O';
        if (posicao[1]+posicao[5]+posicao[9]) = 'OOO' then vencedor:='O';
        if (i=9) and (vencedor=' ')
        then begin
                        gotoxy(30,18);
                        writeln('Empate!');
                        writeln;
                        readln;
                        fim:=1;
             end;
        if (vencedor<>' ')
        then begin
                        gotoxy(30,18);
                        writeln('O jogador ',vencedor,' ganhou!');
                        writeln;
                        readln;
                        fim:=1;
             end;
end;
 
{***************************}
 
begin
        vencedor:=' ';
        for i := 1 to 9 do
        posicao[i]:=' ';
        fim:=0;
        vez:='O';
        i:=0;
        while fim <> 1 do
        begin
                if vez = 'X'
                then vez:='O'
                else vez := 'X';
                teclas;
                jogo;
                jogada:=0;
                while (jogada=0) and (fim <> 1) do
                begin
                        writeln;
                        write('Vez do jogador ',vez,': ');
                        readln(jogada);
                        if jogada=0
                        then fim:=1;
                        if posicao[jogada]=' '
                        then posicao[jogada]:=vez
                        else jogada:=0;
                end;
        verifica;
        end;
end.
