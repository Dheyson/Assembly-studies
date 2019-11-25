.data
	message : .asciiz"FIM"
	space : .asciiz", "
.text
	main:
		addi $t0,$zero,10
		
		while:
			bltz  $t0,exit
			jal printNumber
			add $t0,$t0,-1
			j while
		exit:
			
			li $v0, 4
			la $a0, message
			syscall
		
		#fim do programa
		li $v0, 10
		syscall
		
		printNumber:
			li $v0, 1
			add $a0, $t0, $zero
			syscall
			
			li $v0, 4
			la $a0, space
			syscall
			
			jr $ra
