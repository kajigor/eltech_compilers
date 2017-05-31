	.data
x:	.int 0
	.text
	.globl	main
main:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$0,%esp
	movl	$0,	%ebx
	movl	%ebx,	%edx
	movl	%edx,	x
	movl	x,	%edx
	movl	%edx,	%ebx
	cmp	$0,	%ebx
	jz	.lbl1
	movl	$1,	%ebx
	pushl	%ebx
	call	lwrite
	popl	%ebx
	jmp	.lbl2
	.lbl1:
	movl	$2,	%ebx
	pushl	%ebx
	call	lwrite
	popl	%ebx
	.lbl2:
	movl	%ebp,%esp
	popl	%ebp
	ret
