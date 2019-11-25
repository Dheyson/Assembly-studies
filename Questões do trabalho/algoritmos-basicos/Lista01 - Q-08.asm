# Faça um algoritmo para ler três notas de um aluno em uma disciplina e imprimir a 
# sua média ponderada (as notas tem pesos respectivos de 1, 2 e 3).

.data
	nota1: .float 7.7
	nota2: .float 8.7
	nota3: .float 3.9
	
	peso1: .float 1
	pseo2: .float 2
	pseo3: .float 3
	
	peso_media: .float 6
	
	rs: .float 0.0
	msg: .asciiz "A média é: "
.text

	lwc1 $f1, nota1
	lwc1 $f2, nota2
	lwc1 $f3, nota3
	
	lwc1 $f7, peso1
	lwc1 $f8, pseo2 
	lwc1 $f9, pseo3
	
	lwc1 $f10, rs
	
	lwc1 $f11, peso_media
	
	li $v0, 4
	la $a0, msg
	syscall
	
	li $v0, 2
	
	mul.s  $f4, $f1, $f7
	mul.s  $f5, $f2, $f8
	mul.s  $f6, $f3, $f9
	
	add.s $f10, $f4, $f5
	add.s $f10, $f6, $f10
	
	div.s $f12, $f10, $f11
	syscall
