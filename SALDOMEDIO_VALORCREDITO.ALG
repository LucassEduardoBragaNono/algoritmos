Algoritmo "SALDOMEDIO_VALORCREDITO"

Var
saldo_medio, bonus_credito: real
idade: inteiro
seguro_emprestimo: real
total: real
Inicio
    Escreval("Qual o seu saldo m�dio? ")
    Leia(saldo_medio)
    Escreval("Qual a sua idade: ")
    Leia(idade)
    
    Se(saldo_medio <= 200) Ent�o
        Escreval("Emprestimo n�o concedido!")
    Sen�o
        Se(saldo_medio > 200) E (saldo_medio <= 400) Ent�o
            bonus_credito <- saldo_medio*0.2
        Fimse
        
        Se(saldo_medio > 400) E (saldo_medio <= 600) Ent�o
            bonus_credito <- saldo_medio*0.3
        Fimse
        
        Se(saldo_medio > 600) Ent�o
            bonus_credito <- saldo_medio*0.4
        Fimse
        Escreval("Seu saldo m�dio � de: ", bonus_credito)
    Fimse
        
    Se(idade >= 18) E (idade <= 24) Ent�o
        seguro_emprestimo <- (saldo_medio*0.02)
        Se(idade >= 25) E (idade <= 35) Ent�o
            seguro_emprestimo <- (saldo_medio*0.06)
        Fimse
        
        Se(idade >= 36) E (idade <= 45) Ent�o
            seguro_emprestimo <- (saldo_medio*0.08)
        Fimse
        
        Se(idade >= 46) E (idade <= 55) Ent�o
            seguro_emprestimo <- (saldo_medio*0.10)
        Fimse
        
        Se(idade >= 56) Ent�o
            seguro_emprestimo <- (saldo_medio*0.15)
        Fimse
        Escreval("O seguro emprestimo ser� de: ", seguro_emprestimo)
            total <- saldo_medio + bonus_credito - seguro_emprestimo
        Escreval("O Total sera de R$: ", total)
    Fimse
Fimalgoritmo