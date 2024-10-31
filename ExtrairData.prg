clear

set Date to british
set century on

dExemplo    := Date()
nAno        := Year(dExemplo) // 2024
nMes        := Month(dExemplo) // 10
nDia        := Day(dExemplo) // 28
nDiaSemana  := DoW(dExemplo) // 2

// Maringá, XX(dia) de XXXXXX(mes) de XXXXXX(Ano)

@ 01,01 say 'Maringa, '
@ 01,09 get nDia picture (dExemplo,'99')
@ 01,12 say ' de '
@ 01,16 get nMes picture (dExemplo,'99')
@ 01,19 say ' de '
@ 01,23 get nAno picture (dExemplo,'9999')
Read 


Inkey(0)
clear