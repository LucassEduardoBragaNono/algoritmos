Algoritmo "login"

Var
i: inteiro
usuario: caracter
senha: inteiro
Inicio
  para i de 1 at� 3 fa�a
    limpatela()
    Escreval("Voc� tem", i," tentativas")
    Escreval("Digite o nome do usu�rio: ")
    Leia(usuario)
    Escreval("Digite a senha do usu�rio: ")
    Leia(senha)
    
    Se(usuario = "Lucas") E (senha = "1234")Ent�o
        Escreval("Login conclu�do!")
        interrompa
    Sen�o
        Se(i = 3)Ent�o
           Escreval("Acesso negado!")
        Fimse
    Fimse
  fimpara
Fimalgoritmo