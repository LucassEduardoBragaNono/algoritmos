Algoritmo "media2notasalunos"

Var
i:inteiro
nota1, nota2, media: real
Inicio
Para i de 1 ate 2 faca
    Escreval("Vamos digitar as notas do aluno: ", i)
    
    Repita
        Escreval("Digite a primeira nota:")
        Leia(nota1)
    Ate(nota1 >= 0 ) e (nota1 <=10)
    
    Repita
        Escreva("Digite a segunda nota: ")
        Leia(nota2)
    Ate(nota2 >= 0 ) e (nota2 <=10)
    
    media <- (nota1+nota2)/2
    Escreval("A média das notas do aluno: ", i, "será de: ", media)
    
    Se(media < 6)então
        Escreval("vc é burro amigao")
    fimse
    Se(media > 6)então
        Escreval("fez o básico, fica orgulho não")
    fimse
Fimpara
Fimalgoritmo