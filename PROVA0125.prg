//Nome: Bruno Rafael de Resende

SetDate to british
SetCentury on 
Set Epoch to 1940



Clear

cDisciplina1   := Space(14)
cDisciplina2   := Space(14)
cDisciplina3   := Space(14)

cNome          := Space(20)        
cCurso         := Space(20)
dNascimento    := CToD('')
nSerie         := 0
dMensalidade   := 0
dBimestre      := 0
nMedia1        := ('99.9')
nMedia2        := ('99.9')
nMedia3        := ('99.9')

nFalta1b1D     := 0
nFalta2b1D     := 0
nFalta3b1D     := 0
nFalta4b1D     := 0

nFalta1b2D     := 0
nFalta2b2D     := 0
nFalta3b2D     := 0
nFalta4b2D     := 0

nFalta1b3D     := 0
nFalta2b3D     := 0
nFalta3b3D     := 0
nFalta4b3D     := 0

nFrequencia1b1d   := 0
nFrequencia2b1d   := 0
nFrequencia3b1d   := 0
nFrequencia4b1d   := 0

nFrequencia1b2d   := 0
nFrequencia2b2d   := 0
nFrequencia3b2d   := 0
nFrequencia4b2d   := 0

nFrequencia1b3d   := 0
nFrequencia2b3d   := 0
nFrequencia3b3d   := 0
nFrequencia4b3d   := 0


nNotaDisc11b    := 0
nNotaDisc12b    := 0
nNotaDisc13b    := 0
nNotaDisc14b    := 0

nNotaDisc21b    := 0
nNotaDisc22b    := 0
nNotaDisc23b    := 0
nNotaDisc24b    := 0

nNotaDisc31b    := 0
nNotaDisc32b    := 0
nNotaDisc33b    := 0
nNotaDisc34b    := 0

nDpConta    := 0
cAcumulaDp  := ''

@ 00,00 to 40,100 double
@ 01,15 say 'Escola Vamo Ver'
@ 02,01 say 'Endereco : Rua Dr. Linguinha'
@ 03,01 say 'Telefone : (44) 3229-5986'
@ 04,01 say 'Email    : escola.vamover@gmail.com'
@ 05,01 say 'CNPJ     : 123.456.789/0001-50'

@ 06,01 to 06,99 double

@ 07,01 say 'Nome               :'
@ 08,01 say 'Curso              :'
@ 09,01 say 'Data de Nascimento :'
@ 10,01 say 'Serie              :'
@ 11,01 say 'Mensalidade        :'

@ 07,22 get cNome picture ('@!') valid !Empty(cNome)
@ 08,22 get cCurso picture ('@!') valid !Empty(cCurso)
@ 09,22 get dNascimento picture ('')
@ 10,22 get nSerie picture (nSerie, '9')
@ 11,22 get dMensalidade picture (dMensalidade, '@E 999.99')
read

@ 14,15 say '1 Bimestre'
@ 14,30 say '2 Bimestre'
@ 14,45 say '3 Bimestre'
@ 14,60 say '4 Bimestre'

@ 15,01 to 15,99 double

@ 17,15 say 'Freq|Falta|Nota'
@ 17,30 say 'Freq|Falta|Nota'
@ 17,45 say 'Freq|Falta|Nota'
@ 17,60 say 'Freq|Falta|Nota'

@ 18,01 to 18,99 double

@ 19,01 say 'Disciplina de'
@ 22,01 say 'Disciplina de'
@ 25,01 say 'Disciplina de'

@ 20,01 get cDisciplina1 picture ('@!') valid !empty(cDisciplina1)
@ 20,20 get nFalta1b1D picture (nFalta1b1D,'99')
@ 20,35 get nFalta2b1D picture (nFalta2b1D,'99')
@ 20,50 get nFalta3b1D picture (nFalta3b1D,'99')
@ 20,65 get nFalta4b1D picture (nFalta4b1D,'99')
@ 20,25 get nNotaDisc11b picture (nNotaDisc11b,'99.9')
@ 20,40 get nNotaDisc12b picture (nNotaDisc12b,'99.9')
@ 20,55 get nNotaDisc13b picture (nNotaDisc13b,'99.9')
@ 20,70 get nNotaDisc14b picture (nNotaDisc14b,'99.9')

@ 23,01 get cDisciplina2 picture ('@!') valid !empty(cDisciplina2)
@ 23,20 get nFalta1b2D picture (nFalta1b2D,'99')
@ 23,35 get nFalta2b2D picture (nFalta2b2D,'99')
@ 23,50 get nFalta3b2D picture (nFalta3b2D,'99')
@ 23,65 get nFalta4b2D picture (nFalta4b2D,'99')
@ 23,25 get nNotaDisc21b picture (nNotaDisc21b,'99.9')
@ 23,40 get nNotaDisc22b picture (nNotaDisc22b,'99.9')
@ 23,55 get nNotaDisc23b picture (nNotaDisc23b,'99.9')
@ 23,70 get nNotaDisc24b picture (nNotaDisc24b,'99.9')

@ 26,01 get cDisciplina3 picture ('@!') valid !empty(cDisciplina3)
@ 26,20 get nFalta1b3D picture (nFalta1b3D,'99')
@ 26,35 get nFalta2b3D picture (nFalta2b3D,'99')
@ 26,50 get nFalta3b3D picture (nFalta3b3D,'99')
@ 26,65 get nFalta4b3D picture (nFalta4b3D,'99')
@ 26,25 get nNotaDisc31b picture (nNotaDisc31b,'99.9')
@ 26,40 get nNotaDisc32b picture (nNotaDisc32b,'99.9')
@ 26,55 get nNotaDisc33b picture (nNotaDisc33b,'99.9')
@ 26,70 get nNotaDisc34b picture (nNotaDisc34b,'99.9')
read

