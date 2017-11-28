##include <iostream>
#using namespace std;

#int iArr[10];
			.data
iArr:			.space 40			
einPrompt:		.asciiz "\nEnter integer #"
colSpace:		.asciiz ": "
oveMsg:			.asciiz "Odd value entered... 1 added to evenize..."
moMsg:			.asciiz "Maximum of "
veMsg:			.asciiz " values entered..."
eaPrompt:		.asciiz "Enter another? (n or N = no, anything else = yes) "
veLab:			.asciiz " values entered: "
minLab:			.asciiz "Minimum is "
maxLab:			.asciiz "Maximum is "
hasDupMsg:		.asciiz "There's at least a duplicate..."
noDupMsg:		.asciiz "There's no duplicate..."

#int main()
#{
			.text
			.globl main
main:

########################################
# Register Usage
########################################
# $t0: used
# $t1: hopPtr1
# $t2: hopPtr2
# $t8: endPtr1
# $t9: endPtr2
# $t4: oneInt
# $t5: short-lived temporary
# $v1: reply
# $a2: min
# $a3: max
# $t3: hasDup
########################################
#			int used = 0;
			li $t0, 0
#			char reply;
#			int oneInt,
#			    min,
#			    max;
#			bool hasDup;
#			int* hopPtr1;
#			int* hopPtr2;
#			int* endPtr1;
#			int* endPtr2;

#			hopPtr1 = iArr;
			la $t1, iArr
begDW1:
#			cout << "Enter integer #" << (used + 1) << ": ";
			li $v0, 4
			la $a0, einPrompt
			syscall
			li $v0, 1
			addi $a0, $t0, 1
			syscall
			li $v0, 4
			la $a0, colSpace
			syscall
			
#			cin >> oneInt;
			li $v0, 5
			syscall
			move $t4, $v0
#           /* if ( (oneInt % 2) != 0 ) */
#           if ( (oneInt & 1) == 0 ) goto endI1;
			andi $t5, $t4, 1
			beqz $t5, endI1
begI1:
#			cout << "Odd value entered... 1 added to evenize..." << endl;
			li $v0, 4
			la $a0, oveMsg
			syscall
			li $v0, 11
			li $a0, '\n'
			syscall
#			++oneInt;
			addi $t4, $t4, 1
endI1:
#			*hopPtr1 = oneInt;
			sw $t4, 0($t1)
#			++used;
			addi $t0, $t0, 1
#			++hopPtr1;
			addi, $t1, $t1, 4
#			if (used != 10) goto else2;
			li $t5, 10
			bne $t0, $t5, else2
begI2:
#			cout << "Maximum of " << 10 << " values entered..." << endl;
			li $v0, 4
			la $a0, moMsg
			syscall
			li $v0, 1
			li $a0, 10
			syscall
			li $v0, 4
			la $a0, veMsg
			syscall
			li $v0, 11
			li $a0, '\n'
			syscall
#			reply = 'n';
			li $v1, 'n'
#			goto endI2;
			j endI2
else2:
#			cout << "Enter another? (n or N = no, anything else = yes) ";
			li $v0, 4
			la $a0, eaPrompt
			syscall
#			cin >> reply;
			li $v0, 12
			syscall
			move $v1, $v0
endI2:
endDW1:
DWTest1:
#			if (reply == 'n') goto xitDW1;
			li $t5, 'n'
			beq $v1, $t5, xitDW1
#			if (reply != 'N') goto begDW1;
			li $t5, 'N'
			bne $v1, $t5, begDW1
xitDW1:

#			cout << used << " values entered: ";
			li $v0, 11
			li $a0, '\n'
			syscall			# extra formatting newline 
			li $v0, 1
			move $a0, $t0
			syscall
			li $v0, 4
			la $a0, veLab
			syscall
#			endPtr1 = iArr + used;
			la $t5, iArr
			sll $t8, $t0, 2
			add $t8, $t8, $t5
#			hopPtr1 = iArr; 
			la $t1, iArr
#			goto FTest1;
			j FTest1
begF1:
#			if (hopPtr1 >= endPtr1 - 1) goto else3;
			addi $t5, $t8, -4
			bge $t1, $t5, else3
