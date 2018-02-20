	.file	"oa1.cpp"
	.section	.rodata
	.type	_ZStL19piecewise_construct, @object
	.size	_ZStL19piecewise_construct, 1
_ZStL19piecewise_construct:
	.zero	1
	.local	_ZStL8__ioinit
	.comm	_ZStL8__ioinit,1,1
	.text
	.globl	main
	.type	main, @function
main:
.LFB1493:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$240, %rsp
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movabsq	$7310016695918472565, %rax
	movq	%rax, -157(%rbp)
	movl	$828448868, -149(%rbp)
	movw	$8250, -145(%rbp)
	movb	$0, -143(%rbp)
	movabsq	$7935469405622776161, %rax
	movq	%rax, -142(%rbp)
	movl	$1969496175, -134(%rbp)
	movw	$29552, -130(%rbp)
	movb	$0, -128(%rbp)
	movabsq	$3539956169309172065, %rax
	movq	%rax, -127(%rbp)
	movl	$1969496107, -119(%rbp)
	movw	$29552, -115(%rbp)
	movb	$0, -113(%rbp)
	movabsq	$7526763397109542724, %rax
	movabsq	$4568184259149328997, %rdx
	movq	%rax, -64(%rbp)
	movq	%rdx, -56(%rbp)
	movabsq	$5629625355824146464, %rax
	movabsq	$8007448994565340448, %rdx
	movq	%rax, -48(%rbp)
	movq	%rdx, -40(%rbp)
	movabsq	$2323048663005620340, %rax
	movq	%rax, -32(%rbp)
	movl	$695428473, -24(%rbp)
	movw	$32, -20(%rbp)
	movabsq	$4412750543122677053, %rax
	movabsq	$4412750543122677053, %rdx
	movq	%rax, -112(%rbp)
	movq	%rdx, -104(%rbp)
	movq	%rax, -96(%rbp)
	movq	%rdx, -88(%rbp)
	movb	$0, -80(%rbp)
	movl	$778402146, -164(%rbp)
	movw	$11822, -160(%rbp)
	movb	$0, -158(%rbp)
	movb	$121, -229(%rbp)
	jmp	.L2
.L12:
	nop
