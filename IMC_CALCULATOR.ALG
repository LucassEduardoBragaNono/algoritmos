Algoritmo "IMC_CALCULATOR"

Var
   massa_corporal, altura, imc: real
Inicio
    Escreval("Digite a sua massa corporal: ")
    Leia(massa_corporal)
    Escreval("Digite a sua altura: ")
    Leia(altura)
    imc <- massa_corporal/(altura*altura)
    Escreval("O seu IMC é: ", imc)
    Se(imc <= 18.5)Então
      Escreval("Você está abaixo do peso")
    Senão
    Se(imc >= 18.6) E (imc <= 24.9)Então
      Escreval("Você está no peso ideal!")
    Senão
      Se(imc >= 25.0) E (imc <= 29.9)Então
        Escreval("Você está levemente acima do peso")
      Senão
        Se(imc >= 30.0) E (imc <= 34.9 )Então
          Escreval("Você está em obesidade grau 1")
        Senão
          Se(imc >= 35.0) E (imc <= 39.9)Então
            Escreval("Você está em obesidade grau 2")
          Senão
            Se(imc >= 40.0)Então
              Escreval("Você está em obesidade 3")
            Fimse
          Fimse
        Fimse
      Fimse
    Fimse
  Fimse
Fimalgoritmo