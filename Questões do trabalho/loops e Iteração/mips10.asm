.data 
	message: .asciiz "Fim da Execução"
	space: .asciiz ", "
.text
	main:
		addi $t0,$zero,0
		
		loop:
			bgt $t0,49,exit
			addi $t0,$t0,1
			add $t1,$t1,2
			add $t2,$t2,$t1	
			j loop
	
		
		exit:	
		
			jal printNumber
			
			li $v0, 4
			la $a0, message
			syscall
		
		#fim da execução
		li $v0, 10
		syscall
		
			
		printNumber:
			li $v0, 1
			add $a0,$t2,$zero
			syscall
				
			li $v0, 4
			la $a0,space
			syscall
				
			jr $ra