begI3:
#			cout << *hopPtr1 << "  ";
			li $v0, 1
			lw $a0, 0($t1)
			syscall
			li $v0, 11
			li $a0, ' '
			syscall
			syscall
#			goto endI3;
			j endI3
else3:
#			cout << *hopPtr1 << endl;
			li $v0, 1
			lw $a0, 0($t1)
			syscall
			li $v0, 11
			li $a0, '\n'
			syscall
endI3:
#			++hopPtr1;
			addi $t1, $t1, 4

#FTest1:		if (hopPtr1 < endPtr1) goto begF1;
FTest1:			blt $t1, $t8, begF1
endF1:

#			hopPtr1 = iArr;
			la $t1, iArr
#			endPtr1 = iArr + used;
			sll $t8, $t0, 2
			add $t8, $t8, $t1

#			min = *iArr;
			lw $a2, 0($t1)
#			max = min;
			move $a3, $a2
#			++hopPtr1;
			addi $t1, $t1, 4
#			goto WTest1;
			j WTest1
begW1:
#			if (*hopPtr1 >= min) goto else4;
			lw $t5, 0($t1)
			bge $t5, $a2, else4
begI4:
#			min = *hopPtr1;
			move $a2, $t5
#			goto endI4;
			j endI4
else4:
#			if (*hopPtr1 <= max) goto endI5;
			ble $t5, $a3, endI5
begI5:
#			max = *hopPtr1;
			move $a3, $t5
endI5:
endI4:
#			++hopPtr1;
			addi $t1, $t1, 4
#WTest1:		if (hopPtr1 < endPtr1) goto begW1;
WTest1:			blt $t1, $t8, begW1
endW1:

#			cout << "Minimum is " << min << endl;
			li $v0, 4
			la $a0, minLab
			syscall
			li $v0, 1
			move $a0, $a2
			syscall
			li $v0, 11
			li $a0, '\n'
			syscall
#			cout << "Maximum is " << max << endl;
			li $v0, 4
			la $a0, maxLab
			syscall
			li $v0, 1
			move $a0, $a3
			syscall
			li $v0, 11
			li $a0, '\n'
			syscall
#			hasDup = false;
			li $t3, 0
#			endPtr1 = iArr + used - 1;
			la $t5, iArr
			sll $t8, $t0, 2
			addi $t8, $t8, -4
			add $t8, $t8, $t5
			
#			endPtr2 = iArr + used;
			addi $t9, $t8, 4
#			hopPtr1 = iArr; 
 			la $t1, iArr
#			goto FTest2;
			j FTest2
begF2:
#			oneInt = *hopPtr1;
			lw $t4, 0($t1)
#			hopPtr2 = hopPtr1 + 1; 
			addi $t2, $t1, 4
#			goto FTest3;
			j FTest3
begF3:
#			if (*hopPtr2 != oneInt) goto endI6;
			lw $t5, 0($t2)
			bne $t5, $t4, endI6
begI6:
#			hasDup = true;
			li $t3, 1
#			goto endF3;
			j endF3
endI6:
#			++hopPtr2;
			addi $t2, $t2, 4

#FTest3:		if (hopPtr2 < endPtr2) goto begF3;
FTest3:			blt $t2, $t9, begF3
endF3:

#			++hopPtr1;
			addi $t1, $t1, 4

#FTest2:		if (hasDup) goto xitF2;
FTest2:			bnez $t3, xitF2
#			if (hopPtr1 < endPtr1) goto begF2;
			blt $t1, $t8, begF2
xitF2:
endF2:

#			if (!hasDup) goto else7;
			beqz $t3, else7
begI7:
#			cout << "There's at least a duplicate..." << endl;
			li $v0, 4
			la $a0, hasDupMsg
			syscall
			li $v0, 11
			li $a0, '\n'
			syscall
#			goto endI7;
			j endI7
else7:
#			cout << "There's no duplicate..." << endl;
			li $v0, 4
			la $a0, noDupMsg
			syscall
			li $v0, 11
			li $a0, '\n'
			syscall
endI7:

#			return 0;
			li $v0, 10
			syscall
#}
