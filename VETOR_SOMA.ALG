Algoritmo "VETOR_SOMA"

Var
    salario: vetor[1..5] de real
    i: inteiro
    soma: real
Inicio
    salario[1] <- 7000
    salario[2] <- 15000
    salario[3] <- 8000
    salario[4] <- 30000
    salario[5] <- 15000
    
    Para i de 1 ate 5 faca
        soma <- soma + salario[i]
    fimpara
    
    Escreval("A soma dos sálarios é", soma)



Fimalgoritmo