clear

set Date to british
set century on //colocar os 4 numero referente ao ano vigente ou data especifica

cLetra   := Space(1) //string para setar o espaço a ser preenchida
cNome    := Space(25)
nInt     := 00
nDecimal := 0.0
dData    := CToD('')

@ 00,10 say 'Palavras Avulsas'
@ 02,00 to 08,60 double
@ 03,01 say 'Digite uma Letra do seu nome   :' 
@ 04,01 say 'Digite um nome completo        :'
@ 05,01 say 'Digite um numero favorito      :'
@ 06,01 say 'Digite um numero DECIMAL       :'
@ 07,01 say 'Digite a data do seu nascimento:'

@ 03,33 get cLetra picture      ('')
@ 04,33 get cNome picture       ('@!')  Valid !Empty(cNome)
@ 05,33 get nInt picture        (nInt, '99')
@ 06,33 get nDecimal picture    ('@E 9.9')
@ 07,33 get dData picture       ('')
read

@ 09,01 say 'A letra e ' + AllTrim(cLetra) 
@ 10,01 say 'Referente ao seu nome ' + AllTrim(cNome) 
@ 11,01 say 'Com o numero escolhido ' + AllTrim(str(nInt)) 
@ 12,01 say 'e uma dizima com valor em decimal ' + Transform(nDecimal, '9.9')
@ 13,01 say 'Podemos mostrar a data do usuario ' + DToC(dData) + '!!!'

Inkey(0)
clear


