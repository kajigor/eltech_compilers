	.data
c:	.int 0
f:	.int 0
n:	.int 0
p:	.int 0
s:	.int 0
	.text
	.globl	main
main:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$0,%esp
	movl	$0,%ebx
	movl	%ebx,s
	call	lread
	movl	%eax,n
	movl	$2,%ebx
	movl	%ebx,p
	jmp		lbl1
	lbl2:
	movl	$2,%ebx
	movl	%ebx,c
	movl	$1,%ebx
	movl	%ebx,f
	movl	$2,%ebx
	movl	%ebx,c
	jmp		lbl7
	lbl8:
	movl	p,%ebx
	movl	c,%ecx
	movl	%ebx,%eax
	cltd
	idiv	%ecx
	movl	%edx,%ebx
	movl	$0,%ecx
	cmpl	%ecx,%ebx
	movl	$0,%edx
	setne	%dl
	movl	%edx,%ebx
	movl	%ebx,f
	movl	c,%ebx
	movl	$1,%ecx
	addl	%ecx,%ebx
	movl	%ebx,c
	lbl7:
	movl	c,%ebx
	movl	c,%ecx
	imull	%ecx,%ebx
	movl	p,%ecx
	cmpl	%ecx,%ebx
	movl	$0,%edx
	setle	%dl
	movl	%edx,%ebx
	movl	f,%ecx
	movl	%ebx,%edx
	andl	%ebx,%edx
	movl	$0,%edx
	setne	%dl
	movl	%ecx,%eax
	andl	%ecx,%eax
	movl	$0,%eax
	setne	%al
	andl	%eax,%edx
	movl	$0,%edx
	setne	%dl
	movl	%edx,%ebx
	testl	%ebx,%ebx
	jnz		lbl8
	movl	f,%ebx
	movl	$0,%ecx
	cmpl	%ecx,%ebx
	movl	$0,%edx
	setne	%dl
	movl	%edx,%ebx
	testl	%ebx,%ebx
	jz		lbl3
	movl	n,%ebx
	movl	$1,%ecx
	cmpl	%ecx,%ebx
	movl	$0,%edx
	sete	%dl
	movl	%edx,%ebx
	testl	%ebx,%ebx
	jz		lbl5
	movl	p,%ebx
	pushl	%ebx
	call	lwrite
	popl	%edx
	jmp		lbl6
	lbl5:
	lbl6:
	movl	n,%ebx
	movl	$1,%ecx
	subl	%ecx,%ebx
	movl	%ebx,n
	jmp		lbl4
	lbl3:
	lbl4:
	movl	p,%ebx
	movl	$1,%ecx
	addl	%ecx,%ebx
	movl	%ebx,p
	lbl1:
	movl	n,%ebx
	movl	$0,%ecx
	cmpl	%ecx,%ebx
	movl	$0,%edx
	setg	%dl
	movl	%edx,%ebx
	testl	%ebx,%ebx
	jnz		lbl2
	movl	%ebp,%esp
	popl	%ebp
	ret
