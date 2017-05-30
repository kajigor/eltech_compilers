	.data
k:	.int 0
n:	.int 0
res:	.int 0
	.text
	.globl	main
main:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$0,%esp
	movl	$2,%ebx
	movl	%ebx,n
	movl	$10,%ebx
	movl	%ebx,k
	movl	$1,%ebx
	movl	%ebx,res
	jmp		lbl1
	lbl2:
	movl	res,%ebx
	movl	n,%ecx
	imull	%ecx,%ebx
	movl	%ebx,res
	movl	k,%ebx
	movl	$1,%ecx
	subl	%ecx,%ebx
	movl	%ebx,k
	lbl1:
	movl	k,%ebx
	movl	$0,%ecx
	cmpl	%ecx,%ebx
	movl	$0,%edx
	setg	%dl
	movl	%edx,%ebx
	testl	%ebx,%ebx
	jnz		lbl2
	movl	res,%ebx
	pushl	%ebx
	call	lwrite
	popl	%edx
	movl	%ebp,%esp
	popl	%ebp
	ret
