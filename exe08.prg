clear

nP1         := 0
nP2         := 0
nP3         := 0
nV1         := 10.00
nV2         := 5.25
nV3         := 20.00
nValorTotal := 0
nPagamento  := 0
nTroco      := 0
nValorFinal := 0

@ 00,00 to 21,50 double
@ 01,01 say '                 Venda do Ze                '
@ 03,01 say 'Digite a quantidade do primeiro produto:' + AllTrim(str(nP1))
@ 04,01 say 'Digite a quantidade do segundo  produto:' + AllTrim(str(nP2))
@ 05,01 say 'Digite a quantidade do terceiro produto:' + AllTrim(str(nP3))

@ 06,01 to 06,49 double

@ 03,41 get nP1 picture ("@E 99.999")
@ 04,41 get nP2 picture ("@E 99.999")
@ 05,41 get nP3 picture ("@E 99.999")
read

nValorP1    := 0
nValorP2    := 0
nValorP3    := 0

@ 08,01 say 'O valor do primeiro produto e R$' + Transform(nV1 * nP1,'@E 999.99')
@ 09,01 say 'O valor do segundo  produto e R$' + Transform(nV2 * nP2,'@E 999.99')
@ 10,01 say 'O valor do terceiro produto e R$' + Transform(nV3 * nP3,'@E 999.99')
@ 11,01 to 11,49 double

nValorP1 := nV1 * nP1
nValorP2 := nV2 * nP2
nValorP3 := nV3 * nP3

@ 13,01 say 'O valor a ser pago: R$' + Transform(nValorp1 + nValorp2 + nValorp3,'@E 999.99') 
@ 14,01 to 14,49 double

nValortotal := nValorp1 + nValorp2 + nValorp3
nDesconto := 0

@ 15,01 say 'Informar desconto na venda: R$' + AllTrim(str(nDesconto))
@ 15,31 get nDesconto picture ("@E 999.99")
read

nValorFinal := nValorTotal - nDesconto

@ 16,01 say 'Valor apos o desconto: R$' + Transform(nValorFinal,'@E 999.99')
@ 17,01 to 17,49 double
@ 18,01 say 'O valor pago pelo cliente: R$' + AllTrim(str(nPagamento))
@ 18,30 get nPagamento picture ("@E 999.99")
read

nTroco := nPagamento - nValorTotal

@ 19,01 say 'O valor de troco ao cliente e: R$' + Transform(nPagamento - nValorFinal,'@E 999.99')
@ 20,01 to 20,49 double

Inkey(0)
clear