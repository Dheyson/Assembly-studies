.data
	idade: .float 19
	dias_ano: .float 365
	
	msg: .asciiz "VOCÊ JÁ VIVEU: "
.text
	
	lwc1 $f1, idade
	lwc1 $f2, dias_ano
	
	li $v0, 4
	la $a0, msg
	syscall
	
	li $v0, 2
	mul.s $f12, $f1, $f2 
	syscall 
	