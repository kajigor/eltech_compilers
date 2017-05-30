	.data
x0:	.int 0
x1:	.int 0
y:	.int 0
	.text
	.globl	main
main:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$0,%esp
	call	lread
	movl	%eax,x0
	call	lread
	movl	%eax,x1
	movl	$17,%ebx
	movl	$28,%ecx
	movl	$29,%esi
	subl	%esi,%ecx
	movl	x0,%esi
	movl	%ecx,%eax
	cltd
	idiv	%esi
	movl	%edx,%ecx
	addl	%ecx,%ebx
	movl	%ebx,y
	movl	y,%ebx
	pushl	%ebx
	call	lwrite
	popl	%edx
	movl	%ebp,%esp
	popl	%ebp
	ret
