Algoritmo "TABUADA"

Var
 x, y: inteiro
Inicio
    Escreval("Informe o número da tabuada")
    Leia(x)
    y <- 0
    repita
        Escreval(x,"x",y ,"=", x*y)
        y <- y + 1
    ate(y > 10)
Fimalgoritmo