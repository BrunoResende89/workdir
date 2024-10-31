clear

nA := 10
nB := 15

@ 01,01 say 'Variavel A: ' + Alltrim( str (nA) )
@ 02,01 say 'Variavel B: ' + Alltrim( str (nB) )

ntroca := nA
nA     := nB
nB     := nTroca

@ 03,01 say ' variavel A agora e: ' + Alltrim( str (nA)) + ' e a variavel B agora e: ' + Alltrim(str(nB))
@ 04,01 say ' este processo ocorre dentro da memoria de um computador'

Inkey(0)
clear