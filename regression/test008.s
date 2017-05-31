	.data
z:	.int 0
	.text
	.globl	main
main:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$0,%esp
	movl	$0,	%ebx
	movl	$1,	%ecx
	movl	%ebx,	%edx
	subl	%ecx,	%edx
	movl	%edx,	%ebx
	movl	$2,	%ecx
	movl	%ebx,	%edx
	subl	%ecx,	%edx
	movl	%edx,	%ebx
	movl	$3,	%ecx
	movl	%ebx,	%edx
	subl	%ecx,	%edx
	movl	%edx,	%ebx
	movl	$4,	%ecx
	movl	%ebx,	%edx
	subl	%ecx,	%edx
	movl	%edx,	%ebx
	movl	$5,	%ecx
	movl	%ebx,	%edx
	subl	%ecx,	%edx
	movl	%edx,	%ebx
	movl	$6,	%ecx
	movl	%ebx,	%edx
	subl	%ecx,	%edx
	movl	%edx,	%ebx
	movl	$7,	%ecx
	movl	%ebx,	%edx
	subl	%ecx,	%edx
	movl	%edx,	%ebx
	movl	$8,	%ecx
	movl	%ebx,	%edx
	subl	%ecx,	%edx
	movl	%edx,	%ebx
	movl	$9,	%ecx
	movl	%ebx,	%edx
	subl	%ecx,	%edx
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
