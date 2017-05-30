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
	movl	$22,%ebx
	movl	$23,%ecx
	addl	%ecx,%ebx
	movl	$34,%ecx
	subl	%ecx,%ebx
	movl	$35,%ecx
	addl	%ecx,%ebx
	movl	$41,%ecx
	subl	%ecx,%ebx
	movl	x0,%ecx
	subl	%ecx,%ebx
	movl	%ebx,y
	movl	y,%ebx
	pushl	%ebx
	call	lwrite
	popl	%edx
	movl	%ebp,%esp
	popl	%ebp
	ret
