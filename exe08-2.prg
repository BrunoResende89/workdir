set Date to british
set century on

clear 

cNome   := Space(25)
nIdade  := 0
dCompra := CToD('')
nLimite := 100.00

cProduto1 := Space(20)
cProduto2 := Space(20)
cProduto3 := Space(20)

nQuantidade1 := 0
nQuantidade2 := 0
nQuantidade3 := 0

cPreco1 := 0
cPreco2 := 0
cPreco3 := 0

@ 00,00 to 14,60 double
@ 05,01 to 05,59 double
@ 07,01 to 07,59 double
@ 11,01 to 11,59 double

@ 01,10 say 'VENDA DO ZE '
@ 02,01 say '       Cliente:'
@ 03,01 say '         Idade:'
@ 04,01 say 'Data da Compra:'

@ 02,16 get cNome   picture ('@!') Valid !Empty(cNome)
@ 03,16 get nIdade  picture ('99')
@ 04,16 get dCompra picture ('99-99-99')
read

@ 06,13 say 'PRODUTO'
@ 06,29 say 'QTD'
@ 06,35 say 'PRECO'
@ 06,42 say 'SUB-TOTAL'
@ 06,02 say 'SEQ'
@ 08,03 say '1'
@ 09,03 say '2'
@ 10,03 say '3'
@ 12,29 say 'VALOR TOTAL= '

@ 08,06 get cProduto1     picture ('@!') Valid !Empty(cProduto1)
@ 09,06 get cProduto2     picture ('@!') Valid !Empty(cProduto2)
@ 10,06 get cProduto3     picture ('@!') Valid !Empty(cProduto3)
@ 08,27 get nQuantidade1 picture (nQuantidade1, '@E 99.999')
@ 09,27 get nQuantidade2 picture (nQuantidade2, '@E 99.999')
@ 10,27 get nQuantidade3 picture (nQuantidade3, '@E 99.999')
@ 08,34 get cPreco1 picture (cPreco1, '@E 999.99')
@ 09,34 get cPreco2 picture (cPreco2, '@E 999.99')
@ 10,34 get cPreco3 picture (cPreco3, '@E 999.99')
read

@ 12,01 say 'Limite disponivel:' + Transform(nLimite, '@E 999.99')

@ 08,42 say '' + Transform(nQuantidade1 * cPreco1, '@E 999.99')
@ 09,42 say '' + Transform(nQuantidade2 * cPreco2, '@E 999.99')
@ 10,42 say '' + Transform(nQuantidade3 * cPreco3, '@E 999.99')

nValor1 := nQuantidade1 * cPreco1
nValor2 := nQuantidade2 * cPreco2
nValor3 := nQuantidade3 * cPreco3

@ 12,42 say '' + Transform(nValor1 + nValor2 + nValor3, '@E 999.99')

nTotal := nValor1 + nValor2 + nValor3

if  nTotal > 99.99
    @ 12,42 say + Transform(nTotal, '@E 999.99') color 'r/n'
    @ 13,29 say 'Limite insuficiente' color 'r/n'

else 
    @ 12,42 say + Transform(nTotal, '@E 999.99') color 'g/n'
    @ 13,29 say 'Limite suficiente' color 'g/n'

endif 

inkey(0)

set color to 'n/gr'
clear
@ 14,00 clear to 30,60

@ 14,00 to 30,60 double
@ 15,24 say 'CUPOM FISCAL'
@ 16,01 to 21,59 double
@ 18,02 say '          Nome:'
@ 19,02 say '         Idade:'
@ 20,02 say 'Data da Compra:'

@ 18,17 say '' + (cNome)
@ 19,17 say '' + str(nIdade)
@ 20,17 say '' + Dtoc(dCompra)

@ 22,22 say 'ITENS'
@ 23,01 to 28,40 double
@ 24,02 say '  1 - '
@ 25,02 say '  2 - '
@ 26,02 say '  3 - '
@ 27,16 say 'SUB-TOTAL: R$'
@ 29,01 say ' Entrega para : '

dEntrega := dCompra + 3

@ 24,08 say ' ' + (cProduto1)
@ 24,28 say '|' + Transform(nValor1, '@E 999.99')
@ 25,08 say ' ' + (cProduto2)
@ 25,28 say '|' + Transform(nValor2, '@E 999.99')
@ 26,08 say ' ' + (cProduto3)
@ 26,28 say '|' + Transform(nValor3, '@E 999.99')
@ 27,29 say '' + Transform(nTotal, '@E 999.99')
@ 29,17 say + Dtoc(dEntrega)

Inkey(0)
clear
