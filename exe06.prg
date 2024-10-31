clear

nNumero1 := 0
nNumero2 := 0
nNumero3 := 0
cMascInt := '99'

nMedia := (nNumero1 + nNumero2 + nNumero3) / 3

@ 00,01 to 04,67 double
@ 05,01 to 07,67 double

@ 01,03 say "Digite O Primeiro numero: " //+ AllTrim( Str(nNumero1, 5, 2)) + 'teste 01'
@ 02,03 say "Digite O Segundo numero : " //+ AllTrim( Str(nNumero2, 5, 2)) + 'teste 02' 
@ 03,03 say "Digite O Terceiro numero: " //+ AllTrim( Str(nNumero3, 5, 2)) + 'teste 03' 

@ 01,30 get nNumero1 picture (cMascInt)
@ 02,30 get nNumero1 picture (cMascInt)
@ 03,30 get nNumero1 picture (cMascInt)
read

@ 06,03 say 'A media entre os numeros e: ' + AllTrim( Str( nMedia ) ) + ' !!!' 
 
Inkey(0)
clear

