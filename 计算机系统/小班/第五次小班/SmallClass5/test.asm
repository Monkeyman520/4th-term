	.file	"main.c"
	.comm	_a2, 4, 2
	.comm	_a3, 4, 2
	.globl	_y
	.data
	.align 4
_y:
	.long	1
	.globl	_z
	.align 4
_z:
	.long	2
	.def	___main;	.scl	2;	.type	32;	.endef
	.section .rdata,"dr"
LC0:
	.ascii "y:0x%x\12\0"
LC1:
	.ascii "z:0x%x\12\0"
LC2:
	.ascii "a2:0x%x\12\0"
LC3:
	.ascii "a3:0x%x\12\0"
LC4:
	.ascii "b2:0x%x\12\0"
LC5:
	.ascii "b3:0x%x\12\0"
	.text
	.globl	_main
	.def	_main;	.scl	2;	.type	32;	.endef
_main:
LFB10:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	andl	$-16, %esp
	subl	$32, %esp
	call	___main
	movl	$3, 24(%esp)
	movl	$162, _a2
	movl	$163, _a3
	movl	$178, 28(%esp)
	movl	$179, 24(%esp)
	movl	$_y, 4(%esp)
	movl	$LC0, (%esp)
	call	_printf
	movl	$_z, 4(%esp)
	movl	$LC1, (%esp)
	call	_printf
	movl	$_a2, 4(%esp)
	movl	$LC2, (%esp)
	call	_printf
	movl	$_a3, 4(%esp)
	movl	$LC3, (%esp)
	call	_printf
	leal	28(%esp), %eax
	movl	%eax, 4(%esp)
	movl	$LC4, (%esp)
	call	_printf
	leal	24(%esp), %eax
	movl	%eax, 4(%esp)
	movl	$LC5, (%esp)
	call	_printf
	movl	$0, %eax
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE10:
	.ident	"GCC: (MinGW.org GCC-6.3.0-1) 6.3.0"
	.def	_printf;	.scl	2;	.type	32;	.endef
