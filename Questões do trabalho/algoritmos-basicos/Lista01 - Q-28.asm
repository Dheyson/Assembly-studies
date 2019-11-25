
# 28. Faça um algoritmo que receba duas notas, calcule e mostre 
# a média ponderada dessas notas, considerando peso 2 para a 
# primeira nota e peso 3 para a segunda nota. 

.data

	nota1: .float 7.7
	nota2: .float 8.7
	
	peso1: .float 2
	pseo2: .float 3
	
	peso_media: .float 5
	msg: .asciiz "A média é: "
	
.text
	
	# Leitura dos valores
	lwc1 $f1, nota1
	lwc1 $f2, nota2
	
	lwc1 $f3, peso1
	lwc1 $f4, pseo2 
	
	lwc1 $f11, peso_media
	
	li $v0, 4
	la $a0, msg
	syscall
	
	li $v0, 2
	mul.s  $f5, $f1, $f3
	mul.s  $f6, $f2, $f4
	
	add.s $f10, $f4, $f5
	div.s $f12, $f10, $f11
	syscall