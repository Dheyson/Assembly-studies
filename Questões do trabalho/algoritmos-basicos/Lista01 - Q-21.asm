# 21. A fábrica de refrigerantes Meia-Cola vende seu produto em três 
# formatos: lata de 350 ml, garrafa de 600 ml e garrafa de 2 litros. Se
# um comerciante compra uma determinada quantidade de cada formato, 
# faça um algoritmo para calcular quantos litros de refrigerante ele comprou. 

.data

	lata: .float 0.35
	m_garrafa: .float 0.6
	garrafa: .float 2
	
	q_lata: .float 300
	q_m_garrafa: .float 200
	q_garrafa: .float 100
	
	msg: .asciiz "Quantidade em litros: "
	
.text

	lwc1 $f1, lata
	lwc1 $f2, m_garrafa
	lwc1 $f3, garrafa
	
	lwc1 $f4, q_lata
	lwc1 $f5, q_m_garrafa
	lwc1 $f6, q_garrafa
	
	
	li $v0, 4
	la $a0, msg
	syscall
	
	li $v0, 2
	mul.s $f7 $f1, $f4
	mul.s $f8 $f2, $f5
	mul.s $f9 $f3, $f6
	
	add.s $f12, $f7, $f8
	add.s $f12, $f9, $f12
	syscall
	
	
	