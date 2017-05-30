	.data
f:	.int 0
n:	.int 0
	.text
	.globl	main
main:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$0,%esp
	call	lread
	movl	%eax,n
	movl	$1,%ebx
	movl	%ebx,f
	jmp		lbl1
	lbl2:
	movl	f,%ebx
	movl	n,%ecx
	imull	%ecx,%ebx
	movl	%ebx,f
	movl	n,%ebx
	movl	$1,%ecx
	subl	%ecx,%ebx
	movl	%ebx,n
	lbl1:
	movl	n,%ebx
	movl	$1,%ecx
	cmpl	%ecx,%ebx
	movl	$0,%edx
	setge	%dl
	movl	%edx,%ebx
	testl	%ebx,%ebx
	jnz		lbl2
	movl	f,%ebx
	pushl	%ebx
	call	lwrite
	popl	%edx
	movl	%ebp,%esp
	popl	%ebp
	ret
