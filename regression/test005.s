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
	addl	%ecx,	%edx
	movl	%edx,	%ebx
	movl	x,	%edx
	movl	%edx,	%ecx
	movl	y,	%edx
	movl	%edx,	%esi
	movl	%ecx,	%edx
	subl	%esi,	%edx
	movl	%edx,	%ecx
	movl	%ebx,	%edx
	addl	%ecx,	%edx
	movl	%edx,	%ebx
	movl	x,	%edx
	movl	%edx,	%ecx
	movl	y,	%edx
	movl	%edx,	%esi
	movl	%ecx,	%edx
	subl	%esi,	%edx
	movl	%edx,	%ecx
	movl	x,	%edx
	movl	%edx,	%esi
	movl	y,	%edx
	movl	%edx,	%edi
	movl	%esi,	%edx
	movl	%edx,	%eax
	cdq
	idivl	%edi
	movl	%eax,	%edx
	movl	%edx,	%esi
	movl	%ecx,	%edx
	subl	%esi,	%edx
	movl	%edx,	%ecx
	movl	%ebx,	%edx
	addl	%ecx,	%edx
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
