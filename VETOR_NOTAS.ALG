Algoritmo "vetor_notas"

Var
nota: vetor[1..7] de real
i: inteiro
add: caracter
Inicio
    //PARTE MANUAL
    Escreval("Informe a nota do primeiro aluno")
    leia(nota[1])
    
    Escreval("Voc� digitou a nota ", nota[1])
    
    //abastecendo o vetor
    Para i de 1 ate 7 faca
        Escreval("Informe a nota da posi��o", i, ":")
        leia(nota[i])
        
        Escreval("Adicionar mais notas? Sim/N�o")
    Leia(add)
    Se(add = N�o)ent�o
        interrompa
    fimse
    fimpara
    
    escreval("Notas informadas")
    
    para i de 1 ate 7 faca
        Escreval("o numero da posi��o", i, "�: ",nota[i])
    fimpara
    
    //ou coloca escreval informando a nota(nota[2],nota[6]...)
Fimalgoritmo