Algoritmo "CAIXA_ELETRONICO"

Tipo Transacao = Registro
   data: caracter
   valor: real
fimRegistro
Var
   movimentacao: vetor[1..100] de Transacao
   ultima_posicao: inteiro
   opcao: inteiro

Procedimento Login()
Var
   usuario, senha: caracter
   i: inteiro
Inicio
   para i de 1 ate 3 faca
      Escreval("- Login -")
      Escreval("Tentativa",i ,"de 3")
      Escreval("Qual o usuário: ")
      Leia(usuario)
      Escreval("Qual a senha: ")
      Leia(senha)
      Se(usuario <> "lucas") ou (senha <> "1234")entao
         Escreval("Usuario ou senha incorreto!")
      Senao
         interrompa
      Fimse
   fimpara

   Se(i = 3)entao
      Escreval("Acesso negado.")
      Fimalgoritmo
   fimse

fimProcedimento

Procedimento Sacar()
Var
   valor_na_conta: real
   valor_saque: real
   data: caracter
Inicio
valor_na_conta <-Saldo()
    Escreval("Saque")
    Escreval("Saldo disponível na conta: ", valor_na_conta)
    Escreval("Qual o valor do saque?")
    Leia(valor_saque)
    
    Se(valor_saque > valor_na_conta)entao
        Escreval("Saldo insuficiente")
    Senao
        Escreval("Qual a data de hoje?")
        Leia(data)
        ultima_posicao <- ultima_posicao + 1
        
        
        movimentacao[ultima_posicao].valor <- valor_na_conta + valor_saque
        movimentacao[ultima_posicao].data <- data
    Fimse
fimProcedimento
    

procedimento Depositar()
Var
   valor: real
   data: caracter
Inicio
    Escreval("Qual o valor a ser depositado? ")
    Leia(valor)
    Escreval("Qual a data do depósito? ")
    Leia(data)
    ultima_posicao <- ultima_posicao + 1
    
    movimentacao[ultima_posicao].valor <- valor
    movimentacao[ultima_posicao].data  <- data
fimProcedimento

Procedimento Extrato()
Var
   i: inteiro
Inicio
      Escreval("- EXTRATO DA CONTA -")
      Para i de 1 ate 100 faca
           Escreval("Saldo total: ", Saldo())
      fimpara
fimProcedimento

Funcao Saldo(): real
Var
   i: inteiro
   valor: real
Inicio
      Para i de 1 ate 100 faca
         valor <- valor + movimentacao[i].valor
      fimpara
      Retorne valor
FimFuncao
Inicio
   // Login do usuário
   Login()
   //Opcoes
   repita
      Escreval("- OPÇÕES - ")
      Escreval("1 - DEPOSITAR")
      Escreval("2 - SAQUE")
      Escreval("3 - VER EXTRATO")
      Escreval("4 - SAIR.")
      Leia(opcao)

      escolha opcao
      Caso 1
           Limpatela()
           Depositar()
      Caso 2
           Limpatela()
           Sacar()
      Caso 3
           Limpatela()
           Extrato()
      fimescolha
   ate opcao = 4
Fimalgoritmo