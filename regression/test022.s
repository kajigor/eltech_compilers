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
	movl	%eax,	%edx
	movl	%edx,	n
	movl	$1,	%ebx
	movl	%ebx,	%edx
	movl	%edx,	fib_1
	movl	$1,	%ebx
	movl	%ebx,	%edx
	movl	%edx,	fib_2
	movl	$1,	%ebx
	movl	%ebx,	%edx
	movl	%edx,	fib
	movl	$2,	%ebx
	movl	%ebx,	%edx
	movl	%edx,	i
	jmp	.lbl2
	.lbl1:
	movl	fib_1,	%edx
	movl	%edx,	%ebx
	movl	fib_2,	%edx
	movl	%edx,	%ecx
	movl	%ebx,	%edx
	addl	%ecx,	%edx
	movl	%edx,	%ebx
	movl	%ebx,	%edx
	movl	%edx,	fib
	movl	fib_1,	%edx
	movl	%edx,	%ebx
	movl	%ebx,	%edx
	movl	%edx,	fib_2
	movl	fib,	%edx
	movl	%edx,	%ebx
	movl	%ebx,	%edx
	movl	%edx,	fib_1
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
	movl	n,	%edx
	movl	%edx,	%ecx
	movl	%ebx,	%edx
	cmp	%ecx,	%edx
	setl	%al
	movzbl	%al,	%edx
	movl	%edx,	%ebx
	cmp	$0,	%ebx
	jnz	.lbl1
	movl	fib,	%edx
	movl	%edx,	%ebx
	pushl	%ebx
	call	lwrite
	popl	%ebx
	movl	%ebp,%esp
	popl	%ebp
	ret
