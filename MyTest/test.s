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
	movl	%eax,x
	call	lread
	movl	%eax,y
	movl	x,%eax
	movl	y,%ebx
	subl	%ebx,%eax
	pushl	%eax
	call	lwrite
	popl	%edx
	movl	x,%eax
	movl	y,%ebx
	idiv	%ebx,%eax
	pushl	%eax
	call	lwrite
	popl	%edx
	movl	x,%eax
	movl	y,%ebx
	idiv	%ebx,%eax
	pushl	%eax
	call	lwrite
	popl	%edx
	movl	%ebp,%esp
	popl	%ebp
	ret
