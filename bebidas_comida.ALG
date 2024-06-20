Algoritmo "bebidas_comidas"

Var
option: inteiro
quant, valor_comida, valor_total, valor_pedidos, valor_garcom: real
valor_bebida: real

Inicio
    Escreval("COMIDA")
    Escreval("1 - PIZZA (45,90)")
    Escreval("2 - CALZONE(33,90)")
    Escreval("3 - Não pedir comida")
    Leia(option)
    
        Se(option = 1)entao
            Escreval("Quantas pizzas você deseja pedir?")
            Leia(quant)
            valor_comida <- 45.90*quant
        fimse
        Se(option = 2)entao
            Escreval("Quantos calzones você deseja pedir?")
            Leia(quant)
            valor_comida <- 33.90*quant
        fimse
        Se(option = 3)entao
            Escreval("Você não pediu comida")
        fimse
        
    Escreval("BEBIDAS")
    Escreval("1 - REFRIGERANTE LATA(4,00)")
    Escreval("2 -SUCO JARRA(6,00)")
    Escreval("3 -Não pedir bebida")
    Leia(option)
    
        Se(option = 1)entao
            Escreval("Quantas latinhas de refrigerante você deseja pedir?")
            Leia(quant)
            valor_bebida <- 4*quant
        fimse
        Se(option = 2)entao
            Escreval("Quantas jarras de suco você deseja pedir?")
            Leia(quant)
            valor_bebida <- 6*quant
        fimse
        Se(option = 3)entao
            Escreval("Você não pediu bebidas")
        fimse
        
        valor_pedidos <- valor_bebida + valor_comida
        valor_garcom <- valor_pedidos*0.1
        valor_total <- valor_pedidos + valor_garcom
        
        Escreval("O valor de todos os pedidos é: ", valor_pedidos)
        Escreval("Valor do garçom(10%): ", valor_garcom)
        Escreval("O valor dos pedidos e do valor do garçom é: ", valor_total)
Fimalgoritmo