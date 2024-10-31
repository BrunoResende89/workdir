clear 

nCodigoCliente  := space(06)
nContador       := 0

@ 12,10 say 'Informe o codigo do cliente:'
@ 12,40 get nCodigoCliente picture '999999'
Read 


do while nContador < 100
        
    if LastKey() == 27
        loop
    end if
end do

Inkey(0)
clear 