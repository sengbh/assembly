##########################################################################
# <your name>, CS 2318-00?, Assignment 2 Part 1 Program B
############################ data segment ################################
		.data
legend:		.asciiz "0 = UpUp, 1 = UpLo, 2 = LoUp, 3 = LoLo\n"
		# UpUp = Uppercase-Uppercase, UpLo = Uppercase-Lowercase, ...
inPrompt1:	.asciiz "Enter 1st alphabet (A-Z; a-z): "
inPrompt2:	.asciiz "\nEnter 2nd alphabet (A-Z; a-z): "
outLab1:	.asciiz " and "
outLab2:	.asciiz " are "
############################ code segment ################################
		.text
		.globl main
main:
		li $v0, 4
		la $a0, legend        
		syscall			# print legend
		la $a0, inPrompt1        
		syscall			# print input prompt 1
		li $v0, 12
		syscall			# read 1st alphabet
		move $t1, $v0
		li $v0, 4
		la $a0, inPrompt2        
		syscall			# print input prompt 2
		li $v0, 12
		syscall			# read 2nd alphabet
		move $t2, $v0

		li $v0, 11
		li $a0, '\n'
		syscall
		move $a0, $t1        
		syscall			# 1st alphabet
		li $v0, 4
		la $a0, outLab1        
		syscall			# print " and "
		li $v0, 11
		move $a0, $t2        
		syscall			# 2nd alphabet
		li $v0, 4
		la $a0, outLab2        
		syscall			# print " are "

		li $v0, 1
		li $a0, 0		# initialize desired output to 0

		##########################################################
		# Insert NO MORE THAN 7 lines of code that involve ONLY 
		#   bit manipulating instructions (ANDing, ORing, XORing,
		#   NORing and shifting - only whatever that are needed)
		# so that the program will work just like the sample runs 
		# shown at the bottom (some blank lines edited out).
		# HINT: Risking telling the obvious, the instructions you
		#       insert are related to bringing the value in $a0
		#       from the initial value of 0 to the final desired
		#       value (which should be either 0, 1, 2 or 3 when
		#       printed as an integer).
		# You MUST test your completed program for AT LEAST the 
		# test cases shown (and include the result in hardcopy).
		##########################################################		
		sra $t1 $t1, 5		
		sra $t2, $t2, 5
		andi $t3, $t1, 1
		andi $t4, $t2, 1
		sll $t3, $t3, 1
		or $a0, $t3, $t4
		
		
				
		syscall			# display desired output
		
                ##########################################################
                                                
                li $v0, 10		# exit gracefully
                syscall

########################## sample test runs ##############################
# 0 = UpUp, 1 = UpLo, 2 = LoUp, 3 = LoLo
# Enter 1st alphabet (A-Z; a-z): P
# Enter 2nd alphabet (A-Z; a-z): M
# P and M are 0
# -- program is finished running --
# 
# Reset: reset completed.
# 
# 0 = UpUp, 1 = UpLo, 2 = LoUp, 3 = LoLo
# Enter 1st alphabet (A-Z; a-z): A
# Enter 2nd alphabet (A-Z; a-z): t
# A and t are 1
# -- program is finished running --
# 
# Reset: reset completed.
# 
# 0 = UpUp, 1 = UpLo, 2 = LoUp, 3 = LoLo
# Enter 1st alphabet (A-Z; a-z): b
# Enter 2nd alphabet (A-Z; a-z): E
# b and E are 2
# -- program is finished running --
# 
# Reset: reset completed.
# 
# 0 = UpUp, 1 = UpLo, 2 = LoUp, 3 = LoLo
# Enter 1st alphabet (A-Z; a-z): q
# Enter 2nd alphabet (A-Z; a-z): i
# q and i are 3
# -- program is finished running --
######################## end sample test runs ############################
