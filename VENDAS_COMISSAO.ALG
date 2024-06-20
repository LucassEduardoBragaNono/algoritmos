Algoritmo "VENDAS_COMISSAO"


Var
  qm, vlr_qm, comissaomuss: real
  qp, vlr_qp, comissaopre: real
  qmo, vlr_qmo, comissaomor: real
  qpp, vlr_qpp, comissaopei: real
  total_venda: real
  total_comissao: real
  
Inicio
    Escreva ("Digite a quantidade vendida de mussarela: ")
    Leia (qm)
    vlr_qm <- qm * 55.0
    comissaomuss <- vlr_qm * 0.07
    Escreval ("O valor vendido é ",vlr_qm)
    Escreval ("A comissão é de ",comissaomuss)
    
    Escreva ("Digite a quantidade vendida de presunto: ")
    Leia (qp)
    vlr_qp <- qp * 33.0
    comissaopre <- vlr_qp * 0.04
    Escreval ("O valor vendido é ",vlr_qp)
    Escreval ("A comissão é de ",comissaopre)
    
    Escreva ("Digite a quantidade vendida de mortadela: ")
    Leia (qmo)
    vlr_qmo <- qmo * 23.0
    comissaomor <- vlr_qmo * 0.08
    Escreval ("O valor vendido é ",vlr_qmo)
    Escreval ("A comissão é de ",comissaomor)
    
    Escreva ("Digite a quantidade vendida de peito de peru: ")
    Leia (qpp)
    vlr_qpp <- qpp * 85.0
    comissaopei <- vlr_qpp * 0.02
    Escreval ("O valor vendido é ",vlr_qpp)
    Escreval ("A comissão é de ",comissaopei)
    
    total_venda <- vlr_qm+vlr_qp+vlr_qmo+vlr_qpp
    total_comissao <- comissaomuss+comissaopre+comissaomor+comissaopei
    
    Escreval (" TOTAL DE VENDAS ")
    Escreval ("Mussarela: R$ ", vlr_qm)
    Escreval ("Presunto: R$ ", vlr_qp)
    Escreval ("Mortadela: R$ ", vlr_qmo)
    Escreval ("Peito de Peru: R$ ", vlr_qpp)
    Escreval ("Valor total: R$ ", total_venda)
    Escreval ("")
    Escreval (" TOTAL DE COMISSÕES ")
    Escreval ("Mussarela: R$ ", comissaomuss)
    Escreval ("Presunto: R$ ", comissaopre)
    Escreval ("Mortadela: R$ ", comissaomor)
    Escreval ("Peito de Peru: R$ ", comissaopei)
    Escreval (" Comissão total: R$ ", total_comissao)
    

Fimalgoritmo