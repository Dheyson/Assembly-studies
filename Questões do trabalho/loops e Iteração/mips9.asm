.data
	message: .asciiz "Fim da Execução"
	space: .asciiz ", "
.text 
	main:
			addi $t7,$zero,0
			
			li $v0, 5  		   # chama função para ler
			syscall	
			
			la $t7, ($v0)	           # carrega o inteiro lido em $t7
		
		loop:
			bgt $t7,9,exit
			addi $t7,$t7,2	
			jal naturais
			j loop
		
		exit:
			
			li $v0, 4
			la $a0, message
			syscall
		
		#fim da execução
		li $v0, 10
		syscall
		
		naturais:
			li $v0, 1
			add $a0,$t7,$zero
			syscall
				
			li $v0, 4
			la $a0,space
			syscall
				
			jr $ra
