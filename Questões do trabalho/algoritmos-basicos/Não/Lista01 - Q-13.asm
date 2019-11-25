.data
	msg_ct: .asciiz "Centena: "
	msg_dz: .asciiz "\nDezena: "
	msg_un: .asciiz "\nUnidade: "
	msg_dn: .asciiz "\n Número invalido, Tente novamente: "
.text

	START_OVER:
	li $v0, 5
	syscall
	
	bgt $v0, 999, INVALID
	bgt 
	
	bgt $v0, 
	
	li $v0, 10
	syscall
	
	INVALID:
		li $v0, 4
		la $a0, msg_dn
		syscall
		j START_OVER
	
