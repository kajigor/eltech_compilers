	.data
	.text
	.globl	main
main:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$12,%esp
	movl	$1,%eax
	movl	$2,%ebx
	movl	$3,%ecx
	movl	$4,%esi
	movl	$5,%edi
	movl	$6,-4(%ebp)
	movl	$7,-8(%ebp)
	movl	$8,-12(%ebp)
	movl	-8(%ebp),%edx
	addl	-12(%ebp),%edx
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%edx
	addl	-8(%ebp),%edx
	movl	%edx,-4(%ebp)
	addl	-4(%ebp),%edi
	addl	%edi,%esi
	addl	%esi,%ecx
	addl	%ecx,%ebx
	addl	%ebx,%eax
	pushl	%eax
	call	lwrite
	popl	%edx
	movl	%ebp,%esp
	popl	%ebp
	ret
