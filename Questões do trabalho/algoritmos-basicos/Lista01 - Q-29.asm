
# 29. Fa�a um algoritmo que receba o pre�o de um produto, calcule e 
# mostre o novo pre�o, sabendo-se que este sofreu um desconto de 10%

.data 

	produto: .float 1000
	desconto: .float 0.90
	
	msg: .asciiz "O valor do produti com desconto � : "
	
.text
	# Leitura de valores
	lwc1 $f1, produto
	lwc1 $f2, desconto
	
	# Saida da Mensagem 
	li $v0, 4
	la $a0, msg
	syscall
	
	# Calculo e Saida do Valor
	li $v0, 2
	mul.s  $f12, $f1, $f2
	syscall