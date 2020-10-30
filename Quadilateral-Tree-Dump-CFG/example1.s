	.file	"example1.c"
	.text
	.section	.rodata
.LC0:
	.string	"enter dimension a "
.LC1:
	.string	"%d"
.LC2:
	.string	"enter dimension b "
.LC3:
	.string	"Square with Area %d \n"
.LC4:
	.string	"Rectangle with Area %d \n"
.LC5:
	.string	"One of the values was zero "
.LC6:
	.string	"Continue? (y/n)  "
.LC7:
	.string	" %c"
	.text
	.globl	main
	.type	main, @function
main:
.LFB0:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movq	__gcov0.main(%rip), %rax
	addq	$1, %rax
	movq	%rax, __gcov0.main(%rip)
.L5:
	leaq	.LC0(%rip), %rdi
	call	puts@PLT
	movq	8+__gcov0.main(%rip), %rax
	addq	$1, %rax
	movq	%rax, 8+__gcov0.main(%rip)
	leaq	-20(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC1(%rip), %rdi
	movl	$0, %eax
	call	__isoc99_scanf@PLT
	movq	16+__gcov0.main(%rip), %rax
	addq	$1, %rax
	movq	%rax, 16+__gcov0.main(%rip)
	leaq	.LC2(%rip), %rdi
	call	puts@PLT
	movq	24+__gcov0.main(%rip), %rax
	addq	$1, %rax
	movq	%rax, 24+__gcov0.main(%rip)
	leaq	-16(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC1(%rip), %rdi
	movl	$0, %eax
	call	__isoc99_scanf@PLT
	movq	32+__gcov0.main(%rip), %rax
	addq	$1, %rax
	movq	%rax, 32+__gcov0.main(%rip)
	movl	-16(%rbp), %edx
	movl	-20(%rbp), %eax
	movl	%edx, %esi
	movl	%eax, %edi
	call	quadilateral
	movl	%eax, -12(%rbp)
	movq	40+__gcov0.main(%rip), %rax
	addq	$1, %rax
	movq	%rax, 40+__gcov0.main(%rip)
	movl	-20(%rbp), %eax
	testl	%eax, %eax
	je	.L2
	movq	48+__gcov0.main(%rip), %rax
	addq	$1, %rax
	movq	%rax, 48+__gcov0.main(%rip)
	movl	-16(%rbp), %eax
	testl	%eax, %eax
	je	.L2
	movq	56+__gcov0.main(%rip), %rax
	addq	$1, %rax
	movq	%rax, 56+__gcov0.main(%rip)
	movl	-20(%rbp), %edx
	movl	-16(%rbp), %eax
	cmpl	%eax, %edx
	jne	.L2
	movq	64+__gcov0.main(%rip), %rax
	addq	$1, %rax
	movq	%rax, 64+__gcov0.main(%rip)
	movl	-12(%rbp), %eax
	movl	%eax, %esi
	leaq	.LC3(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	movq	72+__gcov0.main(%rip), %rax
	addq	$1, %rax
	movq	%rax, 72+__gcov0.main(%rip)
	jmp	.L3
.L2:
	movl	-20(%rbp), %eax
	testl	%eax, %eax
	je	.L4
	movq	80+__gcov0.main(%rip), %rax
	addq	$1, %rax
	movq	%rax, 80+__gcov0.main(%rip)
	movl	-16(%rbp), %eax
	testl	%eax, %eax
	je	.L4
	movq	88+__gcov0.main(%rip), %rax
	addq	$1, %rax
	movq	%rax, 88+__gcov0.main(%rip)
	movl	-12(%rbp), %eax
	movl	%eax, %esi
	leaq	.LC4(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	movq	96+__gcov0.main(%rip), %rax
	addq	$1, %rax
	movq	%rax, 96+__gcov0.main(%rip)
	jmp	.L3
.L4:
	leaq	.LC5(%rip), %rdi
	call	puts@PLT
	movq	104+__gcov0.main(%rip), %rax
	addq	$1, %rax
	movq	%rax, 104+__gcov0.main(%rip)
.L3:
	movq	stdin(%rip), %rax
	movq	%rax, %rdi
	call	fflush@PLT
	movq	112+__gcov0.main(%rip), %rax
	addq	$1, %rax
	movq	%rax, 112+__gcov0.main(%rip)
	leaq	.LC6(%rip), %rdi
	call	puts@PLT
	movq	120+__gcov0.main(%rip), %rax
	addq	$1, %rax
	movq	%rax, 120+__gcov0.main(%rip)
	leaq	-21(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC7(%rip), %rdi
	movl	$0, %eax
	call	__isoc99_scanf@PLT
	movq	128+__gcov0.main(%rip), %rax
	addq	$1, %rax
	movq	%rax, 128+__gcov0.main(%rip)
	movzbl	-21(%rbp), %eax
	cmpb	$121, %al
	je	.L5
	movl	$0, %edx
	movq	136+__gcov0.main(%rip), %rax
	addq	$1, %rax
	movq	%rax, 136+__gcov0.main(%rip)
	movl	%edx, %eax
	movq	-8(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L7
	call	__stack_chk_fail@PLT
.L7:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.section	.rodata
.LC8:
	.string	"Incorrect values, try again "
.LC9:
	.string	"area %d \n"
	.text
	.globl	quadilateral
	.type	quadilateral, @function
quadilateral:
.LFB1:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movl	%edi, -20(%rbp)
	movl	%esi, -24(%rbp)
	movq	__gcov0.quadilateral(%rip), %rax
	addq	$1, %rax
	movq	%rax, __gcov0.quadilateral(%rip)
	movl	-20(%rbp), %eax
	imull	-24(%rbp), %eax
	movl	%eax, -4(%rbp)
	cmpl	$0, -20(%rbp)
	je	.L9
	movq	8+__gcov0.quadilateral(%rip), %rax
	addq	$1, %rax
	movq	%rax, 8+__gcov0.quadilateral(%rip)
	cmpl	$0, -24(%rbp)
	jne	.L10
.L9:
	leaq	.LC8(%rip), %rdi
	call	puts@PLT
	movq	24+__gcov0.quadilateral(%rip), %rax
	addq	$1, %rax
	movq	%rax, 24+__gcov0.quadilateral(%rip)
	jmp	.L11
.L10:
	movq	16+__gcov0.quadilateral(%rip), %rax
	addq	$1, %rax
	movq	%rax, 16+__gcov0.quadilateral(%rip)
	movl	-4(%rbp), %eax
	movl	%eax, %esi
	leaq	.LC9(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
.L11:
	movl	-4(%rbp), %eax
	movq	32+__gcov0.quadilateral(%rip), %rdx
	addq	$1, %rdx
	movq	%rdx, 32+__gcov0.quadilateral(%rip)
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1:
	.size	quadilateral, .-quadilateral
	.local	__gcov0.quadilateral
	.comm	__gcov0.quadilateral,40,32
	.local	__gcov0.main
	.comm	__gcov0.main,144,32
	.section	.data.rel.local,"aw"
	.align 32
	.type	__gcov_.quadilateral, @object
	.size	__gcov_.quadilateral, 40
__gcov_.quadilateral:
	.quad	.LPBX0
	.long	718641227
	.long	-432568663
	.long	1677313757
	.zero	4
	.long	5
	.zero	4
	.quad	__gcov0.quadilateral
	.section	.rodata
	.align 8
.LC10:
	.string	"/home/ashutosh/Desktop/shmEx/example1.gcda"
	.section	.data.rel,"aw"
	.align 32
	.type	.LPBX0, @object
	.size	.LPBX0, 120
.LPBX0:
	.long	1094267690
	.zero	4
	.quad	0
	.long	1096101331
	.zero	4
	.quad	.LC10
	.quad	__gcov_merge_add
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.long	2
	.zero	4
	.quad	.LPBX1
	.section	.data.rel.local
	.align 32
	.type	__gcov_.main, @object
	.size	__gcov_.main, 40
__gcov_.main:
	.quad	.LPBX0
	.long	108032747
	.long	-1206576095
	.long	715756185
	.zero	4
	.long	18
	.zero	4
	.quad	__gcov0.main
	.align 16
	.type	.LPBX1, @object
	.size	.LPBX1, 16
.LPBX1:
	.quad	__gcov_.quadilateral
	.quad	__gcov_.main
	.text
	.type	_sub_I_00100_0, @function
_sub_I_00100_0:
.LFB2:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	.LPBX0(%rip), %rdi
	call	__gcov_init@PLT
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	_sub_I_00100_0, .-_sub_I_00100_0
	.section	.init_array.00100,"aw"
	.align 8
	.quad	_sub_I_00100_0
	.text
	.type	_sub_D_00100_1, @function
_sub_D_00100_1:
.LFB3:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	call	__gcov_exit@PLT
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	_sub_D_00100_1, .-_sub_D_00100_1
	.section	.fini_array.00100,"aw"
	.align 8
	.quad	_sub_D_00100_1
	.ident	"GCC: (Ubuntu 9.3.0-17ubuntu1~20.04) 9.3.0"
	.section	.note.GNU-stack,"",@progbits
	.section	.note.gnu.property,"a"
	.align 8
	.long	 1f - 0f
	.long	 4f - 1f
	.long	 5
0:
	.string	 "GNU"
1:
	.align 8
	.long	 0xc0000002
	.long	 3f - 2f
2:
	.long	 0x3
3:
	.align 8
4:
