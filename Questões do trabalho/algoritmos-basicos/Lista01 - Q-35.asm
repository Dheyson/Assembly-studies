
# 35. Faça um algoritmo que calcule e mostre a área de um losango.
# Sabe-se que: A = (diagonal_maior * diagonal_menor)/2; 

.data

	base_maior: .float 5.5
	base_menor: .float 2.75
	base_dois: .float 2
	
	msg: .asciiz "A área do losango é: "

.text

	lwc1 $f1, base_maior
	lwc1 $f2, base_menor
	lwc1 $f3, base_dois
	
	li $v0, 4
	la $a0, msg
	syscall

	
	li $v0, 2
	mul.s $f12, $f1, $f2
	div.s $f12, $f12, $f3
	syscall