Algoritmo "URNA_ELETRONICA"

Tipo Candidato = registro
   nome, partido: caracter
   numero, votos_recebidos: inteiro
fimRegistro

funcao isValido(voto: inteiro) : caracter
Var
   i: inteiro
   achou: caracter
Inicio
      achou <- "n"
      Para i de 1 ate 10 faca
          Se(candidatos[i].numero = voto)entao
             candidatos[i].votos_recebidos <- candidatos[i].votos_recebidos + 1
             achou <- "s"
             Interrompa
          fimse
      fimpara
      retorne achou
fimfuncao

Procedimento Votar()
Var
   votar_branco: caracter
   voto: inteiro
Inicio
      Limpatela()
      Escreval("Deseja votar em branco? s/n")
      Leia(votar_branco)

      Se(votar_branco = "s")
          votos_branco <- votos_branco + 1
      Senao
          Escreval("Qual canditado deseja votar?")
          Escreval("Digite o número do candidato: ")
          Leia(voto)
          Se( isValido(voto) = "s")entao
              Escreval("Voto registrado")
          Senao
              Escreval("Voto NULO registrado")
              votos_nulos <- votos_nulos + 1
          fimse
      fimse
fimProcedimento

procedimento Relatorio()
Var
   i: inteiro
Inicio
      Limpatela()
      Para i de 1 ate 10 faca
           Se(candidatos[i].nome <> "")
               Escreva(candidatos[i].numero, "")
               Escreval(candidatos[i].nome)
               Escreval("Votos", candidatos[i].votos)
           fimse
      Fimpara
      Escreval("Votos Nulos", votos_nulos)
      Escreval("Votos Brancos", votos_brancos)

fimProcedimento

Var
 vetor: candidatos[1..10] de candidato
 opcao, votos_nulos, votos_branco: inteiro
Inicio
      candidatos[1].nome <- "MARQUINHOS"
      candidatos[2].nome <- "JOAOZINHOS"
      candidatos[1].numero <- 13
      candidatos[2].numero <- 31
      candidatos[1].partido <- "Ipiraporinha"
      candidatos[2].partido <- "Xique-Xique"
repita
      Escreval("URNA ELETRÔNICA")
      Escreval("1 - VOTAR")
      Escreval("2 - RELATÓRIO")
      Escreval("3 - SAIR")
      Leia(opcao)

      escolha opcao
          Caso 1
               Votar()
          Caso 2
               Relatorio()
      fimescolha
ate opcao = 3
fimalgoritmo