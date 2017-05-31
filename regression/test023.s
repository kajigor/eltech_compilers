	.data
n:	.int 0
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
	movl	s,	%edx
	movl	%edx,	%ebx
	movl	n,	%edx
	movl	%edx,	%ecx
	movl	%ebx,	%edx
	addl	%ecx,	%edx
	movl	%edx,	%ebx
	movl	%ebx,	%edx
	movl	%edx,	s
	jmp	.lbl2
	.lbl1:
	call	lread
	movl	%eax,	%edx
	movl	%edx,	n
	movl	s,	%edx
	movl	%edx,	%ebx
	movl	n,	%edx
	movl	%edx,	%ecx
	movl	%ebx,	%edx
	addl	%ecx,	%edx
	movl	%edx,	%ebx
	movl	%ebx,	%edx
	movl	%edx,	s
	.lbl2:
	movl	n,	%edx
	movl	%edx,	%ebx
	movl	$0,	%ecx
	movl	%ebx,	%edx
	cmp	%ecx,	%edx
	sete	%al
	movzbl	%al,	%edx
	movl	%edx,	%ebx
	movl	$0,	%ecx
	movl	%ebx,	%edx
	cmp	%ecx,	%edx
	sete	%al
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
