Algoritmo "MEDIA_SIMPLES"

Var
   n1, n2, media: real

Inicio
    Escreva ("Digite n1: ")
    Leia(n1)
    Escreva ("Digite n2: ")
    Leia(n2)
    media <- (n1 + n2)/2
    Escreva ("A m�dia �: ", media)
    
    Se(media >= 6) Ent�o
        Escreval("Aprovado")
    Sen�o("Parab�ns")
        Escreval("Reprovado")

Fimalgoritmo