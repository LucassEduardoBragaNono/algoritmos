Algoritmo "login"

Var
i: inteiro
usuario: caracter
senha: inteiro
Inicio
  para i de 1 até 3 faça
    limpatela()
    Escreval("Você tem", i," tentativas")
    Escreval("Digite o nome do usuário: ")
    Leia(usuario)
    Escreval("Digite a senha do usuário: ")
    Leia(senha)
    
    Se(usuario = "Lucas") E (senha = "1234")Então
        Escreval("Login concluído!")
        interrompa
    Senão
        Se(i = 3)Então
           Escreval("Acesso negado!")
        Fimse
    Fimse
  fimpara
Fimalgoritmo