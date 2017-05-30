	.data
x:	.int 0
	.text
	.globl	main
main:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$0,%esp
	movl	$0,%ebx
	movl	%ebx,x
	movl	x,%ebx
	testl	%ebx,%ebx
	jz		lbl1
	movl	$1,%ebx
	pushl	%ebx
	call	lwrite
	popl	%edx
	jmp		lbl2
	lbl1:
	movl	$2,%ebx
	pushl	%ebx
	call	lwrite
	popl	%edx
	lbl2:
	movl	%ebp,%esp
	popl	%ebp
	ret
