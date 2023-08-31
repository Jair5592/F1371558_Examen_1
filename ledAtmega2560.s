	.file	"ledAtmega2560.c"
	.def	___main;	.scl	2;	.type	32;	.endef
	.text
	.globl	_main
	.def	_main;	.scl	2;	.type	32;	.endef
_main:
LFB0:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	andl	$-16, %esp
	subl	$32, %esp
	call	___main
	movl	$85, 28(%esp)
	movl	$40, 24(%esp)
	movl	$39, 20(%esp)
	movl	$38, 16(%esp)
	movl	$37, 12(%esp)
	movl	$36, 8(%esp)
	movl	28(%esp), %eax
	movzbl	(%eax), %eax
	orl	$16, %eax
	movl	%eax, %edx
	movl	28(%esp), %eax
	movb	%dl, (%eax)
	movl	24(%esp), %eax
	movzbl	(%eax), %eax
	orl	$4, %eax
	movl	%eax, %edx
	movl	24(%esp), %eax
	movb	%dl, (%eax)
	movl	20(%esp), %eax
	movzbl	(%eax), %eax
	andl	$-5, %eax
	movl	%eax, %edx
	movl	20(%esp), %eax
	movb	%dl, (%eax)
	movl	12(%esp), %eax
	movzbl	(%eax), %eax
	andl	$-33, %eax
	movl	%eax, %edx
	movl	12(%esp), %eax
	movb	%dl, (%eax)
	movl	8(%esp), %eax
	movzbl	(%eax), %eax
	orl	$32, %eax
	movl	%eax, %edx
	movl	8(%esp), %eax
	movb	%dl, (%eax)
L4:
	movl	16(%esp), %eax
	movzbl	(%eax), %eax
	movb	%al, 7(%esp)
	movzbl	7(%esp), %eax
	andl	$4, %eax
	testl	%eax, %eax
	je	L2
	movl	12(%esp), %eax
	movzbl	(%eax), %eax
	orl	$32, %eax
	movl	%eax, %edx
	movl	12(%esp), %eax
	movb	%dl, (%eax)
	jmp	L4
L2:
	movl	12(%esp), %eax
	movzbl	(%eax), %eax
	andl	$-33, %eax
	movl	%eax, %edx
	movl	12(%esp), %eax
	movb	%dl, (%eax)
	jmp	L4
	.cfi_endproc
LFE0:
	.ident	"GCC: (MinGW.org GCC-6.3.0-1) 6.3.0"
