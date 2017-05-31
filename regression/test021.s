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
	movl	%eax,	%edx
	movl	%edx,	n
	movl	$1,	%ebx
	movl	%ebx,	%edx
	movl	%edx,	f
	jmp	.lbl2
	.lbl1:
	movl	f,	%edx
	movl	%edx,	%ebx
	movl	n,	%edx
	movl	%edx,	%ecx
	movl	%ebx,	%edx
	imull	%ecx,	%edx
	movl	%edx,	%ebx
	movl	%ebx,	%edx
	movl	%edx,	f
	movl	n,	%edx
	movl	%edx,	%ebx
	movl	$1,	%ecx
	movl	%ebx,	%edx
	subl	%ecx,	%edx
	movl	%edx,	%ebx
	movl	%ebx,	%edx
	movl	%edx,	n
	.lbl2:
	movl	n,	%edx
	movl	%edx,	%ebx
	movl	$1,	%ecx
	movl	%ebx,	%edx
	cmp	%ecx,	%edx
	setge	%al
	movzbl	%al,	%edx
	movl	%edx,	%ebx
	cmp	$0,	%ebx
	jnz	.lbl1
	movl	f,	%edx
	movl	%edx,	%ebx
	pushl	%ebx
	call	lwrite
	popl	%ebx
	movl	%ebp,%esp
	popl	%ebp
	ret
