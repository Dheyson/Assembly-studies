
# 18. A empresa Hipotheticus paga R$10,00 por hora normal 
# trabalhada, e R$15,00 por hora extra. Faça um algoritmo 
# para calcular e imprimir o salário bruto e o salário 
# líquido de um determinado funcionário. Considere que o 
# salário líquido é igual ao salário bruto descontando-se 
# 10% de impostos.

.data

	v_normal: .float 10.00
	v_extra: .float 15.00
	
	h_normal: .float 200
	h_extra: .float 20

	msg_bru: .asciiz "Salário bruto: "
	msg_liq: .asciiz "\nSalário líquido: "
	
.text
	# Valores
	lwc1 $f1, v_normal
	lwc1 $f2, v_extra
	
	lwc1 $f3, h_normal
	lwc1 $f4, h_extra
	
	
	
	

	
