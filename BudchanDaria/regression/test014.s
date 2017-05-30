	.data
i:	.int 0
j:	.int 0
s:	.int 0
	.text
	.globl	main
main:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$0,%esp
	movl	$0,%ebx
	movl	%ebx,i
	movl	$0,%ebx
	movl	%ebx,s
	jmp		lbl1
	lbl2:
	movl	$0,%ebx
	movl	%ebx,j
	jmp		lbl3
	lbl4:
	movl	s,%ebx
	movl	j,%ecx
	addl	%ecx,%ebx
	movl	%ebx,s
	movl	j,%ebx
	movl	$1,%ecx
	addl	%ecx,%ebx
	movl	%ebx,j
	lbl3:
	movl	j,%ebx
	movl	$100,%ecx
	cmpl	%ecx,%ebx
	movl	$0,%edx
	setl	%dl
	movl	%edx,%ebx
	testl	%ebx,%ebx
	jnz		lbl4
	movl	s,%ebx
	movl	i,%ecx
	addl	%ecx,%ebx
	movl	%ebx,s
	movl	i,%ebx
	movl	$1,%ecx
	addl	%ecx,%ebx
	movl	%ebx,i
	lbl1:
	movl	i,%ebx
	movl	$100,%ecx
	cmpl	%ecx,%ebx
	movl	$0,%edx
	setl	%dl
	movl	%edx,%ebx
	testl	%ebx,%ebx
	jnz		lbl2
	movl	s,%ebx
	pushl	%ebx
	call	lwrite
	popl	%edx
	movl	%ebp,%esp
	popl	%ebp
	ret