@ 27,01 to 27,99 double

nMedia1D        := (nNotaDisc11b + nNotaDisc12b + nNotaDisc13b + nNotaDisc14b) /4
nMedia2D        := (nNotaDisc21b + nNotaDisc22b + nNotaDisc23b + nNotaDisc24b) /4
nMedia3D        := (nNotaDisc31b + nNotaDisc32b + nNotaDisc33b + nNotaDisc34b) /4
nMediaFinal     := (nMedia1D + nMedia2D + nMedia2D) /3

if nMedia1D > 6
   @ 20,80 say '' + str(nMedia1D) color 'g/n'
elseif nMedia1D >= 5
   @ 20,80 say '' + str(nMedia1D) color 'gr/n'
else
   @ 20,80 say '' + str(nMedia1D) color 'r/n'
endif

if nMedia2D > 6
   @ 23,80 say '' + str(nMedia2D) color 'g/n'
elseif nMedia2D >= 5
   @ 23,80 say '' + str(nMedia2D) color 'gr/n'
else
   @ 23,80 say '' + str(nMedia2D) color 'r/n'
endif

if nMedia3D > 6
   @ 26,80 say '' + str(nMedia3D) color 'g/n'
elseif nMedia3D >= 5
   @ 26,80 say '' + str(nMedia3D) color 'gr/n'
else
   @ 26,80 say '' + str(nMedia3D) color 'r/n'
endi

if nMediaFinal > 6
   @ 32,16 say '' + str(nMediaFinal) color 'g/n'
elseif nMedia1D >= 5
   @ 32,16 say '' + str(nMediaFinal) color 'gr/n'
else
   @ 32,16 say '' + str(nMediaFinal) color 'r/n'
endi

nFalta1D  := (nFalta1b1D + nFalta2b1D + nFalta3b1D + nFalta4b1D)
nFalta2D  := (nFalta1b2D + nFalta2b2D + nFalta3b2D + nFalta4b2D)
nFalta3D  := (nFalta1b3D + nFalta2b3D + nFalta3b3D + nFalta4b3D)
nFaltaFinal  := (nFalta1D + nFalta2D + nFalta3D) / 2

@ 28,01 say 'Disciplina 2 aluno esta:'

if nMedia1D > 6
      @ 28,25 say 'Aprovado'  color 'g/n'
elseif nMedia1D >= 5 .and. nSerie < 4
      @ 28,25 say 'Aluno em recuperacao' color 'gr/n'
else
      @ 28,25 say 'reprovado e Dp na materia' color 'r/n'
      nDpConta := nDpConta + 1
      cAcumulaDp += cDisciplina1 + ','
endif

@ 29,01 say 'Disciplina 2 aluno esta:'

if nMedia2D > 6
      @ 29,25 say 'Aprovado'  color 'g/n'
elseif nMedia2D >= 5 .and. nSerie < 4
      @ 29,25 say 'Aluno em recuperacao' color 'gr/n'   
else
      @ 29,25 say 'reprovado e Dp na materia' color 'r/n'
      nDpConta := nDpConta + 1
      cAcumulaDp += cDisciplina2 + ','
endif

@ 30,01 say 'Disciplina 3 aluno esta:'

if nMedia3D > 6
      @ 30,25 say 'Aprovado'  color 'g/n'
elseif nMedia3D >= 5 .and. nSerie < 4
      @ 30,25 say 'Aluno em recuperacao' color 'gr/n'
else
      @ 30,25 say 'reprovado e Dp na materia' color 'r/n'
      nDpConta := nDpConta + 1
      cAcumulaDp += cDisciplina3 + ','
endif

@ 31,01 say 'Total Falta:'

if nFaltaFinal < 6
   @ 31,16 say '' + str(nFaltaFinal) color 'g/n'
else
   @ 31,16 say '' + str(nFaltaFinal) color 'r/n'
endif

@ 32,01 say 'Media Final:'

@ 33,01 say 'Resultado por Falta'

if nFaltaFinal < 6
   @ 33,25 say 'Aluno esta aprovado' color 'g/n'
else
   @ 33,25 say 'Aluno reprovado' color 'r/n'
endif

@ 34,01 say 'Resultado por nota'

if nMediaFinal >= 6 .and. nSerie < 4
   @ 34,25 say 'Aluno aprovado por nota' color 'g/n'

elseif nMediaFinal >= 5 .and. nSerie < 4
   @ 34,25 say 'Aluno em recuperacao' color 'gr/n'

else
   @ 34,25 say "Aluno reprovado" color 'r/n'

endif

if nMediaFinal >= 6 .and. nSerie >= 4
   @ 34,25 say 'Aluno aprovado por nota' color 'g/n'

elseif nMediaFinal >= 5 .and. nSerie >= 4
   @ 34,25 say 'Aluno em recuperação' color 'gr/n'

else
   @ 34,25 say "Aluno reprovado" color 'r/n'

endif

@ 36,01 say 'Se o Aluno Ficar em Dp' + cAcumulaDp + '.'

dMensalidade := dMensalidade + (dMensalidade*cAcumulaDp*0.2)

@ 37,01 say 'Caso houver Dp o valor a ser pago ' + (dMensalidade,'@E 999.99')

inkey(0)
clear



