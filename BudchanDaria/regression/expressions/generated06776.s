	.data
x0:	.int 0
x1:	.int 0
y:	.int 0
	.text
	.globl	main
main:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$0,%esp
	call	lread
	movl	%eax,x0
	call	lread
	movl	%eax,x1
	movl	x0,%ebx
	movl	$33,%ecx
	subl	%ecx,%ebx
	movl	$34,%ecx
	addl	%ecx,%ebx
	movl	$40,%ecx
	movl	$41,%esi
	movl	%ecx,%eax
	cltd
	idiv	%esi
	movl	%eax,%ecx
	addl	%ecx,%ebx
	movl	%ebx,y
	movl	y,%ebx
	pushl	%ebx
	call	lwrite
	popl	%edx
	movl	%ebp,%esp
	popl	%ebp
	ret
