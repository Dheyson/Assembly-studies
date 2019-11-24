.data
	peso:    .ascii "O peso ideal e igual a: \n"
	altura:  .float 1.78
	hbase:   .float 72.7
	mbase:   .float 62.1
	h:  	 .float 1.0
	m:       .float 0.0
.text
	lwc1 $f1, altura
	lwc1 $f2, hbase
	lwc1 $f3, mbase
	lwc1 $f4, h
	lwc1 $f5, m
	
	bge $f4, $f5, homem
	beqz $f5, mulher
	
	# Inst rucao para finalizar o programa
	li $v0, 10
	syscall
	
	homem: 
	
	mulher:
	