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
	movl	%eax,x
	call	lread
	movl	%eax,y
	movl	x,%eax
	movl	y,%ebx
	imull	%ebx,%eax
	movl	$3,%ebx
	imull	%ebx,%eax
	movl	%eax,z
	movl	z,%eax
	pushl	%eax
	call	lwrite
	popl	%edx
	movl	%ebp,%esp
	popl	%ebp
	ret