.L3:
	leaq	-228(%rbp), %rcx
	leaq	-224(%rbp), %rax
	movl	$12, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_Z13PopulateArrayPiS_i
	movl	-228(%rbp), %ecx
	leaq	-157(%rbp), %rdx
	leaq	-224(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	_Z16ShowArrayLabeledPiiPc
	movl	-228(%rbp), %edx
	leaq	-224(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	_Z6hasDupPii
	testl	%eax, %eax
	setne	%al
	testb	%al, %al
	je	.L4
	leaq	-127(%rbp), %rax
	movq	%rax, %rdi
	call	_Z10CoutCstrNLPc
	jmp	.L5
.L4:
	leaq	-142(%rbp), %rax
	movq	%rax, %rdi
	call	_Z10CoutCstrNLPc
.L5:
	leaq	-64(%rbp), %rax
	movq	%rax, %rsi
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	leaq	-229(%rbp), %rax
	movq	%rax, %rsi
	leaq	_ZSt3cin(%rip), %rdi
	call	_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_RS3_@PLT
.L2:
	movzbl	-229(%rbp), %eax
	cmpb	$110, %al
	je	.L11
	movzbl	-229(%rbp), %eax
	cmpb	$78, %al
	jne	.L12
	jmp	.L7
.L11:
	nop
.L7:
	leaq	-112(%rbp), %rax
	movq	%rax, %rsi
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	movl	$10, %esi
	movq	%rax, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c@PLT
	leaq	-164(%rbp), %rax
	movq	%rax, %rsi
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	movl	$10, %esi
	movq	%rax, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c@PLT
	leaq	-112(%rbp), %rax
	movq	%rax, %rsi
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	movl	$10, %esi
	movq	%rax, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c@PLT
	movl	$0, %eax
	movq	-8(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L9
	call	__stack_chk_fail@PLT
.L9:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1493:
	.size	main, .-main
	.globl	_Z6hasDupPii
	.type	_Z6hasDupPii, @function
_Z6hasDupPii:
.LFB1494:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	cmpl	$1, -12(%rbp)
	jg	.L14
	movl	$0, %eax
	jmp	.L15
.L14:
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	movl	-12(%rbp), %edx
	leal	-1(%rdx), %esi
	movq	-8(%rbp), %rdx
	leaq	4(%rdx), %rcx
	movl	%eax, %edx
	movq	%rcx, %rdi
	call	_Z6existsPiii
	testl	%eax, %eax
	setne	%al
	testb	%al, %al
	je	.L16
	movl	$1, %eax
	jmp	.L15
.L16:
	movl	-12(%rbp), %eax
	leal	-1(%rax), %edx
	movq	-8(%rbp), %rax
	addq	$4, %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	_Z6hasDupPii
.L15:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1494:
	.size	_Z6hasDupPii, .-_Z6hasDupPii
	.globl	_Z6existsPiii
	.type	_Z6existsPiii, @function
_Z6existsPiii:
.LFB1495:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	cmpl	$0, -12(%rbp)
	jg	.L18
	movl	$0, %eax
	jmp	.L19
.L18:
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	cmpl	%eax, -16(%rbp)
	jne	.L20
	movl	$1, %eax
	jmp	.L19
.L20:
	movl	-12(%rbp), %eax
	leal	-1(%rax), %esi
	movq	-8(%rbp), %rax
	leaq	4(%rax), %rcx
	movl	-16(%rbp), %eax
	movl	%eax, %edx
	movq	%rcx, %rdi
	call	_Z6existsPiii
.L19:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1495:
	.size	_Z6existsPiii, .-_Z6existsPiii
	.globl	_Z8CoutCstrPc
	.type	_Z8CoutCstrPc, @function
_Z8CoutCstrPc:
.LFB1496:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rsi
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1496:
	.size	_Z8CoutCstrPc, .-_Z8CoutCstrPc
	.globl	_Z10CoutCstrNLPc
	.type	_Z10CoutCstrNLPc, @function
_Z10CoutCstrNLPc:
.LFB1497:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_Z8CoutCstrPc
	movl	$10, %esi
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1497:
	.size	_Z10CoutCstrNLPc, .-_Z10CoutCstrNLPc
	.globl	_Z10CoutOneInti
	.type	_Z10CoutOneInti, @function
_Z10CoutOneInti:
.LFB1498:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	movl	-4(%rbp), %eax
	movl	%eax, %esi
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZNSolsEi@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1498:
	.size	_Z10CoutOneInti, .-_Z10CoutOneInti
	.globl	_Z13PopulateArrayPiS_i
	.type	_Z13PopulateArrayPiS_i, @function
_Z13PopulateArrayPiS_i:
.LFB1499:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$176, %rsp
	movq	%rdi, -152(%rbp)
	movq	%rsi, -160(%rbp)
	movl	%edx, -164(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movabsq	$7955925892427181637, %rax
	movabsq	$9887299884508532, %rdx
	movq	%rax, -112(%rbp)
	movq	%rdx, -104(%rbp)
	movabsq	$9119826726904141, %rax
	movq	%rax, -120(%rbp)
	movabsq	$7954799997066570016, %rax
	movabsq	$3327648183406978420, %rdx
	movq	%rax, -96(%rbp)
	movq	%rdx, -88(%rbp)
	movb	$0, -80(%rbp)
	movabsq	$8029109386371952197, %rax
	movabsq	$4572126064270140786, %rdx
	movq	%rax, -64(%rbp)
	movq	%rdx, -56(%rbp)
	movabsq	$5629625355824146464, %rax
	movabsq	$8007448994565340448, %rdx
	movq	%rax, -48(%rbp)
	movq	%rdx, -40(%rbp)
	movabsq	$2323048663005620340, %rax
	movq	%rax, -32(%rbp)
	movl	$695428473, -24(%rbp)
	movw	$32, -20(%rbp)
	movb	$121, -129(%rbp)
	movq	-160(%rbp), %rax
	movl	$0, (%rax)
	movq	-152(%rbp), %rax
	movq	%rax, -128(%rbp)
	jmp	.L25
.L38:
	nop
.L26:
	leaq	-112(%rbp), %rax
	movq	%rax, %rdi
	call	_Z8CoutCstrPc
	movq	-160(%rbp), %rax
	movl	(%rax), %eax
	addl	$1, %eax
	movl	%eax, %edi
	call	_Z10CoutOneInti
	movl	$58, %esi
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c@PLT
	movl	$32, %esi
	movq	%rax, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c@PLT
	movq	-128(%rbp), %rax
	movq	%rax, %rsi
	leaq	_ZSt3cin(%rip), %rdi
	call	_ZNSirsERi@PLT
	movq	-160(%rbp), %rax
	movl	(%rax), %eax
	leal	1(%rax), %edx
	movq	-160(%rbp), %rax
	movl	%edx, (%rax)
	addq	$4, -128(%rbp)
	movq	-160(%rbp), %rax
	movl	(%rax), %eax
	cmpl	%eax, -164(%rbp)
	jle	.L36
	leaq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	_Z8CoutCstrPc
	leaq	-129(%rbp), %rax
	movq	%rax, %rsi
	leaq	_ZSt3cin(%rip), %rdi
	call	_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_RS3_@PLT
	jmp	.L25
.L36:
	nop
.L28:
	leaq	-120(%rbp), %rax
	movq	%rax, %rdi
	call	_Z8CoutCstrPc
	movl	-164(%rbp), %eax
	movl	%eax, %edi
	call	_Z10CoutOneInti
	leaq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	_Z8CoutCstrPc
	movq	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@GOTPCREL(%rip), %rax
	movq	%rax, %rsi
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZNSolsEPFRSoS_E@PLT
	movb	$110, -129(%rbp)
.L25:
.L29:
	movzbl	-129(%rbp), %eax
	cmpb	$110, %al
	je	.L37
	movzbl	-129(%rbp), %eax
	cmpb	$78, %al
	jne	.L38
	jmp	.L31
.L37:
	nop
.L31:
	nop
	movq	-8(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L33
	call	__stack_chk_fail@PLT
.L33:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1499:
	.size	_Z13PopulateArrayPiS_i, .-_Z13PopulateArrayPiS_i
	.globl	_Z9ShowArrayPii
	.type	_Z9ShowArrayPii, @function
_Z9ShowArrayPii:
.LFB1500:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	cmpl	$0, -28(%rbp)
	jle	.L45
	movq	-24(%rbp), %rax
	movq	%rax, -16(%rbp)
	movl	-28(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -8(%rbp)
.L42:
	movq	-16(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, %esi
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZNSolsEi@PLT
	movl	$32, %esi
	movq	%rax, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c@PLT
	movl	$32, %esi
	movq	%rax, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c@PLT
	addq	$4, -16(%rbp)
.L43:
.L44:
	movq	-16(%rbp), %rax
	cmpq	-8(%rbp), %rax
	jnb	.L46
	jmp	.L42
.L45:
	nop
	jmp	.L41
.L46:
	nop
.L41:
	movq	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@GOTPCREL(%rip), %rax
	movq	%rax, %rsi
	leaq	_ZSt4cout(%rip), %rdi
	call	_ZNSolsEPFRSoS_E@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1500:
	.size	_Z9ShowArrayPii, .-_Z9ShowArrayPii
	.globl	_Z16ShowArrayLabeledPiiPc
	.type	_Z16ShowArrayLabeledPiiPc, @function
_Z16ShowArrayLabeledPiiPc:
.LFB1501:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_Z8CoutCstrPc
	movl	-12(%rbp), %edx
	movq	-8(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	_Z9ShowArrayPii
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1501:
	.size	_Z16ShowArrayLabeledPiiPc, .-_Z16ShowArrayLabeledPiiPc
	.type	_Z41__static_initialization_and_destruction_0ii, @function
_Z41__static_initialization_and_destruction_0ii:
.LFB1991:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	cmpl	$1, -4(%rbp)
	jne	.L50
	cmpl	$65535, -8(%rbp)
	jne	.L50
	leaq	_ZStL8__ioinit(%rip), %rdi
	call	_ZNSt8ios_base4InitC1Ev@PLT
	leaq	__dso_handle(%rip), %rdx
	leaq	_ZStL8__ioinit(%rip), %rsi
	movq	_ZNSt8ios_base4InitD1Ev@GOTPCREL(%rip), %rax
	movq	%rax, %rdi
	call	__cxa_atexit@PLT
.L50:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1991:
	.size	_Z41__static_initialization_and_destruction_0ii, .-_Z41__static_initialization_and_destruction_0ii
	.type	_GLOBAL__sub_I_main, @function
_GLOBAL__sub_I_main:
.LFB1992:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	$65535, %esi
	movl	$1, %edi
	call	_Z41__static_initialization_and_destruction_0ii
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1992:
	.size	_GLOBAL__sub_I_main, .-_GLOBAL__sub_I_main
	.section	.init_array,"aw"
	.align 8
	.quad	_GLOBAL__sub_I_main
	.hidden	__dso_handle
	.ident	"GCC: (Ubuntu 7.2.0-8ubuntu3) 7.2.0"
	.section	.note.GNU-stack,"",@progbits
