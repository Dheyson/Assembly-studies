
# 12. Fa�a um algoritmo para ler o sal�rio de um funcion�rio e aument�-Io
# em 15%. Ap�s o aumento, desconte 8% de impostos. Imprima o sal�rio 
# inicial, o sal�rio com o aumento e o sal�rio final. 

.data
	salario: .float 1000
	almento: .float 1.15
	desconto: .float 0.92
	zero: .float 0.0
	
	msg_sal: .asciiz "Sal�rio: "
	msg_alm: .asciiz "\nSal�rio com almento : "
	msg_des: .asciiz "\nSal�rio final : "
	
.text
	# Valores
	lwc1 $f1, salario
	lwc1 $f2, almento
	lwc1 $f3, desconto
	lwc1 $f4, zero
	
	# Valor do Sal�lrio
	li $v0, 4
	la $a0, msg_sal
	syscall
	
	li $v0, 2
	add.s  $f12, $f1, $f4
	syscall
	
	# Valor com Acrecimo
	li $v0, 4
	la $a0, msg_alm
	syscall
	
	li $v0, 2
	mul.s  $f12, $f1, $f2
	syscall
	
	# Valor com Desconto/Total
	li $v0, 4
	la $a0, msg_des
	syscall
	
	li $v0, 2
	mul.s $f12, $f12, $f3
	syscall
	
