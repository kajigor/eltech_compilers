	.data
x:	.int 0
y:	.int 0
z:	.int 0
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
	movl	y,	%edx
	movl	%edx,	%ebx
	movl	y,	%edx
	movl	%edx,	%ecx
	movl	%ebx,	%edx
	imull	%ecx,	%edx
	movl	%edx,	%ebx
	movl	%ebx,	%edx
	movl	%edx,	z
	movl	x,	%edx
	movl	%edx,	%ebx
	movl	z,	%edx
	movl	%edx,	%ecx
	movl	%ebx,	%edx
	addl	%ecx,	%edx
	movl	%edx,	%ebx
	pushl	%ebx
	call	lwrite
	popl	%ebx
	movl	%ebp,%esp
	popl	%ebp
	ret
