# 36. Faça um algoritmo que receba o valor do salário mínimo e o 
# valor do salário de um funcionário, calcule e mostre a quantidade
# de salários mínimos que ganha esse funcionário.

.data 

	salario: .float 6986.00
	sal_minimo: .float 998.00
	
	msg: .asciiz "Quantidade de salário minimos é: "
	
.text
	
	lwc1 $f1, salario
	lwc1 $f2, sal_minimo
	
	li $v0, 4
	la $a0, msg
	syscall
	
	li $v0, 2
	div.s $f12, $f1, $f2 
	syscall 
	