
# 38. Faça um algoritmo que receba o ano de nascimento 
# de uma pessoa e o ano atual, calcule e mostre: 
#
# a) a idade dessa pessoa em anos; 
# b) a idade dessa pessoa em meses; 
# c) a idade dessa pessoa em dias; 
# d) a idade dessa pessoa em semanas.

.data
	ano_nasc: .float 2000
	ano_atua: .float 2019
	
	meses: .float 12
	semanas: .float 5
	dias: .float 31
	
	msg_ano: .asciiz " Idade em anos: "
	msg_mes: .asciiz "\n Idade em meses: "
	msg_sem: .asciiz "\n Idade em semanas: "
	msg_dia: .asciiz "\n Idade em dias: "
.text
	lwc1 $f1,ano_nasc
	lwc1 $f2,ano_atua
	
	lwc1 $f3 meses
	lwc1 $f4 semanas
	lwc1 $f5 dias
	
	# ANO
	li $v0, 4
	la $a0, msg_ano
	syscall
	
	li $v0, 2
	sub.s $f12,$f2, $f1
	syscall

	# MES
	li $v0, 4
	la $a0, msg_mes
	syscall
	
	li $v0, 2
	mul.s $f12, $f12, $f3
	syscall
	
	# SEMANAS
	li $v0, 4
	la $a0, msg_sem
	syscall
	
	li $v0, 2
	mul.s $f12, $f12, $f4
	syscall
	
	# DIAS
	li $v0, 4
	la $a0, msg_dia
	syscall
	
	li $v0, 2
	mul.s $f12, $f12, $f5
	syscall