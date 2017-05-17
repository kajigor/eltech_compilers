	.data
x:	.int 0
y:	.int 0
	.text
	.globl	main
main:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$0,%esp
	call	lread
	movl	%eax,	x
	call	lread
	movl	%eax,	y
	movl	x,	%ebx
	movl	y,	%ecx
	subl	%ecx,	%ebx
	pushl	%ebx
	call	lwrite
	popl	%ebx
	movl	x,	%ebx
	movl	y,	%ecx
	pushl	%eax
	movl	%ebx,	%eax
	cltd	
	pushl	%esi
	movl	%ecx,	%esi
	idiv	%esi
	movl	%esi,	%ecx
	popl	%esi
	movl	%eax,	%ebx
	popl	%eax
	pushl	%ebx
	call	lwrite
	popl	%ebx
	movl	x,	%ebx
	movl	y,	%ecx
	pushl	%edx
	movl	%ebx,	%eax
	cltd	
	pushl	%esi
	movl	%ecx,	%esi
	idiv	%esi
	movl	%esi,	%ecx
	popl	%esi
	movl	%edx,	%ebx
	popl	%edx
	pushl	%ebx
	call	lwrite
	popl	%ebx
	movl	%ebp,%esp
	popl	%ebp
	ret
