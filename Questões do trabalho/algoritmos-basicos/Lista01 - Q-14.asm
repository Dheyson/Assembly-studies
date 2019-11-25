# 14. Calcule a área de uma pizza que possui um raio R (pi=3.14). 

.data
	raio: .float 5
	pi: .float 3.14
	
	msg: .asciiz "Área: "
.text
	
	lwc1 $f1, raio
	lwc1 $f2, pi
	
	li $v0, 4
	la $a0, msg
	syscall
	
	li $v0, 2
	mul.s $f10, $f1, $f1
	mul.s $f12, $f2, $f10 
	syscall 
	