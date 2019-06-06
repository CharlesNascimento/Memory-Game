program Memory_game;
uses crt;
var
  slct1,slctdif,ind,qtd,slctopt,slctmode,slctlvl:integer;
  num1,num2:array[1..100] of integer;
label
  en,menu,opt,vecf1,vecf2,vecf3,vecf4,vecf5,vecf6,vecf7,vecf8,vecf9,vecf10,
  ecf1,ecf2,ecf3,ecf4,ecf5,ecf6,ecf7,ecf8,ecf9,ecf10,
  ncf1,ncf2,ncf3,ncf4,ncf5,ncf6,ncf7,ncf8,ncf9,ncf10,
  hcf1,hcf2,hcf3,hcf4,hcf5,hcf6,hcf7,hcf8,hcf9,hcf10,
  vhcf1,vhcf2,vhcf3,vhcf4,vhcf5,vhcf6,vhcf7,vhcf8,vhcf9,vhcf10,
  gcf1,gcf2,gcf3,gcf4,gcf5,gcf6,gcf7,gcf8,gcf9,gcf10,
  vekf1,vekf2,vekf3,vekf4,vekf5,vekf6,vekf7,vekf8,vekf9,vekf10,
  ekf1,ekf2,ekf3,ekf4,ekf5,ekf6,ekf7,ekf8,ekf9,ekf10,
  nkf1,nkf2,nkf3,nkf4,nkf5,nkf6,nkf7,nkf8,nkf9,nkf10,
  hkf1,hkf2,hkf3,hkf4,hkf5,hkf6,hkf7,hkf8,hkf9,hkf10,
  vhkf1,vhkf2,vhkf3,vhkf4,vhkf5,vhkf6,vhkf7,vhkf8,vhkf9,vhkf10,
  gkf1,gkf2,gkf3,gkf4,gkf5,gkf6,gkf7,gkf8,gkf9,gkf10;
function game_over:integer;
begin
  gotoxy(1,6);
  writeln('                ooooooooo  oooooooooo  o           o  ooooooooo');
  writeln('                o          o        o  o o       o o  o');
  writeln('                o          o        o  o  o     o  o  o');
  writeln('                o     ooo  oooooooooo  o   o   o   o  oooooo');
  writeln('                o       o  o        o  o    o o    o  o');
  writeln('                o       o  o        o  o     o     o  o');
  writeln('                ooooooooo  o        o  o           o  oooooooooo');



  writeln('                ooooooooo  o           o  ooooooooo   ooooooooo');
  writeln('                o       o   o         o   o           o       o');
  writeln('                o       o    o       o    o           o       o');
  writeln('                o       o     o     o     oooooo      o  oooooo');
  writeln('                o       o      o   o      o           o   o');
  writeln('                o       o       o o       o           o    o');
  writeln('                ooooooooo        o        oooooooooo  o     ooo');
