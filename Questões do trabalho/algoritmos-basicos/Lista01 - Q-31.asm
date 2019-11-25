
# 31. Faça um algoritmo que receba o peso de uma pessoa, calcule e mostre:
# a) o novo peso se a pessoa engordar 15% sobre o peso digitado;
# b) o novo peso se a pessoa emagrecer 20% sobre o peso digitado

.data
	peso: .float 75.5
	np_eng: .float 1.15
	np_emag: .float 0.80
	zero: .float 0.0
	
	msg_peso: .asciiz "Peso: "
	msg_nv_eng: .asciiz "\nPeso se a pessoa engordar 15% : "
	msg_nv_emag: .asciiz "\nPeso se a pessoa emagrecer 20% : "
	
.text
	# Valores
	lwc1 $f1, peso
	lwc1 $f2, np_eng
	lwc1 $f3, np_emag
	lwc1 $f4, zero
	
	# Valor do Peso
	li $v0, 4
	la $a0, msg_peso
	syscall
	
	li $v0, 2
	add.s  $f12, $f1, $f4
	syscall
	
	# Valor Peso engorada
	li $v0, 4
	la $a0, msg_nv_eng
	syscall
	
	li $v0, 2
	mul.s  $f12, $f1, $f2
	syscall
	
	# Valor peso emaggrecer
	li $v0, 4
	la $a0, msg_nv_emag
	syscall
	
	li $v0, 2
	mul.s $f12, $f1, $f3
	syscall
	
