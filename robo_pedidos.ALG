Algoritmo "semnome"

Var
valorprodu: real
valorprodu2: real
 valorprodu3: real
 option: inteiro
Inicio
Repita
    Escreval("1 - Cancelar")
    Escreval("2 - Novo pedido")
    Leia(option)
        Escreval("Pedido cancelado")
    Se(option = 2)entao
        Escreval("Fa�a seu pedido")
    Fimse

     Escreval("Forma de pagamento")
     Escreval("1 - PIX")
     Escreval("2 - CR�DITO")
     Escreval("3 - DINHEIRO")
     Leia(option)

     Escreval("Card�pio")
     Escreval("1 - HAMBURGUER DUPLO - R$: 25")
     Escreval("2 - X-BACON - R$: 24")
     Escreval("3 - X-SALADA - R$: 20")
     Leia(option)
     Se(option = 1)entao
        valorprodu <- 25*1.10
        Escreval("O valor da compra com a taxa de entrega ser�: R$ ", valorprodu)
     Fimse
     Se(option = 2)entao
        valorprodu2 <- 24*1.10
        Escreval("O valor da compra com a taxa de entrega ser�: R$ ", valorprodu2)
     Fimse
     Se(option = 3)entao
        valorprodu3 <- 20*1.10
        Escreval("O valor da compra com a taxa de entrega ser�: R$ ", valorprodu3)
     Fimse
     Escreval("5 - Acompanhar pedido")
     Escreval("6 - Sair do aplicativo")
     Leia(option)
     Se(option= 5)entao
        Escreval("Seu pedido ser� entregue daqui 40 anos")
     fimse
     Se(option = 6)entao
        Escreval("- Aguarde a entrega - ")
     fimse
at�(option = 1)
Fimalgoritmo