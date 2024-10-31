set Date to british
set epoch to 1940

clear

cNome := space(20)
nIdade := 0

@ 00,00 to 25,60 double
@ 02,01 to 02,59 double
@ 04,04 to 14,17 double
@ 06,05 to 06,16 double
@ 08,05 to 08,16 double
@ 10,05 to 10,16 double
@ 12,05 to 12,16 double

@ 01,20 say 'PROVA DE NATACAO'
@ 03,10 say 'CATEGORIA A SER DISPUTADA'
@ 05,05 say ' Senior '
@ 07,05 say ' Juvenil B '
@ 09,05 say ' Juvenil A '
@ 11,05 say ' Infantil B '
@ 13,05 say ' Infantil A '

@ 16,01 say 'Digite o nome :'
@ 17,01 say 'Digite a idade:'

@ 16,16 get cNome picture ('@!') valid !empty(cNome)
@ 17,16 get nIdade picture (nIdade, '99')
read

@ 19,01 say 'O nadador ' + (cNome)
@ 20,01 say 'Conforme a idade informada vai disputar a Categoria: '

if  nIdade > 18
    @ 21,01 say 'Senior'

elseif  nIdade >= 14 .and. nIdade <= 17
        @ 21,01 say 'juvenil B'
    
elseif  nIdade >= 11 .and. nIdade <= 13
        @ 21,01 say 'juvenil A'

elseif  nIdade >= 8 .and. nIdade <= 10
        @ 21,01 say 'infantil B'

elseif  nIdade >= 5 .and. nIdade <= 7
        @ 21,01 say 'infantil A'

else
        @ 21,01 say 'Baby'

endif

inkey(0)
clear