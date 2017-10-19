##########################################################################
# Bunrith Seng, CS 2318-003, Assignment 2 Part 1 Program D
##########################################################################
# This program prompts the user to enter the integer scores for Exam 1,
# Exam 2 and Final Exam. It then computes the weighted average score 
# Using the formula avg = e1*(256/1285) + e2*(39/128) + final/2
# and displays a labeled output about the average score
#########################################################################

			.data
prompt1:		.asciiz "Enter exam 1 score: "
prompt2:		.asciiz "Enter exam 2 score: "
promptFinal:		.asciiz "Enter final score: "		
average:		.asciiz "The average score is: "
############################ data segment ################################
			.text
			.globl main
main:
			li $v0, 4
			la $a0, prompt1		#prompt for exam 1
			syscall
			
			li $v0, 5
			syscall			#read in exam 1
			sll $t0, $v0, 8		#t0 = exam 1 * 256
			li $t1, 1285		#t3 has 1285
			div $t0, $t1		#divide by 1285
			mflo $t0		#exam1 * 256 / 1285
			
			
			li $v0, 4
			la $a0, prompt2		#prompt for exam 2
			syscall
			
			li $v0, 5
			syscall			#read in exam 2
			move $t1, $v0		#t1 has exam2
			li $t2, 39		#store 39 in t2
			mult $t1, $t2		#multiply by 39
			mflo $t1		#exam2*39
			sra $t1, $t1, 7		#$t0 has exam2*39/128
			
			
			li $v0, 4
			la $a0, promptFinal	#prompt final score
			syscall
			
			li $v0, 5
			syscall			#read int final score
			move $t3, $v0		#t3 has final exam score
			sra $t3, $t3, 1		#final/2
			
			add $v0, $t3, $t0	#sum all three weights
			add $t1, $v0, $t1
			
			li $v0, 4
			la $a0, average		#output the average weight
			syscall
			move $a0, $t1
			li $v0, 1
			syscall			#display average
			
			li $v0, 10
			syscall			#exit gracefully
					
