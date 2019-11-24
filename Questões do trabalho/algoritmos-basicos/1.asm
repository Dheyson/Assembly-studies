.data
	prompt: .asciiz "Digite a altura: "
	prompt2: .asciiz "Digite a largura: "
	message: .asciiz "\n A Area do terreno e: "
	height: .float 0.0
	width:  .float 0.0
.text
	lwc1 $f4, height
	lwc1 $f2, width
	
	li $v0, 4
	la $a0, prompt
	syscall
	
	li $v0, 6
	syscall
	
	li $v0, 4
	la $a0, prompt2
	syscall
	
	li $v0, 6
	mov.s $f2, $f0
	syscall
	
	li $v0, 4
	la $a0, message
	syscall
	
	li $v0, 2
	mul.s  $f12, $f2, $f0
	syscall
	
