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
	movl	x,	%ecx
	movl	y,	%esi
	imull	%esi,	%ecx
	movl	$3,	%esi
	imull	%esi,	%ecx
	movl	%ecx,	z
	movl	z,	%ecx
	pushl	%ecx
	call	lwrite
	popl	%eax
	movl	%ebp,%esp
	popl	%ebp
	ret
