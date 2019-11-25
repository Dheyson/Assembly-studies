.data
	message: .asciiz "Fim da Execução"
	space: .asciiz " "
.text 
	main:
			addi $t0,$zero,0
			addi $t1,$zero,0
			addi $t2,$zero,0
		
		loop:
			bgt $t0,9,exit
			add $t0,$t0,1	
			
			li $v0, 5  		   # chama função para ler
			syscall	
			
			la $t7, ($v0)	           # carrega o inteiro lido em $t7
			
			bgt $t1,$t7,valorMinimo
			blt $t2,$t7,valorMaximo
			j loop
	
		
		exit:
			
		
		#fim da execução
		li $v0, 10
		syscall
		
		valorMaximo:
			la $t3, ($t1)
			
			li $v0, 1
			add $a0,$t3,$zero
			syscall
				
			li $v0, 4
			la $a0,space
			syscall
				
			jr $ra
			
		valorMinimo:
			la $t4, ($t2)
			
			li $v0, 1
			add $a0,$t4,$zero
			syscall
				
			li $v0, 4
			la $a0,space
			syscall
				
			jr $ra
