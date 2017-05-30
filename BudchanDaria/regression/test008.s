	.data
z:	.int 0
	.text
	.globl	main
main:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$0,%esp
	movl	$0,%ebx
	movl	$1,%ecx
	subl	%ecx,%ebx
	movl	$2,%ecx
	subl	%ecx,%ebx
	movl	$3,%ecx
	subl	%ecx,%ebx
	movl	$4,%ecx
	subl	%ecx,%ebx
	movl	$5,%ecx
	subl	%ecx,%ebx
	movl	$6,%ecx
	subl	%ecx,%ebx
	movl	$7,%ecx
	subl	%ecx,%ebx
	movl	$8,%ecx
	subl	%ecx,%ebx
	movl	$9,%ecx
	subl	%ecx,%ebx
	movl	%ebx,z
	movl	z,%ebx
	pushl	%ebx
	call	lwrite
	popl	%edx
	movl	%ebp,%esp
	popl	%ebp
	ret
