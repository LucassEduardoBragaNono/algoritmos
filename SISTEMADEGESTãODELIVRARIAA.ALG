Algoritmo "SistemadeGest�odeLivraria"
//Exerc�cio: Sistema de Gest�o de Livraria
//Objetivo: Criar um programa que gerencia a entrada e sa�da de livros em uma livraria.
//O programa deve permitir o cadastro de livros, a busca por livros e a exibi��o do estoque atual.
//Utilize vetor, matriz, procedimento e fun��o.

//Requisitos:
//Cadastro de Livros: O usu�rio deve ser capaz de cadastrar novos livros informando t�tulo, autor e quantidade em estoque.
//Busca de Livros: O usu�rio deve ser capaz de buscar livros pelo t�tulo.
//Exibi��o do Estoque: O programa deve exibir todos os livros cadastrados e suas quantidades.
//Estrutura de Dados:
//Utilize um vetor para armazenar os livros.
//Utilize uma matriz para armazenar as informa��es dos livros (t�tulo e autor).
//Fun��es e Procedimentos:
//Fun��o para buscar um livro pelo t�tulo.
//Procedimento para exibir o estoque.
//Procedimento para cadastrar um novo livro.

//adicionei mais uma coisa, um login de cadastro
Tipo livrosRegistro = Registro
   nome_livro: caracter
   autor_livro: caracter
   quant_livro: inteiro
fimRegistro
Var
   info_livro: vetor[1..3] de livrosRegistro
   i, totalProdutos, opcao, posicao: inteiro
   usuario, senha: caracter
   logado: logico

Procedimento Login()
Var
   user, pass: caractere
Inicio
   logado <- falso
   Escreval("Digite o usu�rio: ")
   Leia(user)
   Escreval("Digite a senha: ")
   Leia(pass)
   Se (user = "admin") e (pass = "1234") entao
      logado <- verdadeiro
      Escreval("Login bem-sucedido!")
   senao
      Escreval("Usu�rio ou senha incorretos. Tente novamente.")
   fimse
fimProcedimento

Procedimento CadastrarLivros()
Var
   n, i: inteiro
Inicio
    Escreval("Quantos livros deseja cadastrar? ")
    Leia(n)
    Para i de 1 ate n faca
        Se totalProdutos < 100 entao
            totalProdutos <- totalProdutos + 1
            Escreval("Nome do livro: ")
            Leia(info_livro[totalProdutos].nome_livro)
            Escreval("Autor: ")
            Leia(info_livro[totalProdutos].autor_livro)
            Escreval("Quantidade dispon�vel: ")
            Leia(info_livro[totalProdutos].quant_livro)
            Escreval("Livro cadastrado com sucesso!")
        senao
            Escreval("Estoque cheio! N�o � poss�vel cadastrar mais livros.")
            interrompa
        fimse
    fimpara
fimProcedimento

Procedimento AcharLivro()
Var
   i: inteiro
   produto_desejado: caracter
   encontrado: logico
Inicio
      encontrado <- falso
                Escreval("Qual livro deseja encontrar? ")
                Leia(produto_desejado)
                Escreval("Qual o n�mero do livro desejado? ")
                Leia(posicao)
                Para i de 1 ate 1 faca
                    Se(info_livro[posicao].nome_livro = produto_desejado)ent�o
                        Escreval("Livro encontrado com sucesso!")
                        Escreval("Nome: ", info_livro[posicao].nome_livro)
                        Escreval("Quantidade: ", info_livro[posicao].autor_livro)
                        Escreval("Pre�o unit�rio: ", info_livro[posicao].quant_livro)
                        encontrado <- verdadeiro
                    Fimse
                fimpara
                Se(encontrado = falso)ent�o
                    Escreval("Produto n�o encontrado")
                    Escreval("--Tente novamente--")
                fimse
fimProcedimento

Procedimento Estoque()
Var
   i: inteiro
Inicio
      Para i de 1 ate 1 faca
        Escreval("Qual o n�mero do livro que deseja ver? ")
        leia(posicao)
        Escreval("Nome: ", info_livro[posicao].nome_livro)
        Escreval("Autor: ", info_livro[posicao].autor_livro)
        Escreval("Quantidade dispon�vel: ", info_livro[posicao].quant_livro)
      fimpara
fimprocedimento

procedimento Retirada()
Var
   i: inteiro
   livro_retirar: caracter
   encontrado: logico
Inicio
      encontrado <- falso
      Escreval("Qual livro deseja fazer a retirada?")
      Leia(livro_retirar)
      Para i de 1 ate 1 faca
           Se(info_livro[i].nome_livro = livro_retirar)ent�o
               Se (info_livro[i].quant_livro > 0) entao
                info_livro[i].quant_livro <- info_livro[i].quant_livro - 1
                Escreval("Livro retirado com sucesso!")
                encontrado <- verdadeiro
            senao
                Escreval("Livro indispon�vel para retirada. Quantidade em estoque: ", info_livro[i].quant_livro)
            fimse
            interrompa
        fimse
      fimpara
      Se (encontrado = falso) entao
        Escreval("Livro n�o encontrado. Tente novamente.")
      fimse

fimprocedimento

procedimento AtualizarLivro()
Var
Inicio
      Escreval("Qual a posi��o do livro que deseja atualizar?")
      Leia(posicao)
      Escreval("Nome antigo: ", info_livro[posicao].nome_livro)
      Escreval("Novo nome: ")
      Leia(info_livro[posicao].nome_livro)
      Escreval("Autor antigo: ", info_livro[posicao].autor_livro)
      Escreval("Novo autor: ")
      Leia(info_livro[posicao].autor_livro)
      Escreval("Quantidade antiga: ", info_livro[posicao].quant_livro)
      Escreval("Nova quantidade: ")
      Leia(info_livro[posicao].quant_livro)
      Escreval("Livro atualizado com sucesso!")
fimprocedimento
Inicio
   totalProdutos <- 0
   Login()
   Se (logado) entao
      repita
            Escreval("Biblioteca xiu")
            Escreval("1 - Cadastrar livros")
            Escreval("2 - Buscar livros")
            Escreval("3 - Estoque de livros")
            Escreval("4 - Retirada de livros")
            Escreval("5 - Atualizar livro")
            Escreval("0 - Sair")
            Leia(opcao)

            escolha opcao

            Caso 1
                 CadastrarLivros()
            Caso 2
                 AcharLivro()
            Caso 3
                 Escreval("Todos os livros dispon�veis")
                 Estoque()
            Caso 4
                 Retirada()
            Caso 5
                 AtualizarLivro()
            fimescolha
      ate opcao = 0
   senao
       Escreval("Acesso negado.")
   fimse
Fimalgoritmo