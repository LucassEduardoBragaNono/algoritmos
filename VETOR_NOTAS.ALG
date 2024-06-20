Algoritmo "vetor_notas"

Var
nota: vetor[1..7] de real
i: inteiro
add: caracter
Inicio
    //PARTE MANUAL
    Escreval("Informe a nota do primeiro aluno")
    leia(nota[1])
    
    Escreval("Você digitou a nota ", nota[1])
    
    //abastecendo o vetor
    Para i de 1 ate 7 faca
        Escreval("Informe a nota da posição", i, ":")
        leia(nota[i])
        
        Escreval("Adicionar mais notas? Sim/Não")
    Leia(add)
    Se(add = Não)então
        interrompa
    fimse
    fimpara
    
    escreval("Notas informadas")
    
    para i de 1 ate 7 faca
        Escreval("o numero da posição", i, "é: ",nota[i])
    fimpara
    
    //ou coloca escreval informando a nota(nota[2],nota[6]...)
Fimalgoritmo