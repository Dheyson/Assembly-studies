
# 27. Fa�a um algoritmo que receba dois n�meros, calcule e mostre 
# a divis�o do primeiro n�mero pelo segundo. Sabe-se que o segundo 
# n�mero n�o pode ser zero, portanto n�o � necess�rio se preocupar com valida��es. 

.data
	n1: .float 10.25
	n2: .float 5.00
	
	msg: .asciiz "O Divis�o do primeiro pelo segundo �: "
	
.text
	lwc1 $f1, n1
	lwc1 $f2, n2
	
	li $v0, 4
	la $a0, msg
	syscall
	
	li $v0, 2
	div.s $f12, $f1, $f2
	syscall
