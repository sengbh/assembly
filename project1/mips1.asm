#Bunrith Seng
#CS 2318-003
#Assigment 2 Part 1
#Program 1A

			.data
name:			.space 50		#allocate space
int_prompt:		.asciiz "Enter an integer: "
out_int:		.asciiz "Your number is: "
str_prompt:		.asciiz "Enter up to 50 strings: "
out_str:		.asciiz "Your string output: "
char_prompt:		.asciiz "Enter some character: "
out_char:		.asciiz "Your characters input: "

			.text
			.globl main
main:	
			la $a0, int_prompt	#ask to get integer
			li $v0, 4		#read in
			syscall	
			li $v0, 5		#read integer
			syscall 
			
			
			move $t0, $v0		#$a0 = value to print
			la $a0, out_int		#message out to console
			li $v0, 4
			syscall
			li $v0, 1		#print integer
			move $a0, $t0
			syscall
			
			li $v0, 11
			li $a0, '\n'		#newline
			syscall
			
			la $a0, str_prompt	#ask to get string(50)
			li $v0, 4
			syscall
			li $v0, 8		#read string
			la $a0, name
			li $a1, 50		#dynamically allocate memory(50)
			syscall
			
			la $a0, out_str		#msg out to console
			li $v0, 4		#print string
			syscall
			li $v0, 4
			la $a0, name
			syscall
			
			la $a0, char_prompt	#ask to get character
			li $v0, 4		#print char
			syscall
			li $v0, 12		#read char
			syscall
			move $t0, $v0
			
			li $v0, 11
			li $a0, '\n'
			syscall
			
			la $a0, out_char	#out to console
			li $v0, 4
			syscall
			li $v0, 11
			move $a0, $t0
			syscall
			
			li $v0, 10		#exit
			syscall
			