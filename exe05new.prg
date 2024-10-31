clear

nA := 0
nB := 0
nC := 0 

@ 01,01 say 'Variavel inicial A: '
@ 02,01 say 'Variavel inicial B: '
@ 03,01 say 'Variavel inicial B: '


@ 01,21 get nA picture ('99')
@ 02,21 get nB picture ('99')
@ 03,21 get nC picture ('99')
read

ntroca  := nA
nA      := nB
nB      := nC
nC      := nTroca

@ 01,01 say 'Variavel A: ' + Alltrim( str (nA) )
@ 02,01 say 'Variavel B: ' + Alltrim( str (nB) )
@ 03,01 say 'Variavel C: ' + Alltrim( str (nC) )

@ 04,01 say ' variavel A agora e: ' + Alltrim( str (nA)) + ' e a variavel B agora e: ' + Alltrim(str(nB)) + ' e a variavel C agora e: ' + Alltrim(str(nC))
@ 05,01 say ' este processo ocorre dentro da memoria de um computador'

Inkey(0)
clear