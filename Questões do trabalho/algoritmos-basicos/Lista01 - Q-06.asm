# O restaurante a quilo Bem-B�o cobra R$12,00 por cada quilo de refei��o.
# Escreva um algoritmo que leia o peso do prato montado pelo cliente 
# (em quilos) e imprima o valor a pagar. Assuma que a balan�a j� desconte 
# o peso do prato. 

.data
	msg: .asciiz "O Valor do prato �: "
	prato: .float 1.20
	quilo: .float 12.00
.text
	lwc1 $f1, prato
	lwc1 $f2, quilo
	
	li $v0, 4
	la $a0, msg
	syscall
	
	li $v0, 2
	mul.s  $f12, $f2, $f1
	syscall
	
	
	
	
	