	.data
	.text
	.globl	main
main:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$16,%esp
	movl	$1,%ebx
	movl	$2,%ecx
	movl	$3,%esi
	movl	$4,%edi
	movl	$5,-4(%ebp)
	movl	$6,-8(%ebp)
	movl	$7,-12(%ebp)
	movl	$8,-16(%ebp)
	movl	-12(%ebp),%edx
	imull	-16(%ebp),%edx
	movl	%edx,-12(%ebp)
	movl	-8(%ebp),%edx
	imull	-12(%ebp),%edx
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%edx
	imull	-8(%ebp),%edx
	movl	%edx,-4(%ebp)
	imull	-4(%ebp),%edi
	imull	%edi,%esi
	imull	%esi,%ecx
	imull	%ecx,%ebx
	pushl	%ebx
	call	lwrite
	popl	%edx
	movl	%ebp,%esp
	popl	%ebp
	ret
