Algoritmo "DESCONTO_PAGAMENTO"

Var
valor_compra, forma_pagamento: inteiro
novo_valor: real
segundo_valor: real
Inicio
    Escreval("Digite o valor do produto: ")
    Leia(valor_compra)
    Escreval("Selecione a forma de pagamento: ")
    Escreval("1 - Cart�o")
    Escreval("2 - Pix")
    Escreval("3 - Dinheiro")
    Leia(forma_pagamento)
    
    Se(forma_pagamento = 1 ) Ent�o
        Escreval("Sem desconto, o valor da compra ser� de R$ ", valor_compra)
    Sen�o
      Se(forma_pagamento = 2 ) Ent�o
        novo_valor <- valor_compra - (valor_compra*0.06)
        Escreval("Com o desconto, o valor da compra ser� de R$: ", novo_valor)
    Sen�o
        Se(forma_pagamento = 3 ) Ent�o
        segundo_valor <- valor_compra - (valor_compra*0.10)
        Escreval("Com o desconto, o valor da compra ser� de R$: ", segundo_valor)
        Fimse
      Fimse
    Fimse
Fimalgoritmo