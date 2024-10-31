Clear

nNumero1 := 0
nNumero2 := 0
nProduto := 0

@ 01,02 say 'Digite o primeiro numero'
@ 02,02 say 'Digite o segundo numero'

@ 01,26 get nNumero1 picture ('999') 
@ 02,26 get nNumero2 picture ('999') 
read

nProduto := nNumero1 * nNumero2

@ 00,00 to 03,30
@ 03,02 say 'O Resultado do Produto e: ' + Alltrim(str(nProduto))
@ 04,02 say ''
Inkey(0)

Clear

