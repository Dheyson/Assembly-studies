.data
	message2: .ascii "A media das notas e: \n"
	nota1: .float 7.7
	nota2: .float 8.7
	base:  .float 10.0
	
	media: .float 2.0
.text
	main:
	# Loading float
	lwc1 $f0, nota1
	lwc1 $f2, nota2
	lwc1 $f3, base
	lwc1 $f4, media
	
	# Condicionais
	c.le.s $f2, $f3
	
	bc1t positive
		
	# Instrucao para finalizar o programa
	li $v0, 10
	syscall
	
	positive:
	li $v0, 4
	la $a0, message2
	syscall
	
	li $v0, 2
	add.s $f10, $f2, $f0
	div.s $f12, $f10,  $f4
	syscall
	
	
	
	

	
