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
	movl	$1,	%ebx
	movl	%ebx,	%edx
	movl	%edx,	x
	movl	$2,	%ebx
	movl	%ebx,	%edx
	movl	%edx,	y
	movl	x,	%edx
	movl	%edx,	%ebx
	movl	y,	%edx
	movl	%edx,	%ecx
	movl	%ebx,	%edx
	subl	%ecx,	%edx
	movl	%edx,	%ebx
	movl	$3,	%ecx
	movl	%ebx,	%edx
	subl	%ecx,	%edx
	movl	%edx,	%ebx
	movl	%ebx,	%edx
	movl	%edx,	z
	movl	z,	%edx
	movl	%edx,	%ebx
	pushl	%ebx
	call	lwrite
	popl	%ebx
	movl	%ebp,%esp
	popl	%ebp
	ret
