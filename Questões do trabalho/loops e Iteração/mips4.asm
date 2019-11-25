.data
	massage: .asciiz "FIM DA EXECUÇÂO"
	space: .asciiz", "
.text
	main:
		addi $t0,$zero,0
		
		loop:
			bgt $t0,100000,exit
			jal printNumber
			addi $t0,$t0,1000
			j loop
		exit:
			li $v0, 4
			la $a0, massage
			syscall
		
		#Fim de Execução
		
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
