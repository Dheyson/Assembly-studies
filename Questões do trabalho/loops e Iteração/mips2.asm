.data
	massage: .asciiz"FIM"
	space: .asciiz ", "
.text

	main: 
		addi $t0,$zero,1
		addi $t1,$zero,1
		
		while:
			bgt $t0,100,for
			jal printNumber
			addi $t0,$t0,1
			j while
		
		for:
			loop:
				bgt $t1,100,exit
				jal printLoop
				addi $t1,$t1,1
				j loop
			
			exit:
		
			li $v0, 4
			la $a0, massage
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
		
		printLoop:
			li $v0, 1
			add $a0, $t1, $zero
			syscall
			
			li $v0, 4
			la $a0, space
			syscall
			
			jr $ra
