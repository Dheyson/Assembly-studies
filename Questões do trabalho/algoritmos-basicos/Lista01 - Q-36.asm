# 36. Fa�a um algoritmo que receba o valor do sal�rio m�nimo e o 
# valor do sal�rio de um funcion�rio, calcule e mostre a quantidade
# de sal�rios m�nimos que ganha esse funcion�rio.

.data 

	salario: .float 6986.00
	sal_minimo: .float 998.00
	
	msg: .asciiz "Quantidade de sal�rio minimos �: "
	
.text
	
	lwc1 $f1, salario
	lwc1 $f2, sal_minimo
	
	li $v0, 4
	la $a0, msg
	syscall
	
	li $v0, 2
	div.s $f12, $f1, $f2 
	syscall 
	