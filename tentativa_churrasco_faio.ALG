Algoritmo "semnome"

Var
    itensnome: vetor[1..2] de caracter
    valorunitario: vetor[1..2] de real
    //valortotal: vetor[1..2] de real
    quant: vetor[1..2]de real
    i, qpessoas: inteiro
    custototal, totalpessoa: real
    
Inicio
    para i de 1 ate 2 faca
        Escreval("Digite o nome do item: ")
        Leia(itensnome[i])
    fimpara
    
    para i de 1 ate 2 faca
        Escreval("Qual o preço dos itens", i,": ")
        Leia(valorunitario[i])
    fimpara
        
    para i de 1 ate 2 faca
        Escreval("Qual a quantidade de itens", i,": ")
        Leia(quant[i])
    fimpara
    
   //para i de 1 ate 2 faca
        //Escreval("Quantos itens", i,"serão comprados: ")
        //Leia(valortotal[i])
    
    Escreval("Quantas pessoas vão participar do churrasco: ")
    Leia(qpessoas)
        //valortotal[i] <-  quant[i] * valorunitario[i]
        valorunitario[i] <- custototal / qpessoas
        custototal <- custototal + valorunitario[i]

    Escreval("O valor que cada pessoa deverá levar será de: ", totalpessoa)
    //Escreval("O valor do churrasco será de: ", valortotal)
Fimalgoritmo