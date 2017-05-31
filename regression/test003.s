	.data
x:	.int 0
y:	.int 0
	.text
	.globl	main
main:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$0,%esp
	call	lread
	movl	%eax,	%edx
	movl	%edx,	x
	call	lread
	movl	%eax,	%edx
	movl	%edx,	y
	movl	x,	%edx
	movl	%edx,	%ebx
	movl	y,	%edx
	movl	%edx,	%ecx
	movl	%ebx,	%edx
	subl	%ecx,	%edx
	movl	%edx,	%ebx
	pushl	%ebx
	call	lwrite
	popl	%ebx
	movl	x,	%edx
	movl	%edx,	%ebx
	movl	y,	%edx
	movl	%edx,	%ecx
	movl	%ebx,	%edx
	movl	%edx,	%eax
	cdq
	idivl	%ecx
	movl	%eax,	%edx
	movl	%edx,	%ebx
	pushl	%ebx
	call	lwrite
	popl	%ebx
	movl	x,	%edx
	movl	%edx,	%ebx
	movl	y,	%edx
	movl	%edx,	%ecx
	movl	%ebx,	%edx
	movl	%edx,	%eax
	cdq
	idivl	%ecx
	movl	%edx,	%ebx
	pushl	%ebx
	call	lwrite
	popl	%ebx
	movl	%ebp,%esp
	popl	%ebp
	ret