end;
begin
  randomize;
  qtd:=10;
  en:
  textbackground(black);
  clrscr;
  textcolor (12);
  for ind:=20 to 60 do
  begin
    gotoxy(ind,6);
    write('*');
    delay(5);
  end;
  for ind:=7 to 18 do
  begin
    gotoxy(60,ind);
    write('*');
    delay(5);
  end;
  for ind:=60 downto 20 do
  begin
    gotoxy(ind,18);
    write('*');
    delay(5);
  end;
  for ind:=18 downto 7 do
  begin
    gotoxy(20,ind);
    write('*');
    delay(5);
  end;
  delay(200);
  gotoxy (31,12);
  writeln ('Kansus Corporation');
  delay (3000);
  clrscr;
  gotoxy (28,12);
  writeln ('Powered By Charles Fucker');
  delay (3000);
  clrscr;
  gotoxy (36,12);
  write ('Presents');
  textcolor (10);
  delay (3000);
  clrscr;
  for ind:=1 to 80 do
  begin
    gotoxy(random(80),random(24));
    write(random(10));
    delay(50);
  end;
  gotoxy (35,12);
  writeln ('Memory Game');
  gotoxy (34,11);
  write('+-----------+');
  gotoxy (34,13);
  write('+-----------+');
  gotoxy(34,12);
  write('!');
  gotoxy(46,12);
  write('!');
  delay (3000);
  menu:
  textbackground(black);
  clrscr;
  gotoxy(1,3);
  writeln('                    o     o oooo o     o oooooo ooooo o   o');
  writeln('                    oo   oo o    oo   oo o    o o   o  o o');
  writeln('                    o o o o ooo  o o o o o    o o ooo   o');
  writeln('                    o  o  o o    o  o  o o    o o  o    o');
  writeln('                    o     o oooo o     o oooooo o   o   o');
  writeln;                 
  writeln('                          ooooo ooooo o     o oooo');
  writeln('                          o     o   o oo   oo o');
  writeln('                          o  oo ooooo o o o o ooo');
  writeln('                          o   o o   o o  o  o o');
  writeln('                          ooooo o   o o     o oooo');
  gotoxy(37,16);
  write('1-Iniciar');
  gotoxy(36,18);
  write('2-Tutorial');
  gotoxy(36,20);
  write('3-Créditos');
  gotoxy(37,22);
  write('4-Opções');
  gotoxy(38,24);
  write('5-sair');
  textcolor(12);
  for ind:=1 to 25 do
  begin
    gotoxy(3,ind);
    write('|');
    delay(5);
  end;
  textcolor(11);
  for ind:=1 to 25 do
  begin
    gotoxy(77,ind);
    write('|');
    delay(5);
  end;
  textcolor(8);
  for ind:=1 to 25 do
  begin
    gotoxy(5,ind);
    write('|');
    delay(5);
  end;
  textcolor(14);
  for ind:=1 to 25 do
  begin
    gotoxy(75,ind);
    write('|');
    delay(5);
  end;
  textcolor(5);
  for ind:=1 to 25 do
  begin
    gotoxy(7,ind);
    write('|');
    delay(5);
  end;     
  textcolor(3);
  for ind:=1 to 25 do
  begin
    gotoxy(73,ind);
    write('|');
    delay(5);
  end;
  textcolor(10);
  gotoxy(40,25);
  readln(slct1);
  for ind:=26 to 50 do
  begin
    gotoxy(40,ind);
    delay(100);
  end;
  case slct1 of
  1:
  begin
    clrscr;
    gotoxy(32,11);
    writeln('1-Changing mode');
    gotoxy(32,13);
    writeln('2-Keeping mode');
    readln(slctmode);
    clrscr;
   case slctmode of
   1:
   begin
    clrscr;
    gotoxy(29,1);
    writeln('SELECIONE A DIFICULDADE');
    gotoxy(35,8);
    write('1-Very Easy');
    gotoxy(37,10);
    write('2-Easy');
    gotoxy(36,12);
    write('3-Normal');
    gotoxy(37,14);
    write('4-Hard');
    gotoxy(35,16);
    write('5-Very Hard');
    gotoxy(35,18);
    write('6-***GOD***');
    readln(slctdif);
    clrscr;
    for ind:=1 to 150 do
    begin
      write('BOA SORTE  ');
      delay(50);
    end;
    case slctdif of
         1 : begin
               vecf1:
               textcolor(10);
               textbackground(cyan);
               clrscr;
               gotoxy(36,12);
               writeln('LEVEL 1');
               delay(2000);
               gotoxy(1,23);
               writeln('Pressione qualquer tecla para começar');
               readkey;
               clrscr;
               for ind:=1 to 1 do
                 begin
                   num1[ind]:=random(qtd);
                   write(num1[ind]:4);
                   delay(2000);
                 end;
               clrscr;
               writeln('Números em ordem: ');
               for ind:=1 to 1 do
                 begin
                   gotoxy(18,1);
                   read(num2[ind]);
                   if num1[ind]=num2[ind] then
                   begin
                     textcolor(9);
                     gotoxy(22,1);
                     write('CORRETO!');
                   end
                   else
                   begin
                     textcolor(12);
                     gotoxy(30,12);
                     write('QUE PENA, VOCÊ ERROU!');
                     delay(1000);
                     clrscr;
                     game_over;
                     delay(5000);
                     goto en;
                   end;
                end;
               gotoxy(17,12);
               writeln('Parabéns! Sua missão foi completada com sucesso');
               delay(3000);
               vecf2:
               textcolor(10);
               textbackground(cyan);
               clrscr;
               gotoxy(36,12);
               writeln('LEVEL 2');
               delay(2000);
               gotoxy(1,23);
               writeln('Pressione qualquer tecla para começar');
               readkey;
               clrscr;
               for ind:=1 to 2 do
                 begin
                   num1[ind]:=random(qtd);
                   write(num1[ind]:4);
                   delay(2000);
                 end;
               clrscr;
               writeln('Números em ordem: ');
               for ind:=1 to 2 do
                 begin
                   gotoxy(18,1);
                   read(num2[ind]);
                   if num1[ind]=num2[ind] then
                   begin
                     textcolor(9);
                     gotoxy(22,1);
                     write('CORRETO!');
                   end
                   else
                   begin
                     textcolor(12);
                     gotoxy(30,12);
                     write('QUE PENA, VOCÊ ERROU!');
                     delay(1000);
                     clrscr;
                     game_over;
                     delay(5000);
                     goto en;
                   end;
                end;
               gotoxy(17,12);
               writeln('Parabéns! Sua missão foi completada com sucesso');
               delay(3000);
               vecf3:
               textcolor(10);
               textbackground(cyan);
               clrscr;
               gotoxy(36,12);
               writeln('LEVEL 3');
               delay(2000);
               gotoxy(1,23);
               writeln('Pressione qualquer tecla para começar');
               readkey;
               clrscr;
               for ind:=1 to 3 do
                 begin
                   num1[ind]:=random(qtd);
                   write(num1[ind]:4);
                   delay(2000);
                 end;
               clrscr;
               writeln('Números em ordem: ');
               for ind:=1 to 3 do
                 begin
                   gotoxy(18,1);
                   read(num2[ind]);
                   if num1[ind]=num2[ind] then
                   begin
                     textcolor(9);
                     gotoxy(22,1);
                     write('CORRETO!');
                   end
                   else
                   begin
                     textcolor(12);
                     gotoxy(30,12);
                     write('QUE PENA, VOCÊ ERROU!');
                     delay(1000);
                     clrscr;
                     game_over;
                     delay(5000);
                     goto en;
                   end;
                end;
               gotoxy(17,12);
               writeln('Parabéns! Sua missão foi completada com sucesso');
               delay(3000);
               vecf4:
               textcolor(10);
               textbackground(cyan);
               clrscr;
               gotoxy(36,12);
               writeln('LEVEL 4');
               delay(2000);
               gotoxy(1,23);
               writeln('Pressione qualquer tecla para começar');
               readkey;
               clrscr;
               for ind:=1 to 4 do
                 begin
                   num1[ind]:=random(qtd);
                   write(num1[ind]:4);
                   delay(2000);
                 end;
               clrscr;
               writeln('Números em ordem: ');
               for ind:=1 to 4 do
                 begin
                   gotoxy(18,1);
                   read(num2[ind]);
                   if num1[ind]=num2[ind] then
                   begin
                     textcolor(9);
                     gotoxy(22,1);
                     write('CORRETO!');
                   end
                   else
                   begin
                     textcolor(12);
                     gotoxy(30,12);
                     write('QUE PENA, VOCÊ ERROU!');
                     delay(1000);
                     clrscr;
                     game_over;
                     delay(5000);
                     goto en;
                   end;
                end;
               gotoxy(17,12);
               writeln('Parabéns! Sua missão foi completada com sucesso');
               delay(3000);
               vecf5:
               textcolor(10);
               textbackground(cyan);
               clrscr;
               gotoxy(36,12);
               writeln('LEVEL 5');
               delay(2000);
               gotoxy(1,23);
               writeln('Pressione qualquer tecla para começar');
               readkey;
               clrscr;
               for ind:=1 to 5 do
                 begin
                   num1[ind]:=random(qtd);
                   write(num1[ind]:4);
                   delay(2000);
                 end;
               clrscr;
               writeln('Números em ordem: ');
               for ind:=1 to 5 do
                 begin
                   gotoxy(18,1);
                   read(num2[ind]);
                   if num1[ind]=num2[ind] then
                   begin
                     textcolor(9);
                     gotoxy(22,1);
                     write('CORRETO!');
                   end
                   else
                   begin
                     textcolor(12);
                     gotoxy(30,12);
                     write('QUE PENA, VOCÊ ERROU!');
                     delay(1000);
                     clrscr;
                     game_over;
                     delay(5000);
                     goto en;
                   end;
                end;
               gotoxy(17,12);
               writeln('Parabéns! Sua missão foi completada com sucesso');
               delay(3000);
               vecf6:
               textcolor(10);
               textbackground(cyan);
               clrscr;
               gotoxy(36,12);
               writeln('LEVEL 6');
               delay(2000);
               gotoxy(1,23);
               writeln('Pressione qualquer tecla para começar');
               readkey;
               clrscr;
               for ind:=1 to 6 do
                 begin
                   num1[ind]:=random(qtd);
                   write(num1[ind]:4);
                   delay(2000);
                 end;
               clrscr;
               writeln('Números em ordem: ');
               for ind:=1 to 6 do
                 begin
                   gotoxy(18,1);
                   read(num2[ind]);
                   if num1[ind]=num2[ind] then
                   begin
                     textcolor(9);
                     gotoxy(22,1);
                     write('CORRETO!');
                   end
                   else
                   begin
                     textcolor(12);
                     gotoxy(30,12);
                     write('QUE PENA, VOCÊ ERROU!');
                     delay(1000);
                     clrscr;
                     game_over;
                     delay(5000);
                     goto en;
                   end;
                end;
               gotoxy(17,12);
               writeln('Parabéns! Sua missão foi completada com sucesso');
               delay(3000);
               vecf7:
               textcolor(10);
               textbackground(cyan);
               clrscr;
               gotoxy(36,12);
               writeln('LEVEL 7');
               delay(2000);
               gotoxy(1,23);
               writeln('Pressione qualquer tecla para começar');
               readkey;
               clrscr;
               for ind:=1 to 7 do
                 begin
                   num1[ind]:=random(qtd);
                   write(num1[ind]:4);
                   delay(2000);
                 end;
               clrscr;
               writeln('Números em ordem: ');
               for ind:=1 to 7 do
                 begin
                   gotoxy(18,1);
                   read(num2[ind]);
                   if num1[ind]=num2[ind] then
                   begin
                     textcolor(9);
                     gotoxy(22,1);
                     write('CORRETO!');
                   end
                   else
                   begin
                     textcolor(12);
                     gotoxy(30,12);
                     write('QUE PENA, VOCÊ ERROU!');
                     delay(1000);
                     clrscr;
                     game_over;
                     delay(5000);
                     goto en;
                   end;
                end;
               gotoxy(17,12);
               writeln('Parabéns! Sua missão foi completada com sucesso');
               delay(3000);
               vecf8:
               textcolor(10);
               textbackground(cyan);
               clrscr;
               gotoxy(36,12);
               writeln('LEVEL 8');
               delay(2000);
               gotoxy(1,23);
               writeln('Pressione qualquer tecla para começar');
               readkey;
               clrscr;
               for ind:=1 to 8 do
                 begin
                   num1[ind]:=random(qtd);
                   write(num1[ind]:4);
                   delay(2000);
                 end;
               clrscr;
               writeln('Números em ordem: ');
               for ind:=1 to 8 do
                 begin
                   gotoxy(18,1);
                   read(num2[ind]);
                   if num1[ind]=num2[ind] then
                   begin
                     textcolor(9);
                     gotoxy(22,1);
                     write('CORRETO!');
                   end
                   else
                   begin
                     textcolor(12);
                     gotoxy(30,12);
                     write('QUE PENA, VOCÊ ERROU!');
                     delay(1000);
                     clrscr;
                     game_over;
                     delay(5000);
                     goto en;
                   end;
                end;
               gotoxy(17,12);
               writeln('Parabéns! Sua missão foi completada com sucesso');
               delay(3000);
               vecf9:
               textcolor(10);
               textbackground(cyan);
               clrscr;
               gotoxy(36,12);
               writeln('LEVEL 9');
               delay(2000);
               gotoxy(1,23);
               writeln('Pressione qualquer tecla para começar');
               readkey;
               clrscr;
               for ind:=1 to 9 do
                 begin
                   num1[ind]:=random(qtd);
                   write(num1[ind]:4);
                   delay(2000);
                 end;
               clrscr;
               writeln('Números em ordem: ');
               for ind:=1 to 9 do
                 begin
                   gotoxy(18,1);
                   read(num2[ind]);
                   if num1[ind]=num2[ind] then
                   begin
                     textcolor(9);
                     gotoxy(22,1);
                     write('CORRETO!');
                   end
                   else
                   begin
                     textcolor(12);
                     gotoxy(30,12);
                     write('QUE PENA, VOCÊ ERROU!');
                     delay(1000);
                     clrscr;
                     game_over;
                     delay(5000);
                     goto en;
                   end;
                end;
               gotoxy(17,12);
               writeln('Parabéns! Sua missão foi completada com sucesso');
               delay(3000);
               vecf10:
               textcolor(10);
               textbackground(cyan);
               clrscr;
               gotoxy(32,12);
               writeln('LEVEL 10(FINAL)');
               delay(2000);
               gotoxy(1,23);
               writeln('Pressione qualquer tecla para começar');
               readkey;
               clrscr;
               for ind:=1 to 10 do
                 begin
                   num1[ind]:=random(qtd);
                   write(num1[ind]:4);
                   delay(2000);
                 end;
               clrscr;
               writeln('Números em ordem: ');
               for ind:=1 to 10 do
                 begin
                   gotoxy(18,1);
                   read(num2[ind]);
                   if num1[ind]=num2[ind] then
                   begin
                     textcolor(9);
                     gotoxy(22,1);
                     write('CORRETO!');
                   end
                   else
                   begin
                     textcolor(12);
                     gotoxy(30,12);
                     write('QUE PENA, VOCÊ ERROU!');
                     delay(1000);
                     clrscr;
                     game_over;
                     delay(5000);
                     goto en;
                   end;
                 end;
               clrscr;
               textcolor(yellow);
               gotoxy(36,12);
               writeln('PARABÉNS!');
               for ind:=1 to 15 do
               begin
                 gotoxy(random(80),random(24));
                 textcolor(random(15));
                 write(random(10));
                 delay(75);
               end;
               for ind:=1 to 15 do
               begin
                 gotoxy(random(80),random(24));
                 textcolor(random(15));
                 write(random(10));
                 delay(75);
               end;
               for ind:=1 to 15 do
               begin
                 gotoxy(random(80),random(24));
                 textcolor(random(15));
                 write(random(10));
                 delay(75);
               end;
               for ind:=1 to 15 do
               begin
                 gotoxy(random(80),random(24));
                 textcolor(random(15));
                 write(random(10));
                 delay(75);
               end;
               clrscr;
               textcolor(white);
               writeln('Parabéns, você foi capaz de completar o jogo na dificuldade very easy!');
               delay(2000);
               writeln('Agora mostre que você é melhor ainda, e tente níveis mais difíceis!');
               readkey;
               goto en;
             end;
         2 : begin
               ecf1:
               textcolor(10);
               textbackground(blue);
               clrscr;
               gotoxy(36,12);
               writeln('LEVEL 1');
               delay(2000);
               gotoxy(1,23);
               writeln('Pressione qualquer tecla para começar');
               readkey;
               clrscr;
               for ind:=1 to 2 do
                 begin
                   num1[ind]:=random(qtd);
                   write(num1[ind]:4);
                   delay(2000);
                 end;
               clrscr;
               writeln('Números em ordem: ');
               for ind:=1 to 2 do
                 begin
                   gotoxy(18,1);
                   read(num2[ind]);
                   if num1[ind]=num2[ind] then
                   begin
                     textcolor(9);
                     gotoxy(22,1);
                     write('CORRETO!');
                   end
                   else
                   begin
                     textcolor(12);
                     gotoxy(30,12);
                     write('QUE PENA, VOCÊ ERROU!');
                     delay(1000);
                     clrscr;
                     game_over;
                     delay(5000);
                     goto en;
                   end;
                end;
               gotoxy(17,12);
               writeln('Parabéns! Sua missão foi completada com sucesso');
               delay(3000);
               ecf2:
               textcolor(10);
               textbackground(blue);
               clrscr;
               gotoxy(36,12);
               writeln('LEVEL 2');
               delay(2000);
               gotoxy(1,23);
               writeln('Pressione qualquer tecla para começar');
               readkey;
               clrscr;
               for ind:=1 to 4 do
                 begin
                   num1[ind]:=random(qtd);
                   write(num1[ind]:4);
                   delay(2000);
                 end;
               clrscr;
               writeln('Números em ordem: ');
               for ind:=1 to 4 do
                 begin
                   gotoxy(18,1);
                   read(num2[ind]);
                   if num1[ind]=num2[ind] then
                   begin
                     textcolor(9);
                     gotoxy(22,1);
                     write('CORRETO!');
                   end
                   else
                   begin
                     textcolor(12);
                     gotoxy(30,12);
                     write('QUE PENA, VOCÊ ERROU!');
                     delay(1000);
                     clrscr;
                     game_over;
                     delay(5000);
                     goto en;
                   end;
                end;
               gotoxy(17,12);
               writeln('Parabéns! Sua missão foi completada com sucesso');
               delay(3000);
               ecf3:
               textcolor(10);
               textbackground(blue);
               clrscr;
               gotoxy(36,12);
               writeln('LEVEL 3');
               delay(2000);
               gotoxy(1,23);
               writeln('Pressione qualquer tecla para começar');
               readkey;
               clrscr;
               for ind:=1 to 6 do
                 begin
                   num1[ind]:=random(qtd);
                   write(num1[ind]:4);
                   delay(2000);
                 end;
               clrscr;
               writeln('Números em ordem: ');
               for ind:=1 to 6 do
                 begin
                   gotoxy(18,1);
                   read(num2[ind]);
                   if num1[ind]=num2[ind] then
                   begin
                     textcolor(9);
                     gotoxy(22,1);
                     write('CORRETO!');
                   end
                   else
                   begin
                     textcolor(12);
                     gotoxy(30,12);
                     write('QUE PENA, VOCÊ ERROU!');
                     delay(1000);
                     clrscr;
                     game_over;
                     delay(5000);
                     goto en;
                   end;
                end;
               gotoxy(17,12);
               writeln('Parabéns! Sua missão foi completada com sucesso');
               delay(3000);
               ecf4:
               textcolor(10);
               textbackground(blue);
               clrscr;
               gotoxy(36,12);
               writeln('LEVEL 4');
               delay(2000);
               gotoxy(1,23);
               writeln('Pressione qualquer tecla para começar');
               readkey;
               clrscr;
               for ind:=1 to 8 do
                 begin
                   num1[ind]:=random(qtd);
                   write(num1[ind]:4);
                   delay(2000);
                 end;
               clrscr;
               writeln('Números em ordem: ');
               for ind:=1 to 8 do
                 begin
                   gotoxy(18,1);
                   read(num2[ind]);
                   if num1[ind]=num2[ind] then
                   begin
                     textcolor(9);
                     gotoxy(22,1);
                     write('CORRETO!');
                   end
                   else
                   begin
                     textcolor(12);
                     gotoxy(30,12);
                     write('QUE PENA, VOCÊ ERROU!');
                     delay(1000);
                     clrscr;
                     game_over;
                     delay(5000);
                     goto en;
                   end;
                end;
               gotoxy(17,12);
               writeln('Parabéns! Sua missão foi completada com sucesso');
               delay(3000);
               ecf5:
               textcolor(10);
               textbackground(blue);
               clrscr;
               gotoxy(36,12);
               writeln('LEVEL 5');
               delay(2000);
               gotoxy(1,23);
               writeln('Pressione qualquer tecla para começar');
               readkey;
               clrscr;
               for ind:=1 to 10 do
                 begin
                   num1[ind]:=random(qtd);
                   write(num1[ind]:4);
                   delay(2000);
                 end;
               clrscr;
               writeln('Números em ordem: ');
               for ind:=1 to 10 do
                 begin
                   gotoxy(18,1);
                   read(num2[ind]);
                   if num1[ind]=num2[ind] then
                   begin
                     textcolor(9);
                     gotoxy(22,1);
                     write('CORRETO!');
                   end
                   else
                   begin
                     textcolor(12);
                     gotoxy(30,12);
                     write('QUE PENA, VOCÊ ERROU!');
                     delay(1000);
                     clrscr;
                     game_over;
                     delay(5000);
                     goto en;
                   end;
                end;
               gotoxy(17,12);
               writeln('Parabéns! Sua missão foi completada com sucesso');
               delay(3000);
               ecf6:
               textcolor(10);
               textbackground(blue);
               clrscr;
               gotoxy(36,12);
               writeln('LEVEL 6');
               delay(2000);
               gotoxy(1,23);
               writeln('Pressione qualquer tecla para começar');
               readkey;
               clrscr;
               for ind:=1 to 12 do
                 begin
                   num1[ind]:=random(qtd);
                   write(num1[ind]:4);
                   delay(2000);
                 end;
               clrscr;
               writeln('Números em ordem: ');
               for ind:=1 to 12 do
                 begin
                   gotoxy(18,1);
                   read(num2[ind]);
                   if num1[ind]=num2[ind] then
                   begin
                     textcolor(9);
                     gotoxy(22,1);
                     write('CORRETO!');
                   end
                   else
                   begin
                     textcolor(12);
                     gotoxy(30,12);
                     write('QUE PENA, VOCÊ ERROU!');
                     delay(1000);
                     clrscr;
                     game_over;
                     delay(5000);
                     goto en;
                   end;
                end;
               gotoxy(17,12);
               writeln('Parabéns! Sua missão foi completada com sucesso');
               delay(3000);
               ecf7:
               textcolor(10);
               textbackground(blue);
               clrscr;
               gotoxy(36,12);
               writeln('LEVEL 7');
               delay(2000);
               gotoxy(1,23);
               writeln('Pressione qualquer tecla para começar');
               readkey;
               clrscr;
               for ind:=1 to 14 do
                 begin
                   num1[ind]:=random(qtd);
                   write(num1[ind]:4);
                   delay(2000);
                 end;
               clrscr;
               writeln('Números em ordem: ');
               for ind:=1 to 14 do
                 begin
                   gotoxy(18,1);
                   read(num2[ind]);
                   if num1[ind]=num2[ind] then
                   begin
                     textcolor(9);
                     gotoxy(22,1);
                     write('CORRETO!');
                   end
                   else
                   begin
                     textcolor(12);
                     gotoxy(30,12);
                     write('QUE PENA, VOCÊ ERROU!');
                     delay(1000);
                     clrscr;
                     game_over;
                     delay(5000);
                     goto en;
                   end;
                end;
               gotoxy(17,12);
               writeln('Parabéns! Sua missão foi completada com sucesso');
               delay(3000);
               ecf8:
               textcolor(10);
               textbackground(blue);
               clrscr;
               gotoxy(36,12);
               writeln('LEVEL 8');
               delay(2000);
               gotoxy(1,23);
               writeln('Pressione qualquer tecla para começar');
               readkey;
               clrscr;
               for ind:=1 to 16 do
                 begin
                   num1[ind]:=random(qtd);
                   write(num1[ind]:4);
                   delay(2000);
                 end;
               clrscr;
               writeln('Números em ordem: ');
               for ind:=1 to 16 do
                 begin
                   gotoxy(18,1);
                   read(num2[ind]);
                   if num1[ind]=num2[ind] then
                   begin
                     textcolor(9);
                     gotoxy(22,1);
                     write('CORRETO!');
                   end
                   else
                   begin
                     textcolor(12);
                     gotoxy(30,12);
                     write('QUE PENA, VOCÊ ERROU!');
                     delay(1000);
                     clrscr;
                     game_over;
                     delay(5000);
                     goto en;
                   end;
                end;
               gotoxy(17,12);
               writeln('Parabéns! Sua missão foi completada com sucesso');
               delay(3000);
               ecf9:
               textcolor(10);
               textbackground(blue);
               clrscr;
               gotoxy(36,12);
               writeln('LEVEL 9');
               delay(2000);
               gotoxy(1,23);
               writeln('Pressione qualquer tecla para começar');
               readkey;
               clrscr;
               for ind:=1 to 18 do
                 begin
                   num1[ind]:=random(qtd);
                   write(num1[ind]:4);
                   delay(2000);
                 end;
               clrscr;
               writeln('Números em ordem: ');
               for ind:=1 to 18 do
                 begin
                   gotoxy(18,1);
                   read(num2[ind]);
                   if num1[ind]=num2[ind] then
                   begin
                     textcolor(9);
                     gotoxy(22,1);
                     write('CORRETO!');
                   end
                   else
                   begin
                     textcolor(12);
                     gotoxy(30,12);
                     write('QUE PENA, VOCÊ ERROU!');
                     delay(1000);
                     clrscr;
                     game_over;
                     delay(5000);
                     goto en;
                   end;
                end;
               gotoxy(17,12);
               writeln('Parabéns! Sua missão foi completada com sucesso');
               delay(3000);
               ecf10:
               textcolor(10);
               textbackground(blue);
               clrscr;
               gotoxy(32,12);
               writeln('LEVEL 10(FINAL)');
               delay(2000);
               gotoxy(1,23);
               writeln('Pressione qualquer tecla para começar');
               readkey;
               clrscr;
               for ind:=1 to 20 do
                 begin
                   num1[ind]:=random(qtd);
                   write(num1[ind]:4);
                   delay(2000);
                 end;
               clrscr;
               writeln('Números em ordem: ');
               for ind:=1 to 20 do
                 begin
                   gotoxy(18,1);
                   read(num2[ind]);
                   if num1[ind]=num2[ind] then
                   begin
                     textcolor(9);
                     gotoxy(22,1);
                     write('CORRETO!');
                   end
                   else
                   begin
                     textcolor(12);
                     gotoxy(30,12);
                     write('QUE PENA, VOCÊ ERROU!');
                     delay(1000);
                     clrscr;
                     game_over;
                     delay(5000);
                     goto en;
                   end;
                 end;
               clrscr;
               textcolor(yellow);
               gotoxy(36,12);
               writeln('PARABÉNS!');
               for ind:=1 to 15 do
               begin
                 gotoxy(random(80),random(24));
                 textcolor(random(15));
                 write(random(10));
                 delay(75);
               end;
               for ind:=1 to 15 do
               begin
                 gotoxy(random(80),random(24));
                 textcolor(random(15));
                 write(random(10));
                 delay(75);
               end;
               for ind:=1 to 15 do
               begin
                 gotoxy(random(80),random(24));
                 textcolor(random(15));
                 write(random(10));
                 delay(75);
               end;
               for ind:=1 to 15 do
               begin
                 gotoxy(random(80),random(24));
                 textcolor(random(15));
                 write(random(10));
                 delay(75);
               end;
               clrscr;
               textcolor(white);
               writeln('Parabéns, você foi capaz de completar o jogo na dificuldade easy!');
               delay(2000);
               writeln('Agora mostre que você é melhor ainda, e tente níveis mais difíceis!');
               readkey;
               goto en;
             end;
         3 : begin
               ncf1:
               textcolor(10);
               textbackground(black);
               clrscr;
               gotoxy(36,12);
               writeln('LEVEL 1');
               delay(2000);
               gotoxy(1,23);
               writeln('Pressione qualquer tecla para começar');
               readkey;
               clrscr;
               for ind:=1 to 3 do
                 begin
                   num1[ind]:=random(qtd);
                   write(num1[ind]:4);
                   delay(2000);
                 end;
               clrscr;
               writeln('Números em ordem: ');
               for ind:=1 to 3 do
                 begin
                   gotoxy(18,1);
                   read(num2[ind]);
                   if num1[ind]=num2[ind] then
                   begin
                     textcolor(9);
                     gotoxy(22,1);
                     write('CORRETO!');
                   end
                   else
                   begin
                     textcolor(12);
                     gotoxy(30,12);
                     write('QUE PENA, VOCÊ ERROU!');
                     delay(1000);
                     clrscr;
                     game_over;
                     delay(5000);
                     goto en;
                   end;
                end;
               gotoxy(17,12);
               writeln('Parabéns! Sua missão foi completada com sucesso');
               delay(3000);
               ncf2:
               textcolor(10);
               textbackground(black);
               clrscr;
               gotoxy(36,12);
               writeln('LEVEL 2');
               delay(2000);
               gotoxy(1,23);
               writeln('Pressione qualquer tecla para começar');
               readkey;
               clrscr;
               for ind:=1 to 6 do
                 begin
                   num1[ind]:=random(qtd);
                   write(num1[ind]:4);
                   delay(2000);
                 end;
               clrscr;
               writeln('Números em ordem: ');
               for ind:=1 to 6 do
                 begin
                   gotoxy(18,1);
                   read(num2[ind]);
                   if num1[ind]=num2[ind] then
                   begin
                     textcolor(9);
                     gotoxy(22,1);
                     write('CORRETO!');
                   end
                   else
                   begin
                     textcolor(12);
                     gotoxy(30,12);
                     write('QUE PENA, VOCÊ ERROU!');
                     delay(1000);
                     clrscr;
                     game_over;
                     delay(5000);
                     goto en;
                   end;
                end;
               gotoxy(17,12);
               writeln('Parabéns! Sua missão foi completada com sucesso');
               delay(3000);
               ncf3:
               textcolor(10);
               textbackground(black);
               clrscr;
               gotoxy(36,12);
               writeln('LEVEL 3');
               delay(2000);
               gotoxy(1,23);
               writeln('Pressione qualquer tecla para começar');
               readkey;
               clrscr;
               for ind:=1 to 9 do
                 begin
                   num1[ind]:=random(qtd);
                   write(num1[ind]:4);
                   delay(2000);
                 end;
               clrscr;
               writeln('Números em ordem: ');
               for ind:=1 to 9 do
                 begin
                   gotoxy(18,1);
                   read(num2[ind]);
                   if num1[ind]=num2[ind] then
                   begin
                     textcolor(9);
                     gotoxy(22,1);
                     write('CORRETO!');
                   end
                   else
                   begin
                     textcolor(12);
                     gotoxy(30,12);
                     write('QUE PENA, VOCÊ ERROU!');
                     delay(1000);
                     clrscr;
                     game_over;
                     delay(5000);
                     goto en;
                   end;
                end;
               gotoxy(17,12);
               writeln('Parabéns! Sua missão foi completada com sucesso');
               delay(3000);
               ncf4:
               textcolor(10);
               textbackground(black);
               clrscr;
               gotoxy(36,12);
               writeln('LEVEL 4');
               delay(2000);
               gotoxy(1,23);
               writeln('Pressione qualquer tecla para começar');
               readkey;
               clrscr;
               for ind:=1 to 12 do
                 begin
                   num1[ind]:=random(qtd);
                   write(num1[ind]:4);
                   delay(2000);
                 end;
               clrscr;
               writeln('Números em ordem: ');
               for ind:=1 to 12 do
                 begin
                   gotoxy(18,1);
                   read(num2[ind]);
                   if num1[ind]=num2[ind] then
                   begin
                     textcolor(9);
                     gotoxy(22,1);
                     write('CORRETO!');
                   end
                   else
                   begin
                     textcolor(12);
                     gotoxy(30,12);
                     write('QUE PENA, VOCÊ ERROU!');
                     delay(1000);
                     clrscr;
                     game_over;
                     delay(5000);
                     goto en;
                   end;
                end;
               gotoxy(17,12);
               writeln('Parabéns! Sua missão foi completada com sucesso');
               delay(3000);
               ncf5:
               textcolor(10);
               textbackground(black);
               clrscr;
               gotoxy(36,12);
               writeln('LEVEL 5');
               delay(2000);
               gotoxy(1,23);
               writeln('Pressione qualquer tecla para começar');
               readkey;
               clrscr;
               for ind:=1 to 15 do
                 begin
                   num1[ind]:=random(qtd);
                   write(num1[ind]:4);
                   delay(2000);
                 end;
               clrscr;
               writeln('Números em ordem: ');
               for ind:=1 to 15 do
                 begin
                   gotoxy(18,1);
                   read(num2[ind]);
                   if num1[ind]=num2[ind] then
                   begin
                     textcolor(9);
                     gotoxy(22,1);
                     write('CORRETO!');
                   end
                   else
                   begin
                     textcolor(12);
                     gotoxy(30,12);
                     write('QUE PENA, VOCÊ ERROU!');
                     delay(1000);
                     clrscr;
                     game_over;
                     delay(5000);
                     goto en;
                   end;
                end;
               gotoxy(17,12);
               writeln('Parabéns! Sua missão foi completada com sucesso');
               delay(3000);
               ncf6:
               textcolor(10);
               textbackground(black);
               clrscr;
               gotoxy(36,12);
               writeln('LEVEL 6');
               delay(2000);
               gotoxy(1,23);
               writeln('Pressione qualquer tecla para começar');
               readkey;
               clrscr;
               for ind:=1 to 18 do
                 begin
                   num1[ind]:=random(qtd);
                   write(num1[ind]:4);
                   delay(2000);
                 end;
               clrscr;
               writeln('Números em ordem: ');
               for ind:=1 to 18 do
                 begin
                   gotoxy(18,1);
                   read(num2[ind]);
                   if num1[ind]=num2[ind] then
                   begin
                     textcolor(9);
                     gotoxy(22,1);
                     write('CORRETO!');
                   end
                   else
                   begin
                     textcolor(12);
                     gotoxy(30,12);
                     write('QUE PENA, VOCÊ ERROU!');
                     delay(1000);
                     clrscr;
                     game_over;
                     delay(5000);
                     goto en;
                   end;
                end;
               gotoxy(17,12);
               writeln('Parabéns! Sua missão foi completada com sucesso');
               delay(3000);
               ncf7:
               textcolor(10);
               textbackground(black);
               clrscr;
               gotoxy(36,12);
               writeln('LEVEL 7');
               delay(2000);
               gotoxy(1,23);
               writeln('Pressione qualquer tecla para começar');
               readkey;
               clrscr;
               for ind:=1 to 21 do
                 begin
                   num1[ind]:=random(qtd);
                   write(num1[ind]:4);
                   delay(2000);
                 end;
               clrscr;
               writeln('Números em ordem: ');
               for ind:=1 to 21 do
                 begin
                   gotoxy(18,1);
                   read(num2[ind]);
                   if num1[ind]=num2[ind] then
                   begin
                     textcolor(9);
                     gotoxy(22,1);
                     write('CORRETO!');
                   end
                   else
                   begin
                     textcolor(12);
                     gotoxy(30,12);
                     write('QUE PENA, VOCÊ ERROU!');
                     delay(1000);
                     clrscr;
                     game_over;
                     delay(5000);
                     goto en;
                   end;
                end;
               gotoxy(17,12);
               writeln('Parabéns! Sua missão foi completada com sucesso');
               delay(3000);
               ncf8:
               textcolor(10);
               textbackground(black);
               clrscr;
               gotoxy(36,12);
               writeln('LEVEL 8');
               delay(2000);
               gotoxy(1,23);
               writeln('Pressione qualquer tecla para começar');
               readkey;
               clrscr;
               for ind:=1 to 24 do
                 begin
                   num1[ind]:=random(qtd);
                   write(num1[ind]:4);
                   delay(2000);
                 end;
               clrscr;
               writeln('Números em ordem: ');
               for ind:=1 to 24 do
                 begin
                   gotoxy(18,1);
                   read(num2[ind]);
                   if num1[ind]=num2[ind] then
                   begin
                     textcolor(9);
                     gotoxy(22,1);
                     write('CORRETO!');
                   end
                   else
                   begin
                     textcolor(12);
                     gotoxy(30,12);
                     write('QUE PENA, VOCÊ ERROU!');
                     delay(1000);
                     clrscr;
                     game_over;
                     delay(5000);
                     goto en;
                   end;
                end;
               gotoxy(17,12);
               writeln('Parabéns! Sua missão foi completada com sucesso');
               delay(3000);
               ncf9:
               textcolor(10);
               textbackground(black);
               clrscr;
               gotoxy(36,12);
               writeln('LEVEL 9');
               delay(2000);
               gotoxy(1,23);
               writeln('Pressione qualquer tecla para começar');
               readkey;
               clrscr;
               for ind:=1 to 27 do
                 begin
                   num1[ind]:=random(qtd);
                   write(num1[ind]:4);
                   delay(2000);
                 end;
               clrscr;
               writeln('Números em ordem: ');
               for ind:=1 to 27 do
                 begin
                   gotoxy(18,1);
                   read(num2[ind]);
                   if num1[ind]=num2[ind] then
                   begin
                     textcolor(9);
                     gotoxy(22,1);
                     write('CORRETO!');
                   end
                   else
                   begin
                     textcolor(12);
                     gotoxy(30,12);
                     write('QUE PENA, VOCÊ ERROU!');
                     delay(1000);
                     clrscr;
                     game_over;
                     delay(5000);
                     goto en;
                   end;
                end;
               gotoxy(17,12);
               writeln('Parabéns! Sua missão foi completada com sucesso');
               delay(3000);
               ncf10:
               textcolor(10);
               textbackground(black);
               clrscr;
               gotoxy(32,12);
               writeln('LEVEL 10(FINAL)');
               delay(2000);
               gotoxy(1,23);
               writeln('Pressione qualquer tecla para começar');
               readkey;
               clrscr;
               for ind:=1 to 30 do
                 begin
                   num1[ind]:=random(qtd);
                   write(num1[ind]:4);
                   delay(2000);
                 end;
               clrscr;
               writeln('Números em ordem: ');
               for ind:=1 to 30 do
                 begin
                   gotoxy(18,1);
                   read(num2[ind]);
                   if num1[ind]=num2[ind] then
                   begin
                     textcolor(9);
                     gotoxy(22,1);
                     write('CORRETO!');
                   end
                   else
                   begin
                     textcolor(12);
                     gotoxy(30,12);
                     write('QUE PENA, VOCÊ ERROU!');
                     delay(1000);
                     clrscr;
                     game_over;
                     delay(5000);
                     goto en;
                   end;
                 end;
               clrscr;
               writeln('PARABÉNS!');
               for ind:=1 to 15 do
               begin
                 gotoxy(random(80),random(24));
                 textcolor(random(15));
                 write(random(10));
                 delay(75);
               end;
               for ind:=1 to 15 do
               begin
                 gotoxy(random(80),random(24));
                 textcolor(random(15));
                 write(random(10));
                 delay(75);
               end;
               for ind:=1 to 15 do
               begin
                 gotoxy(random(80),random(24));
                 textcolor(random(15));
                 write(random(10));
                 delay(75);
               end;
               for ind:=1 to 15 do
               begin
                 gotoxy(random(80),random(24));
                 textcolor(random(15));
                 write(random(10));
                 delay(75);
               end;
               clrscr;
               textcolor(white);
               writeln('Parabéns, você foi capaz de completar o jogo na dificuldade normal!');
               delay(2000);
               writeln('Agora mostre que você é melhor ainda, e tente níveis mais difíceis!');
               readkey;
               goto en;
             end;
         4 : begin
               hcf1:
               textcolor(10);
               textbackground(yellow);
               clrscr;
               gotoxy(36,12);
               writeln('LEVEL 1');
               delay(2000);
               gotoxy(1,23);
               writeln('Pressione qualquer tecla para começar');
               readkey;
               clrscr;
               for ind:=1 to 4 do
                 begin
                   num1[ind]:=random(qtd);
                   write(num1[ind]:4);
                   delay(2000);
                 end;
               clrscr;
               writeln('Números em ordem: ');
               for ind:=1 to 4 do
                 begin
                   gotoxy(18,1);
                   read(num2[ind]);
                   if num1[ind]=num2[ind] then
                   begin
                     textcolor(9);
                     gotoxy(22,1);
                     write('CORRETO!');
                   end
                   else
                   begin
                     textcolor(12);
                     gotoxy(30,12);
                     write('QUE PENA, VOCÊ ERROU!');
                     delay(1000);
                     clrscr;
                     game_over;
                     delay(5000);
                     goto en;
                   end;
                end;
               gotoxy(17,12);
               writeln('Parabéns! Sua missão foi completada com sucesso');
               delay(3000);
               hcf2:
               textcolor(10);
               textbackground(yellow);
               clrscr;
               gotoxy(36,12);
               writeln('LEVEL 2');
               delay(2000);
               gotoxy(1,23);
               writeln('Pressione qualquer tecla para começar');
               readkey;
               clrscr;
               for ind:=1 to 8 do
                 begin
                   num1[ind]:=random(qtd);
                   write(num1[ind]:4);
                   delay(2000);
                 end;
               clrscr;
               writeln('Números em ordem: ');
               for ind:=1 to 8 do
                 begin
                   gotoxy(18,1);
                   read(num2[ind]);
                   if num1[ind]=num2[ind] then
                   begin
                     textcolor(9);
                     gotoxy(22,1);
                     write('CORRETO!');
                   end
                   else
                   begin
                     textcolor(12);
                     gotoxy(30,12);
                     write('QUE PENA, VOCÊ ERROU!');
                     delay(1000);
                     clrscr;
                     game_over;
                     delay(5000);
                     goto en;
                   end;
                end;
               gotoxy(17,12);
               writeln('Parabéns! Sua missão foi completada com sucesso');
               delay(3000);
               hcf3:
               textcolor(10);
               textbackground(yellow);
               clrscr;
               gotoxy(36,12);
               writeln('LEVEL 3');
               delay(2000);
               gotoxy(1,23);
               writeln('Pressione qualquer tecla para começar');
               readkey;
               clrscr;
               for ind:=1 to 12 do
                 begin
                   num1[ind]:=random(qtd);
                   write(num1[ind]:4);
                   delay(2000);
                 end;
               clrscr;
               writeln('Números em ordem: ');
               for ind:=1 to 12 do
                 begin
                   gotoxy(18,1);
                   read(num2[ind]);
                   if num1[ind]=num2[ind] then
                   begin
                     textcolor(9);
                     gotoxy(22,1);
                     write('CORRETO!');
                   end
                   else
                   begin
                     textcolor(12);
                     gotoxy(30,12);
                     write('QUE PENA, VOCÊ ERROU!');
                     delay(1000);
                     clrscr;
                     game_over;
                     delay(5000);
                     goto en;
                   end;
                end;
               gotoxy(17,12);
               writeln('Parabéns! Sua missão foi completada com sucesso');
               delay(3000);
               hcf4:
               textcolor(10);
               textbackground(yellow);
               clrscr;
               gotoxy(36,12);
               writeln('LEVEL 4');
               delay(2000);
               gotoxy(1,23);
               writeln('Pressione qualquer tecla para começar');
               readkey;
               clrscr;
               for ind:=1 to 16 do
                 begin
                   num1[ind]:=random(qtd);
                   write(num1[ind]:4);
                   delay(2000);
                 end;
               clrscr;
               writeln('Números em ordem: ');
               for ind:=1 to 16 do
                 begin
                   gotoxy(18,1);
                   read(num2[ind]);
                   if num1[ind]=num2[ind] then
                   begin
                     textcolor(9);
                     gotoxy(22,1);
                     write('CORRETO!');
                   end
                   else
                   begin
                     textcolor(12);
                     gotoxy(30,12);
                     write('QUE PENA, VOCÊ ERROU!');
                     delay(1000);
                     clrscr;
                     game_over;
                     delay(5000);
                     goto en;
                   end;
                end;
               gotoxy(17,12);
               writeln('Parabéns! Sua missão foi completada com sucesso');
               delay(3000);
               hcf5:
               textcolor(10);
               textbackground(yellow);
               clrscr;
               gotoxy(36,12);
               writeln('LEVEL 5');
               delay(2000);
               gotoxy(1,23);
               writeln('Pressione qualquer tecla para começar');
               readkey;
               clrscr;
               for ind:=1 to 20 do
                 begin
                   num1[ind]:=random(qtd);
                   write(num1[ind]:4);
                   delay(2000);
                 end;
               clrscr;
               writeln('Números em ordem: ');
               for ind:=1 to 20 do
                 begin
                   gotoxy(18,1);
                   read(num2[ind]);
                   if num1[ind]=num2[ind] then
                   begin
                     textcolor(9);
                     gotoxy(22,1);
                     write('CORRETO!');
                   end
                   else
                   begin
                     textcolor(12);
                     gotoxy(30,12);
                     write('QUE PENA, VOCÊ ERROU!');
                     delay(1000);
                     clrscr;
                     game_over;
                     delay(5000);
                     goto en;
                   end;
                end;
               gotoxy(17,12);
               writeln('Parabéns! Sua missão foi completada com sucesso');
               delay(3000);
               hcf6:
               textcolor(10);
               textbackground(yellow);
               clrscr;
               gotoxy(36,12);
               writeln('LEVEL 6');
               delay(2000);
               gotoxy(1,23);
               writeln('Pressione qualquer tecla para começar');
               readkey;
               clrscr;
               for ind:=1 to 24 do
                 begin
                   num1[ind]:=random(qtd);
                   write(num1[ind]:4);
                   delay(2000);
                 end;
               clrscr;
               writeln('Números em ordem: ');
               for ind:=1 to 24 do
                 begin
                   gotoxy(18,1);
                   read(num2[ind]);
                   if num1[ind]=num2[ind] then
                   begin
                     textcolor(9);
                     gotoxy(22,1);
                     write('CORRETO!');
                   end
                   else
                   begin
                     textcolor(12);
                     gotoxy(30,12);
                     write('QUE PENA, VOCÊ ERROU!');
                     delay(1000);
                     clrscr;
                     game_over;
                     delay(5000);
                     goto en;
                   end;
                end;
               gotoxy(17,12);
               writeln('Parabéns! Sua missão foi completada com sucesso');
               delay(3000);
               hcf7:
               textcolor(10);
               textbackground(yellow);
               clrscr;
               gotoxy(36,12);
               writeln('LEVEL 7');
               delay(2000);
               gotoxy(1,23);
               writeln('Pressione qualquer tecla para começar');
               readkey;
               clrscr;
               for ind:=1 to 28 do
                 begin
                   num1[ind]:=random(qtd);
                   write(num1[ind]:4);
                   delay(2000);
                 end;
               clrscr;
               writeln('Números em ordem: ');
               for ind:=1 to 28 do
                 begin
                   gotoxy(18,1);
                   read(num2[ind]);
                   if num1[ind]=num2[ind] then
                   begin
                     textcolor(9);
                     gotoxy(22,1);
                     write('CORRETO!');
                   end
                   else
                   begin
                     textcolor(12);
                     gotoxy(30,12);
                     write('QUE PENA, VOCÊ ERROU!');
                     delay(1000);
                     clrscr;
                     game_over;
                     delay(5000);
                     goto en;
                   end;
                end;
               gotoxy(17,12);
               writeln('Parabéns! Sua missão foi completada com sucesso');
               delay(3000);
               hcf8:
               textcolor(10);
               textbackground(yellow);
               clrscr;
               gotoxy(36,12);
               writeln('LEVEL 8');
               delay(2000);
               gotoxy(1,23);
               writeln('Pressione qualquer tecla para começar');
               readkey;
               clrscr;
               for ind:=1 to 32 do
                 begin
                   num1[ind]:=random(qtd);
                   write(num1[ind]:4);
                   delay(2000);
                 end;
               clrscr;
               writeln('Números em ordem: ');
               for ind:=1 to 32 do
                 begin
                   gotoxy(18,1);
                   read(num2[ind]);
                   if num1[ind]=num2[ind] then
                   begin
                     textcolor(9);
                     gotoxy(22,1);
                     write('CORRETO!');
                   end
                   else
                   begin
                     textcolor(12);
                     gotoxy(30,12);
                     write('QUE PENA, VOCÊ ERROU!');
                     delay(1000);
                     clrscr;
                     game_over;
                     delay(5000);
                     goto en;
                   end;
                end;
               gotoxy(17,12);
               writeln('Parabéns! Sua missão foi completada com sucesso');
               delay(3000);
               hcf9:
               textcolor(10);
               textbackground(yellow);
               clrscr;
               gotoxy(36,12);
               writeln('LEVEL 9');
               delay(2000);
               gotoxy(1,23);
               writeln('Pressione qualquer tecla para começar');
               readkey;
               clrscr;
               for ind:=1 to 36 do
                 begin
                   num1[ind]:=random(qtd);
                   write(num1[ind]:4);
                   delay(2000);
                 end;
               clrscr;
               writeln('Números em ordem: ');
               for ind:=1 to 36 do
                 begin
                   gotoxy(18,1);
                   read(num2[ind]);
                   if num1[ind]=num2[ind] then
                   begin
                     textcolor(9);
                     gotoxy(22,1);
                     write('CORRETO!');
                   end
                   else
                   begin
                     textcolor(12);
                     gotoxy(30,12);
                     write('QUE PENA, VOCÊ ERROU!');
                     delay(1000);
                     clrscr;
                     game_over;
                     delay(5000);
                     goto en;
                   end;
                end;
               gotoxy(17,12);
               writeln('Parabéns! Sua missão foi completada com sucesso');
               delay(3000);
               hcf10:
               textcolor(10);
               textbackground(yellow);
               clrscr;
               gotoxy(32,12);
               writeln('LEVEL 10(FINAL)');
               delay(2000);
               gotoxy(1,23);
               writeln('Pressione qualquer tecla para começar');
               readkey;
               clrscr;
               for ind:=1 to 40 do
                 begin
                   num1[ind]:=random(qtd);
                   write(num1[ind]:4);
                   delay(2000);
                 end;
               clrscr;
               writeln('Números em ordem: ');
               for ind:=1 to 40 do
                 begin
                   gotoxy(18,1);
                   read(num2[ind]);
                   if num1[ind]=num2[ind] then
                   begin
                     textcolor(9);
                     gotoxy(22,1);
                     write('CORRETO!');
                   end
                   else
                   begin
                     textcolor(12);
                     gotoxy(30,12);
                     write('QUE PENA, VOCÊ ERROU!');
                     delay(1000);
                     clrscr;
                     game_over;
                     delay(5000);
                     goto en;
                   end;
                 end;
               clrscr;
               writeln('PARABÉNS!');
               for ind:=1 to 15 do
               begin
                 gotoxy(random(80),random(24));
                 textcolor(random(15));
                 write(random(10));
                 delay(75);
               end;
               for ind:=1 to 15 do
               begin
                 gotoxy(random(80),random(24));
                 textcolor(random(15));
                 write(random(10));
                 delay(75);
               end;
               for ind:=1 to 15 do
               begin
                 gotoxy(random(80),random(24));
                 textcolor(random(15));
                 write(random(10));
                 delay(75);
               end;
               for ind:=1 to 15 do
               begin
                 gotoxy(random(80),random(24));
                 textcolor(random(15));
                 write(random(10));
                 delay(75);
               end;
               clrscr;
               textcolor(white);
               writeln('Parabéns, você foi capaz de completar o jogo na dificuldade hard!');
               delay(2000);
               writeln('Agora mostre que você é melhor ainda, e tente níveis mais difíceis!');
               readkey;
               goto en;
             end;
         5 : begin
               vhcf1:
               textcolor(10);
               textbackground(red);
               clrscr;
               gotoxy(36,12);
               writeln('LEVEL 1');
               delay(2000);
               gotoxy(1,23);
               writeln('Pressione qualquer tecla para começar');
               readkey;
               clrscr;
               for ind:=1 to 5 do
                 begin
                   num1[ind]:=random(qtd);
                   write(num1[ind]:4);
                   delay(2000);
                 end;
               clrscr;
               writeln('Números em ordem: ');
               for ind:=1 to 5 do
                 begin
                   gotoxy(18,1);
                   read(num2[ind]);
                   if num1[ind]=num2[ind] then
                   begin
                     textcolor(9);
                     gotoxy(22,1);
                     write('CORRETO!');
                   end
                   else
                   begin
                     textcolor(12);
                     gotoxy(30,12);
                     write('QUE PENA, VOCÊ ERROU!');
                     delay(1000);
                     clrscr;
                     game_over;
                     delay(5000);
                     goto en;
                   end;
                end;
               gotoxy(17,12);
               writeln('Parabéns! Sua missão foi completada com sucesso');
               delay(3000);
               vhcf2:
               textcolor(10);
               textbackground(red);
               clrscr;
               gotoxy(36,12);
               writeln('LEVEL 2');
               delay(2000);
               gotoxy(1,23);
               writeln('Pressione qualquer tecla para começar');
               readkey;
               clrscr;
               for ind:=1 to 10 do
                 begin
                   num1[ind]:=random(qtd);
                   write(num1[ind]:4);
                   delay(2000);
                 end;
               clrscr;
               writeln('Números em ordem: ');
               for ind:=1 to 10 do
                 begin
                   gotoxy(18,1);
                   read(num2[ind]);
                   if num1[ind]=num2[ind] then
                   begin
                     textcolor(9);
                     gotoxy(22,1);
                     write('CORRETO!');
                   end
                   else
                   begin
                     textcolor(12);
                     gotoxy(30,12);
                     write('QUE PENA, VOCÊ ERROU!');
                     delay(1000);
                     clrscr;
                     game_over;
                     delay(5000);
                     goto en;
                   end;
                end;
               gotoxy(17,12);
               writeln('Parabéns! Sua missão foi completada com sucesso');
               delay(3000);
               vhcf3:
               textcolor(10);
               textbackground(red);
               clrscr;
               gotoxy(36,12);
               writeln('LEVEL 3');
               delay(2000);
               gotoxy(1,23);
               writeln('Pressione qualquer tecla para começar');
               readkey;
               clrscr;
               for ind:=1 to 15 do
                 begin
                   num1[ind]:=random(qtd);
                   write(num1[ind]:4);
                   delay(2000);
                 end;
               clrscr;
               writeln('Números em ordem: ');
               for ind:=1 to 15 do
                 begin
                   gotoxy(18,1);
                   read(num2[ind]);
                   if num1[ind]=num2[ind] then
                   begin
                     textcolor(9);
                     gotoxy(22,1);
                     write('CORRETO!');
                   end
                   else
                   begin
                     textcolor(12);
                     gotoxy(30,12);
                     write('QUE PENA, VOCÊ ERROU!');
                     delay(1000);
                     clrscr;
                     game_over;
                     delay(5000);
                     goto en;
                   end;
                end;
               gotoxy(17,12);
               writeln('Parabéns! Sua missão foi completada com sucesso');
               delay(3000);
               vhcf4:
               textcolor(10);
               textbackground(red);
               clrscr;
               gotoxy(36,12);
               writeln('LEVEL 4');
               delay(2000);
               gotoxy(1,23);
               writeln('Pressione qualquer tecla para começar');
               readkey;
               clrscr;
               for ind:=1 to 20 do
                 begin
                   num1[ind]:=random(qtd);
                   write(num1[ind]:4);
                   delay(2000);
                 end;
               clrscr;
               writeln('Números em ordem: ');
               for ind:=1 to 20 do
                 begin
                   gotoxy(18,1);
                   read(num2[ind]);
                   if num1[ind]=num2[ind] then
                   begin
                     textcolor(9);
                     gotoxy(22,1);
                     write('CORRETO!');
                   end
                   else
                   begin
                     textcolor(12);
                     gotoxy(30,12);
                     write('QUE PENA, VOCÊ ERROU!');
                     delay(1000);
                     clrscr;
                     game_over;
                     delay(5000);
                     goto en;
                   end;
                end;
               gotoxy(17,12);
               writeln('Parabéns! Sua missão foi completada com sucesso');
               delay(3000);
               vhcf5:
               textcolor(10);
               textbackground(red);
               clrscr;
               gotoxy(36,12);
               writeln('LEVEL 5');
               delay(2000);
               gotoxy(1,23);
               writeln('Pressione qualquer tecla para começar');
               readkey;
               clrscr;
               for ind:=1 to 25 do
                 begin
                   num1[ind]:=random(qtd);
                   write(num1[ind]:4);
                   delay(2000);
                 end;
               clrscr;
               writeln('Números em ordem: ');
               for ind:=1 to 25 do
                 begin
                   gotoxy(18,1);
                   read(num2[ind]);
                   if num1[ind]=num2[ind] then
                   begin
                     textcolor(9);
                     gotoxy(22,1);
                     write('CORRETO!');
                   end
                   else
                   begin
                     textcolor(12);
                     gotoxy(30,12);
                     write('QUE PENA, VOCÊ ERROU!');
                     delay(1000);
                     clrscr;
                     game_over;
                     delay(5000);
                     goto en;
                   end;
                end;
               gotoxy(17,12);
               writeln('Parabéns! Sua missão foi completada com sucesso');
               delay(3000);
               vhcf6:
               textcolor(10);
               textbackground(red);
               clrscr;
               gotoxy(36,12);
               writeln('LEVEL 6');
               delay(2000);
               gotoxy(1,23);
               writeln('Pressione qualquer tecla para começar');
               readkey;
               clrscr;
               for ind:=1 to 30 do
                 begin
                   num1[ind]:=random(qtd);
                   write(num1[ind]:4);
                   delay(2000);
                 end;
               clrscr;
               writeln('Números em ordem: ');
               for ind:=1 to 30 do
                 begin
                   gotoxy(18,1);
                   read(num2[ind]);
                   if num1[ind]=num2[ind] then
                   begin
                     textcolor(9);
                     gotoxy(22,1);
                     write('CORRETO!');
                   end
                   else
                   begin
                     textcolor(12);
                     gotoxy(30,12);
                     write('QUE PENA, VOCÊ ERROU!');
                     delay(1000);
                     clrscr;
                     game_over;
                     delay(5000);
                     goto en;
                   end;
                end;
               gotoxy(17,12);
               writeln('Parabéns! Sua missão foi completada com sucesso');
               delay(3000);
               vhcf7:
               textcolor(10);
               textbackground(red);
               clrscr;
               gotoxy(36,12);
               writeln('LEVEL 7');
               delay(2000);
               gotoxy(1,23);
               writeln('Pressione qualquer tecla para começar');
               readkey;
               clrscr;
               for ind:=1 to 35 do
                 begin
                   num1[ind]:=random(qtd);
                   write(num1[ind]:4);
                   delay(2000);
                 end;
               clrscr;
               writeln('Números em ordem: ');
               for ind:=1 to 35 do
                 begin
                   gotoxy(18,1);
                   read(num2[ind]);
                   if num1[ind]=num2[ind] then
                   begin
                     textcolor(9);
                     gotoxy(22,1);
                     write('CORRETO!');
                   end
                   else
                   begin
                     textcolor(12);
                     gotoxy(30,12);
                     write('QUE PENA, VOCÊ ERROU!');
                     delay(1000);
                     clrscr;
                     game_over;
                     delay(5000);
                     goto en;
                   end;
                end;
               gotoxy(17,12);
               writeln('Parabéns! Sua missão foi completada com sucesso');
               delay(3000);
               vhcf8:
               textcolor(10);
               textbackground(red);
               clrscr;
               gotoxy(36,12);
               writeln('LEVEL 8');
               delay(2000);
               gotoxy(1,23);
               writeln('Pressione qualquer tecla para começar');
               readkey;
               clrscr;
               for ind:=1 to 40 do
                 begin
                   num1[ind]:=random(qtd);
                   write(num1[ind]:4);
                   delay(2000);
                 end;
               clrscr;
               writeln('Números em ordem: ');
               for ind:=1 to 40 do
                 begin
                   gotoxy(18,1);
                   read(num2[ind]);
                   if num1[ind]=num2[ind] then
                   begin
                     textcolor(9);
                     gotoxy(22,1);
                     write('CORRETO!');
                   end
                   else
                   begin
                     textcolor(12);
                     gotoxy(30,12);
                     write('QUE PENA, VOCÊ ERROU!');
                     delay(1000);
                     clrscr;
                     game_over;
                     delay(5000);
                     goto en;
                   end;
                end;
               gotoxy(17,12);
               writeln('Parabéns! Sua missão foi completada com sucesso');
               delay(3000);
               vhcf9:
               textcolor(10);
               textbackground(red);
               clrscr;
               gotoxy(36,12);
               writeln('LEVEL 9');
               delay(2000);
               gotoxy(1,23);
               writeln('Pressione qualquer tecla para começar');
               readkey;
               clrscr;
               for ind:=1 to 45 do
                 begin
                   num1[ind]:=random(qtd);
                   write(num1[ind]:4);
                   delay(2000);
                 end;
               clrscr;
               writeln('Números em ordem: ');
               for ind:=1 to 45 do
                 begin
                   gotoxy(18,1);
                   read(num2[ind]);
                   if num1[ind]=num2[ind] then
                   begin
                     textcolor(9);
                     gotoxy(22,1);
                     write('CORRETO!');
                   end
                   else
                   begin
                     textcolor(12);
                     gotoxy(30,12);
                     write('QUE PENA, VOCÊ ERROU!');
                     delay(1000);
                     clrscr;
                     game_over;
                     delay(5000);
                     goto en;
                   end;
                end;
               gotoxy(17,12);
               writeln('Parabéns! Sua missão foi completada com sucesso');
               delay(3000);
               vhcf10:
               textcolor(10);
               textbackground(red);
               clrscr;
               gotoxy(32,12);
               writeln('LEVEL 10(FINAL)');
               delay(2000);
               gotoxy(1,23);
               writeln('Pressione qualquer tecla para começar');
               readkey;
               clrscr;
               for ind:=1 to 50 do
                 begin
                   num1[ind]:=random(qtd);
                   write(num1[ind]:4);
                   delay(2000);
                 end;
               clrscr;
               writeln('Números em ordem: ');
               for ind:=1 to 50 do
                 begin
                   gotoxy(18,1);
                   read(num2[ind]);
                   if num1[ind]=num2[ind] then
                   begin
                     textcolor(9);
                     gotoxy(22,1);
                     write('CORRETO!');
                   end
                   else
                   begin
                     textcolor(12);
                     gotoxy(30,12);
                     write('QUE PENA, VOCÊ ERROU!');
                     delay(1000);
                     clrscr;
                     game_over;
                     delay(5000);
                     goto en;
                   end;
                 end;
               clrscr;
               writeln('PARABÉNS!');
               for ind:=1 to 15 do
               begin
                 gotoxy(random(80),random(24));
                 textcolor(random(15));
                 write(random(10));
                 delay(75);
               end;
               for ind:=1 to 15 do
               begin
                 gotoxy(random(80),random(24));
                 textcolor(random(15));
                 write(random(10));
                 delay(75);
               end;
               for ind:=1 to 15 do
               begin
                 gotoxy(random(80),random(24));
                 textcolor(random(15));
                 write(random(10));
                 delay(75);
               end;
               for ind:=1 to 15 do
               begin
                 gotoxy(random(80),random(24));
                 textcolor(random(15));
                 write(random(10));
                 delay(75);
               end;
               clrscr;
               textcolor(white);
               writeln('Parabéns, você foi capaz de completar o jogo na dificuldade very hard!');
               delay(2000);
               writeln('Agora mostre que você tem a memória de um deus, e complete o jogo na dificuldade ***GOD***!');
               readkey;
               goto en;
             end;
         6 : begin
               gcf1:
               textcolor(10);
               textbackground(white);
               clrscr;
               gotoxy(36,12);
               writeln('LEVEL 1');
               delay(2000);
               gotoxy(1,23);
               writeln('Pressione qualquer tecla para começar');
               readkey;
               clrscr;
               for ind:=1 to 10 do
                 begin
                   num1[ind]:=random(qtd);
                   write(num1[ind]:4);
                   delay(2000);
                 end;
               clrscr;
               writeln('Números em ordem: ');
               for ind:=1 to 10 do
                 begin
                   gotoxy(18,1);
                   read(num2[ind]);
                   if num1[ind]=num2[ind] then
                   begin
                     textcolor(9);
                     gotoxy(22,1);
                     write('CORRETO!');
                   end
                   else
                   begin
                     textcolor(12);
                     gotoxy(30,12);
                     write('QUE PENA, VOCÊ ERROU!');
                     delay(1000);
                     clrscr;
                     game_over;
                     delay(5000);
                     goto en;
                   end;
                end;
               gotoxy(17,12);
               writeln('Parabéns! Sua missão foi completada com sucesso');
               delay(3000);
               gcf2:
               textcolor(10);
               textbackground(white);
               clrscr;
               gotoxy(36,12);
               writeln('LEVEL 2');
               delay(2000);
               gotoxy(1,23);
               writeln('Pressione qualquer tecla para começar');
               readkey;
               clrscr;
               for ind:=1 to 20 do
                 begin
                   num1[ind]:=random(qtd);
                   write(num1[ind]:4);
                   delay(2000);
                 end;
               clrscr;
               writeln('Números em ordem: ');
               for ind:=1 to 20 do
                 begin
                   gotoxy(18,1);
                   read(num2[ind]);
                   if num1[ind]=num2[ind] then
                   begin
                     textcolor(9);
                     gotoxy(22,1);
                     write('CORRETO!');
                   end
                   else
                   begin
                     textcolor(12);
                     gotoxy(30,12);
                     write('QUE PENA, VOCÊ ERROU!');
                     delay(1000);
                     clrscr;
                     game_over;
                     delay(5000);
                     goto en;
                   end;
                end;
               gotoxy(17,12);
               writeln('Parabéns! Sua missão foi completada com sucesso');
               delay(3000);
               gcf3:
               textcolor(10);
               textbackground(white);
               clrscr;
               gotoxy(36,12);
               writeln('LEVEL 3');
               delay(2000);
               gotoxy(1,23);
               writeln('Pressione qualquer tecla para começar');
               readkey;
               clrscr;
               for ind:=1 to 30 do
                 begin
                   num1[ind]:=random(qtd);
                   write(num1[ind]:4);
                   delay(2000);
                 end;
               clrscr;
               writeln('Números em ordem: ');
               for ind:=1 to 30 do
                 begin
                   gotoxy(18,1);
                   read(num2[ind]);
                   if num1[ind]=num2[ind] then
                   begin
                     textcolor(9);
                     gotoxy(22,1);
                     write('CORRETO!');
                   end
                   else
                   begin
                     textcolor(12);
                     gotoxy(30,12);
                     write('QUE PENA, VOCÊ ERROU!');
                     delay(1000);
                     clrscr;
                     game_over;
                     delay(5000);
                     goto en;
                   end;
                end;
               gotoxy(17,12);
               writeln('Parabéns! Sua missão foi completada com sucesso');
               delay(3000);
               gcf4:
               textcolor(10);
               textbackground(white);
               clrscr;
               gotoxy(36,12);
               writeln('LEVEL 4');
               delay(2000);
               gotoxy(1,23);
               writeln('Pressione qualquer tecla para começar');
               readkey;
               clrscr;
               for ind:=1 to 40 do
                 begin
                   num1[ind]:=random(qtd);
                   write(num1[ind]:4);
                   delay(2000);
                 end;
               clrscr;
               writeln('Números em ordem: ');
               for ind:=1 to 40 do
                 begin
                   gotoxy(18,1);
                   read(num2[ind]);
                   if num1[ind]=num2[ind] then
                   begin
                     textcolor(9);
                     gotoxy(22,1);
                     write('CORRETO!');
                   end
                   else
                   begin
                     textcolor(12);
                     gotoxy(30,12);
                     write('QUE PENA, VOCÊ ERROU!');
                     delay(1000);
                     clrscr;
                     game_over;
                     delay(5000);
                     goto en;
                   end;
                end;
               gotoxy(17,12);
               writeln('Parabéns! Sua missão foi completada com sucesso');
               delay(3000);
               gcf5:
               textcolor(10);
               textbackground(white);
               clrscr;
               gotoxy(36,12);
               writeln('LEVEL 5');
               delay(2000);
               gotoxy(1,23);
               writeln('Pressione qualquer tecla para começar');
               readkey;
               clrscr;
               for ind:=1 to 50 do
                 begin
                   num1[ind]:=random(qtd);
                   write(num1[ind]:4);
                   delay(2000);
                 end;
               clrscr;
               writeln('Números em ordem: ');
               for ind:=1 to 50 do
                 begin
                   gotoxy(18,1);
                   read(num2[ind]);
                   if num1[ind]=num2[ind] then
                   begin
                     textcolor(9);
                     gotoxy(22,1);
                     write('CORRETO!');
                   end
                   else
                   begin
                     textcolor(12);
                     gotoxy(30,12);
                     write('QUE PENA, VOCÊ ERROU!');
                     delay(1000);
                     clrscr;
                     game_over;
                     delay(5000);
                     goto en;
                   end;
                end;
               gotoxy(17,12);
               writeln('Parabéns! Sua missão foi completada com sucesso');
               delay(3000);
               gcf6:
               textcolor(10);
               textbackground(white);
               clrscr;
               gotoxy(36,12);
               writeln('LEVEL 6');
               delay(2000);
               gotoxy(1,23);
               writeln('Pressione qualquer tecla para começar');
               readkey;
               clrscr;
               for ind:=1 to 60 do
                 begin
                   num1[ind]:=random(qtd);
                   write(num1[ind]:4);
                   delay(2000);
                 end;
               clrscr;
               writeln('Números em ordem: ');
               for ind:=1 to 60 do
                 begin
                   gotoxy(18,1);
                   read(num2[ind]);
                   if num1[ind]=num2[ind] then
                   begin
                     textcolor(9);
                     gotoxy(22,1);
                     write('CORRETO!');
                   end
                   else
                   begin
                     textcolor(12);
                     gotoxy(30,12);
                     write('QUE PENA, VOCÊ ERROU!');
                     delay(1000);
                     clrscr;
                     game_over;
                     delay(5000);
                     goto en;
                   end;
                end;
               gotoxy(17,12);
               writeln('Parabéns! Sua missão foi completada com sucesso');
               delay(3000);
               gcf7:
               textcolor(10);
               textbackground(white);
               clrscr;
               gotoxy(36,12);
               writeln('LEVEL 7');
               delay(2000);
               gotoxy(1,23);
               writeln('Pressione qualquer tecla para começar');
               readkey;
               clrscr;
               for ind:=1 to 70 do
                 begin
                   num1[ind]:=random(qtd);
                   write(num1[ind]:4);
                   delay(2000);
                 end;
               clrscr;
               writeln('Números em ordem: ');
               for ind:=1 to 70 do
                 begin
                   gotoxy(18,1);
                   read(num2[ind]);
                   if num1[ind]=num2[ind] then
                   begin
                     textcolor(9);
                     gotoxy(22,1);
                     write('CORRETO!');
                   end
                   else
                   begin
                     textcolor(12);
                     gotoxy(30,12);
                     write('QUE PENA, VOCÊ ERROU!');
                     delay(1000);
                     clrscr;
                     game_over;
                     delay(5000);
                     goto en;
                   end;
                end;
               gotoxy(17,12);
               writeln('Parabéns! Sua missão foi completada com sucesso');
               delay(3000);
               gcf8:
               textcolor(10);
               textbackground(white);
               clrscr;
               gotoxy(36,12);
               writeln('LEVEL 8');
               delay(2000);
               gotoxy(1,23);
               writeln('Pressione qualquer tecla para começar');
               readkey;
               clrscr;
               for ind:=1 to 80 do
                 begin
                   num1[ind]:=random(qtd);
                   write(num1[ind]:4);
                   delay(2000);
                 end;
               clrscr;
               writeln('Números em ordem: ');
               for ind:=1 to 80 do
                 begin
                   gotoxy(18,1);
                   read(num2[ind]);
                   if num1[ind]=num2[ind] then
                   begin
                     textcolor(9);
                     gotoxy(22,1);
                     write('CORRETO!');
                   end
                   else
                   begin
                     textcolor(12);
                     gotoxy(30,12);
                     write('QUE PENA, VOCÊ ERROU!');
                     delay(1000);
                     clrscr;
                     game_over;
                     delay(5000);
                     goto en;
                   end;
                end;
               gotoxy(17,12);
               writeln('Parabéns! Sua missão foi completada com sucesso');
               delay(3000);
               gcf9:
               textcolor(10);
               textbackground(white);
               clrscr;
               gotoxy(36,12);
               writeln('LEVEL 9');
               delay(2000);
               gotoxy(1,23);
               writeln('Pressione qualquer tecla para começar');
               readkey;
               clrscr;
               for ind:=1 to 90 do
                 begin
                   num1[ind]:=random(qtd);
                   write(num1[ind]:4);
                   delay(2000);
                 end;
               clrscr;
               writeln('Números em ordem: ');
               for ind:=1 to 90 do
                 begin
                   gotoxy(18,1);
                   read(num2[ind]);
                   if num1[ind]=num2[ind] then
                   begin
                     textcolor(9);
                     gotoxy(22,1);
                     write('CORRETO!');
                   end
                   else
                   begin
                     textcolor(12);
                     gotoxy(30,12);
                     write('QUE PENA, VOCÊ ERROU!');
                     delay(1000);
                     clrscr;
                     game_over;
                     delay(5000);
                     goto en;
                   end;
                end;
               gotoxy(17,12);
               writeln('Parabéns! Sua missão foi completada com sucesso');
               delay(3000);
               gcf10:
               textcolor(10);
               textbackground(white);
               clrscr;
               gotoxy(32,12);
               writeln('LEVEL 10(FINAL)');
               delay(2000);
               gotoxy(1,23);
               writeln('Pressione qualquer tecla para começar');
               readkey;
               clrscr;
               for ind:=1 to 100 do
                 begin
                   num1[ind]:=random(qtd);
                   write(num1[ind]:4);
                   delay(2000);
                 end;
               clrscr;
               writeln('Números em ordem: ');
               for ind:=1 to 100 do
                 begin
                   gotoxy(18,1);
                   read(num2[ind]);
                   if num1[ind]=num2[ind] then
                   begin
                     textcolor(9);
                     gotoxy(22,1);
                     write('CORRETO!');
                   end
                   else
                   begin
                     textcolor(12);
                     gotoxy(30,12);
                     write('QUE PENA, VOCÊ ERROU!');
                     delay(1000);
                     clrscr;
                     game_over;
                     delay(5000);
                     goto en;
                   end;
                 end;
               clrscr;
               writeln('PARABÉNS!');
               for ind:=1 to 15 do
               begin
                 gotoxy(random(80),random(24));
                 textcolor(random(15));
                 write(random(10));
                 delay(75);
               end;
               for ind:=1 to 15 do
               begin
                 gotoxy(random(80),random(24));
                 textcolor(random(15));
                 write(random(10));
                 delay(75);
               end;
               for ind:=1 to 15 do
               begin
                 gotoxy(random(80),random(24));
                 textcolor(random(15));
                 write(random(10));
                 delay(75);
               end;
               for ind:=1 to 15 do
               begin
                 gotoxy(random(80),random(24));
                 textcolor(random(15));
                 write(random(10));
                 delay(75);
               end;
               clrscr;
               textcolor(white);
               writeln('Inacreditável! você tem a memória de um deus!');
               delay(2000);
               writeln('Agora você aprenderá como acessar o cheating mode!');
               delay(2000);
               writeln('No menu principal do jogo, aperte a tecla 9 e depois enter!');
               delay(2000);
               writeln('Nesse modo, você poderá navegar por todo o jogo!');
               delay(2000);
               writeln('Em qualquer fase, dificuldade ou modo!');
               readkey;
               goto en;
             end;
   end;
  end;
   2:
   begin
    clrscr;
    gotoxy(29,1);
    writeln('SELECIONE A DIFICULDADE');
    gotoxy(35,8);
    write('1-Very Easy');
    gotoxy(37,10);
    write('2-Easy');
    gotoxy(36,12);
    write('3-Normal');
    gotoxy(37,14);
    write('4-Hard');
    gotoxy(35,16);
    write('5-Very Hard');
    gotoxy(35,18);
    write('6-***GOD***');
    readln(slctdif);
    clrscr;
    for ind:=1 to 150 do
    begin
      write('BOA SORTE  ');
      delay(50);
    end;
    randomize;
    case slctdif of
         1 : begin
               vekf1:
               textcolor(10);
               textbackground(cyan);
               clrscr;
               gotoxy(36,12);
               writeln('LEVEL 1');
               delay(2000);
               gotoxy(1,23);
               writeln('Pressione qualquer tecla para começar');
               readkey;
               clrscr;
               for ind:=1 to 1 do
                 num1[ind]:=random(qtd);
               for ind:=1 to 1 do
               begin
                 write(num1[ind]:4);
                 delay(2000);
               end;
               clrscr;
               writeln('Números em ordem: ');
               for ind:=1 to 1 do
                 begin
                   gotoxy(18,1);
                   read(num2[ind]);
                   if num1[ind]=num2[ind] then
                   begin
                     textcolor(9);
                     gotoxy(22,1);
                     write('CORRETO!');
                   end
                   else
                   begin
                     textcolor(12);
                     gotoxy(30,12);
                     write('QUE PENA, VOCÊ ERROU!');
                     delay(1000);
                     clrscr;
                     game_over;
                     delay(5000);
                     goto en;
                   end;
                end;
               gotoxy(17,12);
               writeln('Parabéns! Sua missão foi completada com sucesso');
               delay(3000);
               vekf2:
               textcolor(10);
               textbackground(cyan);
               clrscr;
               gotoxy(36,12);
               writeln('LEVEL 2');
               delay(2000);
               gotoxy(1,23);
               writeln('Pressione qualquer tecla para começar');
               readkey;
               clrscr;
               for ind:=2 to 2 do
                 num1[ind]:=random(qtd);
               for ind:=1 to 2 do
               begin
                 write(num1[ind]:4);
                 delay(2000);
               end;
               clrscr;
               writeln('Números em ordem: ');
               for ind:=1 to 2 do
                 begin
                   gotoxy(18,1);
                   read(num2[ind]);
                   if num1[ind]=num2[ind] then
                   begin
                     textcolor(9);
                     gotoxy(22,1);
                     write('CORRETO!');
                   end
                   else
                   begin
                     textcolor(12);
                     gotoxy(30,12);
                     write('QUE PENA, VOCÊ ERROU!');
                     delay(1000);
                     clrscr;
                     game_over;
                     delay(5000);
                     goto en;
                   end;
                end;
               gotoxy(17,12);
               writeln('Parabéns! Sua missão foi completada com sucesso');
               delay(3000);
               vekf3:
               textcolor(10);
               textbackground(cyan);
               clrscr;
               gotoxy(36,12);
               writeln('LEVEL 3');
               delay(2000);
               gotoxy(1,23);
               writeln('Pressione qualquer tecla para começar');
               readkey;
               clrscr;
               for ind:=3 to 3 do
                 num1[ind]:=random(qtd);
               for ind:=1 to 3 do
               begin
                 write(num1[ind]:4);
                 delay(2000);
               end;
               clrscr;
               writeln('Números em ordem: ');
               for ind:=1 to 3 do
                 begin
                   gotoxy(18,1);
                   read(num2[ind]);
                   if num1[ind]=num2[ind] then
                   begin
                     textcolor(9);
                     gotoxy(22,1);
                     write('CORRETO!');
                   end
                   else
                   begin
                     textcolor(12);
                     gotoxy(30,12);
                     write('QUE PENA, VOCÊ ERROU!');
                     delay(1000);
                     clrscr;
                     game_over;
                     delay(5000);
                     goto en;
                   end;
                end;
               gotoxy(17,12);
               writeln('Parabéns! Sua missão foi completada com sucesso');
               delay(3000);
               vekf4:
               textcolor(10);
               textbackground(cyan);
               clrscr;
               gotoxy(36,12);
               writeln('LEVEL 4');
               delay(2000);
               gotoxy(1,23);
               writeln('Pressione qualquer tecla para começar');
               readkey;
               clrscr;
               for ind:=4 to 4 do
                 num1[ind]:=random(qtd);
               for ind:=1 to 4 do
               begin
                 write(num1[ind]:4);
                 delay(2000);
               end;
               clrscr;
               writeln('Números em ordem: ');
               for ind:=1 to 4 do
                 begin
                   gotoxy(18,1);
                   read(num2[ind]);
                   if num1[ind]=num2[ind] then
                   begin
                     textcolor(9);
                     gotoxy(22,1);
                     write('CORRETO!');
                   end
                   else
                   begin
                     textcolor(12);
                     gotoxy(30,12);
                     write('QUE PENA, VOCÊ ERROU!');
                     delay(1000);
                     clrscr;
                     game_over;
                     delay(5000);
                     goto en;
                   end;
                end;
               gotoxy(17,12);
               writeln('Parabéns! Sua missão foi completada com sucesso');
               delay(3000);
               vekf5:
               textcolor(10);
               textbackground(cyan);
               clrscr;
               gotoxy(36,12);
               writeln('LEVEL 5');
               delay(2000);
               gotoxy(1,23);
               writeln('Pressione qualquer tecla para começar');
               readkey;
               clrscr;
               for ind:=5 to 5 do
                 num1[ind]:=random(qtd);
               for ind:=1 to 5 do
               begin
                 write(num1[ind]:4);
                 delay(2000);
               end;
               clrscr;
               writeln('Números em ordem: ');
               for ind:=1 to 5 do
                 begin
                   gotoxy(18,1);
                   read(num2[ind]);
                   if num1[ind]=num2[ind] then
                   begin
                     textcolor(9);
                     gotoxy(22,1);
                     write('CORRETO!');
                   end
                   else
                   begin
                     textcolor(12);
                     gotoxy(30,12);
                     write('QUE PENA, VOCÊ ERROU!');
                     delay(1000);
                     clrscr;
                     game_over;
                     delay(5000);
                     goto en;
                   end;
                end;
               gotoxy(17,12);
               writeln('Parabéns! Sua missão foi completada com sucesso');
               delay(3000);
               vekf6:
               textcolor(10);
               textbackground(cyan);
               clrscr;
               gotoxy(36,12);
               writeln('LEVEL 6');
               delay(2000);
               gotoxy(1,23);
               writeln('Pressione qualquer tecla para começar');
               readkey;
               clrscr;
               for ind:=6 to 6 do
                 num1[ind]:=random(qtd);
               for ind:=1 to 6 do
               begin
                 write(num1[ind]:4);
                 delay(2000);
               end;
               clrscr;
               writeln('Números em ordem: ');
               for ind:=1 to 6 do
                 begin
                   gotoxy(18,1);
                   read(num2[ind]);
                   if num1[ind]=num2[ind] then
                   begin
                     textcolor(9);
                     gotoxy(22,1);
                     write('CORRETO!');
                   end
                   else
                   begin
                     textcolor(12);
                     gotoxy(30,12);
                     write('QUE PENA, VOCÊ ERROU!');
                     delay(1000);
                     clrscr;
                     game_over;
                     delay(5000);
                     goto en;
                   end;
                end;
               gotoxy(17,12);
               writeln('Parabéns! Sua missão foi completada com sucesso');
               delay(3000);
               vekf7:
               textcolor(10);
               textbackground(cyan);
               clrscr;
               gotoxy(36,12);
               writeln('LEVEL 7');
               delay(2000);
               gotoxy(1,23);
               writeln('Pressione qualquer tecla para começar');
               readkey;
               clrscr;
               for ind:=7 to 7 do
                 num1[ind]:=random(qtd);
               for ind:=1 to 7 do
               begin
                 write(num1[ind]:4);
                 delay(2000);
               end;
               clrscr;
               writeln('Números em ordem: ');
               for ind:=1 to 7 do
                 begin
                   gotoxy(18,1);
                   read(num2[ind]);
                   if num1[ind]=num2[ind] then
                   begin
                     textcolor(9);
                     gotoxy(22,1);
                     write('CORRETO!');
                   end
                   else
                   begin
                     textcolor(12);
                     gotoxy(30,12);
                     write('QUE PENA, VOCÊ ERROU!');
                     delay(1000);
                     clrscr;
                     game_over;
                     delay(5000);
                     goto en;
                   end;
                end;
               gotoxy(17,12);
               writeln('Parabéns! Sua missão foi completada com sucesso');
               delay(3000);
               vekf8:
               textcolor(10);
               textbackground(cyan);
               clrscr;
               gotoxy(36,12);
               writeln('LEVEL 8');
               delay(2000);
               gotoxy(1,23);
               writeln('Pressione qualquer tecla para começar');
               readkey;
               clrscr;
               for ind:=8 to 8 do
                 num1[ind]:=random(qtd);
               for ind:=1 to 8 do
               begin
                 write(num1[ind]:4);
                 delay(2000);
               end;
               clrscr;
               writeln('Números em ordem: ');
               for ind:=1 to 8 do
                 begin
                   gotoxy(18,1);
                   read(num2[ind]);
                   if num1[ind]=num2[ind] then
                   begin
                     textcolor(9);
                     gotoxy(22,1);
                     write('CORRETO!');
                   end
                   else
                   begin
                     textcolor(12);
                     gotoxy(30,12);
                     write('QUE PENA, VOCÊ ERROU!');
                     delay(1000);
                     clrscr;
                     game_over;
                     delay(5000);
                     goto en;
                   end;
                end;
               gotoxy(17,12);
               writeln('Parabéns! Sua missão foi completada com sucesso');
               delay(3000);
               vekf9:
               textcolor(10);
               textbackground(cyan);
               clrscr;
               gotoxy(36,12);
               writeln('LEVEL 9');
               delay(2000);
               gotoxy(1,23);
               writeln('Pressione qualquer tecla para começar');
               readkey;
               clrscr;
               for ind:=9 to 9 do
                 num1[ind]:=random(qtd);
               for ind:=1 to 9 do
               begin
                 write(num1[ind]:4);
                 delay(2000);
               end;
               clrscr;
               writeln('Números em ordem: ');
               for ind:=1 to 9 do
                 begin
                   gotoxy(18,1);
                   read(num2[ind]);
                   if num1[ind]=num2[ind] then
                   begin
                     textcolor(9);
                     gotoxy(22,1);
                     write('CORRETO!');
                   end
                   else
                   begin
                     textcolor(12);
                     gotoxy(30,12);
                     write('QUE PENA, VOCÊ ERROU!');
                     delay(1000);
                     clrscr;
                     game_over;
                     delay(5000);
                     goto en;
                   end;
                end;
               gotoxy(17,12);
               writeln('Parabéns! Sua missão foi completada com sucesso');
               delay(3000);
               vekf10:
               textcolor(10);
               textbackground(cyan);
               clrscr;
               gotoxy(32,12);
               writeln('LEVEL 10(FINAL)');
               delay(2000);
               gotoxy(1,23);
               writeln('Pressione qualquer tecla para começar');
               readkey;
               clrscr;
               for ind:=10 to 10 do
                 num1[ind]:=random(qtd);
               for ind:=1 to 10 do
               begin
                 write(num1[ind]:4);
                 delay(2000);
               end;
               clrscr;
               writeln('Números em ordem: ');
               for ind:=1 to 10 do
                 begin
                   gotoxy(18,1);
                   read(num2[ind]);
                   if num1[ind]=num2[ind] then
                   begin
                     textcolor(9);
                     gotoxy(22,1);
                     write('CORRETO!');
                   end
                   else
                   begin
                     textcolor(12);
                     gotoxy(30,12);
                     write('QUE PENA, VOCÊ ERROU!');
                     delay(1000);
                     clrscr;
                     game_over;
                     delay(5000);
                     goto en;
                   end;
                 end;
               clrscr;
               textcolor(yellow);
               gotoxy(36,12);
               writeln('PARABÉNS!');
               for ind:=1 to 15 do
               begin
                 gotoxy(random(80),random(24));
                 textcolor(random(15));
                 write(random(10));
                 delay(75);
               end;
               for ind:=1 to 15 do
               begin
                 gotoxy(random(80),random(24));
                 textcolor(random(15));
                 write(random(10));
                 delay(75);
               end;
               for ind:=1 to 15 do
               begin
                 gotoxy(random(80),random(24));
                 textcolor(random(15));
                 write(random(10));
                 delay(75);
               end;
               for ind:=1 to 15 do
               begin
                 gotoxy(random(80),random(24));
                 textcolor(random(15));
                 write(random(10));
                 delay(75);
               end;
               clrscr;
               textcolor(white);
               writeln('Parabéns, você foi capaz de completar o jogo na dificuldade very easy!');
               delay(2000);
               writeln('Agora mostre que você é melhor ainda, e tente níveis mais difíceis!');
               readkey;
               goto en;
             end;
         2 : begin
               ekf1:
               textcolor(10);
               textbackground(blue);
               clrscr;
               gotoxy(36,12);
               writeln('LEVEL 1');
               delay(2000);
               gotoxy(1,23);
               writeln('Pressione qualquer tecla para começar');
               readkey;
               clrscr;
               for ind:=1 to 2 do
                 num1[ind]:=random(qtd);
               for ind:=1 to 2 do
               begin
                 write(num1[ind]:4);
                 delay(2000);
               end;
               clrscr;
               writeln('Números em ordem: ');
               for ind:=1 to 2 do
                 begin
                   gotoxy(18,1);
                   read(num2[ind]);
                   if num1[ind]=num2[ind] then
                   begin
                     textcolor(9);
                     gotoxy(22,1);
                     write('CORRETO!');
                   end
                   else
                   begin
                     textcolor(12);
                     gotoxy(30,12);
                     write('QUE PENA, VOCÊ ERROU!');
                     delay(1000);
                     clrscr;
                     game_over;
                     delay(5000);
                     goto en;
                   end;
                end;
               gotoxy(17,12);
               writeln('Parabéns! Sua missão foi completada com sucesso');
               delay(3000);
               ekf2:
               textcolor(10);
               textbackground(blue);
               clrscr;
               gotoxy(36,12);
               writeln('LEVEL 2');
               delay(2000);
               gotoxy(1,23);
               writeln('Pressione qualquer tecla para começar');
               readkey;
               clrscr;
               for ind:=3 to 4 do
                 num1[ind]:=random(qtd);
               for ind:=1 to 4 do
               begin
                 write(num1[ind]:4);
                 delay(2000);
               end;
               clrscr;
               writeln('Números em ordem: ');
               for ind:=1 to 4 do
                 begin
                   gotoxy(18,1);
                   read(num2[ind]);
                   if num1[ind]=num2[ind] then
                   begin
                     textcolor(9);
                     gotoxy(22,1);
                     write('CORRETO!');
                   end
                   else
                   begin
                     textcolor(12);
                     gotoxy(30,12);
                     write('QUE PENA, VOCÊ ERROU!');
                     delay(1000);
                     clrscr;
                     game_over;
                     delay(5000);
                     goto en;
                   end;
                end;
               gotoxy(17,12);
               writeln('Parabéns! Sua missão foi completada com sucesso');
               delay(3000);
               ekf3:
               textcolor(10);
               textbackground(blue);
               clrscr;
               gotoxy(36,12);
               writeln('LEVEL 3');
               delay(2000);
               gotoxy(1,23);
               writeln('Pressione qualquer tecla para começar');
               readkey;
               clrscr;
               for ind:=5 to 6 do
                 num1[ind]:=random(qtd);
               for ind:=1 to 6 do
               begin
                 write(num1[ind]:4);
                 delay(2000);
               end;
               clrscr;
               writeln('Números em ordem: ');
               for ind:=1 to 6 do
                 begin
                   gotoxy(18,1);
                   read(num2[ind]);
                   if num1[ind]=num2[ind] then
                   begin
                     textcolor(9);
                     gotoxy(22,1);
                     write('CORRETO!');
                   end
                   else
                   begin
                     textcolor(12);
                     gotoxy(30,12);
                     write('QUE PENA, VOCÊ ERROU!');
                     delay(1000);
                     clrscr;
                     game_over;
                     delay(5000);
                     goto en;
                   end;
                end;
               gotoxy(17,12);
               writeln('Parabéns! Sua missão foi completada com sucesso');
               delay(3000);
               ekf4:
               textcolor(10);
               textbackground(blue);
               clrscr;
               gotoxy(36,12);
               writeln('LEVEL 4');
               delay(2000);
               gotoxy(1,23);
               writeln('Pressione qualquer tecla para começar');
               readkey;
               clrscr;
               for ind:=7 to 8 do
                 num1[ind]:=random(qtd);
               for ind:=1 to 8 do
               begin
                 write(num1[ind]:4);
                 delay(2000);
               end;
               clrscr;
               writeln('Números em ordem: ');
               for ind:=1 to 8 do
                 begin
                   gotoxy(18,1);
                   read(num2[ind]);
                   if num1[ind]=num2[ind] then
                   begin
                     textcolor(9);
                     gotoxy(22,1);
                     write('CORRETO!');
                   end
                   else
                   begin
                     textcolor(12);
                     gotoxy(30,12);
                     write('QUE PENA, VOCÊ ERROU!');
                     delay(1000);
                     clrscr;
                     game_over;
                     delay(5000);
                     goto en;
                   end;
                end;
               gotoxy(17,12);
               writeln('Parabéns! Sua missão foi completada com sucesso');
               delay(3000);
               ekf5:
               textcolor(10);
               textbackground(blue);
               clrscr;
               gotoxy(36,12);
               writeln('LEVEL 5');
               delay(2000);
               gotoxy(1,23);
               writeln('Pressione qualquer tecla para começar');
               readkey;
               clrscr;
               for ind:=9 to 10 do
                 num1[ind]:=random(qtd);
               for ind:=1 to 10 do
               begin
                 write(num1[ind]:4);
                 delay(2000);
               end;
               clrscr;
               writeln('Números em ordem: ');
               for ind:=1 to 10 do
                 begin
                   gotoxy(18,1);
                   read(num2[ind]);
                   if num1[ind]=num2[ind] then
                   begin
                     textcolor(9);
                     gotoxy(22,1);
                     write('CORRETO!');
                   end
                   else
                   begin
                     textcolor(12);
                     gotoxy(30,12);
                     write('QUE PENA, VOCÊ ERROU!');
                     delay(1000);
                     clrscr;
                     game_over;
                     delay(5000);
                     goto en;
                   end;
                end;
               gotoxy(17,12);
               writeln('Parabéns! Sua missão foi completada com sucesso');
               delay(3000);
               ekf6:
               textcolor(10);
               textbackground(blue);
               clrscr;
               gotoxy(36,12);
               writeln('LEVEL 6');
               delay(2000);
               gotoxy(1,23);
               writeln('Pressione qualquer tecla para começar');
               readkey;
               clrscr;
               for ind:=11 to 12 do
                 num1[ind]:=random(qtd);
               for ind:=1 to 12 do
               begin
                 write(num1[ind]:4);
                 delay(2000);
               end;
               clrscr;
               writeln('Números em ordem: ');
               for ind:=1 to 12 do
                 begin
                   gotoxy(18,1);
                   read(num2[ind]);
                   if num1[ind]=num2[ind] then
                   begin
                     textcolor(9);
                     gotoxy(22,1);
                     write('CORRETO!');
                   end
                   else
                   begin
                     textcolor(12);
                     gotoxy(30,12);
                     write('QUE PENA, VOCÊ ERROU!');
                     delay(1000);
                     clrscr;
                     game_over;
                     delay(5000);
                     goto en;
                   end;
                end;
               gotoxy(17,12);
               writeln('Parabéns! Sua missão foi completada com sucesso');
               delay(3000);
               ekf7:
               textcolor(10);
               textbackground(blue);
               clrscr;
               gotoxy(36,12);
               writeln('LEVEL 7');
               delay(2000);
               gotoxy(1,23);
               writeln('Pressione qualquer tecla para começar');
               readkey;
               clrscr;
               for ind:=13 to 14 do
                 num1[ind]:=random(qtd);
               for ind:=1 to 14 do
               begin
                 write(num1[ind]:4);
                 delay(2000);
               end;
               clrscr;
               writeln('Números em ordem: ');
               for ind:=1 to 14 do
                 begin
                   gotoxy(18,1);
                   read(num2[ind]);
                   if num1[ind]=num2[ind] then
                   begin
                     textcolor(9);
                     gotoxy(22,1);
                     write('CORRETO!');
                   end
                   else
                   begin
                     textcolor(12);
                     gotoxy(30,12);
                     write('QUE PENA, VOCÊ ERROU!');
                     delay(1000);
                     clrscr;
                     game_over;
                     delay(5000);
                     goto en;
                   end;
                end;
               gotoxy(17,12);
               writeln('Parabéns! Sua missão foi completada com sucesso');
               delay(3000);
               ekf8:
               textcolor(10);
               textbackground(blue);
               clrscr;
               gotoxy(36,12);
               writeln('LEVEL 8');
               delay(2000);
               gotoxy(1,23);
               writeln('Pressione qualquer tecla para começar');
               readkey;
               clrscr;
               for ind:=15 to 16 do
                 num1[ind]:=random(qtd);
               for ind:=1 to 16 do
               begin
                 write(num1[ind]:4);
                 delay(2000);
               end;
               clrscr;
               writeln('Números em ordem: ');
               for ind:=1 to 16 do
                 begin
                   gotoxy(18,1);
                   read(num2[ind]);
                   if num1[ind]=num2[ind] then
                   begin
                     textcolor(9);
                     gotoxy(22,1);
                     write('CORRETO!');
                   end
                   else
                   begin
                     textcolor(12);
                     gotoxy(30,12);
                     write('QUE PENA, VOCÊ ERROU!');
                     delay(1000);
                     clrscr;
                     game_over;
                     delay(5000);
                     goto en;
                   end;
                end;
               gotoxy(17,12);
               writeln('Parabéns! Sua missão foi completada com sucesso');
               delay(3000);
               ekf9:
               textcolor(10);
               textbackground(blue);
               clrscr;
               gotoxy(36,12);
               writeln('LEVEL 9');
               delay(2000);
               gotoxy(1,23);
               writeln('Pressione qualquer tecla para começar');
               readkey;
               clrscr;
               for ind:=17 to 18 do
                 num1[ind]:=random(qtd);
               for ind:=1 to 18 do
               begin
                 write(num1[ind]:4);
                 delay(2000);
               end;
               clrscr;
               writeln('Números em ordem: ');
               for ind:=1 to 18 do
                 begin
                   gotoxy(18,1);
                   read(num2[ind]);
                   if num1[ind]=num2[ind] then
                   begin
                     textcolor(9);
                     gotoxy(22,1);
                     write('CORRETO!');
                   end
                   else
                   begin
                     textcolor(12);
                     gotoxy(30,12);
                     write('QUE PENA, VOCÊ ERROU!');
                     delay(1000);
                     clrscr;
                     game_over;
                     delay(5000);
                     goto en;
                   end;
                end;
               gotoxy(17,12);
               writeln('Parabéns! Sua missão foi completada com sucesso');
               delay(3000);
               ekf10:
               textcolor(10);
               textbackground(blue);
               clrscr;
               gotoxy(32,12);
               writeln('LEVEL 10(FINAL)');
               delay(2000);
               gotoxy(1,23);
               writeln('Pressione qualquer tecla para começar');
               readkey;
               clrscr;
               for ind:=19 to 20 do
                 num1[ind]:=random(qtd);
               for ind:=1 to 20 do
               begin
                 write(num1[ind]:4);
                 delay(2000);
               end;
               clrscr;
               writeln('Números em ordem: ');
               for ind:=1 to 20 do
                 begin
                   gotoxy(18,1);
                   read(num2[ind]);
                   if num1[ind]=num2[ind] then
                   begin
                     textcolor(9);
                     gotoxy(22,1);
                     write('CORRETO!');
                   end
                   else
                   begin
                     textcolor(12);
                     gotoxy(30,12);
                     write('QUE PENA, VOCÊ ERROU!');
                     delay(1000);
                     clrscr;
                     game_over;
                     delay(5000);
                     goto en;
                   end;
                 end;
               clrscr;
               textcolor(yellow);
               gotoxy(36,12);
               writeln('PARABÉNS!');
               for ind:=1 to 15 do
               begin
                 gotoxy(random(80),random(24));
                 textcolor(random(15));
                 write(random(10));
                 delay(75);
               end;
               for ind:=1 to 15 do
               begin
                 gotoxy(random(80),random(24));
                 textcolor(random(15));
                 write(random(10));
                 delay(75);
               end;
               for ind:=1 to 15 do
               begin
                 gotoxy(random(80),random(24));
                 textcolor(random(15));
                 write(random(10));
                 delay(75);
               end;
               for ind:=1 to 15 do
               begin
                 gotoxy(random(80),random(24));
                 textcolor(random(15));
                 write(random(10));
                 delay(75);
               end;
               clrscr;
               textcolor(white);
               writeln('Parabéns, você foi capaz de completar o jogo na dificuldade easy!');
               delay(2000);
               writeln('Agora mostre que você é melhor ainda, e tente níveis mais difíceis!');
               readkey;
               goto en;
             end;
         3 : begin
               nkf1:
               textcolor(10);
               textbackground(black);
               clrscr;
               gotoxy(36,12);
               writeln('LEVEL 1');
               delay(2000);
               gotoxy(1,23);
               writeln('Pressione qualquer tecla para começar');
               readkey;
               clrscr;
               for ind:=1 to 3 do
                 num1[ind]:=random(qtd);
               for ind:=1 to 3 do
               begin
                 write(num1[ind]:4);
                 delay(2000);
               end;
               clrscr;
               writeln('Números em ordem: ');
               for ind:=1 to 3 do
                 begin
                   gotoxy(18,1);
                   read(num2[ind]);
                   if num1[ind]=num2[ind] then
                   begin
                     textcolor(9);
                     gotoxy(22,1);
                     write('CORRETO!');
                   end
                   else
                   begin
                     textcolor(12);
                     gotoxy(30,12);
                     write('QUE PENA, VOCÊ ERROU!');
                     delay(1000);
                     clrscr;
                     game_over;
                     delay(5000);
                     goto en;
                   end;
                end;
               gotoxy(17,12);
               writeln('Parabéns! Sua missão foi completada com sucesso');
               delay(3000);
               nkf2:
               textcolor(10);
               textbackground(black);
               clrscr;
               gotoxy(36,12);
               writeln('LEVEL 2');
               delay(2000);
               gotoxy(1,23);
               writeln('Pressione qualquer tecla para começar');
               readkey;
               clrscr;
               for ind:=4 to 6 do
                 num1[ind]:=random(qtd);
               for ind:=1 to 6 do
               begin
                 write(num1[ind]:4);
                 delay(2000);
               end;
               clrscr;
               writeln('Números em ordem: ');
               for ind:=1 to 6 do
                 begin
                   gotoxy(18,1);
                   read(num2[ind]);
                   if num1[ind]=num2[ind] then
                   begin
                     textcolor(9);
                     gotoxy(22,1);
                     write('CORRETO!');
                   end
                   else
                   begin
                     textcolor(12);
                     gotoxy(30,12);
                     write('QUE PENA, VOCÊ ERROU!');
                     delay(1000);
                     clrscr;
                     game_over;
                     delay(5000);
                     goto en;
                   end;
                end;
               gotoxy(17,12);
               writeln('Parabéns! Sua missão foi completada com sucesso');
               delay(3000);
               nkf3:
               textcolor(10);
               textbackground(black);
               clrscr;
               gotoxy(36,12);
               writeln('LEVEL 3');
               delay(2000);
               gotoxy(1,23);
               writeln('Pressione qualquer tecla para começar');
               readkey;
               clrscr;
               for ind:=7 to 9 do
                 num1[ind]:=random(qtd);
               for ind:=1 to 9 do
               begin
                 write(num1[ind]:4);
                 delay(2000);
               end;
               clrscr;
               writeln('Números em ordem: ');
               for ind:=1 to 9 do
                 begin
                   gotoxy(18,1);
                   read(num2[ind]);
                   if num1[ind]=num2[ind] then
                   begin
                     textcolor(9);
                     gotoxy(22,1);
                     write('CORRETO!');
                   end
                   else
                   begin
                     textcolor(12);
                     gotoxy(30,12);
                     write('QUE PENA, VOCÊ ERROU!');
                     delay(1000);
                     clrscr;
                     game_over;
                     delay(5000);
                     goto en;
                   end;
                end;
               gotoxy(17,12);
               writeln('Parabéns! Sua missão foi completada com sucesso');
               delay(3000);
               nkf4:
               textcolor(10);
               textbackground(black);
               clrscr;
               gotoxy(36,12);
               writeln('LEVEL 4');
               delay(2000);
               gotoxy(1,23);
               writeln('Pressione qualquer tecla para começar');
               readkey;
               clrscr;
               for ind:=10 to 12 do
                 num1[ind]:=random(qtd);
               for ind:=1 to 12 do
               begin
                 write(num1[ind]:4);
                 delay(2000);
               end;
               clrscr;
               writeln('Números em ordem: ');
               for ind:=1 to 12 do
                 begin
                   gotoxy(18,1);
                   read(num2[ind]);
                   if num1[ind]=num2[ind] then
                   begin
                     textcolor(9);
                     gotoxy(22,1);
                     write('CORRETO!');
                   end
                   else
                   begin
                     textcolor(12);
                     gotoxy(30,12);
                     write('QUE PENA, VOCÊ ERROU!');
                     delay(1000);
                     clrscr;
                     game_over;
                     delay(5000);
                     goto en;
                   end;
                end;
               gotoxy(17,12);
               writeln('Parabéns! Sua missão foi completada com sucesso');
               delay(3000);
               nkf5:
               textcolor(10);
               textbackground(black);
               clrscr;
               gotoxy(36,12);
               writeln('LEVEL 5');
               delay(2000);
               gotoxy(1,23);
               writeln('Pressione qualquer tecla para começar');
               readkey;
               clrscr;
               for ind:=13 to 15 do
                 num1[ind]:=random(qtd);
               for ind:=1 to 15 do
               begin
                 write(num1[ind]:4);
                 delay(2000);
               end;
               clrscr;
               writeln('Números em ordem: ');
               for ind:=1 to 15 do
                 begin
                   gotoxy(18,1);
                   read(num2[ind]);
                   if num1[ind]=num2[ind] then
                   begin
                     textcolor(9);
                     gotoxy(22,1);
                     write('CORRETO!');
                   end
                   else
                   begin
                     textcolor(12);
                     gotoxy(30,12);
                     write('QUE PENA, VOCÊ ERROU!');
                     delay(1000);
                     clrscr;
                     game_over;
                     delay(5000);
                     goto en;
                   end;
                end;
               gotoxy(17,12);
               writeln('Parabéns! Sua missão foi completada com sucesso');
               delay(3000);
               nkf6:
               textcolor(10);
               textbackground(black);
               clrscr;
               gotoxy(36,12);
               writeln('LEVEL 6');
               delay(2000);
               gotoxy(1,23);
               writeln('Pressione qualquer tecla para começar');
               readkey;
               clrscr;
               for ind:=16 to 18 do
                 num1[ind]:=random(qtd);
               for ind:=1 to 18 do
               begin
                 write(num1[ind]:4);
                 delay(2000);
               end;
               clrscr;
               writeln('Números em ordem: ');
               for ind:=1 to 18 do
                 begin
                   gotoxy(18,1);
                   read(num2[ind]);
                   if num1[ind]=num2[ind] then
                   begin
                     textcolor(9);
                     gotoxy(22,1);
                     write('CORRETO!');
                   end
                   else
                   begin
                     textcolor(12);
                     gotoxy(30,12);
                     write('QUE PENA, VOCÊ ERROU!');
                     delay(1000);
                     clrscr;
                     game_over;
                     delay(5000);
                     goto en;
                   end;
                end;
               gotoxy(17,12);
               writeln('Parabéns! Sua missão foi completada com sucesso');
               delay(3000);
               nkf7:
               textcolor(10);
               textbackground(black);
               clrscr;
               gotoxy(36,12);
               writeln('LEVEL 7');
               delay(2000);
               gotoxy(1,23);
               writeln('Pressione qualquer tecla para começar');
               readkey;
               clrscr;
               for ind:=19 to 21 do
                 num1[ind]:=random(qtd);
               for ind:=1 to 21 do
               begin
                 write(num1[ind]:4);
                 delay(2000);
               end;
               clrscr;
               writeln('Números em ordem: ');
               for ind:=1 to 21 do
                 begin
                   gotoxy(18,1);
                   read(num2[ind]);
                   if num1[ind]=num2[ind] then
                   begin
                     textcolor(9);
                     gotoxy(22,1);
                     write('CORRETO!');
                   end
                   else
                   begin
                     textcolor(12);
                     gotoxy(30,12);
                     write('QUE PENA, VOCÊ ERROU!');
                     delay(1000);
                     clrscr;
                     game_over;
                     delay(5000);
                     goto en;
                   end;
                end;
               gotoxy(17,12);
               writeln('Parabéns! Sua missão foi completada com sucesso');
               delay(3000);
               nkf8:
               textcolor(10);
               textbackground(black);
               clrscr;
               gotoxy(36,12);
               writeln('LEVEL 8');
               delay(2000);
               gotoxy(1,23);
               writeln('Pressione qualquer tecla para começar');
               readkey;
               clrscr;
               for ind:=22 to 24 do
                 num1[ind]:=random(qtd);
               for ind:=1 to 24 do
               begin
                 write(num1[ind]:4);
                 delay(2000);
               end;
               clrscr;
               writeln('Números em ordem: ');
               for ind:=1 to 24 do
                 begin
                   gotoxy(18,1);
                   read(num2[ind]);
                   if num1[ind]=num2[ind] then
                   begin
                     textcolor(9);
                     gotoxy(22,1);
                     write('CORRETO!');
                   end
                   else
                   begin
                     textcolor(12);
                     gotoxy(30,12);
                     write('QUE PENA, VOCÊ ERROU!');
                     delay(1000);
                     clrscr;
                     game_over;
                     delay(5000);
                     goto en;
                   end;
                end;
               gotoxy(17,12);
               writeln('Parabéns! Sua missão foi completada com sucesso');
               delay(3000);
               nkf9:
               textcolor(10);
               textbackground(black);
               clrscr;
               gotoxy(36,12);
               writeln('LEVEL 9');
               delay(2000);
               gotoxy(1,23);
               writeln('Pressione qualquer tecla para começar');
               readkey;
               clrscr;
               for ind:=25 to 27 do
                 num1[ind]:=random(qtd);
               for ind:=1 to 27 do
               begin
                 write(num1[ind]:4);
                 delay(2000);
               end;
               clrscr;
               writeln('Números em ordem: ');
               for ind:=1 to 27 do
                 begin
                   gotoxy(18,1);
                   read(num2[ind]);
                   if num1[ind]=num2[ind] then
                   begin
                     textcolor(9);
                     gotoxy(22,1);
                     write('CORRETO!');
                   end
                   else
                   begin
                     textcolor(12);
                     gotoxy(30,12);
                     write('QUE PENA, VOCÊ ERROU!');
                     delay(1000);
                     clrscr;
                     game_over;
                     delay(5000);
                     goto en;
                   end;
                end;
               gotoxy(17,12);
               writeln('Parabéns! Sua missão foi completada com sucesso');
               delay(3000);
               nkf10:
               textcolor(10);
               textbackground(black);
               clrscr;
               gotoxy(32,12);
               writeln('LEVEL 10(FINAL)');
               delay(2000);
               gotoxy(1,23);
               writeln('Pressione qualquer tecla para começar');
               readkey;
               clrscr;
               for ind:=28 to 30 do
                 num1[ind]:=random(qtd);
               for ind:=1 to 30 do
               begin
                 write(num1[ind]:4);
                 delay(2000);
               end;
               clrscr;
               writeln('Números em ordem: ');
               for ind:=1 to 30 do
                 begin
                   gotoxy(18,1);
                   read(num2[ind]);
                   if num1[ind]=num2[ind] then
                   begin
                     textcolor(9);
                     gotoxy(22,1);
                     write('CORRETO!');
                   end
                   else
                   begin
                     textcolor(12);
                     gotoxy(30,12);
                     write('QUE PENA, VOCÊ ERROU!');
                     delay(1000);
                     clrscr;
                     game_over;
                     delay(5000);
                     goto en;
                   end;
                 end;
               clrscr;
               writeln('PARABÉNS!');
               for ind:=1 to 15 do
               begin
                 gotoxy(random(80),random(24));
                 textcolor(random(15));
                 write(random(10));
                 delay(75);
               end;
               for ind:=1 to 15 do
               begin
                 gotoxy(random(80),random(24));
                 textcolor(random(15));
                 write(random(10));
                 delay(75);
               end;
               for ind:=1 to 15 do
               begin
                 gotoxy(random(80),random(24));
                 textcolor(random(15));
                 write(random(10));
                 delay(75);
               end;
               for ind:=1 to 15 do
               begin
                 gotoxy(random(80),random(24));
                 textcolor(random(15));
                 write(random(10));
                 delay(75);
               end;
               clrscr;
               textcolor(white);
               writeln('Parabéns, você foi capaz de completar o jogo na dificuldade normal!');
               delay(2000);
               writeln('Agora mostre que você é melhor ainda, e tente níveis mais difíceis!');
               readkey;
               goto en;
             end;
         4 : begin
               hkf1:
               textcolor(10);
               textbackground(yellow);
               clrscr;
               gotoxy(36,12);
               writeln('LEVEL 1');
               delay(2000);
               gotoxy(1,23);
               writeln('Pressione qualquer tecla para começar');
               readkey;
               clrscr;
               for ind:=1 to 4 do
                 num1[ind]:=random(qtd);
               for ind:=1 to 4 do
               begin
                 write(num1[ind]:4);
                 delay(2000);
               end;
               clrscr;
               writeln('Números em ordem: ');
               for ind:=1 to 4 do
                 begin
                   gotoxy(18,1);
                   read(num2[ind]);
                   if num1[ind]=num2[ind] then
                   begin
                     textcolor(9);
                     gotoxy(22,1);
                     write('CORRETO!');
                   end
                   else
                   begin
                     textcolor(12);
                     gotoxy(30,12);
                     write('QUE PENA, VOCÊ ERROU!');
                     delay(1000);
                     clrscr;
                     game_over;
                     delay(5000);
                     goto en;
                   end;
                end;
               gotoxy(17,12);
               writeln('Parabéns! Sua missão foi completada com sucesso');
               delay(3000);
               hkf2:
               textcolor(10);
               textbackground(yellow);
               clrscr;
               gotoxy(36,12);
               writeln('LEVEL 2');
               delay(2000);
               gotoxy(1,23);
               writeln('Pressione qualquer tecla para começar');
               readkey;
               clrscr;
               for ind:=5 to 8 do
                 num1[ind]:=random(qtd);
               for ind:=1 to 8 do
               begin
                 write(num1[ind]:4);
                 delay(2000);
               end;
               clrscr;
               writeln('Números em ordem: ');
               for ind:=1 to 8 do
                 begin
                   gotoxy(18,1);
                   read(num2[ind]);
                   if num1[ind]=num2[ind] then
                   begin
                     textcolor(9);
                     gotoxy(22,1);
                     write('CORRETO!');
                   end
                   else
                   begin
                     textcolor(12);
                     gotoxy(30,12);
                     write('QUE PENA, VOCÊ ERROU!');
                     delay(1000);
                     clrscr;
                     game_over;
                     delay(5000);
                     goto en;
                   end;
                end;
               gotoxy(17,12);
               writeln('Parabéns! Sua missão foi completada com sucesso');
               delay(3000);
               hkf3:
               textcolor(10);
               textbackground(yellow);
               clrscr;
               gotoxy(36,12);
               writeln('LEVEL 3');
               delay(2000);
               gotoxy(1,23);
               writeln('Pressione qualquer tecla para começar');
               readkey;
               clrscr;
               for ind:=9 to 12 do
                 num1[ind]:=random(qtd);
               for ind:=1 to 12 do
               begin
                 write(num1[ind]:4);
                 delay(2000);
               end;
               clrscr;
               writeln('Números em ordem: ');
               for ind:=1 to 12 do
                 begin
                   gotoxy(18,1);
                   read(num2[ind]);
                   if num1[ind]=num2[ind] then
                   begin
                     textcolor(9);
                     gotoxy(22,1);
                     write('CORRETO!');
                   end
                   else
                   begin
                     textcolor(12);
                     gotoxy(30,12);
                     write('QUE PENA, VOCÊ ERROU!');
                     delay(1000);
                     clrscr;
                     game_over;
                     delay(5000);
                     goto en;
                   end;
                end;
               gotoxy(17,12);
               writeln('Parabéns! Sua missão foi completada com sucesso');
               delay(3000);
               hkf4:
               textcolor(10);
               textbackground(yellow);
               clrscr;
               gotoxy(36,12);
               writeln('LEVEL 4');
               delay(2000);
               gotoxy(1,23);
               writeln('Pressione qualquer tecla para começar');
               readkey;
               clrscr;
               for ind:=13 to 16 do
                 num1[ind]:=random(qtd);
               for ind:=1 to 16 do
               begin
                 write(num1[ind]:4);
                 delay(2000);
               end;
               clrscr;
               writeln('Números em ordem: ');
               for ind:=1 to 16 do
                 begin
                   gotoxy(18,1);
                   read(num2[ind]);
                   if num1[ind]=num2[ind] then
                   begin
                     textcolor(9);
                     gotoxy(22,1);
                     write('CORRETO!');
                   end
                   else
                   begin
                     textcolor(12);
                     gotoxy(30,12);
                     write('QUE PENA, VOCÊ ERROU!');
                     delay(1000);
                     clrscr;
                     game_over;
                     delay(5000);
                     goto en;
                   end;
                end;
               gotoxy(17,12);
               writeln('Parabéns! Sua missão foi completada com sucesso');
               delay(3000);
               hkf5:
               textcolor(10);
               textbackground(yellow);
               clrscr;
               gotoxy(36,12);
               writeln('LEVEL 5');
               delay(2000);
               gotoxy(1,23);
               writeln('Pressione qualquer tecla para começar');
               readkey;
               clrscr;
               for ind:=17 to 20 do
                 num1[ind]:=random(qtd);
               for ind:=1 to 20 do
               begin
                 write(num1[ind]:4);
                 delay(2000);
               end;
               clrscr;
               writeln('Números em ordem: ');
               for ind:=1 to 20 do
                 begin
                   gotoxy(18,1);
                   read(num2[ind]);
                   if num1[ind]=num2[ind] then
                   begin
                     textcolor(9);
                     gotoxy(22,1);
                     write('CORRETO!');
                   end
                   else
                   begin
                     textcolor(12);
                     gotoxy(30,12);
                     write('QUE PENA, VOCÊ ERROU!');
                     delay(1000);
                     clrscr;
                     game_over;
                     delay(5000);
                     goto en;
                   end;
                end;
               gotoxy(17,12);
               writeln('Parabéns! Sua missão foi completada com sucesso');
               delay(3000);
               hkf6:
               textcolor(10);
               textbackground(yellow);
               clrscr;
               gotoxy(36,12);
               writeln('LEVEL 6');
               delay(2000);
               gotoxy(1,23);
               writeln('Pressione qualquer tecla para começar');
               readkey;
               clrscr;
               for ind:=21 to 24 do
                 num1[ind]:=random(qtd);
               for ind:=1 to 24 do
               begin
                 write(num1[ind]:4);
                 delay(2000);
               end;
               clrscr;
               writeln('Números em ordem: ');
               for ind:=1 to 24 do
                 begin
                   gotoxy(18,1);
                   read(num2[ind]);
                   if num1[ind]=num2[ind] then
                   begin
                     textcolor(9);
                     gotoxy(22,1);
                     write('CORRETO!');
                   end
                   else
                   begin
                     textcolor(12);
                     gotoxy(30,12);
                     write('QUE PENA, VOCÊ ERROU!');
                     delay(1000);
                     clrscr;
                     game_over;
                     delay(5000);
                     goto en;
                   end;
                end;
               gotoxy(17,12);
               writeln('Parabéns! Sua missão foi completada com sucesso');
               delay(3000);
               hkf7:
               textcolor(10);
               textbackground(yellow);
               clrscr;
               gotoxy(36,12);
               writeln('LEVEL 7');
               delay(2000);
               gotoxy(1,23);
               writeln('Pressione qualquer tecla para começar');
               readkey;
               clrscr;
               for ind:=25 to 28 do
                 num1[ind]:=random(qtd);
               for ind:=1 to 28 do
               begin
                 write(num1[ind]:4);
                 delay(2000);
               end;
               clrscr;
               writeln('Números em ordem: ');
               for ind:=1 to 28 do
                 begin
                   gotoxy(18,1);
                   read(num2[ind]);
                   if num1[ind]=num2[ind] then
                   begin
                     textcolor(9);
                     gotoxy(22,1);
                     write('CORRETO!');
                   end
                   else
                   begin
                     textcolor(12);
                     gotoxy(30,12);
                     write('QUE PENA, VOCÊ ERROU!');
                     delay(1000);
                     clrscr;
                     game_over;
                     delay(5000);
                     goto en;
                   end;
                end;
               gotoxy(17,12);
               writeln('Parabéns! Sua missão foi completada com sucesso');
               delay(3000);
               hkf8:
               textcolor(10);
               textbackground(yellow);
               clrscr;
               gotoxy(36,12);
               writeln('LEVEL 8');
               delay(2000);
               gotoxy(1,23);
               writeln('Pressione qualquer tecla para começar');
               readkey;
               clrscr;
               for ind:=29 to 32 do
                 num1[ind]:=random(qtd);
               for ind:=1 to 32 do
               begin
                 write(num1[ind]:4);
                 delay(2000);
               end;
               clrscr;
               writeln('Números em ordem: ');
               for ind:=1 to 32 do
                 begin
                   gotoxy(18,1);
                   read(num2[ind]);
                   if num1[ind]=num2[ind] then
                   begin
                     textcolor(9);
                     gotoxy(22,1);
                     write('CORRETO!');
                   end
                   else
                   begin
                     textcolor(12);
                     gotoxy(30,12);
                     write('QUE PENA, VOCÊ ERROU!');
                     delay(1000);
                     clrscr;
                     game_over;
                     delay(5000);
                     goto en;
                   end;
                end;
               gotoxy(17,12);
               writeln('Parabéns! Sua missão foi completada com sucesso');
               delay(3000);
               hkf9:
               textcolor(10);
               textbackground(yellow);
               clrscr;
               gotoxy(36,12);
               writeln('LEVEL 9');
               delay(2000);
               gotoxy(1,23);
               writeln('Pressione qualquer tecla para começar');
               readkey;
               clrscr;
               for ind:=33 to 36 do
                 num1[ind]:=random(qtd);
               for ind:=1 to 36 do
               begin
                 write(num1[ind]:4);
                 delay(2000);
               end;
               clrscr;
               writeln('Números em ordem: ');
               for ind:=1 to 36 do
                 begin
                   gotoxy(18,1);
                   read(num2[ind]);
                   if num1[ind]=num2[ind] then
                   begin
                     textcolor(9);
                     gotoxy(22,1);
                     write('CORRETO!');
                   end
                   else
                   begin
                     textcolor(12);
                     gotoxy(30,12);
                     write('QUE PENA, VOCÊ ERROU!');
                     delay(1000);
                     clrscr;
                     game_over;
                     delay(5000);
                     goto en;
                   end;
                end;
               gotoxy(17,12);
               writeln('Parabéns! Sua missão foi completada com sucesso');
               delay(3000);
               hkf10:
               textcolor(10);
               textbackground(yellow);
               clrscr;
               gotoxy(32,12);
               writeln('LEVEL 10(FINAL)');
               delay(2000);
               gotoxy(1,23);
               writeln('Pressione qualquer tecla para começar');
               readkey;
               clrscr;
               for ind:=37 to 40 do
                 num1[ind]:=random(qtd);
               for ind:=1 to 40 do
               begin
                 write(num1[ind]:4);
                 delay(2000);
               end;
               clrscr;
               writeln('Números em ordem: ');
               for ind:=1 to 40 do
                 begin
                   gotoxy(18,1);
                   read(num2[ind]);
                   if num1[ind]=num2[ind] then
                   begin
                     textcolor(9);
                     gotoxy(22,1);
                     write('CORRETO!');
                   end
                   else
                   begin
                     textcolor(12);
                     gotoxy(30,12);
                     write('QUE PENA, VOCÊ ERROU!');
                     delay(1000);
                     clrscr;
                     game_over;
                     delay(5000);
                     goto en;
                   end;
                 end;
               clrscr;
               writeln('PARABÉNS!');
               for ind:=1 to 15 do
               begin
                 gotoxy(random(80),random(24));
                 textcolor(random(15));
                 write(random(10));
                 delay(75);
               end;
               for ind:=1 to 15 do
               begin
                 gotoxy(random(80),random(24));
                 textcolor(random(15));
                 write(random(10));
                 delay(75);
               end;
               for ind:=1 to 15 do
               begin
                 gotoxy(random(80),random(24));
                 textcolor(random(15));
                 write(random(10));
                 delay(75);
               end;
               for ind:=1 to 15 do
               begin
                 gotoxy(random(80),random(24));
                 textcolor(random(15));
                 write(random(10));
                 delay(75);
               end;
               clrscr;
               textcolor(white);
               writeln('Parabéns, você foi capaz de completar o jogo na dificuldade hard!');
               delay(2000);
               writeln('Agora mostre que você é melhor ainda, e tente níveis mais difíceis!');
               readkey;
               goto en;
             end;
         5 : begin
               vhkf1:
               textcolor(10);
               textbackground(red);
               clrscr;
               gotoxy(36,12);
               writeln('LEVEL 1');
               delay(2000);
               gotoxy(1,23);
               writeln('Pressione qualquer tecla para começar');
               readkey;
               clrscr;
               for ind:=1 to 5 do
                 num1[ind]:=random(qtd);
               for ind:=1 to 5 do
               begin
                 write(num1[ind]:4);
                 delay(2000);
               end;
               clrscr;
               writeln('Números em ordem: ');
               for ind:=1 to 5 do
                 begin
                   gotoxy(18,1);
                   read(num2[ind]);
                   if num1[ind]=num2[ind] then
                   begin
                     textcolor(9);
                     gotoxy(22,1);
                     write('CORRETO!');
                   end
                   else
                   begin
                     textcolor(12);
                     gotoxy(30,12);
                     write('QUE PENA, VOCÊ ERROU!');
                     delay(1000);
                     clrscr;
                     game_over;
                     delay(5000);
                     goto en;
                   end;
                end;
               gotoxy(17,12);
               writeln('Parabéns! Sua missão foi completada com sucesso');
               delay(3000);
               vhkf2:
               textcolor(10);
               textbackground(red);
               clrscr;
               gotoxy(36,12);
               writeln('LEVEL 2');
               delay(2000);
               gotoxy(1,23);
               writeln('Pressione qualquer tecla para começar');
               readkey;
               clrscr;
               for ind:=6 to 10 do
                 num1[ind]:=random(qtd);
               for ind:=1 to 10 do
               begin
                 write(num1[ind]:4);
                 delay(2000);
               end;
               clrscr;
               writeln('Números em ordem: ');
               for ind:=1 to 10 do
                 begin
                   gotoxy(18,1);
                   read(num2[ind]);
                   if num1[ind]=num2[ind] then
                   begin
                     textcolor(9);
                     gotoxy(22,1);
                     write('CORRETO!');
                   end
                   else
                   begin
                     textcolor(12);
                     gotoxy(30,12);
                     write('QUE PENA, VOCÊ ERROU!');
                     delay(1000);
                     clrscr;
                     game_over;
                     delay(5000);
                     goto en;
                   end;
                end;
               gotoxy(17,12);
               writeln('Parabéns! Sua missão foi completada com sucesso');
               delay(3000);
               vhkf3:
               textcolor(10);
               textbackground(red);
               clrscr;
               gotoxy(36,12);
               writeln('LEVEL 3');
               delay(2000);
               gotoxy(1,23);
               writeln('Pressione qualquer tecla para começar');
               readkey;
               clrscr;
               for ind:=11 to 15 do
                 num1[ind]:=random(qtd);
               for ind:=1 to 15 do
               begin
                 write(num1[ind]:4);
                 delay(2000);
               end;
               clrscr;
               writeln('Números em ordem: ');
               for ind:=1 to 15 do
                 begin
                   gotoxy(18,1);
                   read(num2[ind]);
                   if num1[ind]=num2[ind] then
                   begin
                     textcolor(9);
                     gotoxy(22,1);
                     write('CORRETO!');
                   end
                   else
                   begin
                     textcolor(12);
                     gotoxy(30,12);
                     write('QUE PENA, VOCÊ ERROU!');
                     delay(1000);
                     clrscr;
                     game_over;
                     delay(5000);
                     goto en;
                   end;
                end;
               gotoxy(17,12);
               writeln('Parabéns! Sua missão foi completada com sucesso');
               delay(3000);
               vhkf4:
               textcolor(10);
               textbackground(red);
               clrscr;
               gotoxy(36,12);
               writeln('LEVEL 4');
               delay(2000);
               gotoxy(1,23);
               writeln('Pressione qualquer tecla para começar');
               readkey;
               clrscr;
               for ind:=16 to 20 do
                 num1[ind]:=random(qtd);
               for ind:=1 to 20 do
               begin
                 write(num1[ind]:4);
                 delay(2000);
               end;
               clrscr;
               writeln('Números em ordem: ');
               for ind:=1 to 20 do
                 begin
                   gotoxy(18,1);
                   read(num2[ind]);
                   if num1[ind]=num2[ind] then
                   begin
                     textcolor(9);
                     gotoxy(22,1);
                     write('CORRETO!');
                   end
                   else
                   begin
                     textcolor(12);
                     gotoxy(30,12);
                     write('QUE PENA, VOCÊ ERROU!');
                     delay(1000);
                     clrscr;
                     game_over;
                     delay(5000);
                     goto en;
                   end;
                end;
               gotoxy(17,12);
               writeln('Parabéns! Sua missão foi completada com sucesso');
               delay(3000);
               vhkf5:
               textcolor(10);
               textbackground(red);
               clrscr;
               gotoxy(36,12);
               writeln('LEVEL 5');
               delay(2000);
               gotoxy(1,23);
               writeln('Pressione qualquer tecla para começar');
               readkey;
               clrscr;
               for ind:=21 to 25 do
                 num1[ind]:=random(qtd);
               for ind:=1 to 25 do
               begin
                 write(num1[ind]:4);
                 delay(2000);
               end;
               clrscr;
               writeln('Números em ordem: ');
               for ind:=1 to 25 do
                 begin
                   gotoxy(18,1);
                   read(num2[ind]);
                   if num1[ind]=num2[ind] then
                   begin
                     textcolor(9);
                     gotoxy(22,1);
                     write('CORRETO!');
                   end
                   else
                   begin
                     textcolor(12);
                     gotoxy(30,12);
                     write('QUE PENA, VOCÊ ERROU!');
                     delay(1000);
                     clrscr;
                     game_over;
                     delay(5000);
                     goto en;
                   end;
                end;
               gotoxy(17,12);
               writeln('Parabéns! Sua missão foi completada com sucesso');
               delay(3000);
               vhkf6:
               textcolor(10);
               textbackground(red);
               clrscr;
               gotoxy(36,12);
               writeln('LEVEL 6');
               delay(2000);
               gotoxy(1,23);
               writeln('Pressione qualquer tecla para começar');
               readkey;
               clrscr;
               for ind:=26 to 30 do
                 num1[ind]:=random(qtd);
               for ind:=1 to 30 do
               begin
                 write(num1[ind]:4);
                 delay(2000);
               end;
               clrscr;
               writeln('Números em ordem: ');
               for ind:=1 to 30 do
                 begin
                   gotoxy(18,1);
                   read(num2[ind]);
                   if num1[ind]=num2[ind] then
                   begin
                     textcolor(9);
                     gotoxy(22,1);
                     write('CORRETO!');
                   end
                   else
                   begin
                     textcolor(12);
                     gotoxy(30,12);
                     write('QUE PENA, VOCÊ ERROU!');
                     delay(1000);
                     clrscr;
                     game_over;
                     delay(5000);
                     goto en;
                   end;
                end;
               gotoxy(17,12);
               writeln('Parabéns! Sua missão foi completada com sucesso');
               delay(3000);
               vhkf7:
               textcolor(10);
               textbackground(red);
               clrscr;
               gotoxy(36,12);
               writeln('LEVEL 7');
               delay(2000);
               gotoxy(1,23);
               writeln('Pressione qualquer tecla para começar');
               readkey;
               clrscr;
               for ind:=31 to 35 do
                 num1[ind]:=random(qtd);
               for ind:=1 to 35 do
               begin
                 write(num1[ind]:4);
                 delay(2000);
               end;
               clrscr;
               writeln('Números em ordem: ');
               for ind:=1 to 35 do
                 begin
                   gotoxy(18,1);
                   read(num2[ind]);
                   if num1[ind]=num2[ind] then
                   begin
                     textcolor(9);
                     gotoxy(22,1);
                     write('CORRETO!');
                   end
                   else
                   begin
                     textcolor(12);
                     gotoxy(30,12);
                     write('QUE PENA, VOCÊ ERROU!');
                     delay(1000);
                     clrscr;
                     game_over;
                     delay(5000);
                     goto en;
                   end;
                end;
               gotoxy(17,12);
               writeln('Parabéns! Sua missão foi completada com sucesso');
               delay(3000);
               vhkf8:
               textcolor(10);
               textbackground(red);
               clrscr;
               gotoxy(36,12);
               writeln('LEVEL 8');
               delay(2000);
               gotoxy(1,23);
               writeln('Pressione qualquer tecla para começar');
               readkey;
               clrscr;
               for ind:=36 to 40 do
                 num1[ind]:=random(qtd);
               for ind:=1 to 40 do
               begin
                 write(num1[ind]:4);
                 delay(2000);
               end;
               clrscr;
               writeln('Números em ordem: ');
               for ind:=1 to 40 do
                 begin
                   gotoxy(18,1);
                   read(num2[ind]);
                   if num1[ind]=num2[ind] then
                   begin
                     textcolor(9);
                     gotoxy(22,1);
                     write('CORRETO!');
                   end
                   else
                   begin
                     textcolor(12);
                     gotoxy(30,12);
                     write('QUE PENA, VOCÊ ERROU!');
                     delay(1000);
                     clrscr;
                     game_over;
                     delay(5000);
                     goto en;
                   end;
                end;
               gotoxy(17,12);
               writeln('Parabéns! Sua missão foi completada com sucesso');
               delay(3000);
               vhkf9:
               textcolor(10);
               textbackground(red);
               clrscr;
               gotoxy(36,12);
               writeln('LEVEL 9');
               delay(2000);
               gotoxy(1,23);
               writeln('Pressione qualquer tecla para começar');
               readkey;
               clrscr;
               for ind:=41 to 45 do
                 num1[ind]:=random(qtd);
               for ind:=1 to 45 do
               begin
                 write(num1[ind]:4);
                 delay(2000);
               end;
               clrscr;
               writeln('Números em ordem: ');
               for ind:=1 to 45 do
                 begin
                   gotoxy(18,1);
                   read(num2[ind]);
                   if num1[ind]=num2[ind] then
                   begin
                     textcolor(9);
                     gotoxy(22,1);
                     write('CORRETO!');
                   end
                   else
                   begin
                     textcolor(12);
                     gotoxy(30,12);
                     write('QUE PENA, VOCÊ ERROU!');
                     delay(1000);
                     clrscr;
                     game_over;
                     delay(5000);
                     goto en;
                   end;
                end;
               gotoxy(17,12);
               writeln('Parabéns! Sua missão foi completada com sucesso');
               delay(3000);
               vhkf10:
               textcolor(10);
               textbackground(red);
               clrscr;
               gotoxy(32,12);
               writeln('LEVEL 10(FINAL)');
               delay(2000);
               gotoxy(1,23);
               writeln('Pressione qualquer tecla para começar');
               readkey;
               clrscr;
               for ind:=46 to 50 do
                 num1[ind]:=random(qtd);
               for ind:=1 to 50 do
               begin
                 write(num1[ind]:4);
                 delay(2000);
               end;
               clrscr;
               writeln('Números em ordem: ');
               for ind:=1 to 50 do
                 begin
                   gotoxy(18,1);
                   read(num2[ind]);
                   if num1[ind]=num2[ind] then
                   begin
                     textcolor(9);
                     gotoxy(22,1);
                     write('CORRETO!');
                   end
                   else
                   begin
                     textcolor(12);
                     gotoxy(30,12);
                     write('QUE PENA, VOCÊ ERROU!');
                     delay(1000);
                     clrscr;
                     game_over;
                     delay(5000);
                     goto en;
                   end;
                 end;
               clrscr;
               writeln('PARABÉNS!');
               for ind:=1 to 15 do
               begin
                 gotoxy(random(80),random(24));
                 textcolor(random(15));
                 write(random(10));
                 delay(75);
               end;
               for ind:=1 to 15 do
               begin
                 gotoxy(random(80),random(24));
                 textcolor(random(15));
                 write(random(10));
                 delay(75);
               end;
               for ind:=1 to 15 do
               begin
                 gotoxy(random(80),random(24));
                 textcolor(random(15));
                 write(random(10));
                 delay(75);
               end;
               for ind:=1 to 15 do
               begin
                 gotoxy(random(80),random(24));
                 textcolor(random(15));
                 write(random(10));
                 delay(75);
               end;
               clrscr;
               textcolor(white);
               writeln('Parabéns, você foi capaz de completar o jogo na dificuldade very hard!');
               delay(2000);
               writeln('Agora mostre que você tem a memória de um deus, e complete o jogo na dificuldade ***GOD***!');
               readkey;
               goto en;
             end;
         6 : begin
               gkf1:
               textcolor(10);
               textbackground(white);
               clrscr;
               gotoxy(36,12);
               writeln('LEVEL 1');
               delay(2000);
               gotoxy(1,23);
               writeln('Pressione qualquer tecla para começar');
               readkey;
               clrscr;
               for ind:=1 to 10 do
                 num1[ind]:=random(qtd);
               for ind:=1 to 10 do
               begin
                 write(num1[ind]:4);
                 delay(2000);
               end;
               clrscr;
               writeln('Números em ordem: ');
               for ind:=1 to 10 do
                 begin
                   gotoxy(18,1);
                   read(num2[ind]);
                   if num1[ind]=num2[ind] then
                   begin
                     textcolor(9);
                     gotoxy(22,1);
                     write('CORRETO!');
                   end
                   else
                   begin
                     textcolor(12);
                     gotoxy(30,12);
                     write('QUE PENA, VOCÊ ERROU!');
                     delay(1000);
                     clrscr;
                     game_over;
                     delay(5000);
                     goto en;
                   end;
                end;
               gotoxy(17,12);
               writeln('Parabéns! Sua missão foi completada com sucesso');
               delay(3000);
               gkf2:
               textcolor(10);
               textbackground(white);
               clrscr;
               gotoxy(36,12);
               writeln('LEVEL 2');
               delay(2000);
               gotoxy(1,23);
               writeln('Pressione qualquer tecla para começar');
               readkey;
               clrscr;
               for ind:=11 to 20 do
                 num1[ind]:=random(qtd);
               for ind:=1 to 20 do
               begin
                 write(num1[ind]:4);
                 delay(2000);
               end;
               clrscr;
               writeln('Números em ordem: ');
               for ind:=1 to 20 do
                 begin
                   gotoxy(18,1);
                   read(num2[ind]);
                   if num1[ind]=num2[ind] then
                   begin
                     textcolor(9);
                     gotoxy(22,1);
                     write('CORRETO!');
                   end
                   else
                   begin
                     textcolor(12);
                     gotoxy(30,12);
                     write('QUE PENA, VOCÊ ERROU!');
                     delay(1000);
                     clrscr;
                     game_over;
                     delay(5000);
                     goto en;
                   end;
                end;
               gotoxy(17,12);
               writeln('Parabéns! Sua missão foi completada com sucesso');
               delay(3000);
               gkf3:
               textcolor(10);
               textbackground(white);
               clrscr;
               gotoxy(36,12);
               writeln('LEVEL 3');
               delay(2000);
               gotoxy(1,23);
               writeln('Pressione qualquer tecla para começar');
               readkey;
               clrscr;
               for ind:=21 to 30 do
                 num1[ind]:=random(qtd);
               for ind:=1 to 30 do
               begin
                 write(num1[ind]:4);
                 delay(2000);
               end;
               clrscr;
               writeln('Números em ordem: ');
               for ind:=1 to 30 do
                 begin
                   gotoxy(18,1);
                   read(num2[ind]);
                   if num1[ind]=num2[ind] then
                   begin
                     textcolor(9);
                     gotoxy(22,1);
                     write('CORRETO!');
                   end
                   else
                   begin
                     textcolor(12);
                     gotoxy(30,12);
                     write('QUE PENA, VOCÊ ERROU!');
                     delay(1000);
                     clrscr;
                     game_over;
                     delay(5000);
                     goto en;
                   end;
                end;
               gotoxy(17,12);
               writeln('Parabéns! Sua missão foi completada com sucesso');
               delay(3000);
               gkf4:
               textcolor(10);
               textbackground(white);
               clrscr;
               gotoxy(36,12);
               writeln('LEVEL 4');
               delay(2000);
               gotoxy(1,23);
               writeln('Pressione qualquer tecla para começar');
               readkey;
               clrscr;
               for ind:=31 to 40 do
                 num1[ind]:=random(qtd);
               for ind:=1 to 40 do
               begin
                 write(num1[ind]:4);
                 delay(2000);
               end;
               clrscr;
               writeln('Números em ordem: ');
               for ind:=1 to 40 do
                 begin
                   gotoxy(18,1);
                   read(num2[ind]);
                   if num1[ind]=num2[ind] then
                   begin
                     textcolor(9);
                     gotoxy(22,1);
                     write('CORRETO!');
                   end
                   else
                   begin
                     textcolor(12);
                     gotoxy(30,12);
                     write('QUE PENA, VOCÊ ERROU!');
                     delay(1000);
                     clrscr;
                     game_over;
                     delay(5000);
                     goto en;
                   end;
                end;
               gotoxy(17,12);
               writeln('Parabéns! Sua missão foi completada com sucesso');
               delay(3000);
               gkf5:
               textcolor(10);
               textbackground(white);
               clrscr;
               gotoxy(36,12);
               writeln('LEVEL 5');
               delay(2000);
               gotoxy(1,23);
               writeln('Pressione qualquer tecla para começar');
               readkey;
               clrscr;
               for ind:=41 to 50 do
                 num1[ind]:=random(qtd);
               for ind:=1 to 50 do
               begin
                 write(num1[ind]:4);
                 delay(2000);
               end;
               clrscr;
               writeln('Números em ordem: ');
               for ind:=1 to 50 do
                 begin
                   gotoxy(18,1);
                   read(num2[ind]);
                   if num1[ind]=num2[ind] then
                   begin
                     textcolor(9);
                     gotoxy(22,1);
                     write('CORRETO!');
                   end
                   else
                   begin
                     textcolor(12);
                     gotoxy(30,12);
                     write('QUE PENA, VOCÊ ERROU!');
                     delay(1000);
                     clrscr;
                     game_over;
                     delay(5000);
                     goto en;
                   end;
                end;
               gotoxy(17,12);
               writeln('Parabéns! Sua missão foi completada com sucesso');
               delay(3000);
               gkf6:
               textcolor(10);
               textbackground(white);
               clrscr;
               gotoxy(36,12);
               writeln('LEVEL 6');
               delay(2000);
               gotoxy(1,23);
               writeln('Pressione qualquer tecla para começar');
               readkey;
               clrscr;
               for ind:=51 to 60 do
                 num1[ind]:=random(qtd);
               for ind:=1 to 60 do
               begin
                 write(num1[ind]:4);
                 delay(2000);
               end;
               clrscr;
               writeln('Números em ordem: ');
               for ind:=1 to 60 do
                 begin
                   gotoxy(18,1);
                   read(num2[ind]);
                   if num1[ind]=num2[ind] then
                   begin
                     textcolor(9);
                     gotoxy(22,1);
                     write('CORRETO!');
                   end
                   else
                   begin
                     textcolor(12);
                     gotoxy(30,12);
                     write('QUE PENA, VOCÊ ERROU!');
                     delay(1000);
                     clrscr;
                     game_over;
                     delay(5000);
                     goto en;
                   end;
                end;
               gotoxy(17,12);
               writeln('Parabéns! Sua missão foi completada com sucesso');
               delay(3000);
               gkf7:
               textcolor(10);
               textbackground(white);
               clrscr;
               gotoxy(36,12);
               writeln('LEVEL 7');
               delay(2000);
               gotoxy(1,23);
               writeln('Pressione qualquer tecla para começar');
               readkey;
               clrscr;
               for ind:=61 to 70 do
                 num1[ind]:=random(qtd);
               for ind:=1 to 70 do
               begin
                 write(num1[ind]:4);
                 delay(2000);
               end;
               clrscr;
               writeln('Números em ordem: ');
               for ind:=1 to 70 do
                 begin
                   gotoxy(18,1);
                   read(num2[ind]);
                   if num1[ind]=num2[ind] then
                   begin
                     textcolor(9);
                     gotoxy(22,1);
                     write('CORRETO!');
                   end
                   else
                   begin
                     textcolor(12);
                     gotoxy(30,12);
                     write('QUE PENA, VOCÊ ERROU!');
                     delay(1000);
                     clrscr;
                     game_over;
                     delay(5000);
                     goto en;
                   end;
                end;
               gotoxy(17,12);
               writeln('Parabéns! Sua missão foi completada com sucesso');
               delay(3000);
               gkf8:
               textcolor(10);
               textbackground(white);
               clrscr;
               gotoxy(36,12);
               writeln('LEVEL 8');
               delay(2000);
               gotoxy(1,23);
               writeln('Pressione qualquer tecla para começar');
               readkey;
               clrscr;
               for ind:=71 to 80 do
                 num1[ind]:=random(qtd);
               for ind:=1 to 80 do
               begin
                 write(num1[ind]:4);
                 delay(2000);
               end;
               clrscr;
               writeln('Números em ordem: ');
               for ind:=1 to 80 do
                 begin
                   gotoxy(18,1);
                   read(num2[ind]);
                   if num1[ind]=num2[ind] then
                   begin
                     textcolor(9);
                     gotoxy(22,1);
                     write('CORRETO!');
                   end
                   else
                   begin
                     textcolor(12);
                     gotoxy(30,12);
                     write('QUE PENA, VOCÊ ERROU!');
                     delay(1000);
                     clrscr;
                     game_over;
                     delay(5000);
                     goto en;
                   end;
                end;
               gotoxy(17,12);
               writeln('Parabéns! Sua missão foi completada com sucesso');
               delay(3000);
               gkf9:
               textcolor(10);
               textbackground(white);
               clrscr;
               gotoxy(36,12);
               writeln('LEVEL 9');
               delay(2000);
               gotoxy(1,23);
               writeln('Pressione qualquer tecla para começar');
               readkey;
               clrscr;
               for ind:=81 to 90 do
                 num1[ind]:=random(qtd);
               for ind:=1 to 90 do
               begin
                 write(num1[ind]:4);
                 delay(2000);
               end;
               clrscr;
               writeln('Números em ordem: ');
               for ind:=1 to 90 do
                 begin
                   gotoxy(18,1);
                   read(num2[ind]);
                   if num1[ind]=num2[ind] then
                   begin
                     textcolor(9);
                     gotoxy(22,1);
                     write('CORRETO!');
                   end
                   else
                   begin
                     textcolor(12);
                     gotoxy(30,12);
                     write('QUE PENA, VOCÊ ERROU!');
                     delay(1000);
                     clrscr;
                     game_over;
                     delay(5000);
                     goto en;
                   end;
                end;
               gotoxy(17,12);
               writeln('Parabéns! Sua missão foi completada com sucesso');
               delay(3000);
               gkf10:
               textcolor(10);
               textbackground(white);
               clrscr;
               gotoxy(32,12);
               writeln('LEVEL 10(FINAL)');
               delay(2000);
               gotoxy(1,23);
               writeln('Pressione qualquer tecla para começar');
               readkey;
               clrscr;
               for ind:=91 to 100 do
                 num1[ind]:=random(qtd);
               for ind:=1 to 100 do
               begin
                 write(num1[ind]:4);
                 delay(2000);
               end;
               clrscr;
               writeln('Números em ordem: ');
               for ind:=1 to 100 do
                 begin
                   gotoxy(18,1);
                   read(num2[ind]);
                   if num1[ind]=num2[ind] then
                   begin
                     textcolor(9);
                     gotoxy(22,1);
                     write('CORRETO!');
                   end
                   else
                   begin
                     textcolor(12);
                     gotoxy(30,12);
                     write('QUE PENA, VOCÊ ERROU!');
                     delay(1000);
                     clrscr;
                     game_over;
                     delay(5000);
                     goto en;
                   end;
                 end;
               clrscr;
               writeln('PARABÉNS!');
               for ind:=1 to 15 do
               begin
                 gotoxy(random(80),random(24));
                 textcolor(random(15));
                 write(random(10));
                 delay(75);
               end;
               for ind:=1 to 15 do
               begin
                 gotoxy(random(80),random(24));
                 textcolor(random(15));
                 write(random(10));
                 delay(75);
               end;
               for ind:=1 to 15 do
               begin
                 gotoxy(random(80),random(24));
                 textcolor(random(15));
                 write(random(10));
                 delay(75);
               end;
               for ind:=1 to 15 do
               begin
                 gotoxy(random(80),random(24));
                 textcolor(random(15));
                 write(random(10));
                 delay(75);
               end;
               clrscr;
               textcolor(white);
               writeln('Inacreditável! você tem a memória de um deus!');
               delay(2000);
               writeln('Agora você aprenderá como acessar o cheating mode!');
               delay(2000);
               writeln('No menu principal do jogo, aperte a tecla 9 e depois enter!');
               delay(2000);
               writeln('Nesse modo, você poderá navegar por todo o jogo!');
               delay(2000);
               writeln('Em qualquer fase, dificuldade ou modo!');
               readkey;
               goto en;
             end;
   end;
  end;
