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
	movl	$0,	%ebx
	movl	%ebx,	%edx
	movl	%edx,	s
	call	lread
	movl	%eax,	%edx
	movl	%edx,	n
	movl	$2,	%ebx
	movl	%ebx,	%edx
	movl	%edx,	p
	jmp	.lbl2
	.lbl1:
	movl	$2,	%ebx
	movl	%ebx,	%edx
	movl	%edx,	c
	movl	$1,	%ebx
	movl	%ebx,	%edx
	movl	%edx,	f
	movl	$2,	%ebx
	movl	%ebx,	%edx
	movl	%edx,	c
	jmp	.lbl8
	.lbl7:
	movl	p,	%edx
	movl	%edx,	%ebx
	movl	c,	%edx
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
	movl	%edx,	f
	movl	c,	%edx
	movl	%edx,	%ebx
	movl	$1,	%ecx
	movl	%ebx,	%edx
	addl	%ecx,	%edx
	movl	%edx,	%ebx
	movl	%ebx,	%edx
	movl	%edx,	c
	.lbl8:
	movl	c,	%edx
	movl	%edx,	%ebx
	movl	c,	%edx
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
	movl	f,	%edx
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
	jnz	.lbl7
	movl	f,	%edx
	movl	%edx,	%ebx
	movl	$0,	%ecx
	movl	%ebx,	%edx
	cmp	%ecx,	%edx
	setne	%al
	movzbl	%al,	%edx
	movl	%edx,	%ebx
	cmp	$0,	%ebx
	jz	.lbl3
	movl	n,	%edx
	movl	%edx,	%ebx
	movl	$1,	%ecx
	movl	%ebx,	%edx
	cmp	%ecx,	%edx
	sete	%al
	movzbl	%al,	%edx
	movl	%edx,	%ebx
	cmp	$0,	%ebx
	jz	.lbl5
	movl	p,	%edx
	movl	%edx,	%ebx
	pushl	%ebx
	call	lwrite
	popl	%ebx
	jmp	.lbl6
	.lbl5:
	.lbl6:
	movl	n,	%edx
	movl	%edx,	%ebx
	movl	$1,	%ecx
	movl	%ebx,	%edx
	subl	%ecx,	%edx
	movl	%edx,	%ebx
	movl	%ebx,	%edx
	movl	%edx,	n
	jmp	.lbl4
	.lbl3:
	.lbl4:
	movl	p,	%edx
	movl	%edx,	%ebx
	movl	$1,	%ecx
	movl	%ebx,	%edx
	addl	%ecx,	%edx
	movl	%edx,	%ebx
	movl	%ebx,	%edx
	movl	%edx,	p
	.lbl2:
	movl	n,	%edx
	movl	%edx,	%ebx
	movl	$0,	%ecx
	movl	%ebx,	%edx
	cmp	%ecx,	%edx
	setg	%al
	movzbl	%al,	%edx
	movl	%edx,	%ebx
	cmp	$0,	%ebx
	jnz	.lbl1
	movl	%ebp,%esp
	popl	%ebp
	ret
