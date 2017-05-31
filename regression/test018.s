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
	movl	%eax,	%edx
	movl	%edx,	n
	movl	$1,	%ebx
	movl	%ebx,	%edx
	movl	%edx,	c
	movl	$2,	%ebx
	movl	%ebx,	%edx
	movl	%edx,	p
	jmp	.lbl2
	.lbl1:
	movl	$1,	%ebx
	movl	%ebx,	%edx
	movl	%edx,	cc
	jmp	.lbl8
	.lbl7:
	movl	$2,	%ebx
	movl	%ebx,	%edx
	movl	%edx,	q
	jmp	.lbl12
	.lbl11:
	movl	p,	%edx
	movl	%edx,	%ebx
	movl	q,	%edx
	movl	%edx,	%ecx
	movl	%ebx,	%edx
	movl	%edx,	%eax
	cdq
	idivl	%ecx
	movl	%edx,	%ebx
	movl	$0,	%ecx
	movl	%ebx,	%edx
	cmp	%ecx,	%edx
	setne	%al
	movzbl	%al,	%edx
	movl	%edx,	%ebx
	movl	%ebx,	%edx
	movl	%edx,	cc
	movl	q,	%edx
	movl	%edx,	%ebx
	movl	$1,	%ecx
	movl	%ebx,	%edx
	addl	%ecx,	%edx
	movl	%edx,	%ebx
	movl	%ebx,	%edx
	movl	%edx,	q
	.lbl12:
	movl	q,	%edx
	movl	%edx,	%ebx
	movl	q,	%edx
	movl	%edx,	%ecx
	movl	%ebx,	%edx
	imull	%ecx,	%edx
	movl	%edx,	%ebx
	movl	p,	%edx
	movl	%edx,	%ecx
	movl	%ebx,	%edx
	cmp	%ecx,	%edx
	setle	%al
	movzbl	%al,	%edx
	movl	%edx,	%ebx
	movl	cc,	%edx
	movl	%edx,	%ecx
	movl	%ebx,	%edx
	xorl	%eax,	%eax
	cmp	%edx,	%eax
	setne	%al
	movl	%ecx,	%edx
	imull	%eax,	%edx
	xorl	%eax,	%eax
	cmp	%edx,	%eax
	setne	%al
	movl	%eax,	%edx
	movl	%edx,	%ebx
	cmp	$0,	%ebx
	jnz	.lbl11
	movl	cc,	%edx
	movl	%edx,	%ebx
	cmp	$0,	%ebx
	jz	.lbl9
	movl	$0,	%ebx
	movl	%ebx,	%edx
	movl	%edx,	cc
	jmp	.lbl10
	.lbl9:
	movl	p,	%edx
	movl	%edx,	%ebx
	movl	$1,	%ecx
	movl	%ebx,	%edx
	addl	%ecx,	%edx
	movl	%edx,	%ebx
	movl	%ebx,	%edx
	movl	%edx,	p
	movl	$1,	%ebx
	movl	%ebx,	%edx
	movl	%edx,	cc
	.lbl10:
	.lbl8:
	movl	cc,	%edx
	movl	%edx,	%ebx
	cmp	$0,	%ebx
	jnz	.lbl7
	movl	p,	%edx
	movl	%edx,	%ebx
	movl	%ebx,	%edx
	movl	%edx,	d
	movl	$0,	%ebx
	movl	%ebx,	%edx
	movl	%edx,	i
	movl	n,	%edx
	movl	%edx,	%ebx
	movl	d,	%edx
	movl	%edx,	%ecx
	movl	%ebx,	%edx
	movl	%edx,	%eax
	cdq
	idivl	%ecx
	movl	%eax,	%edx
	movl	%edx,	%ebx
	movl	%ebx,	%edx
	movl	%edx,	q
	movl	n,	%edx
	movl	%edx,	%ebx
	movl	d,	%edx
	movl	%edx,	%ecx
	movl	%ebx,	%edx
	movl	%edx,	%eax
	cdq
	idivl	%ecx
	movl	%edx,	%ebx
	movl	%ebx,	%edx
	movl	%edx,	m
	jmp	.lbl4
	.lbl3:
	movl	i,	%edx
	movl	%edx,	%ebx
	movl	$1,	%ecx
	movl	%ebx,	%edx
	addl	%ecx,	%edx
	movl	%edx,	%ebx
	movl	%ebx,	%edx
	movl	%edx,	i
	movl	d,	%edx
	movl	%edx,	%ebx
	movl	p,	%edx
	movl	%edx,	%ecx
	movl	%ebx,	%edx
	imull	%ecx,	%edx
	movl	%edx,	%ebx
	movl	%ebx,	%edx
	movl	%edx,	d
	movl	n,	%edx
	movl	%edx,	%ebx
	movl	d,	%edx
	movl	%edx,	%ecx
	movl	%ebx,	%edx
	movl	%edx,	%eax
	cdq
	idivl	%ecx
	movl	%edx,	%ebx
	movl	%ebx,	%edx
	movl	%edx,	m
	movl	m,	%edx
	movl	%edx,	%ebx
	movl	$0,	%ecx
	movl	%ebx,	%edx
	cmp	%ecx,	%edx
	sete	%al
	movzbl	%al,	%edx
	movl	%edx,	%ebx
	cmp	$0,	%ebx
	jz	.lbl5
	movl	n,	%edx
	movl	%edx,	%ebx
	movl	d,	%edx
	movl	%edx,	%ecx
	movl	%ebx,	%edx
	movl	%edx,	%eax
	cdq
	idivl	%ecx
	movl	%eax,	%edx
	movl	%edx,	%ebx
	movl	%ebx,	%edx
	movl	%edx,	q
	jmp	.lbl6
	.lbl5:
	.lbl6:
	.lbl4:
	movl	q,	%edx
	movl	%edx,	%ebx
	movl	$0,	%ecx
	movl	%ebx,	%edx
	cmp	%ecx,	%edx
	setg	%al
	movzbl	%al,	%edx
	movl	%edx,	%ebx
	movl	m,	%edx
	movl	%edx,	%ecx
	movl	$0,	%esi
	movl	%ecx,	%edx
	cmp	%esi,	%edx
	sete	%al
	movzbl	%al,	%edx
	movl	%edx,	%ecx
	movl	%ebx,	%edx
	xorl	%eax,	%eax
	cmp	%edx,	%eax
	setne	%al
	movl	%ecx,	%edx
	imull	%eax,	%edx
	xorl	%eax,	%eax
	cmp	%edx,	%eax
	setne	%al
	movl	%eax,	%edx
	movl	%edx,	%ebx
	cmp	$0,	%ebx
	jnz	.lbl3
	movl	p,	%edx
	movl	%edx,	%ebx
	pushl	%ebx
	call	lwrite
	popl	%ebx
	movl	i,	%edx
	movl	%edx,	%ebx
	pushl	%ebx
	call	lwrite
	popl	%ebx
	movl	n,	%edx
	movl	%edx,	%ebx
	movl	d,	%edx
	movl	%edx,	%ecx
	movl	p,	%edx
	movl	%edx,	%esi
	movl	%ecx,	%edx
	movl	%edx,	%eax
	cdq
	idivl	%esi
	movl	%eax,	%edx
	movl	%edx,	%ecx
	movl	%ebx,	%edx
	movl	%edx,	%eax
	cdq
	idivl	%ecx
	movl	%eax,	%edx
	movl	%edx,	%ebx
	movl	%ebx,	%edx
	movl	%edx,	n
	movl	p,	%edx
	movl	%edx,	%ebx
	movl	$1,	%ecx
	movl	%ebx,	%edx
	addl	%ecx,	%edx
	movl	%edx,	%ebx
	movl	%ebx,	%edx
	movl	%edx,	p
	movl	n,	%edx
	movl	%edx,	%ebx
	movl	$1,	%ecx
	movl	%ebx,	%edx
	cmp	%ecx,	%edx
	setne	%al
	movzbl	%al,	%edx
	movl	%edx,	%ebx
	movl	%ebx,	%edx
	movl	%edx,	c
	.lbl2:
	movl	c,	%edx
	movl	%edx,	%ebx
	cmp	$0,	%ebx
	jnz	.lbl1
	movl	%ebp,%esp
	popl	%ebp
	ret
