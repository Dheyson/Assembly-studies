
# 37. Faça um algoritmo que calcule e mostre a tabuada de um número digitado pelo usuário.

.data 

	m0: .asciiz "\n x 0 :"
	m1: .asciiz "\n x 1 :"
	m2: .asciiz "\n x 2 :"
	m3: .asciiz "\n x 3 :"
	m4: .asciiz "\n x 4 :"
	m5: .asciiz "\n x 5 :"
	m6: .asciiz "\n x 6 :"
	m7: .asciiz "\n x 7 :"
	m8: .asciiz "\n x 8 :"
	m9: .asciiz "\n x 9 :"
	
.text
	li $v1, 5
	
	# Valor 0
	li $v0, 4
	la $a0, m0
	syscall
	
	li $v0, 1
	mul $a0, $v1, 0
	syscall 
	
	# Valor 1
	li $v0, 4
	la $a0, m1
	syscall
	
	li $v0, 1
	mul $a0, $v1, 1
	syscall 
	
	# Valor 2
	li $v0, 4
	la $a0, m2
	syscall
	
	li $v0, 1
	mul $a0, $v1, 2
	syscall 
	
	# Valor 3
	li $v0, 4
	la $a0, m3
	syscall
	
	li $v0, 1
	mul $a0, $v1, 3
	syscall 
	
	# Valor 4
	li $v0, 4
	la $a0, m4
	syscall
	
	li $v0, 1
	mul $a0, $v1, 4
	syscall 
	
	
	# Valor 5
	li $v0, 4
	la $a0, m5
	syscall
	
	li $v0, 1
	mul $a0, $v1, 5
	syscall 
	
	# Valor 6
	li $v0, 4
	la $a0, m6
	syscall
	
	li $v0, 1
	mul $a0, $v1, 6
	syscall 
	
	# Valor 7
	li $v0, 4
	la $a0, m7
	syscall
	
	li $v0, 1
	mul $a0, $v1, 7
	syscall 
	
	# Valor 8
	li $v0, 4
	la $a0, m8
	syscall
	
	li $v0, 1
	mul $a0, $v1, 8
	syscall 
	
	# Valor 9
	li $v0, 4
	la $a0, m9
	syscall
	
	li $v0, 1
	mul $a0, $v1, 9
	syscall 