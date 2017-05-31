	.data
x:	.int 0
	.text
	.globl	main
main:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$0,%esp
		movl	$0,	%ebx
		movl	%ebx,	x
		pushl	%eax
		pushl	%edx
		movl	x,	%eax
		movl	%ebx,	%edx
		movl	%eax,	%edx
		movl	%edx,	%ebx
		popl	%edx
		popl	%eax
		cmp	$0,	%ebx
		jz	label0
		movl	$1,	%ebx
		pushl	%ebx
		call	lwrite
		popl	%ebx
		jmp	label1
	label0:
		movl	$2,	%ebx
		pushl	%ebx
		call	lwrite
		popl	%ebx
	label1:
	movl	%ebp,%esp
	popl	%ebp
	ret
