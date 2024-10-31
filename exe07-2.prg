Clear

n1 := 0
n2 := 0

@ 00,01 to 03,45 double

@ 01,02 say 'Digite numero 1: '
@ 02,02 say 'Digite numero 2: '

@ 01,18 get n1 picture ('99')
@ 02,18 get n2 picture ('99')
read

@ 04,01 to 07,45 double
@ 05,02 say 'A soma de n1 + n2 = ' + AllTrim(str(n1 + n2))
@ 06,02 say 'A soma de n2 + n1 = ' + AllTrim(str(n2 + n1)) 

@ 08,01 to 11,45 double
@ 09,02 say 'A subtracao n1 - n2 = ' + AllTrim(str(n1 - n2))
@ 10,02 say 'A subtracao n2 - n1 = ' + AllTrim(str(n2 - n1))

@ 12,01 to 15,45 double
@ 13,02 say 'A Divisao n1/n2 = ' + AllTrim(str(n1/n2))
@ 14,02 say 'A Divisao n2/n1 = ' + AllTrim(str(n2/n1))

@ 16,01 to 19,45 double
@ 17,02 say 'A Multiplicacao n1 * n2 = ' + AllTrim(str(n1 * n2))
@ 18,02 say 'A Multiplicacao n2 * n1 = ' + AllTrim(str(n2 * n1))

Inkey(0)
clear



