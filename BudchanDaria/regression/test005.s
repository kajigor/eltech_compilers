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
	movl	%eax,x
	call	lread
	movl	%eax,y
	movl	x,%ebx
	movl	y,%ecx
	addl	%ecx,%ebx
	movl	x,%ecx
	movl	y,%esi
	subl	%esi,%ecx
	addl	%ecx,%ebx
	movl	x,%ecx
	movl	y,%esi
	subl	%esi,%ecx
	movl	x,%esi
	movl	y,%edi
	movl	%esi,%eax
	cltd
	idiv	%edi
	movl	%eax,%esi
	subl	%esi,%ecx
	addl	%ecx,%ebx
	movl	%ebx,z
	movl	z,%ebx
	pushl	%ebx
	call	lwrite
	popl	%edx
	movl	%ebp,%esp
	popl	%ebp
	ret
