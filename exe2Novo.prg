Clear 

cNome := Space(16)
cMaskIdade := '999'
cMaskPeso := '@E 999,999'
nIdade := 0
nPeso :=  0.0

@ 00,00 to 5,25 double
@ 02,01 to 3,24
@ 04,01 to 2,24 

@ 01,01 say 'Nome: '
@ 03,01 say 'Idade: '
@ 05,01 say 'Peso: '

@ 01,10 get cNome  picture '@!'       Validad Empty(cNome)
@ 03,10 get nIdade picture cMaskIdade Validad nIdade >= 0 
@ 05,10 get nPeso  picture cMaskPeso  Validad nPeso >2
read 

Inkey(0)
Clear
