Algoritmo "REVISANDO_VETOR"

Var
itens: vetor [1..3] de caracter
codigo: vetor [1..3] de inteiro
i: inteiro
avancar: caracter

Inicio
itens[1] <- "Cadeira"
itens[2] <- "Mesa"
itens[3] <- "Sof�"

codigo[1] <- 1
codigo[2] <- 20
codigo[3] <- 300

    para i de 1 ate 3 faca
        escreval(itens[i], " ")
    fimpara
    Escreval("Deseja ver os respectivos c�digos dos itens? Sim / N�o")
    Leia(avancar)
    Se(avancar = "Sim") entao
        para i de 1 ate 3 faca
            Escreval("C�digos", codigo[i])
        fimpara
    fimse

    Se(avancar = "N�o")entao
        Escreval("Saiu.")
        interrompa
    fimse
    
    
Fimalgoritmo