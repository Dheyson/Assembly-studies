.data
	message: .asciiz "Fim da Execução"
	space: .asciiz ", "
.text 
	main:
			addi $t0,$zero,0
		
		loop:
			bgt $t0,9,exit
			addi $t0,$t0,1	
			
			li $v0, 5  		   # chama função para ler
			syscall	
			
			la $t7, ($v0)	           # carrega o inteiro lido em $t7
			
			add $t1,$t1,$t7
			j loop
	
		
		exit:
			div $t2,$t1,$t0
			jal media
			
			li $v0, 4
			la $a0, message
			syscall
		
		#fim da execução
		li $v0, 10
		syscall
		
		media:
			li $v0, 1
			add $a0,$t2,$zero
			syscall
				
			li $v0, 4
			la $a0,space
			syscall
				
			jr $ra