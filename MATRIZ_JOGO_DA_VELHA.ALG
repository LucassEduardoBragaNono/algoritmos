Algoritmo "MATRIZ_JOGO_DA_VELHA"

Var
   jogo : vetor [1..3, 1..3] de caracter
   linha, coluna, i, j, jogadas : inteiro
   jogador, ganhador : caracter
Inicio

   Para i de 1 até 3 Faça
      Para j de 1 até 3 Faça
         jogo[i, j] <- " "
      Fimpara
   Fimpara

   jogador <- "X"

   Escreval(" JOGO DA VELHA ")
   Escreval("    |     |    ")
   Escreval("---------------")
   Escreval("    |     |    ")
   Escreval("---------------")
   Escreval("    |     |    ")

   Para jogadas de 1 até 9 Faça

      Escreva("Qual posição você quer por o ")
      Escreval(jogador, "?")
      
      Repita
         Escreva("Informe a linha: ")
         Leia(linha)
      Até (linha > 0) e (linha <= 3)

      Repita
         Escreva("Informe a coluna: ")
         Leia(coluna)
      Até (coluna > 0) e (coluna <= 3)

      jogo[linha, coluna] <- jogador

      Limpatela()

      Escreval(" JOGO DA VELHA ")
      Escreval("Jogada ", jogadas, " de 9: ")
      Escreval(" ", jogo[1,1]," | ",jogo[1,2]," | ", jogo[1,3])
      Escreval("-----------")
      Escreval(" ", jogo[2,1]," | ",jogo[2,2]," | ", jogo[2,3])
      Escreval("-----------")
      Escreval(" ", jogo[3,1]," | ",jogo[3,2]," | ", jogo[3,3])

      // Verificando quem ganhou linha a linha.
      Para i de 1 até 3 Faça
         Se (jogo[i,1] = "X") e (jogo[i,2] = "X") e (jogo[i,3] = "X") Então
            ganhador <- "X"
            Interrompa
         Fimse

         Se (jogo[i,1] = "O") e (jogo[i,2] = "O") e (jogo[i,3] = "O") Então
            ganhador <- "O"
            Interrompa
         Fimse
      Fimpara
      
      // Verificando quem ganhou coluna a coluna.
      Para i de 1 até 3 Faça
         Se (jogo[1,i] = "X") e (jogo[2,i] = "X") e (jogo[3,i] = "X") Então
            ganhador <- "X"
            Interrompa
         Fimse

         Se (jogo[1,i] = "O") e (jogo[2,i] = "O") e (jogo[3,i] = "O") Então
            ganhador <- "O"
            Interrompa
         Fimse
      Fimpara

      Se(ganhador <> "") Então
         Escreval("")
         Escreval("Parabéns o ", ganhador, " ganhou!")
         Escreval("")
         Interrompa
      Fimse

      Se (jogador = "X") Então
         jogador <- "O"
      Senão
         jogador <- "X"
      Fimse

   Fimpara
Fimalgoritmo