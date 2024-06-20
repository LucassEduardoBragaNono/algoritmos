algoritmo "Cacula Fatorial"
var

   numeroParaFatorial: inteiro //numero que a pessoa quer o fatorial

   funcao calculaFatorial(numero: inteiro): inteiro //exibindo a função
   var
          fatorial: inteiro  //declaração
          contador: inteiro
   inicio
         fatorial <- 1 // no inicio ele vale 1
         ENQUANTO numero > 1 FACA
                  fatorial <- fatorial * numero  //como o fatorial é 1 * numero (- 1)
                                                 //se for 5= 1 * 5 - 1
                  numero <- numero - 1
         FIMENQUANTO
         retorne fatorial
   fimfuncao

inicio

      ESCREVA("Informe o número para o cálculo do Fatorial: ")
      LEIA(numeroParaFatorial)
      ESCREVA("O fatorial de ", numeroParaFatorial, " é: ", calculaFatorial(numeroParaFatorial))

fimalgoritmo