Algoritmo "VETOR_CHURRASCO"

Tipo ingrediente = registro
     nome: caracter
     qnt: real
     valorUnit: real
     valorTotal: real
fimregistro
Var
   item : vetor[1..100] de ingrediente
   i, qnt_pessoas : inteiro
   valor_individual, custo_total : real
   add_mais : caracter
Inicio

   Escreval("Quantas pessoas v�o ao churrasco? ")
   Leia(qnt_pessoas)

   Para i de 1 at� 100 Fa�a
      Limpatela()
      Escreva("Qual � o item: ")
      Leia(item[i].nome)
      Escreva("Qual � a quantidade: ")
      Leia(item[i].qnt)
      Escreva("Qual � o Valor Unit�rio: ")
      Leia(item[i].valorUnit)
      item[i].valorTotal <- item[i].qnt * item[i].valorUnit
      custo_total <-custo_total + item[i].valorUnit
      valor_individual <- custo_total / qnt_pessoas

      Escreval("--------------------------")
      Escreval("Total at� agora: R$", custo_total)
      Escreval("Total Individual: R$", valor_individual)

      Escreval("Add mais? S/n: ")
      Leia(add_mais)

      Se(add_mais = "n") Ent�o
         interrompa
      Fimse
   Fimpara

   Limpatela()
   Escreva(" i")
   Escreva(" ITEM")
   Escreva("   QNT")
   Escreva("  V_U")
   Escreval("   V_T")
   
   Para i de 1 at� 100 Fa�a
      Se (item[i].nome <> "") Ent�o
         Escreva(i)
         Escreva(" ", item[i].nome)
         Escreva(" ", item[i].qnt)
         Escreva(" ", item[i].valorUnit:2:2)
         Escreval(" ", item[i].valorTotal:2:2)
      Fimse
   Fimpara

Fimalgoritmo