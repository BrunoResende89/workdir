//Nome: Bruno Rafael de Resende
set Date to british
set century on

clear

dData        := Date()
nAno        := Year(dData) // 2024
nMes        := Month(dData) // 10
nDia        := Day(dData) // 28
nDiaSemana  := DoW(dData) // 2

cNomeVendedor   := space(30)
dCotacao        := CToD('')
cNome           := space(30)
nIdade          := '99'
cSexo           := ' '
cSexo1          := 'M'
cSexo2          := 'F'
dAnoCNH         := Year(dData)

@ 00,10 say 'SISTEMA DE COTACAO DE SEGURO'
@ 01,01 say 'Dados do cabecalho'
@ 02,01 say 'Nome do vendedor:'
@ 02,25 get cNomeVendedor picture ('@!') Valid !Empty (cNomeVendedor)
@ 03,01 say 'Data da Cotacao:'
@ 03,25 get dCotacao picture ('')
read

@ 04,10 say 'Dados pessoais'
@ 05,01 say 'Nome:'
@ 05,25 get cNome picture ('@!') Valid !Empty (cNome)
@ 06,01 say 'Idade:'
@ 06,25 get nIdade picture (nIdade)
@ 07,01 say 'Sexo:'

if cSexo $ 'M'
    @ 07,25 get cSexo1 picture ('')
else
    @ 07,25 get cSexo2 picture ('')
endif

@ 08,01 say 'Ano da primeira CNH'
@ 08,25 get dAnoCNH picture (dData, '9999')
read

cMarca          := space(20)
dAnoFabricacao  := Year(dData)
cTipoVeiculo    := ' '
cTipoVeiculoP   := 'P'
cTipoVeiculoE   := 'E'
cTipoVeiculoL   := 'L'
nMotor          := ('9.9')
dValorFipe      := ('999.999.99')
cUsoVeiculoP     := 'P'
cUsoVeiculoO     := 'O'

@ 09,10 say 'Dados do Veiculo'
@ 10,01 say 'Marca                 :'
@ 10,25 get cMarca picture ('@!') Valid !Empty (cMarca)
@ 11,01 say 'Ano da Fabricacao     :'
@ 11,25 get dAnoFabricacao picture (dAnoFabricacao, '9999')
@ 12,01 say 'Tipo de Veiculo(P/E/L):'

if cTipoVeiculo $ 'P' 
    @ 12,25 get cTipoVeiculoP picture ('') 
elseif cTipoVeiculoE $ 'E'
    @ 12,25 get cTipoVeiculoE picture ('')
else 
    @ 12,25 get cTipoVeiculoL picture ('')
endif
read

@ 13,01 say 'Motor            :'
@ 13,25 get nMotor picture (nMotor, '9.9')
@ 14,01 say 'Valor            :'
@ 14,25 get dValorFipe picture Transform(dValorFipe, '@E 999.999.99')
@ 15,01 say 'Uso do Veiculo   :'

if cUsoVeiculoP $ 'P'
    @ 15,25 get cUsoVeiculoP picture ('particular')
else
    @ 15,25 get cUsoVeiculoO picture ('profissional')
endif
read

cValorBase1         := (cValorFipe*1.06)
cValorBase1Idade    := cValorBase1*1.1
cValorSexo1     := cValorBase1*1.1
cValorSexo2     := cValorBase1*1.05
cValorHabilitacao1 := cValorBase1*1.15
cValorHabilitacao2 := cValorBase1*1.11

@ 16,01 say 'Seguradora 1'
@ 17,01 say 'Valor do seguro para <25 e >65:'

if nIdade < 25 .or. nIdade > 65 
    @ 17,25 get cValorBase1Idade picture (cValorBase1Idade)
else
    @ 17,25 get cValorBase1 picture (cValorBase1)
endif

@ 18,01 say 'Valor do Seguro por sexo:'

if cSexo == cSexo1
    @ 18,25 get cValorSexo1 picture (cValorSexo1)
else
    @ 18,25 get cValorSexo2 picture (cValorSexo2)
endif

@ 19,01 say 'Seguro por tempo Habilitacao:'

if dAnoCNH <= 3
    @ 19,25 get cValorHabilitacao1 picture (cValorHabilitacao1)
else
    @ 19,25 get cValorHabilitacao2 picture (cValorHabilitacao2)
endif

cValorTipoCarro1 := cValorBase1*1.1
cValorTipoCarro2 := cValorBase1*1.2
cValorMotor1      := cValorBase1*1.5
cValorMotor2      := cValorBase1*1.06

@ 20,01 say 'Seguro tipo de carro:'

if cTipoVeiculo $ cTipoVeiculoE
    @ 20,25 get cValorTipoCarro1 picture (cValorTipoCarro1)
else
    @ 20,25 get cValorTipoCarro2 picture (cValorTipoCarro2)
endif

@ 21,01 say 'Seguro por Motor:'

if nMotor > 2.0
    @ 21,25 get cValorMotor1 picture (cValorMotor1)
else
    @ 21,25 get cValorMotor2 picture (cValorMotor2)
endif
read

Inkey(0)
clear