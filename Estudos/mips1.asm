.data
	value1: .word 10
	value2: .word 15
.text
	# load word
	lw $t0, value1($zero) 
	lw $t1, value2($zero)
	
	add $t2, $t0, $t1
	
	# load immediate and return an integer
	li $v0, 1
	add $a0, $zero, $t2
	syscall