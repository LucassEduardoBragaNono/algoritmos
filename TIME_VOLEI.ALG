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
    
    Escreval("A m�dia da altura dos jogadores �: ", media)
    Escreval("A maior altura � ", altura_max)
    Escreval("A menor altura � ", altura_min)
Fimalgoritmo