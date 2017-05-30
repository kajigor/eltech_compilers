	.data
n:	.int 0
s:	.int 0
	.text
	.globl	main
main:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$0,%esp
	movl	$0,%ebx
	movl	%ebx,s
	lbl1:
	call	lread
	movl	%eax,n
	movl	s,%ebx
	movl	n,%ecx
	addl	%ecx,%ebx
	movl	%ebx,s
	movl	n,%ebx
	movl	$0,%ecx
	cmpl	%ecx,%ebx
	movl	$0,%edx
	sete	%dl
	movl	%edx,%ebx
	testl	%ebx,%ebx
	jz		lbl1
	movl	s,%ebx
	pushl	%ebx
	call	lwrite
	popl	%edx
	movl	%ebp,%esp
	popl	%ebp
	ret
