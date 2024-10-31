clear 

nValidade   := 21
nIdade      := 0

@ 03,01 say 'Digite a sua idade:'
@ 03,20 get nIdade picture (nIdade)
read

if    nIdade < nValidade
      @ 05,01 say 'Pessoa menor idade'

else  
      @ 06,01 say 'Pessoa maior idade'
      
endif

inkey(0)
clear