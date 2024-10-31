if (nIdade > 18)
    //@ 02,01 say 'Cliente e um adulto'
elseif (nIdade < 12) // pode ter varias condicoes anexadas
    //@ 03,01 say 'Cliente e uma crianca'
else (nIdade >= 12) // a ultima condicao caso o elseif nao atender
    //@ 04,01 say 'Cliente e um adolescente'
endif