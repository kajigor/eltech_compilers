	.data
c:	.int 0
cc:	.int 0
d:	.int 0
i:	.int 0
m:	.int 0
n:	.int 0
p:	.int 0
q:	.int 0
	.text
	.globl	main
main:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$0,%esp
	call	lread
	movl	%eax,n
	movl	$1,%ebx
	movl	%ebx,c
	movl	$2,%ebx
	movl	%ebx,p
	jmp		lbl1
	lbl2:
	movl	$1,%ebx
	movl	%ebx,cc
	jmp		lbl7
	lbl8:
	movl	$2,%ebx
	movl	%ebx,q
	jmp		lbl11
	lbl12:
	movl	p,%ebx
	movl	q,%ecx
	movl	%ebx,%eax
	cltd
	idiv	%ecx
	movl	%edx,%ebx
	movl	$0,%ecx
	cmpl	%ecx,%ebx
	movl	$0,%edx
	setne	%dl
	movl	%edx,%ebx
	movl	%ebx,cc
	movl	q,%ebx
	movl	$1,%ecx
	addl	%ecx,%ebx
	movl	%ebx,q
	lbl11:
	movl	q,%ebx
	movl	q,%ecx
	imull	%ecx,%ebx
	movl	p,%ecx
	cmpl	%ecx,%ebx
	movl	$0,%edx
	setle	%dl
	movl	%edx,%ebx
	movl	cc,%ecx
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
	jnz		lbl12
	movl	cc,%ebx
	testl	%ebx,%ebx
	jz		lbl9
	movl	$0,%ebx
	movl	%ebx,cc
	jmp		lbl10
	lbl9:
	movl	p,%ebx
	movl	$1,%ecx
	addl	%ecx,%ebx
	movl	%ebx,p
	movl	$1,%ebx
	movl	%ebx,cc
	lbl10:
	lbl7:
	movl	cc,%ebx
	testl	%ebx,%ebx
	jnz		lbl8
	movl	p,%ebx
	movl	%ebx,d
	movl	$0,%ebx
	movl	%ebx,i
	movl	n,%ebx
	movl	d,%ecx
	movl	%ebx,%eax
	cltd
	idiv	%ecx
	movl	%eax,%ebx
	movl	%ebx,q
	movl	n,%ebx
	movl	d,%ecx
	movl	%ebx,%eax
	cltd
	idiv	%ecx
	movl	%edx,%ebx
	movl	%ebx,m
	jmp		lbl3
	lbl4:
	movl	i,%ebx
	movl	$1,%ecx
	addl	%ecx,%ebx
	movl	%ebx,i
	movl	d,%ebx
	movl	p,%ecx
	imull	%ecx,%ebx
	movl	%ebx,d
	movl	n,%ebx
	movl	d,%ecx
	movl	%ebx,%eax
	cltd
	idiv	%ecx
	movl	%edx,%ebx
	movl	%ebx,m
	movl	m,%ebx
	movl	$0,%ecx
	cmpl	%ecx,%ebx
	movl	$0,%edx
	sete	%dl
	movl	%edx,%ebx
	testl	%ebx,%ebx
	jz		lbl5
	movl	n,%ebx
	movl	d,%ecx
	movl	%ebx,%eax
	cltd
	idiv	%ecx
	movl	%eax,%ebx
	movl	%ebx,q
	jmp		lbl6
	lbl5:
	lbl6:
	lbl3:
	movl	q,%ebx
	movl	$0,%ecx
	cmpl	%ecx,%ebx
	movl	$0,%edx
	setg	%dl
	movl	%edx,%ebx
	movl	m,%ecx
	movl	$0,%esi
	cmpl	%esi,%ecx
	movl	$0,%edx
	sete	%dl
	movl	%edx,%ecx
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
	jnz		lbl4
	movl	p,%ebx
	pushl	%ebx
	call	lwrite
	popl	%edx
	movl	i,%ebx
	pushl	%ebx
	call	lwrite
	popl	%edx
	movl	n,%ebx
	movl	d,%ecx
	movl	p,%esi
	movl	%ecx,%eax
	cltd
	idiv	%esi
	movl	%eax,%ecx
	movl	%ebx,%eax
	cltd
	idiv	%ecx
	movl	%eax,%ebx
	movl	%ebx,n
	movl	p,%ebx
	movl	$1,%ecx
	addl	%ecx,%ebx
	movl	%ebx,p
	movl	n,%ebx
	movl	$1,%ecx
	cmpl	%ecx,%ebx
	movl	$0,%edx
	setne	%dl
	movl	%edx,%ebx
	movl	%ebx,c
	lbl1:
	movl	c,%ebx
	testl	%ebx,%ebx
	jnz		lbl2
	movl	%ebp,%esp
	popl	%ebp
	ret
