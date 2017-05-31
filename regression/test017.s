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
		movl	%eax,	n
		movl	$2,	%ebx
		movl	%ebx,	i
		movl	$1,	%ebx
		movl	%ebx,	fib_1
		movl	$1,	%ebx
		movl	%ebx,	fib_2
		movl	$1,	%ebx
		movl	%ebx,	fib
		jmp	label1
	label0:
		pushl	%eax
		pushl	%edx
		movl	fib_1,	%eax
		movl	%ebx,	%edx
		movl	%eax,	%edx
		movl	%edx,	%ebx
		popl	%edx
		popl	%eax
		pushl	%eax
		pushl	%edx
		movl	fib_2,	%eax
		movl	%ecx,	%edx
		movl	%eax,	%edx
		movl	%edx,	%ecx
		popl	%edx
		popl	%eax
		pushl	%eax
		pushl	%edx
		movl	%ecx,	%eax
		movl	%ebx,	%edx
		addl	%eax,	%edx
		movl	%edx,	%eax
		movl	%edx,	%ebx
		popl	%edx
		popl	%eax
		movl	%ebx,	fib
		pushl	%eax
		pushl	%edx
		movl	fib_1,	%eax
		movl	%ebx,	%edx
		movl	%eax,	%edx
		movl	%edx,	%ebx
		popl	%edx
		popl	%eax
		movl	%ebx,	fib_2
		pushl	%eax
		pushl	%edx
		movl	fib,	%eax
		movl	%ebx,	%edx
		movl	%eax,	%edx
		movl	%edx,	%ebx
		popl	%edx
		popl	%eax
		movl	%ebx,	fib_1
		pushl	%eax
		pushl	%edx
		movl	i,	%eax
		movl	%ebx,	%edx
		movl	%eax,	%edx
		movl	%edx,	%ebx
		popl	%edx
		popl	%eax
		movl	$1,	%ecx
		pushl	%eax
		pushl	%edx
		movl	%ecx,	%eax
		movl	%ebx,	%edx
		addl	%eax,	%edx
		movl	%edx,	%eax
		movl	%edx,	%ebx
		popl	%edx
		popl	%eax
		movl	%ebx,	i
	label1:
		pushl	%eax
		pushl	%edx
		movl	i,	%eax
		movl	%ebx,	%edx
		movl	%eax,	%edx
		movl	%edx,	%ebx
		popl	%edx
		popl	%eax
		pushl	%eax
		pushl	%edx
		movl	n,	%eax
		movl	%ecx,	%edx
		movl	%eax,	%edx
		movl	%edx,	%ecx
		popl	%edx
		popl	%eax
		pushl	%eax
		pushl	%edx
		movl	%ecx,	%eax
		movl	%ebx,	%edx
		cmp	%eax,	%edx
		setl	%al
		movzbl	%al,	%edx
		movl	%edx,	%ebx
		popl	%edx
		popl	%eax
		cmp	$0,	%ebx
		jnz	label0
		pushl	%eax
		pushl	%edx
		movl	fib,	%eax
		movl	%ebx,	%edx
		movl	%eax,	%edx
		movl	%edx,	%ebx
		popl	%edx
		popl	%eax
		pushl	%ebx
		call	lwrite
		popl	%ebx
	movl	%ebp,%esp
	popl	%ebp
	ret
