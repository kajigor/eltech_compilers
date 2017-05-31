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
	movl	$0,	%ebx
	movl	%ebx,	%edx
	movl	%edx,	i
	movl	$0,	%ebx
	movl	%ebx,	%edx
	movl	%edx,	s
	movl	$0,	%ebx
	movl	%ebx,	%edx
	movl	%edx,	i
	jmp	.lbl2
	.lbl1:
	movl	$0,	%ebx
	movl	%ebx,	%edx
	movl	%edx,	j
	jmp	.lbl4
	.lbl3:
	movl	s,	%edx
	movl	%edx,	%ebx
	movl	j,	%edx
	movl	%edx,	%ecx
	movl	%ebx,	%edx
	addl	%ecx,	%edx
	movl	%edx,	%ebx
	movl	%ebx,	%edx
	movl	%edx,	s
	movl	j,	%edx
	movl	%edx,	%ebx
	movl	$1,	%ecx
	movl	%ebx,	%edx
	addl	%ecx,	%edx
	movl	%edx,	%ebx
	movl	%ebx,	%edx
	movl	%edx,	j
	.lbl4:
	movl	j,	%edx
	movl	%edx,	%ebx
	movl	$100,	%ecx
	movl	%ebx,	%edx
	cmp	%ecx,	%edx
	setl	%al
	movzbl	%al,	%edx
	movl	%edx,	%ebx
	cmp	$0,	%ebx
	jnz	.lbl3
	movl	s,	%edx
	movl	%edx,	%ebx
	movl	i,	%edx
	movl	%edx,	%ecx
	movl	%ebx,	%edx
	addl	%ecx,	%edx
	movl	%edx,	%ebx
	movl	%ebx,	%edx
	movl	%edx,	s
	movl	i,	%edx
	movl	%edx,	%ebx
	movl	$1,	%ecx
	movl	%ebx,	%edx
	addl	%ecx,	%edx
	movl	%edx,	%ebx
	movl	%ebx,	%edx
	movl	%edx,	i
	.lbl2:
	movl	i,	%edx
	movl	%edx,	%ebx
	movl	$100,	%ecx
	movl	%ebx,	%edx
	cmp	%ecx,	%edx
	setl	%al
	movzbl	%al,	%edx
	movl	%edx,	%ebx
	cmp	$0,	%ebx
	jnz	.lbl1
	movl	s,	%edx
	movl	%edx,	%ebx
	pushl	%ebx
	call	lwrite
	popl	%ebx
	movl	%ebp,%esp
	popl	%ebp
	ret
