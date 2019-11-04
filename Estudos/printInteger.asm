.data
	value: .word 32
.text
	li $v0, 1
	lw $a0, value
	syscall