Algoritmo "bebidas_comidas"

Var
option: inteiro
quant, valor_comida, valor_total, valor_pedidos, valor_garcom: real
valor_bebida: real

Inicio
    Escreval("COMIDA")
    Escreval("1 - PIZZA (45,90)")
    Escreval("2 - CALZONE(33,90)")
    Escreval("3 - N�o pedir comida")
    Leia(option)
    
        Se(option = 1)entao
            Escreval("Quantas pizzas voc� deseja pedir?")
            Leia(quant)
            valor_comida <- 45.90*quant
        fimse
        Se(option = 2)entao
            Escreval("Quantos calzones voc� deseja pedir?")
            Leia(quant)
            valor_comida <- 33.90*quant
        fimse
        Se(option = 3)entao
            Escreval("Voc� n�o pediu comida")
        fimse
        
    Escreval("BEBIDAS")
    Escreval("1 - REFRIGERANTE LATA(4,00)")
    Escreval("2 -SUCO JARRA(6,00)")
    Escreval("3 -N�o pedir bebida")
    Leia(option)
    
        Se(option = 1)entao
            Escreval("Quantas latinhas de refrigerante voc� deseja pedir?")
            Leia(quant)
            valor_bebida <- 4*quant
        fimse
        Se(option = 2)entao
            Escreval("Quantas jarras de suco voc� deseja pedir?")
            Leia(quant)
            valor_bebida <- 6*quant
        fimse
        Se(option = 3)entao
            Escreval("Voc� n�o pediu bebidas")
        fimse
        
        valor_pedidos <- valor_bebida + valor_comida
        valor_garcom <- valor_pedidos*0.1
        valor_total <- valor_pedidos + valor_garcom
        
        Escreval("O valor de todos os pedidos �: ", valor_pedidos)
        Escreval("Valor do gar�om(10%): ", valor_garcom)
        Escreval("O valor dos pedidos e do valor do gar�om �: ", valor_total)
Fimalgoritmo