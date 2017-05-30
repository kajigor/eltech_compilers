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
	addl	%esi,%ecx
	movl	$35,%esi
	movl	$36,%edi
	subl	%edi,%esi
	movl	%ecx,%eax
	cltd
	idiv	%esi
	movl	%eax,%ecx
	subl	%ecx,%ebx
	movl	%ebx,y
	movl	y,%ebx
	pushl	%ebx
	call	lwrite
	popl	%edx
	movl	%ebp,%esp
	popl	%ebp
	ret
