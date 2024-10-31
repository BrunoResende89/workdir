/*'n' := preto 
'w' := branco 
'b' := azul
'g' := verde 
'r' := vermelho
'gr':= amarelo 
*/

set color to "w/g" // r(cor da letra)/b(cor do fundo da linha ou tela)
clear

cColor	:= 'b/gr'
cPicture	:= '999.99'



@ 00,00 to 20,20 double
@ 01,01 say 'OI' color 'n/b'
@ 02,01 say 'OI' color 'r/gr'

set color to 'n/w'

@ 05,05 clear to 08,08


