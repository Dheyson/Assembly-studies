.data 
	message: .ascii "O valor maior e: \n" 
	equal:   .ascii "Eles sao iguais: \n"
.text
	main:
	addi $t0, $zero, 20
	addi $t1, $zero, 20
	
	bgt $t1, $t0, printResult  
	beq $t1, $t0, printEqual
	
	li $v0, 10
	syscall
	
	printResult:
	  li $v0, 4
	  la $a0, message
	  syscall
	  
	  li $v0, 1
	  la $a0, ($t1)
	  syscall
	  
	printEqual:
	  li $v0, 4
	  la $a0, equal
	  syscall
	  
	
	