end;
end;
  2:
  begin
    clrscr;
    writeln('Bem vindo ao Memory Game');
    delay(2000);
    writeln('Este jogo possui 2 modos diferentes');
    delay(2000);
    writeln('E 6 dificuldades para cada um desses modos');
    delay(2000);
    writeln('O jogo funciona da seguinte maneira,');
    delay(2000);
    writeln('Inicialmente aparecem números na tela, e você tem que decorá-los');
    delay(2000);
    writeln('Logo após, você terá que digitar os números na ordem correta');
    delay(2000);
    writeln('Se você errar algum número, perderá tudo e terá que começar tudo de novo');
    delay(2000);
    writeln('Se você acertar todos os números, avançará para a próxima fase');
    delay(2000);
    writeln('A medida que você avança de fase, as coisas ficam mais difíceis');
    delay(2000);
    writeln('O jogo, independente do modo ou da dificuldade, contém 10 fases');
    delay(2000);
    writeln('Os dois modos de jogo são: Changing mode e keeping mode');
    delay(2000);
    writeln('No changing mode, a cada fase, números diferentes são sorteados');
    delay(2000);
    writeln('No keeping mode, os números sorteados na fase anterior ainda são mantidos');
    delay(2000);
    writeln('E são sorteados mais alguns números novos para se juntar pra eles');
    delay(2000);
    writeln('Para explicar melhor, vamos ver um exemplo de cada modo');
    delay(2000);
    writeln('Changing mode: fase1:8 5 6  fase2:4 2 1 2');
    delay(2000);
    writeln('Keeping mode: fase1:8 5 6  fase2:8 5 6 2');
    delay(2000);
    writeln('Pronto, agora você já está pronto pra jogar!');
    delay(2000);
    writeln('Boa sorte, ou melhor, MUITA ATENÇÂO!');
    readkey;
    goto menu;
  end;
  3:
  begin
    clrscr;
    gotoxy(27,25);
    writeln('Programação: Charles Fucker');
    gotoxy(29,27);
    writeln('Idéias: Charles Fucker');
    gotoxy(29,29);
    writeln('Enredo: Charles Fucker');
    gotoxy(29,31);
    writeln('Direção: Charles Fucker');
    gotoxy(29,33);
    writeln('Design: Charles Fucker');
    gotoxy(18,47);
    writeln('All Rights reserved to "Kansus Corporation"');
    gotoxy(1,1);
    gotoxy(1,24);
    for ind:=1 to 35 do
    begin
    gotoxy(1,wherey+1);
    delay(600);
    end;
    delay(4000);
    goto menu;
  end;
  4:
  begin
    opt:
    clrscr;
    gotoxy(35,7);
    write('1-Range:',qtd);
    gotoxy(36,9);
    write('2-Voltar');
    read(slctopt);
    if slctopt=1 then
    begin
      clrscr;
      gotoxy(26,12);
      write('Digite o novo valor de range:');
      readln(qtd);
      if (qtd<10) or (qtd>100) then
      begin
        gotoxy(19,15);
        write('O valor de range deve estar entre 10 e 100');
        qtd:=10;
        readkey;
      end;
      goto opt;
    end;
    if slctopt=2 then
    goto menu;
  end;
  9:
  begin
    clrscr;
    gotoxy(32,11);
    writeln('1-Changing mode');
    gotoxy(32,13);
    writeln('2-Keeping mode');
    readln(slctmode);
    clrscr;
    case slctmode of
         1 : begin
               gotoxy(29,1);
               writeln('SELECIONE A DIFICULDADE');
               gotoxy(35,8);
               write('1-Very Easy');
               gotoxy(37,10);
               write('2-Easy');
               gotoxy(36,12);
               write('3-Normal');
               gotoxy(37,14);
               write('4-Hard');
               gotoxy(35,16);
               write('5-Very Hard');
               gotoxy(35,18);
               write('6-***GOD***');
               readln(slctdif);
               clrscr;
               case slctdif of
                    1 : begin
                          gotoxy(32,1);
                          writeln('SELECIONE A FASE');
                          gotoxy(36,3);
                          write('1-FASE 1');
                          gotoxy(36,5);
                          write('2-FASE 2');
                          gotoxy(36,7);
                          write('3-FASE 3');
                          gotoxy(36,9);
                          write('4-FASE 4');
                          gotoxy(36,11);
                          write('5-FASE 5');
                          gotoxy(36,13);
                          write('6-FASE 6');
                          gotoxy(36,15);
                          write('7-FASE 7');
                          gotoxy(36,17);
                          write('8-FASE 8');
                          gotoxy(36,19);
                          write('9-FASE 9');
                          gotoxy(35,21);
                          write('10-FASE 10');
                          readln(slctlvl);
                          clrscr;
                          if slctlvl=1 then
                          goto vecf1;
                          if slctlvl=2 then
                          goto vecf2;
                          if slctlvl=3 then
                          goto vecf3;
                          if slctlvl=4 then
                          goto vecf4;
                          if slctlvl=5 then
                          goto vecf5;
                          if slctlvl=6 then
                          goto vecf6;
                          if slctlvl=7 then
                          goto vecf7;
                          if slctlvl=8 then
                          goto vecf8;
                          if slctlvl=9 then
                          goto vecf9;
                          if slctlvl=10 then
                          goto vecf10;
                        end;
                    2 : begin
                          gotoxy(32,1);
                          writeln('SELECIONE A FASE');
                          gotoxy(36,3);
                          write('1-FASE 1');
                          gotoxy(36,5);
                          write('2-FASE 2');
                          gotoxy(36,7);
                          write('3-FASE 3');
                          gotoxy(36,9);
                          write('4-FASE 4');
                          gotoxy(36,11);
                          write('5-FASE 5');
                          gotoxy(36,13);
                          write('6-FASE 6');
                          gotoxy(36,15);
                          write('7-FASE 7');
                          gotoxy(36,17);
                          write('8-FASE 8');
                          gotoxy(36,19);
                          write('9-FASE 9');
                          gotoxy(35,21);
                          write('10-FASE 10');
                          readln(slctlvl);
                          clrscr;
                          if slctlvl=1 then
                          goto ecf1;
                          if slctlvl=2 then
                          goto ecf2;
                          if slctlvl=3 then
                          goto ecf3;
                          if slctlvl=4 then
                          goto ecf4;
                          if slctlvl=5 then
                          goto ecf5;
                          if slctlvl=6 then
                          goto ecf6;
                          if slctlvl=7 then
                          goto ecf7;
                          if slctlvl=8 then
                          goto ecf8;
                          if slctlvl=9 then
                          goto ecf9;
                          if slctlvl=10 then
                          goto ecf10;
                        end;
                    3 : begin
                          gotoxy(32,1);
                          writeln('SELECIONE A FASE');
                          gotoxy(36,3);
                          write('1-FASE 1');
                          gotoxy(36,5);
                          write('2-FASE 2');
                          gotoxy(36,7);
                          write('3-FASE 3');
                          gotoxy(36,9);
                          write('4-FASE 4');
                          gotoxy(36,11);
                          write('5-FASE 5');
                          gotoxy(36,13);
                          write('6-FASE 6');
                          gotoxy(36,15);
                          write('7-FASE 7');
                          gotoxy(36,17);
                          write('8-FASE 8');
                          gotoxy(36,19);
                          write('9-FASE 9');
                          gotoxy(35,21);
                          write('10-FASE 10');
                          readln(slctlvl);
                          clrscr;
                          if slctlvl=1 then
                          goto ncf1;
                          if slctlvl=2 then
                          goto ncf2;
                          if slctlvl=3 then
                          goto ncf3;
                          if slctlvl=4 then
                          goto ncf4;
                          if slctlvl=5 then
                          goto ncf5;
                          if slctlvl=6 then
                          goto ncf6;
                          if slctlvl=7 then
                          goto ncf7;
                          if slctlvl=8 then
                          goto ncf8;
                          if slctlvl=9 then
                          goto ncf9;
                          if slctlvl=10 then
                          goto ncf10;
                        end;
                    4 : begin
                          gotoxy(32,1);
                          writeln('SELECIONE A FASE');
                          gotoxy(36,3);
                          write('1-FASE 1');
                          gotoxy(36,5);
                          write('2-FASE 2');
                          gotoxy(36,7);
                          write('3-FASE 3');
                          gotoxy(36,9);
                          write('4-FASE 4');
                          gotoxy(36,11);
                          write('5-FASE 5');
                          gotoxy(36,13);
                          write('6-FASE 6');
                          gotoxy(36,15);
                          write('7-FASE 7');
                          gotoxy(36,17);
                          write('8-FASE 8');
                          gotoxy(36,19);
                          write('9-FASE 9');
                          gotoxy(35,21);
                          write('10-FASE 10');
                          readln(slctlvl);
                          clrscr;
                          if slctlvl=1 then
                          goto hcf1;
                          if slctlvl=2 then
                          goto hcf2;
                          if slctlvl=3 then
                          goto hcf3;
                          if slctlvl=4 then
                          goto hcf4;
                          if slctlvl=5 then
                          goto hcf5;
                          if slctlvl=6 then
                          goto hcf6;
                          if slctlvl=7 then
                          goto hcf7;
                          if slctlvl=8 then
                          goto hcf8;
                          if slctlvl=9 then
                          goto hcf9;
                          if slctlvl=10 then
                          goto hcf10;
                        end;
                    5 : begin
                          gotoxy(32,1);
                          writeln('SELECIONE A FASE');
                          gotoxy(36,3);
                          write('1-FASE 1');
                          gotoxy(36,5);
                          write('2-FASE 2');
                          gotoxy(36,7);
                          write('3-FASE 3');
                          gotoxy(36,9);
                          write('4-FASE 4');
                          gotoxy(36,11);
                          write('5-FASE 5');
                          gotoxy(36,13);
                          write('6-FASE 6');
                          gotoxy(36,15);
                          write('7-FASE 7');
                          gotoxy(36,17);
                          write('8-FASE 8');
                          gotoxy(36,19);
                          write('9-FASE 9');
                          gotoxy(35,21);
                          write('10-FASE 10');
                          readln(slctlvl);
                          clrscr;
                          if slctlvl=1 then
                          goto vhcf1;
                          if slctlvl=2 then
                          goto vhcf2;
                          if slctlvl=3 then
                          goto vhcf3;
                          if slctlvl=4 then
                          goto vhcf4;
                          if slctlvl=5 then
                          goto vhcf5;
                          if slctlvl=6 then
                          goto vhcf6;
                          if slctlvl=7 then
                          goto vhcf7;
                          if slctlvl=8 then
                          goto vhcf8;
                          if slctlvl=9 then
                          goto vhcf9;
                          if slctlvl=10 then
                          goto vhcf10;
                        end;
                    6 : begin
                          gotoxy(32,1);
                          writeln('SELECIONE A FASE');
                          gotoxy(36,3);
                          write('1-FASE 1');
                          gotoxy(36,5);
                          write('2-FASE 2');
                          gotoxy(36,7);
                          write('3-FASE 3');
                          gotoxy(36,9);
                          write('4-FASE 4');
                          gotoxy(36,11);
                          write('5-FASE 5');
                          gotoxy(36,13);
                          write('6-FASE 6');
                          gotoxy(36,15);
                          write('7-FASE 7');
                          gotoxy(36,17);
                          write('8-FASE 8');
                          gotoxy(36,19);
                          write('9-FASE 9');
                          gotoxy(35,21);
                          write('10-FASE 10');
                          readln(slctlvl);
                          clrscr;
                          if slctlvl=1 then
                          goto gcf1;
                          if slctlvl=2 then
                          goto gcf2;
                          if slctlvl=3 then
                          goto gcf3;
                          if slctlvl=4 then
                          goto gcf4;
                          if slctlvl=5 then
                          goto gcf5;
                          if slctlvl=6 then
                          goto gcf6;
                          if slctlvl=7 then
                          goto gcf7;
                          if slctlvl=8 then
                          goto gcf8;
                          if slctlvl=9 then
                          goto gcf9;
                          if slctlvl=10 then
                          goto gcf10;
                        end;
             end;
             end;
         2 : begin
               gotoxy(29,1);
               writeln('SELECIONE A DIFICULDADE');
               gotoxy(35,8);
               write('1-Very Easy');
               gotoxy(37,10);
               write('2-Easy');
               gotoxy(36,12);
               write('3-Normal');
               gotoxy(37,14);
               write('4-Hard');
               gotoxy(35,16);
               write('5-Very Hard');
               gotoxy(35,18);
               write('6-***GOD***');
               readln(slctdif);
               clrscr;
               case slctdif of
                    1 : begin
                          gotoxy(32,1);
                          writeln('SELECIONE A FASE');
                          gotoxy(36,3);
                          write('1-FASE 1');
                          gotoxy(36,5);
                          write('2-FASE 2');
                          gotoxy(36,7);
                          write('3-FASE 3');
                          gotoxy(36,9);
                          write('4-FASE 4');
                          gotoxy(36,11);
                          write('5-FASE 5');
                          gotoxy(36,13);
                          write('6-FASE 6');
                          gotoxy(36,15);
                          write('7-FASE 7');
                          gotoxy(36,17);
                          write('8-FASE 8');
                          gotoxy(36,19);
                          write('9-FASE 9');
                          gotoxy(35,21);
                          write('10-FASE 10');
                          readln(slctlvl);
                          clrscr;
                          if slctlvl=1 then
                          goto vekf1;
                          if slctlvl=2 then
                          goto vekf2;
                          if slctlvl=3 then
                          goto vekf3;
                          if slctlvl=4 then
                          goto vekf4;
                          if slctlvl=5 then
                          goto vekf5;
                          if slctlvl=6 then
                          goto vekf6;
                          if slctlvl=7 then
                          goto vekf7;
                          if slctlvl=8 then
                          goto vekf8;
                          if slctlvl=9 then
                          goto vekf9;
                          if slctlvl=10 then
                          goto vekf10;
                        end;
                    2 : begin
                          gotoxy(32,1);
                          writeln('SELECIONE A FASE');
                          gotoxy(36,3);
                          write('1-FASE 1');
                          gotoxy(36,5);
                          write('2-FASE 2');
                          gotoxy(36,7);
                          write('3-FASE 3');
                          gotoxy(36,9);
                          write('4-FASE 4');
                          gotoxy(36,11);
                          write('5-FASE 5');
                          gotoxy(36,13);
                          write('6-FASE 6');
                          gotoxy(36,15);
                          write('7-FASE 7');
                          gotoxy(36,17);
                          write('8-FASE 8');
                          gotoxy(36,19);
                          write('9-FASE 9');
                          gotoxy(35,21);
                          write('10-FASE 10');
                          readln(slctlvl);
                          clrscr;
                          if slctlvl=1 then
                          goto ekf1;
                          if slctlvl=2 then
                          goto ekf2;
                          if slctlvl=3 then
                          goto ekf3;
                          if slctlvl=4 then
                          goto ekf4;
                          if slctlvl=5 then
                          goto ekf5;
                          if slctlvl=6 then
                          goto ekf6;
                          if slctlvl=7 then
                          goto ekf7;
                          if slctlvl=8 then
                          goto ekf8;
                          if slctlvl=9 then
                          goto ekf9;
                          if slctlvl=10 then
                          goto ekf10;
                        end;
                    3 : begin
                          gotoxy(32,1);
                          writeln('SELECIONE A FASE');
                          gotoxy(36,3);
                          write('1-FASE 1');
                          gotoxy(36,5);
                          write('2-FASE 2');
                          gotoxy(36,7);
                          write('3-FASE 3');
                          gotoxy(36,9);
                          write('4-FASE 4');
                          gotoxy(36,11);
                          write('5-FASE 5');
                          gotoxy(36,13);
                          write('6-FASE 6');
                          gotoxy(36,15);
                          write('7-FASE 7');
                          gotoxy(36,17);
                          write('8-FASE 8');
                          gotoxy(36,19);
                          write('9-FASE 9');
                          gotoxy(35,21);
                          write('10-FASE 10');
                          readln(slctlvl);
                          clrscr;
                          if slctlvl=1 then
                          goto nkf1;
                          if slctlvl=2 then
                          goto nkf2;
                          if slctlvl=3 then
                          goto nkf3;
                          if slctlvl=4 then
                          goto nkf4;
                          if slctlvl=5 then
                          goto nkf5;
                          if slctlvl=6 then
                          goto nkf6;
                          if slctlvl=7 then
                          goto nkf7;
                          if slctlvl=8 then
                          goto nkf8;
                          if slctlvl=9 then
                          goto nkf9;
                          if slctlvl=10 then
                          goto nkf10;
                        end;
                    4 : begin
                          gotoxy(32,1);
                          writeln('SELECIONE A FASE');
                          gotoxy(36,3);
                          write('1-FASE 1');
                          gotoxy(36,5);
                          write('2-FASE 2');
                          gotoxy(36,7);
                          write('3-FASE 3');
                          gotoxy(36,9);
                          write('4-FASE 4');
                          gotoxy(36,11);
                          write('5-FASE 5');
                          gotoxy(36,13);
                          write('6-FASE 6');
                          gotoxy(36,15);
                          write('7-FASE 7');
                          gotoxy(36,17);
                          write('8-FASE 8');
                          gotoxy(36,19);
                          write('9-FASE 9');
                          gotoxy(35,21);
                          write('10-FASE 10');
                          readln(slctlvl);
                          clrscr;
                          if slctlvl=1 then
                          goto hkf1;
                          if slctlvl=2 then
                          goto hkf2;
                          if slctlvl=3 then
                          goto hkf3;
                          if slctlvl=4 then
                          goto hkf4;
                          if slctlvl=5 then
                          goto hkf5;
                          if slctlvl=6 then
                          goto hkf6;
                          if slctlvl=7 then
                          goto hkf7;
                          if slctlvl=8 then
                          goto hkf8;
                          if slctlvl=9 then
                          goto hkf9;
                          if slctlvl=10 then
                          goto hkf10;
                        end;
                    5 : begin
                          gotoxy(32,1);
                          writeln('SELECIONE A FASE');
                          gotoxy(36,3);
                          write('1-FASE 1');
                          gotoxy(36,5);
                          write('2-FASE 2');
                          gotoxy(36,7);
                          write('3-FASE 3');
                          gotoxy(36,9);
                          write('4-FASE 4');
                          gotoxy(36,11);
                          write('5-FASE 5');
                          gotoxy(36,13);
                          write('6-FASE 6');
                          gotoxy(36,15);
                          write('7-FASE 7');
                          gotoxy(36,17);
                          write('8-FASE 8');
                          gotoxy(36,19);
                          write('9-FASE 9');
                          gotoxy(35,21);
                          write('10-FASE 10');
                          readln(slctlvl);
                          clrscr;
                          if slctlvl=1 then
                          goto vhkf1;
                          if slctlvl=2 then
                          goto vhkf2;
                          if slctlvl=3 then
                          goto vhkf3;
                          if slctlvl=4 then
                          goto vhkf4;
                          if slctlvl=5 then
                          goto vhkf5;
                          if slctlvl=6 then
                          goto vhkf6;
                          if slctlvl=7 then
                          goto vhkf7;
                          if slctlvl=8 then
                          goto vhkf8;
                          if slctlvl=9 then
                          goto vhkf9;
                          if slctlvl=10 then
                          goto vhkf10;
                        end;
                    6 : begin
                          gotoxy(32,1);
                          writeln('SELECIONE A FASE');
                          gotoxy(36,3);
                          write('1-FASE 1');
                          gotoxy(36,5);
                          write('2-FASE 2');
                          gotoxy(36,7);
                          write('3-FASE 3');
                          gotoxy(36,9);
                          write('4-FASE 4');
                          gotoxy(36,11);
                          write('5-FASE 5');
                          gotoxy(36,13);
                          write('6-FASE 6');
                          gotoxy(36,15);
                          write('7-FASE 7');
                          gotoxy(36,17);
                          write('8-FASE 8');
                          gotoxy(36,19);
                          write('9-FASE 9');
                          gotoxy(35,21);
                          write('10-FASE 10');
                          readln(slctlvl);
                          clrscr;
                          if slctlvl=1 then
                          goto gkf1;
                          if slctlvl=2 then
                          goto gkf2;
                          if slctlvl=3 then
                          goto gkf3;
                          if slctlvl=4 then
                          goto gkf4;
                          if slctlvl=5 then
                          goto gkf5;
                          if slctlvl=6 then
                          goto gkf6;
                          if slctlvl=7 then
                          goto gkf7;
                          if slctlvl=8 then
                          goto gkf8;
                          if slctlvl=9 then
                          goto gkf9;
                          if slctlvl=10 then
                          goto gkf10;
                        end;
             end;

  end;
  end;
  end;
end;

end.
