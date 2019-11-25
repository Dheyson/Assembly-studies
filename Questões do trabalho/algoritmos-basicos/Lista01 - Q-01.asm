.data
	msg_area: .asciiz " Áera: "
	base: .float  10.0
	altura: .float 2.0
.text
	lwc1 $f0, base
	lwc1 $f1, altura
	
	li $v0, 4
	la $a0, msg_area
	syscall
	
	li $v0, 2
	mul.s  $f12, $f0, $f1
	syscall