
# 27. Faça um algoritmo que receba dois números, calcule e mostre 
# a divisão do primeiro número pelo segundo. Sabe-se que o segundo 
# número não pode ser zero, portanto não é necessário se preocupar com validações. 

.data
	n1: .float 10.25
	n2: .float 5.00
	
	msg: .asciiz "O Divisão do primeiro pelo segundo é: "
	
.text
	lwc1 $f1, n1
	lwc1 $f2, n2
	
	li $v0, 4
	la $a0, msg
	syscall
	
	li $v0, 2
	div.s $f12, $f1, $f2
	syscall
