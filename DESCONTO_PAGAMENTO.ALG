Algoritmo "DESCONTO_PAGAMENTO"

Var
valor_compra, forma_pagamento: inteiro
novo_valor: real
segundo_valor: real
Inicio
    Escreval("Digite o valor do produto: ")
    Leia(valor_compra)
    Escreval("Selecione a forma de pagamento: ")
    Escreval("1 - Cartão")
    Escreval("2 - Pix")
    Escreval("3 - Dinheiro")
    Leia(forma_pagamento)
    
    Se(forma_pagamento = 1 ) Então
        Escreval("Sem desconto, o valor da compra será de R$ ", valor_compra)
    Senão
      Se(forma_pagamento = 2 ) Então
        novo_valor <- valor_compra - (valor_compra*0.06)
        Escreval("Com o desconto, o valor da compra será de R$: ", novo_valor)
    Senão
        Se(forma_pagamento = 3 ) Então
        segundo_valor <- valor_compra - (valor_compra*0.10)
        Escreval("Com o desconto, o valor da compra será de R$: ", segundo_valor)
        Fimse
      Fimse
    Fimse
Fimalgoritmo