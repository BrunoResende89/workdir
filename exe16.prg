Clear

cNome       := space(20)
nContador   := 0
nRepeticao  := 0
nLinha      := 4

@ 00,10 say 'Nome Escolhido'
@ 02,01 say 'Digite o nome:'
@ 02,15 get cNome picture ('@!') valid !empty(cNome)
@ 03,01 say 'Quantidade ser repetida:'
@ 03,25 get nRepeticao picture (nRepeticao, '99')
read

do while    nContador  < nRepeticao
        @ nLinha++,10 say cNome
        nContador ++

        if nRepeticao > 30
            @ nlinha 
       

        Inkey(0.5)

end do

Inkey(0)
clear