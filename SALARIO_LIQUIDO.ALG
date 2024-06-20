Algoritmo "SALARIO_LIQUIDO"

Var
salario, desconto_salarial: real
saldo_final: real
desconto_inss: real
total_imposto: real
Inicio
    Escreval("Digite o seu sálario: ")
    Leia(salario)
    
    //Imposto de Renda
    Se (salario <= 2258)Então
        desconto_salarial <- 0
    Senão
        Se (salario >= 2259) E (salario <= 2826)Então
            desconto_salarial <- salario * 0.075
    Senão
        Se (salario >= 2827) E (salario <= 3551 )Então
            desconto_salarial <- salario * 0.15
    Senão
        Se (salario >= 3552) E (salario <= 4664)Então
            desconto_salarial <- salario * 0.225
    Senão
        Se (salario >= 4665)
            desconto_salarial <- salario * 0.275
            
    //Imposto do INSS
    Se (salario <= 1412) Então
        desconto_inss <- salario * 0.075
    Senão
        Se(salario >= 1412) E (salario <= 2666)Então
            desconto_inss <- salario * 0.09
    Senão
        Se(salario >= 2667) E (salario <= 4000)Então
            desconto_inss <- salario * 0.12
    Senão
        Se(salario >= 4001) E (salario <= 7786) Então
            desconto_inss <- salario * 0.14
    Senão
        Se(salario >= 7787) Então
            desconto_inss <- 7787 * 0.14
            
    total_imposto <- desconto_salarial + desconto_inss
    saldo_final <- salario - total_imposto
    
    Escreval("Imposto de Renda R$: ", desconto_salarial)
    Escreval("Imposto do INSS R$: ", desconto_inss)
    Escreval("O Total a ser descontado de imposto será de R$: ", total_imposto)
    Escreval("O seu sálario líquido será de R$: ", saldo_final)
        Fimse
        Fimse
        Fimse
        Fimse
        Fimse
        Fimse
        Fimse
        Fimse
    Fimse
    Fimse
Fimalgoritmo