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
	movl	$1,%ebx
	movl	%ebx,x
	movl	$2,%ebx
	movl	%ebx,y
	movl	x,%ebx
	movl	y,%ecx
	subl	%ecx,%ebx
	movl	$3,%ecx
	subl	%ecx,%ebx
	movl	%ebx,z
	movl	z,%ebx
	pushl	%ebx
	call	lwrite
	popl	%edx
	movl	%ebp,%esp
	popl	%ebp
	ret
