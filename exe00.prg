set date to british
set epoch to 1940

clear

nSomaA  := 0
nSomaB  := 0
nSomaC  := 0

do while .t.
      
        nA := 0
        nB := 0
        nC := 0

        @ 01,01 say 'Valor inicial A: ' 
        @ 02,01 say 'Valor inicial B: '
        @ 03,01 say 'Valor inicial C: '
        
        @ 01,20 get nA picture '99' Valid nA > 0
        @ 02,20 get nB picture '99' Valid nB > 0
        @ 03,20 get nC picture '99' VAlid nC > 0
        read

        if lastKey() == 27 //Esc
            exit
        endif
        
        @ 04,01 say 'Valor Novo A: ' + Alltrim( Str (nA) )
        @ 05,01 say 'Valor Novo B: ' + Alltrim( Str (nB) )
        @ 06,01 say 'Valor Novo C: ' + Alltrim( Str (nC) )

        nSomaA += nA
        nSomaB += nB
        nSomaC += nC
        
        inkey(0.5)

end do

@ 07,01 say ' variavel A agora e: ' + Alltrim( str (nA)) + ' e a variavel B agora e: ' + Alltrim(str(nB))
@ 08,01 say ' este processo ocorre dentro da memoria de um computador'

clear