clear

nNumero1 := 0
nNumero2 := 0
nNumero3 := 0

@ 00,00 to 30,45 double

@ 02,02 say 'Digite o primeiro numero:'
@ 03,03 say 'Digite o segundo  numero:'
@ 04,04 say 'Digite o terceiro numero:'

@ 02,26 get nNumero1 picture (nNumero1, '99')
@ 03,26 get nNumero2 picture (nNumero2, '99')
@ 04,26 get nNumero3 picture (nNumero3, '99')
read 

if    nNumero1 > nNumero2 .and. nNumero1 > nNumero3
      @ 05,05 say ' O numero e ' + (str(nNumero1))

elseif   nNumero2 > nNumero3 .and. nNumero2 > nNumero1
         @ 05,05 say 'O numero e ' + (str(nNumer2))
else  
      @ 05,05 say 'O numero e ' + (str(nNumero3))
end if

inkey(0)
clear 