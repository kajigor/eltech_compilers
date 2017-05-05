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
	movl	%eax,	x
	call	lread
	movl	%eax,	y
	movl	x,	%ebx
	movl	y,	%ecx
	imull	%ecx,	%ebx
	movl	$3,	%ecx
	imull	%ecx,	%ebx
	movl	%ebx,	z
	movl	z,	%ebx
	pushl	%ebx
	call	lwrite
	popl	%ebx
	movl	%ebp,%esp
	popl	%ebp
	ret
