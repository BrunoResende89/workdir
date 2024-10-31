Clear

cNome       := space(20)
nContador   := 0
nLinha      := 4

@ 00,10 say 'Nome Escolhido'
@ 02,01 say 'Digite o nome:'
@ 02,15 get cNome picture ('@!') valid !empty(cNome)
read

do while    nContador  < 10
        @ nLinha++,10 say cNome
        nContador ++
       

        Inkey(0.5)

end do

Inkey(0)
clear