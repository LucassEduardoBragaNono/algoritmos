Algoritmo "EXERCICIO_ESTOQUE"
Tipo produto = registro
     nome: caracter
     quantidade: inteiro
     valorUnitario: real
fimregistro

Var
estoque: vetor [1..100] de produto
totalProdutos, i, option: inteiro
produto_desejado: caracter
nova_quant: inteiro
encontrado: logico
Inicio
repita
      Escreval("OP��ES")
      Escreval("1 - Adicionar um novo produto ao estoque.")
      Escreval("2 - Atualizar a quantidade em estoque de um produto existente.")
      Escreval("3 - Visualizar o estoque atual.")
      Escreval("4 - Sair do programa.")
      Leia(option)
      
      para i de 1 ate 100 faca
           escolha option
      
           Caso 1
                Limpatela()
                Escreval("Qual o nome do produto?")
                Leia(estoque[i].nome)
                Escreval("Qual a quantidade?")
                Leia(estoque[i].quantidade)
                Escreval("Qual o valor unit�rio?")
                Leia(estoque[i].valorUnitario)
                Escreval("Deseja adiconar mais produtos? Sim/N�o")
                Leia(option)
                Se (option = "N�o")entao
                   interrompa
                fimse
           Caso 2
            Escreval("Qual item deseja alterar a quantidade? ")
            Leia(produto_desejado)
            encontrado <- falso
                Para i de 1 ate 100 faca
                    Se(estoque[i].nome = produto_desejado)ent�o
                        Escreval("Qual a nova quantidade de", produto_desejado)
                        Leia(nova_quant)
                        estoque[i].quantidade <- nova_quant
                        encontrado <- verdadeiro
                        interrompa
                        Escreval("Quantidade de ", produto_desejado, " atualizado com sucesso!")
                    Fimse
                fimpara
                Se(encontrado = falso)ent�o
                    Escreval("Produto n�o encontrado")
                    Escreval("--Tente novamente--")
                fimse
           Caso 3
                Escreval("ESTOQUE ATUAL")
                Escreval("Nome: ", estoque[i].nome)
                Escreval("Quantidade: ", estoque[i].quantidade)
                Escreval("Pre�o unit�rio: ", estoque[i].valorUnitario)
           fimescolha
      fimpara
ate option = 4



Fimalgoritmo