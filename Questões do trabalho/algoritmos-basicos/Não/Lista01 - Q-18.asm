
# 18. A empresa Hipotheticus paga R$10,00 por hora normal 
# trabalhada, e R$15,00 por hora extra. Fa�a um algoritmo 
# para calcular e imprimir o sal�rio bruto e o sal�rio 
# l�quido de um determinado funcion�rio. Considere que o 
# sal�rio l�quido � igual ao sal�rio bruto descontando-se 
# 10% de impostos.

.data

	v_normal: .float 10.00
	v_extra: .float 15.00
	
	h_normal: .float 200
	h_extra: .float 20

	msg_bru: .asciiz "Sal�rio bruto: "
	msg_liq: .asciiz "\nSal�rio l�quido: "
	
.text
	# Valores
	lwc1 $f1, v_normal
	lwc1 $f2, v_extra
	
	lwc1 $f3, h_normal
	lwc1 $f4, h_extra
	
	
	
	

	
