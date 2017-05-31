	.data
x:	.int 0
y:	.int 0
z:	.int 0
	.text
	.globl	main
main:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$0,%esp
	call	lread
	movl	%eax,	%edx
	movl	%edx,	x
	call	lread
	movl	%eax,	%edx
	movl	%edx,	y
	movl	x,	%edx
	movl	%edx,	%ebx
	movl	y,	%edx
	movl	%edx,	%ecx
	movl	%ebx,	%edx
	cmp	%ecx,	%edx
	setl	%al
	movzbl	%al,	%edx
	movl	%edx,	%ebx
	movl	%ebx,	%edx
	movl	%edx,	z
	movl	z,	%edx
	movl	%edx,	%ebx
	pushl	%ebx
	call	lwrite
	popl	%ebx
	movl	x,	%edx
	movl	%edx,	%ebx
	movl	y,	%edx
	movl	%edx,	%ecx
	movl	%ebx,	%edx
	cmp	%ecx,	%edx
	setle	%al
	movzbl	%al,	%edx
	movl	%edx,	%ebx
	movl	%ebx,	%edx
	movl	%edx,	z
	movl	z,	%edx
	movl	%edx,	%ebx
	pushl	%ebx
	call	lwrite
	popl	%ebx
	movl	x,	%edx
	movl	%edx,	%ebx
	movl	y,	%edx
	movl	%edx,	%ecx
	movl	%ebx,	%edx
	cmp	%ecx,	%edx
	sete	%al
	movzbl	%al,	%edx
	movl	%edx,	%ebx
	movl	%ebx,	%edx
	movl	%edx,	z
	movl	z,	%edx
	movl	%edx,	%ebx
	pushl	%ebx
	call	lwrite
	popl	%ebx
	movl	x,	%edx
	movl	%edx,	%ebx
	movl	y,	%edx
	movl	%edx,	%ecx
	movl	%ebx,	%edx
	cmp	%ecx,	%edx
	setne	%al
	movzbl	%al,	%edx
	movl	%edx,	%ebx
	movl	%ebx,	%edx
	movl	%edx,	z
	movl	z,	%edx
	movl	%edx,	%ebx
	pushl	%ebx
	call	lwrite
	popl	%ebx
	movl	x,	%edx
	movl	%edx,	%ebx
	movl	y,	%edx
	movl	%edx,	%ecx
	movl	%ebx,	%edx
	cmp	%ecx,	%edx
	setge	%al
	movzbl	%al,	%edx
	movl	%edx,	%ebx
	movl	%ebx,	%edx
	movl	%edx,	z
	movl	z,	%edx
	movl	%edx,	%ebx
	pushl	%ebx
	call	lwrite
	popl	%ebx
	movl	x,	%edx
	movl	%edx,	%ebx
	movl	y,	%edx
	movl	%edx,	%ecx
	movl	%ebx,	%edx
	cmp	%ecx,	%edx
	setg	%al
	movzbl	%al,	%edx
	movl	%edx,	%ebx
	movl	%ebx,	%edx
	movl	%edx,	z
	movl	z,	%edx
	movl	%edx,	%ebx
	pushl	%ebx
	call	lwrite
	popl	%ebx
	movl	%ebp,%esp
	popl	%ebp
	ret
