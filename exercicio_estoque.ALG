Algoritmo "semnome"


Var
estoque_prod: vetor [1..100] de registro
nome_prod: cadeia[30]
quant_prod: inteiro
preco_prod: real
i, nova_quant, opcao: inteiro
encontrado: logico
produto_desejado: cadeia[30]
Inicio
    Escreval("-- Menu de Op��es --")
    Escreval("1 - Adicionar um item ao estoque ")
    Escreval("2 - Consultar um produto no estoque")
    Escreval("3 - Atualizar a quantidade de um produto no estoque")
    Escreval("4 - Sair do programa")
    Escreval("Escolha uma das op��es acima")
    
repita
    Escolha (opcao)
        Caso 1:
            Escreval("Digite o nome do item: ")
            Leia(nome_prod)
            Escreval("Digite a quantidade de", nome_prod, "a ser adicionada: ")
            Leia(quant_prod)
            Escreval("Digite o pre�o do", nome_prod, ": ")
            Leia(preco_prod)
        Caso 2:
            Escreval("Qual o nome do produto a ser consultado: ")
            Leia(produto_desejado)
            encontrado <- falso
                Para i de 1 ate 100 faca
                    Se(estoque_prod[i].nome_prod = produto_desejado)Ent�o
                        Escreval("O produto", produto_desejado,"tem", quant_prod, " unidades e seu pre�o � de", preco_produto)
                        encontrado <- verdadeiro
                        Escreval("-------")
                        interrompa
                    fimse
                fimpara
                Se(encontrado = falso)ent�o
                    Escreval("Produto n�o encontrado no estoque")
                fimse
        Caso 3:
            Escreval("Qual item vai ser alterado a quantidade? ")
            Leia(produto_desejado)
            encontrado <- falso
                Para i de 1 ate 100 faca
                    Se(estoque_prod[i].nome_prod = produto_desejado)ent�o
                        Escreval("Qual a nova quantidade de", produto_desejado)
                        Leia(nova_quant)
                        estoque_prod[i].quant_prod <- nova_quant
                        encontrado <- verdadeiro
                        interrompa
                        Escreval("Quantidade de ", produto_desejado, " atualizado com sucesso!")
                    Fimse
                fimpara
                Se(encontrado = falso)ent�o
                    Escreval("Produto n�o encontrado")
                    Escreval("--Tente novamente--")
                fimse
        Caso 4:
            Escreval("Voc� saiu do programa")
                Senao:
                    Escreval("Op��o inv�lida. Por favor, escolha uma opcao v�lida.)
    FimEscolha
Ate opcao = 4
            
Fimalgoritmo