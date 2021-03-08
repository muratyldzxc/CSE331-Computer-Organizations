.data
	#kaç tane array girdiðinizin ya da  arrayin boyutunun bir önemi yok.
	#Sadece her verdiðiniz arrayin bitimine (son elemaný olarak) -2 koymanýz gerekir ve en son arrayin
	#Sonuna -3 koymanýz gerekmektedir. Aþaðýda gösterildiði gibi -2 arrayin bittiðini , -3 ise sonuncu array olduðunu göstermektedir. 
	#Bu iþlem yapýldýðý sürece arrayin boyutu ya da kaç tane array olduðu önemsizdir , istenilen kadar girilebilir.

	Union: .word 13 , 15 , 18 , 22 , 25 , -2
	myArray1: .word 13 , 18  , 25 , -2
	myArray2: .word 11 , 15 , -2
	myArray3: .word 13 , 15 , -2
	myArray4: .word 22 , 25 , -2 
	myArray5: .word 18, 25, -2 , -3
	
	space:	.asciiz " "
	newLine: .asciiz "\n"
	countofmatch: .asciiz "\n count of match is : "
	unionset: .asciiz "\n Union set is U "
	subset: .asciiz "\n S"
	openbracket:  .asciiz " { "
	closebracket: .asciiz "} \n"
	comma:.asciiz ", "
	# t0 , t1 , t2 , t3 
	# s0 , s1 , s5 , s6
	# a0 , v0
.text
	main:
		addi $t1, $zero, 1 # holds number of  subset I am in
		addi $t2, $zero, 0 # count how many matches have been done
		la $t3, myArray1 # holds index of arrays to sent which value to search
		
		move $t0, $0 # init union  index
	
		
		# print message
		li $v0, 4
		la $a0, unionset
		syscall
				
		# open bracket
		li $v0, 4
		la $a0, openbracket
		syscall
		
	printUnionset:
		lw $s6, Union($t0) # take next array value
		beq $s6, -2, EndofPrintUnionSet # untill end of the union
			
			# print subset number
			li $v0, 1
			move $a0, $s6
			syscall
				
			# comma
			li $v0, 4
			la $a0, comma
			syscall
		
			addi $t0, $t0, 4 # increment index
		j printUnionset
		
	EndofPrintUnionSet:
			# open bracket
			li $v0, 4
			la $a0, closebracket
			syscall
		jal searchAllSubsetsInUnion
		
		
		afterSearchAllSubsetsInUnion:
				jal exitProgram
	
	
	searchAllSubsetsInUnion:
		move $t2, $0 # init the count number
		lw $s5, 0($t3) # take next array value to search
		beq $s5, -3, afterSearchAllSubsetsInUnion  # -3 means all data is done
				
				# print message
				li $v0, 4
				la $a0, subset
				syscall
				
				# print subset number
				li $v0, 1
				move $a0, $t1
				syscall	
				
				# open bracket
				li $v0, 4
				la $a0, openbracket
				syscall
				
				
			jal searchArrayInArray
			
			afterSearchArrayInArray:
				
				addi $t3, $t3, 4 # increment index	
				addi $t1, $t1, 1 # holds which array (subset number )
				
				# close bracket
				li $v0, 4
				la $a0, closebracket
				syscall
				
				
				# print message
				li $v0, 4
				la $a0, countofmatch
				syscall
				# print count
				li $v0, 1
				move $a0, $t2
				syscall	
				# newline
				li $v0, 4
				la $a0, newLine
				syscall
			j searchAllSubsetsInUnion
	
	searchArrayInArray:
	
		lw $s5, 0($t3) # take next array value to search
		addi $t0, $zero, 0 # init Union array index
		
		beq $s5, -2, afterSearchArrayInArray # untill end of the array
			jal searchValueInArray	
		
		afterSearchValueInArray:	
					addi $t3, $t3, 4 # increment index
					j searchArrayInArray
		
		
	
	searchValueInArray:
		lw $s6, Union($t0) # take next array value
		beq $s6, -2, notFound # untill end of the array
			
			beq $s5, $s6, found # if it is found , check the value match
		
			addi $t0, $t0, 4 # increment index
		j searchValueInArray
	notFound:
		# print number
		li $v0, 1
		addi $a0, $s5, 0
		syscall
		
		# print comma
		li $v0, 4
		la $a0, comma
		syscall
		
		j afterSearchValueInArray
		
	found:	#tell the console it is found
		# print number
		li $v0, 1
		addi $a0, $s5, 0
		syscall
		
		# print comma
		li $v0, 4
		la $a0, comma
		syscall
		
		addi $t2, $t2, 1 # increase count how many matches have been done
		j afterSearchValueInArray
		
	exitProgram:
		# tell the system that program is done
		li $v0, 10
		syscall	
