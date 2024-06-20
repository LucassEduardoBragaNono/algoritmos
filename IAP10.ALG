Algoritmo "Calculo_Estatisticas"

Var
   idade, altura, peso: real
   pessoas_50anos: inteiro
   altura_total_10_20_anos: real
   contador_10_20_anos, contador_peso_inferior_50: inteiro
   i: inteiro

Inicio
   Para i de 1 ate 3 faca
       Escreva("Digite a idade da pessoa ", i, ": ")
       Leia(idade)
       Escreva("Digite a altura (em CM) da pessoa ", i, ": ")
       Leia(altura)
       Escreva("Digite o peso (em KG) da pessoa ", i, ": ")
       Leia(peso)

       Se(idade > 50)entao
           pessoas_50anos <- pessoas_50anos + 1
           Escreval("A quantidade de pessoas com 50+ é: ", pessoas_50anos)
       Fimse
       Se
   Fimpara
Fimalgoritmo


