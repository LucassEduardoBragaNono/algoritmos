Algoritmo "IMC_CALCULATOR"

Var
   massa_corporal, altura, imc: real
Inicio
    Escreval("Digite a sua massa corporal: ")
    Leia(massa_corporal)
    Escreval("Digite a sua altura: ")
    Leia(altura)
    imc <- massa_corporal/(altura*altura)
    Escreval("O seu IMC �: ", imc)
    Se(imc <= 18.5)Ent�o
      Escreval("Voc� est� abaixo do peso")
    Sen�o
    Se(imc >= 18.6) E (imc <= 24.9)Ent�o
      Escreval("Voc� est� no peso ideal!")
    Sen�o
      Se(imc >= 25.0) E (imc <= 29.9)Ent�o
        Escreval("Voc� est� levemente acima do peso")
      Sen�o
        Se(imc >= 30.0) E (imc <= 34.9 )Ent�o
          Escreval("Voc� est� em obesidade grau 1")
        Sen�o
          Se(imc >= 35.0) E (imc <= 39.9)Ent�o
            Escreval("Voc� est� em obesidade grau 2")
          Sen�o
            Se(imc >= 40.0)Ent�o
              Escreval("Voc� est� em obesidade 3")
            Fimse
          Fimse
        Fimse
      Fimse
    Fimse
  Fimse
Fimalgoritmo