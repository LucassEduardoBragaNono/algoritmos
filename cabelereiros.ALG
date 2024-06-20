Algoritmo "semnome"

Var
dia: vetor[1..8] de inteiro
hora: vetor [1..8] de inteiro
nome_cliente: vetor [1..8] de caracter
i, j: inteiro
nome_prof: vetor[1..8] de caracter
option: inteiro
add: caracter
Inicio
Repita
    Escreval("AGENDAMENTOS")
    Escreval("1 - Novo agendamento")
    Escreval("2 - Agendamentos do dia")
    Escreval("3 - Sair do programa")
    Leia(option)
    Se(option = 1)entao
        Limpatela()
        para i de 1 ate 8 faca
            Escreval("Qual o nome do cliente? ", i)
            Leia(nome_cliente[i])
            Escreval("Nome do profissional que irá atender?", i)
            Leia(nome_prof[i])
            Escreval("Qual o horário de atendimento?", i)
            Leia(hora[i])
            Escreval("Qual o dia de atendimento", i)
            Leia(dia[i])
                 para j de 1 ate 8 faca
                     Se(hora[i] = hora[j])entao
                        Escreval("Horário agendado com sucesso")
                        interrompa
                     fimse
                     Se(hora[j] = hora[j])entao
                         Escreval("Horário já está ocupado, tente outro horário")
                     fimse
                 Fimpara
                 Escreval("Add mais?S/N")
                 Leia(add)
                 Se(add = "n")entao
                     interrompa
                 fimse
        fimpara
    fimse
    
    Se(option = 2)entao
        Escreval("AGENDAMENTOS")
        Escreval("Cliente: ", nome_cliente[i])
        Escreval("Profissional: ", nome_prof[i])
        Escreval("Horário: ", hora[i])
        Escreval("Dia: ", dia[i])
    fimse
    
    ate(option=3)
       Escreval("Saiu.")
fimrepita
Fimalgoritmo