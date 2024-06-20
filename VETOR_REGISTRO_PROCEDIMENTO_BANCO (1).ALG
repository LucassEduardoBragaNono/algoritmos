Algoritmo "VETOR_REGISTRO_PROCEDIMENTO_BANCO"

// Definição do tipo do Vetor
Tipo Transacao = Registro
   data : caracter
   valor : real
FimRegistro

Var
   // Declaração do vetor que armazenará
   // as transações da conta.
   movimentacao : vetor[1..100] de Transacao
   opcao, ultima_posicao : inteiro

Procedimento Login()
Var
   usuario, senha : caracter
   i : inteiro
Inicio
   Escreval("LOGIN")
   Para i de 1 até 3 Faça
      Escreval("Tentativa ", i, " de 3")
      Escreval("Informe seu usuário:")
      Leia(usuario)
      Escreval("Informe sua senha:")
      Leia(senha)
      Se (usuario <> "aluno") Ou (senha <> "123") Então
         Escreval("Usuário/senha incorreto")
         Se (i = 3) Então
            Escreval("Acesso bloqueado.")
            Fimalgoritmo
         Fimse
      Senão
         Interrompa // para sair do para
      Fimse
   Fimpara
   

   
FimProcedimento

// Encapsulamento da funcionalidades do Saque
Procedimento Sacar()
Var
   valor_na_conta : real
   valor_saque : real
   data : caracter
Inicio
   // Chamando a função Saldo() apenas uma vez
   // e armazenando seu retorno numa variável
   // para poupa processamento (multiplas
   // chamadas da mesma função)
   valor_na_conta <- Saldo()
   Escreval("SAQUE")
   Escreval("Saldo da conta: R$ ", valor_na_conta )
   Escreval("Quanto você quer sacar?")
   Leia(valor_saque)

   Se (valor_saque > valor_na_conta) Então
      Escreval("Saldo insuficiente")
   Senão
      Escreval("Qual a data de hoje?")
      Leia(data)

      ultima_posicao <- ultima_posicao + 1

      movimentacao[ultima_posicao].data <- data
      movimentacao[ultima_posicao].valor <- (valor_saque * -1)
   Fimse
FimProcedimento

// Encapsulamento da funcionalidades do Depósito
Procedimento Depositar()
Var
   data : caracter
   valor : real
Inicio
   Escreval("DEPÓSITO")
   Escreval("Qual a data de hoje?")
   Leia(data)
   Escreval("Quanto vc vai depositar:")
   Leia(valor)

   ultima_posicao <- ultima_posicao + 1

   movimentacao[ultima_posicao].data <- data
   movimentacao[ultima_posicao].valor <- valor

FimProcedimento

// Encapsulamento da funcionalidades do Extrato
Procedimento Extrato()
Var
   i : inteiro
Inicio
   Escreval("EXTRATO DA CONTA")
   Para i de 1 até 100 Faça
      Se (movimentacao[i].data <> "") Então
         Escreva(movimentacao[i].data)
         Escreva("   ")
         Escreval(movimentacao[i].valor)
      Fimse
   Fimpara
   Escreval("Saldo da conta: R$ ", Saldo() )
FimProcedimento

// Função para somar o valor de todas as
// transações.
Funcao Saldo() : real
Var
   i : inteiro
   valor : real
Inicio
   Para i de 1 até 100 Faça
      valor <- valor + movimentacao[i].valor
   Fimpara
   Retorne valor
FimFuncao

// Inicio do Fluxo principal do algoritmo
Inicio

   Login()

   Repita
      Escreval("CAIXA ELETRÔNICO")
      Escreval("1 - Sacar")
      Escreval("2 - Depositar")
      Escreval("3 - Extrato")
      Escreval("0 - Finalizar")
      Leia(opcao)

      Limpatela()

      Escolha opcao
      Caso 1
         Sacar()
      Caso 2
         Depositar()
      Caso 3
         Extrato()
      FimEscolha

   Até (opcao = 0)
Fimalgoritmo