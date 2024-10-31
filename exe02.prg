/*clear 

cNome     :=  Space(10)
cMaskIdade:= '999'
cMaskPeso := '@E 999.999'
nIdade    :=  0
nPeso     :=  0.0

@ 00,00 to 07,25 double 
@ 03,01 to 03,24
@ 05,01 to 05,24
//@ 07,01 to 07,24

@ 02,01 say 'NOME : ' 
@ 04,01 say 'IDADE: '
@ 06,01 say 'PESO : '

@ 02,10 get cNome  picture '@!'       Valid Empty(cNome)
@ 04,10 get nIdade picture cMaskidade Valid nIdade >= 0
@ 06,10 get nPeso  picture cMaskPeso  Valid nPeso  > 2
read 

Inkey(0)
clear*/
Clear 

cNome := Space(16)
cMaskIdade := '999'
cMaskPeso := '@E 999,999'
nIdade := 0
nPeso :=  0.0

@ 00,00 to 5,25 double
@ 02,01 to 3,24
@ 04,01 to 2,24 

@ 01,01 say 'Nome : '
@ 03,01 say 'Idade: '
@ 05,01 say 'Peso : '

@ 01,10 get cNome  picture '@!'       Validad Empty(cNome)
@ 03,10 get nIdade picture cMaskIdade Validad nIdade >= 0 
@ 05,10 get nPeso  picture cMaskPeso  Validad nPeso >2
read 

Inkey(0)
Clear

