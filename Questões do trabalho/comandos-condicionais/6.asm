.data 
	message: .ascii "O valor maior e a sua subtracao  e: \n" 
	jump : .ascii " \n"

.text
	main:
	addi $t0, $zero, 15
	addi $t1, $zero, 20
	
	bgt $t1, $t0, printResult  
	
	li $v0, 10
	syscall
	
	printResult:
	  li $v0, 4
	  la $a0, message
	  syscall
	  
	  li $v0, 1
	  la $a0, ($t1)
	  syscall
	  
	  li $v0, 4
	  la $a0, jump
	  syscall
	  
	  li $v0, 1
	  sub $a0, $t1, $t0
	  syscall
