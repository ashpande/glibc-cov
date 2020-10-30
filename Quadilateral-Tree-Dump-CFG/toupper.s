	.file	"toupper.c"
	.text
	.section	.rodata
.LC0:
	.string	"%c -> %c"
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
	subq	$16, %rsp
	movq	__gcov0.main(%rip), %rax
	addq	$1, %rax
	movq	%rax, __gcov0.main(%rip)
	movb	$97, -1(%rbp)
	movsbl	-1(%rbp), %eax
	movl	%eax, %edi
	call	toupper@PLT
	movl	%eax, %edx
	movsbl	-1(%rbp), %eax
	movl	%eax, %esi
	leaq	.LC0(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	movq	8+__gcov0.main(%rip), %rax
	addq	$1, %rax
	movq	%rax, 8+__gcov0.main(%rip)
	movl	$0, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.local	__gcov0.main
	.comm	__gcov0.main,16,16
	.section	.data.rel.local,"aw"
	.align 32
	.type	__gcov_.main, @object
	.size	__gcov_.main, 40
__gcov_.main:
	.quad	.LPBX0
	.long	108032747
	.long	-1885878726
	.long	2092124921
	.zero	4
	.long	2
	.zero	4
	.quad	__gcov0.main
	.section	.rodata
	.align 8
.LC1:
	.string	"/home/ashutosh/Desktop/shmEx/toupper.gcda"
	.section	.data.rel,"aw"
	.align 32
	.type	.LPBX0, @object
	.size	.LPBX0, 120
.LPBX0:
	.long	1094267690
	.zero	4
	.quad	0
	.long	1091867037
	.zero	4
	.quad	.LC1
	.quad	__gcov_merge_add
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.long	1
	.zero	4
	.quad	.LPBX1
	.section	.data.rel.local
	.align 8
	.type	.LPBX1, @object
	.size	.LPBX1, 8
.LPBX1:
	.quad	__gcov_.main
	.text
	.type	_sub_I_00100_0, @function
_sub_I_00100_0:
.LFB1:
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
.LFE1:
	.size	_sub_I_00100_0, .-_sub_I_00100_0
	.section	.init_array.00100,"aw"
	.align 8
	.quad	_sub_I_00100_0
	.text
	.type	_sub_D_00100_1, @function
_sub_D_00100_1:
.LFB2:
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
.LFE2:
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
