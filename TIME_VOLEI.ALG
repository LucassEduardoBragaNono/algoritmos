Algoritmo "time_alt"

Var
quant_jog, i: inteiro
media, altura_max, alt_soma, alt, altura_min: real
Inicio
    Escreval("Qual a quantidade de jogadores")
    Leia(quant_jog)
    
    para i de 1 ate quant_jog faca
        Escreval("Qual a altura do jogador: ",i, ": ")
        Leia(alt)
        
        alt_soma <-  alt_soma + alt
        
        Se (i = 1)Entao
            altura_max <- alt
            altura_min <- alt
        Fimse
        
        Se( alt > altura_max)Entao
            altura_max <- alt
        Fimse
        
        Se(alt < alt_min)Entao
            altura_min <- alt
        Fimse
    fimpara

    media <- alt_soma/quant_jog
    
    Escreval("A média da altura dos jogadores é: ", media)
    Escreval("A maior altura é ", altura_max)
    Escreval("A menor altura é ", altura_min)
Fimalgoritmo