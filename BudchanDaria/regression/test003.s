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
	movl	x,%ebx
	movl	y,%ecx
	subl	%ecx,%ebx
	pushl	%ebx
	call	lwrite
	popl	%edx
	movl	x,%ebx
	movl	y,%ecx
	movl	%ebx,%eax
	cltd
	idiv	%ecx
	movl	%eax,%ebx
	pushl	%ebx
	call	lwrite
	popl	%edx
	movl	x,%ebx
	movl	y,%ecx
	movl	%ebx,%eax
	cltd
	idiv	%ecx
	movl	%edx,%ebx
	pushl	%ebx
	call	lwrite
	popl	%edx
	movl	%ebp,%esp
	popl	%ebp
	ret
