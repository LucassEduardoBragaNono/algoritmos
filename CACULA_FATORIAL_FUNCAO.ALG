algoritmo "Cacula Fatorial"
var

   numeroParaFatorial: inteiro //numero que a pessoa quer o fatorial

   funcao calculaFatorial(numero: inteiro): inteiro //exibindo a fun��o
   var
          fatorial: inteiro  //declara��o
          contador: inteiro
   inicio
         fatorial <- 1 // no inicio ele vale 1
         ENQUANTO numero > 1 FACA
                  fatorial <- fatorial * numero  //como o fatorial � 1 * numero (- 1)
                                                 //se for 5= 1 * 5 - 1
                  numero <- numero - 1
         FIMENQUANTO
         retorne fatorial
   fimfuncao

inicio

      ESCREVA("Informe o n�mero para o c�lculo do Fatorial: ")
      LEIA(numeroParaFatorial)
      ESCREVA("O fatorial de ", numeroParaFatorial, " �: ", calculaFatorial(numeroParaFatorial))

fimalgoritmo