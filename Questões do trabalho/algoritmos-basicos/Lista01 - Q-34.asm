
# 34. Fa�a um algoritmo que calcule e mostre a �rea de
# um quadrado. Sabe-se que: A = lado * lado; 

.data
	
	base: .float  10.0
	
	msg: .asciiz " �era do quadrado: "
	
.text
	lwc1 $f1, base
	
	li $v0, 4
	la $a0, msg
	syscall
	
	li $v0, 2
	mul.s $f12, $f1, $f1
	syscall