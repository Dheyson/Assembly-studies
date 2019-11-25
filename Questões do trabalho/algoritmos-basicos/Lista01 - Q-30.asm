
# 30. Um funcion�rio recebe um sal�rio fixo mais 4% de comiss�o 
# sobre as vendas. Fa�a um algoritmo que receba o sal�rio fixo 
# de um funcion�rio e o valor de suas vendas, calcule e mostre
# a comiss�o e o sal�rio final do funcion�rio.

.data

	salario: .float 1000
	vendas: .float 2000
	comissao: .float 0.04
	pc_comissao: .float 1.04
	
	msg_sal: .asciiz "\nSal�rio: "
	msg_com: .asciiz "Comiss�o : "
	
.text
	# Leitura dos valores
	lwc1 $f1, salario
	lwc1 $f2, comissao
	lwc1 $f3, vendas
	lwc1 $f4, pc_comissao
	
	# Valor da Comiss�o
	li $v0, 4
	la $a0, msg_com
	syscall
	
	li $v0, 2
	mul.s  $f12, $f3, $f2
	syscall
	
	# Valor do Sal�lrio
	li $v0, 4
	la $a0, msg_sal
	syscall
	
	li $v0, 2
	mul.s $f12, $f3, $f4
	sub.s $f12, $f12, $f3
	add.s $f12, $f1, $f12 
	syscall