.data
	mensagem: .asciiz "FIM"
	espaco: .asciiz", "
.text

	main:
	
		addi $t0,$zero,3
 
		loop:
			bgt $t0,19,exit
			jal printNumber
			addi $t0,$t0,3
			j loop
		exit:
		
			li $v0, 4
			la $a0, mensagem
			syscall
			
		li $v0, 10
		syscall
		
		printNumber:
			li $v0, 1
			add $a0, $t0, $zero
			syscall
			
			li $v0, 4
			la $a0, espaco
			syscall
			
			jr $ra
