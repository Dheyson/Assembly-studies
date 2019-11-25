
# 26. Faça um algoritmo que receba três números, calcule e mostre a multiplicação desses números.

.data

	n1: .float 4.3
	n2: .float 6.2
	n3: .float 7.0
	
	msg: .asciiz "A média é: "

.text	
	
	lwc1 $f1, n1
	lwc1 $f2, n2
	lwc1 $f3, n3
	
	li $v0, 4
	la $a0, msg
	syscall
	
	li $v0, 2
	mul.s $f12, $f1, $f2 
	mul.s $f12, $f12, $f3 
	syscall
