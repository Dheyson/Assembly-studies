
# 39. Jo�o recebeu seu sal�rio de R$ 1200,00 e precisa pagar duas
# contas (C1=R$ 200,00 e C2=R$120,00) que est�o atrasadas. Como 
# as contas est�o atrasadas, Jo�o ter� de pagar multa de 2% sobre 
# cada conta. Fa�a um algoritmo que calcule e mostre quanto restar�
# do sal�rio do Jo�o 

.data
	SALARIO: .float 1200.00
	C1: .float 200.00
	C2: .float 120.00
	
	pc: .float 1.02
	zero: .float 0.0
	
	msg: .asciiz "Resto do s�larios: "
	
.text

	lwc1 $f1, C1
	lwc1 $f2, C2
	lwc1 $f3, SALARIO
	lwc1 $f4, pc
	lwc1 $f5, zero
	
	
	li $v0, 4
	la $a0, msg
	syscall
	
	li $v0, 2
	mul.s $f10, $f1, $f4
	mul.s $f11, $f2, $f4
	add.s $f12, $f10, $f11
	sub.s $f12, $f3 ,$f12 
	syscall