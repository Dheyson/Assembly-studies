
# 12. Faça um algoritmo para ler o salário de um funcionário e aumentá-Io
# em 15%. Após o aumento, desconte 8% de impostos. Imprima o salário 
# inicial, o salário com o aumento e o salário final. 

.data
	salario: .float 1000
	almento: .float 1.15
	desconto: .float 0.92
	zero: .float 0.0
	
	msg_sal: .asciiz "Salário: "
	msg_alm: .asciiz "\nSalário com almento : "
	msg_des: .asciiz "\nSalário final : "
	
.text
	# Valores
	lwc1 $f1, salario
	lwc1 $f2, almento
	lwc1 $f3, desconto
	lwc1 $f4, zero
	
	# Valor do Salálrio
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
	
