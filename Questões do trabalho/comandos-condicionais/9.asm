.data
	true:        .ascii "Emprestimo concedido\n"
	false:       .ascii "Emprestimo nao concedido\n"
	salario:     .float 2100.0
	prestacao:   .float 800.40
	porcentagem: .float 0.20
.text
	lwc1 $f1, salario
	lwc1 $f2, prestacao
	lwc1 $f3, porcentagem
	
	mul.s $f4, $f1, $f3
	add.s $f12, $f1, $f4 
	
	c.lt.s $f12, $f1
	
	bc1t return1
	bc1f return2
	
	# Instrucao para finalizar o programa
	li $v0, 10
	syscall
	
	return1: 
	li $v0, 4
	la $a0, true
	syscall
	
	return2:
	li $v0, 4
	la $a0, false
	syscall
	