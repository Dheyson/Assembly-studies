.data
	message: .ascii "A raiz quadrada e: \n"
	message2: .ascii "O numero ao quadrado e: \n"
	float: .float 20.0
	zero: .float 0.0
.text
	main:
	# Loading float
	lwc1 $f0, float
	lwc1 $f2, zero
	
	# Condicionais
	c.le.s $f2, $f0
	
	bc1t higher
	bc1f lower
		
	# Instrucao para finalizar o programa
	li $v0, 10
	syscall
	
	higher:
	li $v0, 4
	la $a0, message2
	syscall
	
	li $v0, 2
	sqrt.s $f12, $f0
	syscall
	
	lower: 
	li $v0, 4
	la $a0, message
	syscall
	
	li $v0, 2
	mul.s $f12, $f0, $f0
	syscall
	
	
