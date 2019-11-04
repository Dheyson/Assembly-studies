.data
	PI: .float 3.14
	myDouble: .double 7.201
	zeroDouble: .double 0.0
.text 
	# For floats the number is two
	li $v0, 2 
	lwc1 $f12, PI
	
	# For doubles, it takes a pair, for myDouble variable, it took $f2 and $f3 to store
	ldc1 $f2, myDouble
	ldc1 $f0, zeroDouble
	
	#For doubles the number is three
	li  $v0, 3 
	add.d $f12, $f2, $f0
	syscall 
	
	