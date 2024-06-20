Algoritmo "semnome"

Var
itens: vetor[1..5] de caracter
itens_qnt: vetor[1..5] de inteiro
itens_preco: vetor[1..5] de real

opcao, i, item_selecionado, qnt: inteiro

itens_venda: vetor[1..5] de caracter
itens_venda_qnt: vetor[1..5] de inteiro
itens_venda_valor: vetor[1..5] de real

add_mais: caracter
cliente_nome, cliente_telefone: caracter
forma_pgto: inteiro

total_compra: real
Inicio

itens[1] <- "Camiseta"
itens_qnt[1] <- 5
itens_preco[1] <- 30

itens[2] <- "calça"
itens_qnt[2] <- 4
itens_preco[2] <- 50

itens[3] <- "tenis"
itens_qnt[3] <- 9
itens_preco[3] <- 70

itens[4] <- "bermuda"
itens_qnt[4] <- 5
itens_preco[4] <- 40

itens[5] <- "chinelo"
itens_qnt[5] <- 10
itens_preco[5] <- 100

repita
    Escreval("Bem-vindo")
    Escreval("1 - Ver estoque")
    Escreval("2 - Realizar venda")
    Escreval("3 - Fazer recebimento")
    Escreval("0 - Sair do programa")
    Leia(opcao)

    Se(opcao=1) entao
        Limpatela()
        Escreval("Estoque disponível")
        Escreval("Cod item quant preço")
        Para i de1 ate 5 faca
        Escreval(i, "  ")
        Escreval(itens[i], "  ")
        Escreval(itens_qnt[i],"  ")
        Escreval(itens_preco[i])
        fimpara
    fimse
    
    Se(opcao=2) entao
        Limpatela()
        Escreval("Estoque disponível")
        Escreval("Cod item quant preço")
        Para i de1 ate 5 faca
        Escreval(i, "  ")
        Escreval(itens[i], "  ")
        Escreval(itens_qnt[i],"  ")
        Escreval(itens_preco[i])
        fimpara
    fimse
    Escreval("Qual o nome do cliente:")
    Leia(cliente_nome)
    Escreval("Qual o telefone:")
    Leia(cliente_telefone)
    
    Para i de 1 ate 5 faca
    
        Escreval("Selecione o cod do item: ")
        Leia(item selecionado)
        
        repita
            Escreva("Que quantidade de ", itens[item_selecionado])
            Escreva(" voce quer?")
            Leia(qnt)
        Ate (qnt > 0)
        
        itens_venda[i] <- itens[item_selecionado]
        itens_venda_qnt[i] <- qnt
        itens_venda_valor[i] <- itens_preco[item_selecionado] * qnt
        total_compra <- total_compra + itens_venda_valor[i]
        
        Escreval("Adicionar maisw S/N")
        Leia(add_mais)
        Se(add_mais ="n")entao
        interrompa
        fimse
    fimpara
    
    Escreval("A compra deu R$ ", total_compra)
    Escreval("Selecione a forma de pagamento")
    Escreval("1 - Dinheiro")
    Escreval("2 - Pix")
    Escreval("3 - Cartão")
    Leia(forma_pgto)
    Limpatela()
    Fimse
    
    Se(opcao=3)entao
        Limpatela()
        Escreval("RECEBIMENTO D VENDA")
        Escreva("Cliente: ", cliente_nome)
        Escreva("Telefone: ", cliente_telefone)
        Escreval("Cod item qnt total")
        para i de 1 ate 5 faca
            Se(itens_venda[i] <> "")entao
                Escreva(i, "")
                Escreva(itens_venda[i], "  ")
                Escreva(itens_venda_qnt[i]), " "
                Escreva(itens_venda_valor[i])
            Fimse
        Fimpara
        Escreval("Valor total R$", total_compra)
        Escreval("Forma de pgto selecionado: ", forma_pgto)
        Se(forma_pgto = 1 )entao
            total_compra <- total_compra - (total_compra * 0.1)
            Escreval("Valor com desconto R$", total_compra)
        fimse
    fimse
ate(option = 0)
Fimalgoritmo