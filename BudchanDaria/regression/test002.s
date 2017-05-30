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
	movl	y,%ebx
	movl	y,%ecx
	imull	%ecx,%ebx
	movl	%ebx,z
	movl	x,%ebx
	movl	z,%ecx
	addl	%ecx,%ebx
	pushl	%ebx
	call	lwrite
	popl	%edx
	movl	%ebp,%esp
	popl	%ebp
	ret
