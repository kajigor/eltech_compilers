	.data
fib:	.int 0
fib_1:	.int 0
fib_2:	.int 0
i:	.int 0
n:	.int 0
	.text
	.globl	main
main:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$0,%esp
	call	lread
	movl	%eax,n
	movl	$1,%ebx
	movl	%ebx,fib_1
	movl	$1,%ebx
	movl	%ebx,fib_2
	movl	$1,%ebx
	movl	%ebx,fib
	movl	$2,%ebx
	movl	%ebx,i
	jmp		lbl1
	lbl2:
	movl	fib_1,%ebx
	movl	fib_2,%ecx
	addl	%ecx,%ebx
	movl	%ebx,fib
	movl	fib_1,%ebx
	movl	%ebx,fib_2
	movl	fib,%ebx
	movl	%ebx,fib_1
	movl	i,%ebx
	movl	$1,%ecx
	addl	%ecx,%ebx
	movl	%ebx,i
	lbl1:
	movl	i,%ebx
	movl	n,%ecx
	cmpl	%ecx,%ebx
	movl	$0,%edx
	setl	%dl
	movl	%edx,%ebx
	testl	%ebx,%ebx
	jnz		lbl2
	movl	fib,%ebx
	pushl	%ebx
	call	lwrite
	popl	%edx
	movl	%ebp,%esp
	popl	%ebp
	ret
