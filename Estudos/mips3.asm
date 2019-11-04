.text
	li $s2 33
	li $s3 77
	sub $t1, $s2, $s3 # (b - c)
	sub $t1, $s1, $t1 # b - (b - c)
	add $s0, $t1, $s4
