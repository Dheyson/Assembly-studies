# 19. A granja Frangotech possui um controle automatizado de cada frango
# da sua produ��o. No p� direito do frango h� um anel com um chip de 
# identifica��o; no p� esquerdo s�o dois an�is para indicar o tipo de 
# alimento que ele deve consumir. Sabendo que o anel com chip custa 
# R$4,00 e o anel de alimento custa R$3,50, fa�a um algoritmo para 
# calcular o gasto total da granja para marcar todos os seus frangos.

.data 
	aneis: .float 11.00
	frangos: .float 2000
	
	msg: .asciiz "Valor a ser gasto � de: "
	
.text
	
	lwc1 $f1, aneis
	lwc1 $f2, frangos
	
	li $v0, 4
	la $a0, msg
	syscall
	
	li $v0, 2
	mul.s $f12, $f1, $f2 
	syscall 
	