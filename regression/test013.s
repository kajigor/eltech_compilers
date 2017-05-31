	.data
	.text
	.globl	main
main:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$16,%esp
	movl	$1,	%ebx
	movl	$2,	%ecx
	movl	$3,	%esi
	movl	$4,	%edi
	movl	$5,	-4(%ebp)
	movl	$6,	-8(%ebp)
	movl	$7,	-12(%ebp)
	movl	$8,	-16(%ebp)
	movl	-12(%ebp),	%edx
	imull	-16(%ebp),	%edx
	movl	%edx,	-12(%ebp)
	movl	-8(%ebp),	%edx
	imull	-12(%ebp),	%edx
	movl	%edx,	-8(%ebp)
	movl	-4(%ebp),	%edx
	imull	-8(%ebp),	%edx
	movl	%edx,	-4(%ebp)
	movl	%edi,	%edx
	imull	-4(%ebp),	%edx
	movl	%edx,	%edi
	movl	%esi,	%edx
	imull	%edi,	%edx
	movl	%edx,	%esi
	movl	%ecx,	%edx
	imull	%esi,	%edx
	movl	%edx,	%ecx
	movl	%ebx,	%edx
	imull	%ecx,	%edx
	movl	%edx,	%ebx
	pushl	%ebx
	call	lwrite
	popl	%ebx
	movl	%ebp,%esp
	popl	%ebp
	ret
