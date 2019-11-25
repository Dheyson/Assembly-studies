.data
	gasolina: .float 4.20
	litros: .float 20.0
	msg: .asciiz "Valor a ser pago: "
.text
	lwc1 $f1, gasolina
	lwc1 $f2, litros
	
	li $v0, 4
	la $a0, msg
	syscall
	
	li $v0, 2
	mul.s  $f12, $f1, $f2
	syscall
