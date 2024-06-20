Algoritmo "SALDOMEDIO_VALORCREDITO"

Var
saldo_medio, bonus_credito: real
idade: inteiro
seguro_emprestimo: real
total: real
Inicio
    Escreval("Qual o seu saldo médio? ")
    Leia(saldo_medio)
    Escreval("Qual a sua idade: ")
    Leia(idade)
    
    Se(saldo_medio <= 200) Então
        Escreval("Emprestimo não concedido!")
    Senão
        Se(saldo_medio > 200) E (saldo_medio <= 400) Então
            bonus_credito <- saldo_medio*0.2
        Fimse
        
        Se(saldo_medio > 400) E (saldo_medio <= 600) Então
            bonus_credito <- saldo_medio*0.3
        Fimse
        
        Se(saldo_medio > 600) Então
            bonus_credito <- saldo_medio*0.4
        Fimse
        Escreval("Seu saldo médio é de: ", bonus_credito)
    Fimse
        
    Se(idade >= 18) E (idade <= 24) Então
        seguro_emprestimo <- (saldo_medio*0.02)
        Se(idade >= 25) E (idade <= 35) Então
            seguro_emprestimo <- (saldo_medio*0.06)
        Fimse
        
        Se(idade >= 36) E (idade <= 45) Então
            seguro_emprestimo <- (saldo_medio*0.08)
        Fimse
        
        Se(idade >= 46) E (idade <= 55) Então
            seguro_emprestimo <- (saldo_medio*0.10)
        Fimse
        
        Se(idade >= 56) Então
            seguro_emprestimo <- (saldo_medio*0.15)
        Fimse
        Escreval("O seguro emprestimo será de: ", seguro_emprestimo)
            total <- saldo_medio + bonus_credito - seguro_emprestimo
        Escreval("O Total sera de R$: ", total)
    Fimse
Fimalgoritmo