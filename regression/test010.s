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
	movl	$2,	%ebx
	movl	%ebx,	%edx
	movl	%edx,	n
	movl	$10,	%ebx
	movl	%ebx,	%edx
	movl	%edx,	k
	movl	$1,	%ebx
	movl	%ebx,	%edx
	movl	%edx,	res
	jmp	.lbl2
	.lbl1:
	movl	res,	%edx
	movl	%edx,	%ebx
	movl	n,	%edx
	movl	%edx,	%ecx
	movl	%ebx,	%edx
	imull	%ecx,	%edx
	movl	%edx,	%ebx
	movl	%ebx,	%edx
	movl	%edx,	res
	movl	k,	%edx
	movl	%edx,	%ebx
	movl	$1,	%ecx
	movl	%ebx,	%edx
	subl	%ecx,	%edx
	movl	%edx,	%ebx
	movl	%ebx,	%edx
	movl	%edx,	k
	.lbl2:
	movl	k,	%edx
	movl	%edx,	%ebx
	movl	$0,	%ecx
	movl	%ebx,	%edx
	cmp	%ecx,	%edx
	setg	%al
	movzbl	%al,	%edx
	movl	%edx,	%ebx
	cmp	$0,	%ebx
	jnz	.lbl1
	movl	res,	%edx
	movl	%edx,	%ebx
	pushl	%ebx
	call	lwrite
	popl	%ebx
	movl	%ebp,%esp
	popl	%ebp
	ret
