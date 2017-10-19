#################################################
#Bunrith Seng, CS 2318-003, Assignment 2 Part 1 C
#################################################
#Task, in order:
#Allocate a global array, storing 
#and initialize 3 integers: 123, 234, 345
#Display a labeld output of initial content 1st to 3rd
#Re-order the value in the array
#	-Swap element 1st with 2nd
#	-Swap element 1st with 3rd
#	-Swap element 2and with 3rd
#Display labeled output after swapping: 3rd to 1st
#################################################
			.data
array:			.word 123, 234, 345
initialValues:		.asciiz "The initial values are: "
valuesAfterSwapping:	.asciiz "the values after swapping are: "
space:			.asciiz ", "
####################### code segment ############
			.text
			.globl main

main:	
					
			#begin swapping process
						
			#swap array[0] and array[1]
			la $t0, array		#$t0 has address of array
			lw $t1, 0($t0)		#load array[0] to $t1
			lw $t3, 4($t0)		#load array[1] to $t3
			sw $t1, 4($t0)		#load value in $t1 into array[1]
			sw $t3, 0($t0)		#load value in $t3 into array[0]
			
			#swap array[0] and array[2]
			lw $t1, 0($t0)		#load array[0] to $t1
			lw $t3, 8($t0)		#load array[2] to $t3
			sw $t1, 8($t0)		#load value in $t1 into array[2]
			sw $t3, 0($t0)		#load value in $t3 into array[0]
		
			#swap array[1] and array[2]
			lw $t1, 4($t0)		#load array[1] to $t1
			lw $t5, 8($t0)		#load array[2] to $t5
			sw $t1, 8($t0)		#swap array[1] with array[2]
			sw $t5, 4($t0)		#swap array[2] with array[1]
			#END swapping
			
			#initial array values
			
			li $v0, 4
			la $a0, initialValues
			syscall
			
			li $v0, 1
			move $a0, $t1
			syscall			#print array[0] values

			
			li $v0, 4
			la $a0, space
			syscall			#print commas
			
			li $v0, 1
			move $a0, $t5
			syscall			#print array[1] values
			
			li $v0, 4
			la $a0, space
			syscall			#print commas
			
			li $v0, 1
			move $a0, $t3
			syscall			#print array[2] values
			
			
			li $v0, 11
			li $a0, '\n'
			syscall			#newline
			
			#the values after swapping
			li $v0, 4
			la $a0, valuesAfterSwapping
			syscall
			
			#reloading into array
			li $v0, 1
			lw $a0, 0($t0)		#reload array[0] in memory into $a0
			syscall			#print value in array[0]
			
			li $v0, 4
			la $a0, space
			syscall
			
			li $v0, 1
			lw $a0, 4($t0)		#reload array[2] in memeory into $a0
			syscall 		#print value in array[2]
			
			li $v0, 4
			la $a0, space
			syscall
			
			li $v0, 1
			lw $a0, 8($t0)		#reload array[1] in memory into $a0
			syscall			#print value in array[1]
			
			##li $v0, 4
			#la $a0, space
			#syscall
			
			li $v0, 11
			li $a0, '\n'
			syscall
			
			li $v0, 10
			syscall			#exit 
