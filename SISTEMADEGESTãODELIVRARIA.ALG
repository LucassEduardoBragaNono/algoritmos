Algoritmo "SistemadeGestãodeLivraria"
//Exercício: Sistema de Gestão de Livraria
//Objetivo: Criar um programa que gerencia a entrada e saída de livros em uma livraria.
//O programa deve permitir o cadastro de livros, a busca por livros e a exibição do estoque atual.
//Utilize vetor, matriz, procedimento e função.

//Requisitos:
//Cadastro de Livros: O usuário deve ser capaz de cadastrar novos livros informando título, autor e quantidade em estoque.
//Busca de Livros: O usuário deve ser capaz de buscar livros pelo título.
//Exibição do Estoque: O programa deve exibir todos os livros cadastrados e suas quantidades.
//Estrutura de Dados:
//Utilize um vetor para armazenar os livros.
//Utilize uma matriz para armazenar as informações dos livros (título e autor).
//Funções e Procedimentos:
//Função para buscar um livro pelo título.
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
   i, totalProdutos, opcao: inteiro
   usuario, senha: caracter
   logado: logico
   
Procedimento Login()
Var
   user, pass: caractere
Inicio
   logado <- falso
   Escreval("Digite o usuário: ")
   Leia(user)
   Escreval("Digite a senha: ")
   Leia(pass)
   Se (user = "admin") e (pass = "1234") entao
      logado <- verdadeiro
      Escreval("Login bem-sucedido!")
   senao
      Escreval("Usuário ou senha incorretos. Tente novamente.")
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
            Escreval("Quantidade disponível: ")
            Leia(info_livro[totalProdutos].quant_livro)
            Escreval("Livro cadastrado com sucesso!")
        senao
            Escreval("Estoque cheio! Não é possível cadastrar mais livros.")
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
                Para i de 1 ate 1 faca
                    Se(info_livro[i].nome_livro = produto_desejado)então
                        Escreval("Livro encontrado com sucesso!")
                        Escreval("Nome: ", info_livro[i].nome_livro)
                        Escreval("Quantidade: ", info_livro[i].autor_livro)
                        Escreval("Preço unitário: ", info_livro[i].quant_livro)
                        encontrado <- verdadeiro
                    Fimse
                fimpara
                Se(encontrado = falso)então
                    Escreval("Produto não encontrado")
                    Escreval("--Tente novamente--")
                fimse
fimProcedimento

Procedimento Estoque()
Var
   i: inteiro
Inicio
      Para i de 1 ate 1 faca
        Escreval("Nome: ", info_livro[i].nome_livro)
        Escreval("Autor: ", info_livro[i].autor_livro)
        Escreval("Quantidade disponível: ", info_livro[i].quant_livro)
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
           Se(info_livro[i].nome_livro = livro_retirar)então
               Se (info_livro[i].quant_livro > 0) entao
                info_livro[i].quant_livro <- info_livro[i].quant_livro - 1
                Escreval("Livro retirado com sucesso!")
                encontrado <- verdadeiro
            senao
                Escreval("Livro indisponível para retirada. Quantidade em estoque: ", info_livro[i].quant_livro)
            fimse
            interrompa
        fimse
      fimpara
      Se (encontrado = falso) entao
        Escreval("Livro não encontrado. Tente novamente.")
      fimse

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
            Escreval("5 - Sair")
            Leia(opcao)
      
            escolha opcao
      
            Caso 1
                 CadastrarLivros()
            Caso 2
                 AcharLivro()
            Caso 3
                 Escreval("Todos os livros disponíveis")
                 Estoque()
            Caso 4
                 Retirada()
            fimescolha
      ate opcao = 5
   senao
       Escreval("Acesso negado.")
   fimse
Fimalgoritmo