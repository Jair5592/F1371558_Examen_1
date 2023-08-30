	.file	"arregloAnalisis.c"
	.def	___main;	.scl	2;	.type	32;	.endef
	.section .rdata,"dr"
LC0:
	.ascii "El arreglo es: \0"
LC1:
	.ascii "%d \0"
LC2:
	.ascii "\12%d - Deficiente\0"
LC3:
	.ascii "\12%d - Abundante\0"
LC4:
	.ascii "\12%d - Perfecto\0"
	.text
	.globl	_main
	.def	_main;	.scl	2;	.type	32;	.endef
_main:
LFB15:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	andl	$-16, %esp
	subl	$96, %esp
	call	___main
	movl	$0, (%esp)
	call	_time
	movl	%eax, (%esp)
	call	_srand
	movl	$LC0, (%esp)
	call	_printf
	movl	$0, 92(%esp)
	jmp	L2
L3:
	call	_rand
	movl	%eax, %ecx
	movl	$-1518422781, %edx
	movl	%ecx, %eax
	imull	%edx
	leal	(%edx,%ecx), %eax
	sarl	$6, %eax
	movl	%eax, %edx
	movl	%ecx, %eax
	sarl	$31, %eax
	subl	%eax, %edx
	movl	%edx, %eax
	imull	$99, %eax, %eax
	subl	%eax, %ecx
	movl	%ecx, %eax
	leal	2(%eax), %edx
	movl	92(%esp), %eax
	movl	%edx, 20(%esp,%eax,4)
	movl	92(%esp), %eax
	movl	20(%esp,%eax,4), %eax
	movl	%eax, 4(%esp)
	movl	$LC1, (%esp)
	call	_printf
	addl	$1, 92(%esp)
L2:
	cmpl	$14, 92(%esp)
	jle	L3
	movl	$10, (%esp)
	call	_putchar
	movl	$0, 88(%esp)
	jmp	L4
L11:
	movl	$0, 84(%esp)
	movl	$1, 80(%esp)
	jmp	L5
L7:
	movl	88(%esp), %eax
	movl	20(%esp,%eax,4), %eax
	cltd
	idivl	80(%esp)
	movl	%edx, %eax
	testl	%eax, %eax
	jne	L6
	movl	80(%esp), %eax
	addl	%eax, 84(%esp)
L6:
	addl	$1, 80(%esp)
L5:
	movl	88(%esp), %eax
	movl	20(%esp,%eax,4), %eax
	cmpl	80(%esp), %eax
	jg	L7
	movl	88(%esp), %eax
	movl	20(%esp,%eax,4), %eax
	cmpl	84(%esp), %eax
	jle	L8
	movl	88(%esp), %eax
	movl	20(%esp,%eax,4), %eax
	movl	%eax, 4(%esp)
	movl	$LC2, (%esp)
	call	_printf
	jmp	L9
L8:
	movl	88(%esp), %eax
	movl	20(%esp,%eax,4), %eax
	cmpl	84(%esp), %eax
	jge	L10
	movl	88(%esp), %eax
	movl	20(%esp,%eax,4), %eax
	movl	%eax, 4(%esp)
	movl	$LC3, (%esp)
	call	_printf
	jmp	L9
L10:
	movl	88(%esp), %eax
	movl	20(%esp,%eax,4), %eax
	movl	%eax, 4(%esp)
	movl	$LC4, (%esp)
	call	_printf
L9:
	addl	$1, 88(%esp)
L4:
	cmpl	$14, 88(%esp)
	jle	L11
	movl	$0, %eax
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE15:
	.ident	"GCC: (MinGW.org GCC-6.3.0-1) 6.3.0"
	.def	_time;	.scl	2;	.type	32;	.endef
	.def	_srand;	.scl	2;	.type	32;	.endef
	.def	_printf;	.scl	2;	.type	32;	.endef
	.def	_rand;	.scl	2;	.type	32;	.endef
	.def	_putchar;	.scl	2;	.type	32;	.endef
