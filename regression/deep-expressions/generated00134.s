	.data
x0:	.int 0
x1:	.int 0
x2:	.int 0
x3:	.int 0
y:	.int 0
	.text
	.globl	main
main:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$20,%esp
		call	lread
		movl	%eax,	x0
		call	lread
		movl	%eax,	x1
		call	lread
		movl	%eax,	x2
		call	lread
		movl	%eax,	x3
		movl	$810,	%ebx
		pushl	%eax
		pushl	%edx
		movl	x1,	%eax
		movl	%ecx,	%edx
		movl	%eax,	%edx
		movl	%edx,	%ecx
		popl	%edx
		popl	%eax
		pushl	%eax
		pushl	%edx
		movl	%ecx,	%eax
		movl	%ebx,	%edx
		cmp	%eax,	%edx
		sete	%al
		movzbl	%al,	%edx
		movl	%edx,	%ebx
		popl	%edx
		popl	%eax
		pushl	%eax
		pushl	%edx
		movl	x3,	%eax
		movl	%ecx,	%edx
		movl	%eax,	%edx
		movl	%edx,	%ecx
		popl	%edx
		popl	%eax
		pushl	%eax
		pushl	%edx
		movl	x3,	%eax
		movl	%esi,	%edx
		movl	%eax,	%edx
		movl	%edx,	%esi
		popl	%edx
		popl	%eax
		pushl	%eax
		pushl	%edx
		movl	%esi,	%eax
		movl	%ecx,	%edx
		cmp	%eax,	%edx
		setne	%al
		movzbl	%al,	%edx
		movl	%edx,	%ecx
		popl	%edx
		popl	%eax
		pushl	%eax
		pushl	%edx
		movl	%ebx,	%eax
		imull	%ecx,	%eax
		movl	%eax,	%ebx
		popl	%edx
		popl	%eax
		pushl	%eax
		pushl	%edx
		movl	x3,	%eax
		movl	%ecx,	%edx
		movl	%eax,	%edx
		movl	%edx,	%ecx
		popl	%edx
		popl	%eax
		movl	$202,	%esi
		pushl	%eax
		pushl	%edx
		xorl	%eax,	%eax
		movl	%esi,	%edx
		orl	%ecx,	%edx
		cmp	%edx,	%eax
		setne	%al
		movl	%eax,	%ecx
		popl	%edx
		popl	%eax
		pushl	%eax
		pushl	%edx
		movl	x3,	%eax
		movl	%esi,	%edx
		movl	%eax,	%edx
		movl	%edx,	%esi
		popl	%edx
		popl	%eax
		pushl	%eax
		pushl	%edx
		movl	x2,	%eax
		movl	%edi,	%edx
		movl	%eax,	%edx
		movl	%edx,	%edi
		popl	%edx
		popl	%eax
		pushl	%eax
		pushl	%edx
		xorl	%eax,	%eax
		movl	%edi,	%edx
		cmp	%edx,	%eax
		setne	%al
		movl	%esi,	%edx
		imull	%eax,	%edx
		xorl	%eax,	%eax
		cmp	%edx,	%eax
		setne	%al
		movl	%eax,	%esi
		popl	%edx
		popl	%eax
		pushl	%eax
		pushl	%edx
		movl	%esi,	%eax
		movl	%ecx,	%edx
		cmp	%eax,	%edx
		setne	%al
		movzbl	%al,	%edx
		movl	%edx,	%ecx
		popl	%edx
		popl	%eax
		pushl	%eax
		pushl	%edx
		movl	%ecx,	%eax
		movl	%ebx,	%edx
		cmp	%eax,	%edx
		setg	%al
		movzbl	%al,	%edx
		movl	%edx,	%ebx
		popl	%edx
		popl	%eax
		pushl	%eax
		pushl	%edx
		movl	x0,	%eax
		movl	%ecx,	%edx
		movl	%eax,	%edx
		movl	%edx,	%ecx
		popl	%edx
		popl	%eax
		movl	$586,	%esi
		pushl	%eax
		pushl	%edx
		movl	%esi,	%eax
		movl	%ecx,	%edx
		cmp	%eax,	%edx
		sete	%al
		movzbl	%al,	%edx
		movl	%edx,	%ecx
		popl	%edx
		popl	%eax
		movl	$870,	%esi
		movl	$665,	%edi
		pushl	%eax
		pushl	%edx
		movl	%edi,	%eax
		movl	%esi,	%edx
		cmp	%eax,	%edx
		setge	%al
		movzbl	%al,	%edx
		movl	%edx,	%esi
		popl	%edx
		popl	%eax
		pushl	%eax
		pushl	%edx
		movl	%esi,	%eax
		movl	%ecx,	%edx
		addl	%eax,	%edx
		movl	%edx,	%eax
		movl	%edx,	%ecx
		popl	%edx
		popl	%eax
		movl	$602,	%esi
		pushl	%eax
		pushl	%edx
		movl	x1,	%eax
		movl	%edi,	%edx
		movl	%eax,	%edx
		movl	%edx,	%edi
		popl	%edx
		popl	%eax
		pushl	%eax
		pushl	%edx
		movl	%esi,	%eax
		imull	%edi,	%eax
		movl	%eax,	%esi
		popl	%edx
		popl	%eax
		movl	$524,	%edi
		pushl	%eax
		pushl	%edx
		movl	x3,	%eax
		movl	-4(%ebp),	%edx
		movl	%eax,	%edx
		movl	%edx,	-4(%ebp)
		popl	%edx
		popl	%eax
		pushl	%eax
		pushl	%edx
		movl	-4(%ebp),	%eax
		movl	%edi,	%edx
		cmp	%eax,	%edx
		sete	%al
		movzbl	%al,	%edx
		movl	%edx,	%edi
		popl	%edx
		popl	%eax
		pushl	%eax
		pushl	%edx
		movl	%esi,	%eax
		imull	%edi,	%eax
		movl	%eax,	%esi
		popl	%edx
		popl	%eax
		pushl	%eax
		pushl	%edx
		movl	%esi,	%eax
		movl	%ecx,	%edx
		subl	%eax,	%edx
		movl	%edx,	%eax
		movl	%edx,	%ecx
		popl	%edx
		popl	%eax
		pushl	%eax
		pushl	%edx
		movl	%ecx,	%eax
		movl	%ebx,	%edx
		cmp	%eax,	%edx
		setl	%al
		movzbl	%al,	%edx
		movl	%edx,	%ebx
		popl	%edx
		popl	%eax
		pushl	%eax
		pushl	%edx
		movl	x1,	%eax
		movl	%ecx,	%edx
		movl	%eax,	%edx
		movl	%edx,	%ecx
		popl	%edx
		popl	%eax
		movl	$110,	%esi
		pushl	%eax
		pushl	%edx
		movl	%esi,	%eax
		movl	%ecx,	%edx
		subl	%eax,	%edx
		movl	%edx,	%eax
		movl	%edx,	%ecx
		popl	%edx
		popl	%eax
		pushl	%eax
		pushl	%edx
		movl	x2,	%eax
		movl	%esi,	%edx
		movl	%eax,	%edx
		movl	%edx,	%esi
		popl	%edx
		popl	%eax
		movl	$891,	%edi
		pushl	%eax
		pushl	%edx
		movl	%edi,	%eax
		movl	%esi,	%edx
		cmp	%eax,	%edx
		setg	%al
		movzbl	%al,	%edx
		movl	%edx,	%esi
		popl	%edx
		popl	%eax
		pushl	%eax
		pushl	%edx
		movl	%esi,	%eax
		movl	%ecx,	%edx
		cmp	%eax,	%edx
		sete	%al
		movzbl	%al,	%edx
		movl	%edx,	%ecx
		popl	%edx
		popl	%eax
		pushl	%eax
		pushl	%edx
		movl	x3,	%eax
		movl	%esi,	%edx
		movl	%eax,	%edx
		movl	%edx,	%esi
		popl	%edx
		popl	%eax
		movl	$38,	%edi
		pushl	%eax
		pushl	%edx
		movl	%edi,	%eax
		movl	%esi,	%edx
		cmp	%eax,	%edx
		setle	%al
		movzbl	%al,	%edx
		movl	%edx,	%esi
		popl	%edx
		popl	%eax
		pushl	%eax
		pushl	%edx
		movl	x1,	%eax
		movl	%edi,	%edx
		movl	%eax,	%edx
		movl	%edx,	%edi
		popl	%edx
		popl	%eax
		movl	$656,	-4(%ebp)
		pushl	%eax
		pushl	%edx
		movl	-4(%ebp),	%eax
		movl	%edi,	%edx
		cmp	%eax,	%edx
		sete	%al
		movzbl	%al,	%edx
		movl	%edx,	%edi
		popl	%edx
		popl	%eax
		pushl	%eax
		pushl	%edx
		movl	%edi,	%eax
		movl	%esi,	%edx
		cmp	%eax,	%edx
		sete	%al
		movzbl	%al,	%edx
		movl	%edx,	%esi
		popl	%edx
		popl	%eax
		pushl	%eax
		pushl	%edx
		movl	%esi,	%eax
		movl	%ecx,	%edx
		cmp	%eax,	%edx
		setne	%al
		movzbl	%al,	%edx
		movl	%edx,	%ecx
		popl	%edx
		popl	%eax
		pushl	%eax
		pushl	%edx
		movl	x2,	%eax
		movl	%esi,	%edx
		movl	%eax,	%edx
		movl	%edx,	%esi
		popl	%edx
		popl	%eax
		movl	$653,	%edi
		pushl	%eax
		pushl	%edx
		movl	%edi,	%eax
		movl	%esi,	%edx
		subl	%eax,	%edx
		movl	%edx,	%eax
		movl	%edx,	%esi
		popl	%edx
		popl	%eax
		movl	$210,	%edi
		movl	$769,	-4(%ebp)
		pushl	%eax
		pushl	%edx
		movl	-4(%ebp),	%eax
		movl	%edi,	%edx
		cmp	%eax,	%edx
		setle	%al
		movzbl	%al,	%edx
		movl	%edx,	%edi
		popl	%edx
		popl	%eax
		pushl	%eax
		pushl	%edx
		movl	%edi,	%eax
		movl	%esi,	%edx
		cmp	%eax,	%edx
		setg	%al
		movzbl	%al,	%edx
		movl	%edx,	%esi
		popl	%edx
		popl	%eax
		pushl	%eax
		pushl	%edx
		movl	x3,	%eax
		movl	%edi,	%edx
		movl	%eax,	%edx
		movl	%edx,	%edi
		popl	%edx
		popl	%eax
		movl	$646,	-4(%ebp)
		pushl	%eax
		pushl	%edx
		movl	-4(%ebp),	%eax
		movl	%edi,	%edx
		cmp	%eax,	%edx
		setge	%al
		movzbl	%al,	%edx
		movl	%edx,	%edi
		popl	%edx
		popl	%eax
		movl	$300,	-4(%ebp)
		pushl	%eax
		pushl	%edx
		movl	x2,	%eax
		movl	-8(%ebp),	%edx
		movl	%eax,	%edx
		movl	%edx,	-8(%ebp)
		popl	%edx
		popl	%eax
		pushl	%eax
		pushl	%edx
		xorl	%eax,	%eax
		movl	-8(%ebp),	%edx
		cmp	%edx,	%eax
		setne	%al
		movl	-4(%ebp),	%edx
		imull	%eax,	%edx
		xorl	%eax,	%eax
		cmp	%edx,	%eax
		setne	%al
		movl	%eax,	-4(%ebp)
		popl	%edx
		popl	%eax
		pushl	%eax
		pushl	%edx
		movl	-4(%ebp),	%eax
		movl	%edi,	%edx
		addl	%eax,	%edx
		movl	%edx,	%eax
		movl	%edx,	%edi
		popl	%edx
		popl	%eax
		pushl	%eax
		pushl	%edx
		movl	%edi,	%eax
		movl	%esi,	%edx
		addl	%eax,	%edx
		movl	%edx,	%eax
		movl	%edx,	%esi
		popl	%edx
		popl	%eax
		pushl	%eax
		pushl	%edx
		xorl	%eax,	%eax
		movl	%esi,	%edx
		orl	%ecx,	%edx
		cmp	%edx,	%eax
		setne	%al
		movl	%eax,	%ecx
		popl	%edx
		popl	%eax
		pushl	%eax
		pushl	%edx
		xorl	%eax,	%eax
		movl	%ecx,	%edx
		cmp	%edx,	%eax
		setne	%al
		movl	%ebx,	%edx
		imull	%eax,	%edx
		xorl	%eax,	%eax
		cmp	%edx,	%eax
		setne	%al
		movl	%eax,	%ebx
		popl	%edx
		popl	%eax
		pushl	%eax
		pushl	%edx
		movl	x0,	%eax
		movl	%ecx,	%edx
		movl	%eax,	%edx
		movl	%edx,	%ecx
		popl	%edx
		popl	%eax
		pushl	%eax
		pushl	%edx
		movl	x2,	%eax
		movl	%esi,	%edx
		movl	%eax,	%edx
		movl	%edx,	%esi
		popl	%edx
		popl	%eax
		pushl	%eax
		pushl	%edx
		movl	%ecx,	%eax
		imull	%esi,	%eax
		movl	%eax,	%ecx
		popl	%edx
		popl	%eax
		movl	$963,	%esi
		movl	$913,	%edi
		pushl	%eax
		pushl	%edx
		xorl	%eax,	%eax
		movl	%edi,	%edx
		orl	%esi,	%edx
		cmp	%edx,	%eax
		setne	%al
		movl	%eax,	%esi
		popl	%edx
		popl	%eax
		pushl	%eax
		pushl	%edx
		movl	%esi,	%eax
		movl	%ecx,	%edx
		addl	%eax,	%edx
		movl	%edx,	%eax
		movl	%edx,	%ecx
		popl	%edx
		popl	%eax
		movl	$258,	%esi
		pushl	%eax
		pushl	%edx
		movl	x1,	%eax
		movl	%edi,	%edx
		movl	%eax,	%edx
		movl	%edx,	%edi
		popl	%edx
		popl	%eax
		pushl	%eax
		pushl	%edx
		movl	%edi,	%eax
		movl	%esi,	%edx
		cmp	%eax,	%edx
		setge	%al
		movzbl	%al,	%edx
		movl	%edx,	%esi
		popl	%edx
		popl	%eax
		movl	$840,	%edi
		movl	$509,	-4(%ebp)
		pushl	%eax
		pushl	%edx
		movl	-4(%ebp),	%eax
		movl	%edi,	%edx
		cmp	%eax,	%edx
		sete	%al
		movzbl	%al,	%edx
		movl	%edx,	%edi
		popl	%edx
		popl	%eax
		pushl	%eax
		pushl	%edx
		movl	%edi,	%eax
		movl	%esi,	%edx
		cmp	%eax,	%edx
		setle	%al
		movzbl	%al,	%edx
		movl	%edx,	%esi
		popl	%edx
		popl	%eax
		pushl	%eax
		pushl	%edx
		movl	%ecx,	%eax
		imull	%esi,	%eax
		movl	%eax,	%ecx
		popl	%edx
		popl	%eax
		pushl	%eax
		pushl	%edx
		movl	x1,	%eax
		movl	%esi,	%edx
		movl	%eax,	%edx
		movl	%edx,	%esi
		popl	%edx
		popl	%eax
		pushl	%eax
		pushl	%edx
		movl	x1,	%eax
		movl	%edi,	%edx
		movl	%eax,	%edx
		movl	%edx,	%edi
		popl	%edx
		popl	%eax
		pushl	%eax
		pushl	%edx
		xorl	%eax,	%eax
		movl	%edi,	%edx
		cmp	%edx,	%eax
		setne	%al
		movl	%esi,	%edx
		imull	%eax,	%edx
		xorl	%eax,	%eax
		cmp	%edx,	%eax
		setne	%al
		movl	%eax,	%esi
		popl	%edx
		popl	%eax
		pushl	%eax
		pushl	%edx
		movl	x1,	%eax
		movl	%edi,	%edx
		movl	%eax,	%edx
		movl	%edx,	%edi
		popl	%edx
		popl	%eax
		movl	$967,	-4(%ebp)
		pushl	%eax
		pushl	%edx
		movl	-4(%ebp),	%eax
		movl	%edi,	%edx
		cmp	%eax,	%edx
		setle	%al
		movzbl	%al,	%edx
		movl	%edx,	%edi
		popl	%edx
		popl	%eax
		pushl	%eax
		pushl	%edx
		movl	%edi,	%eax
		movl	%esi,	%edx
		cmp	%eax,	%edx
		setl	%al
		movzbl	%al,	%edx
		movl	%edx,	%esi
		popl	%edx
		popl	%eax
		movl	$899,	%edi
		movl	$579,	-4(%ebp)
		pushl	%eax
		pushl	%edx
		xorl	%eax,	%eax
		movl	-4(%ebp),	%edx
		cmp	%edx,	%eax
		setne	%al
		movl	%edi,	%edx
		imull	%eax,	%edx
		xorl	%eax,	%eax
		cmp	%edx,	%eax
		setne	%al
		movl	%eax,	%edi
		popl	%edx
		popl	%eax
		movl	$63,	-4(%ebp)
		movl	$337,	-8(%ebp)
		pushl	%eax
		pushl	%edx
		movl	-8(%ebp),	%eax
		movl	-4(%ebp),	%edx
		cmp	%eax,	%edx
		sete	%al
		movzbl	%al,	%edx
		movl	%edx,	-4(%ebp)
		popl	%edx
		popl	%eax
		pushl	%eax
		pushl	%edx
		movl	-4(%ebp),	%eax
		movl	%edi,	%edx
		cmp	%eax,	%edx
		setle	%al
		movzbl	%al,	%edx
		movl	%edx,	%edi
		popl	%edx
		popl	%eax
		pushl	%eax
		pushl	%edx
		movl	%edi,	%eax
		movl	%esi,	%edx
		cmp	%eax,	%edx
		sete	%al
		movzbl	%al,	%edx
		movl	%edx,	%esi
		popl	%edx
		popl	%eax
		pushl	%eax
		pushl	%edx
		movl	%esi,	%eax
		movl	%ecx,	%edx
		subl	%eax,	%edx
		movl	%edx,	%eax
		movl	%edx,	%ecx
		popl	%edx
		popl	%eax
		movl	$736,	%esi
		movl	$451,	%edi
		pushl	%eax
		pushl	%edx
		movl	%edi,	%eax
		movl	%esi,	%edx
		cmp	%eax,	%edx
		setge	%al
		movzbl	%al,	%edx
		movl	%edx,	%esi
		popl	%edx
		popl	%eax
		pushl	%eax
		pushl	%edx
		movl	x1,	%eax
		movl	%edi,	%edx
		movl	%eax,	%edx
		movl	%edx,	%edi
		popl	%edx
		popl	%eax
		pushl	%eax
		pushl	%edx
		movl	x2,	%eax
		movl	-4(%ebp),	%edx
		movl	%eax,	%edx
		movl	%edx,	-4(%ebp)
		popl	%edx
		popl	%eax
		pushl	%eax
		pushl	%edx
		xorl	%eax,	%eax
		movl	-4(%ebp),	%edx
		orl	%edi,	%edx
		cmp	%edx,	%eax
		setne	%al
		movl	%eax,	%edi
		popl	%edx
		popl	%eax
		pushl	%eax
		pushl	%edx
		movl	%edi,	%eax
		movl	%esi,	%edx
		cmp	%eax,	%edx
		setne	%al
		movzbl	%al,	%edx
		movl	%edx,	%esi
		popl	%edx
		popl	%eax
		movl	$125,	%edi
		movl	$19,	-4(%ebp)
		pushl	%eax
		pushl	%edx
		movl	-4(%ebp),	%eax
		movl	%edi,	%edx
		cmp	%eax,	%edx
		setl	%al
		movzbl	%al,	%edx
		movl	%edx,	%edi
		popl	%edx
		popl	%eax
		movl	$672,	-4(%ebp)
		pushl	%eax
		pushl	%edx
		movl	x3,	%eax
		movl	-8(%ebp),	%edx
		movl	%eax,	%edx
		movl	%edx,	-8(%ebp)
		popl	%edx
		popl	%eax
		pushl	%eax
		pushl	%edx
		movl	-8(%ebp),	%eax
		movl	-4(%ebp),	%edx
		subl	%eax,	%edx
		movl	%edx,	%eax
		movl	%edx,	-4(%ebp)
		popl	%edx
		popl	%eax
		pushl	%eax
		pushl	%edx
		movl	-4(%ebp),	%eax
		movl	%edi,	%edx
		subl	%eax,	%edx
		movl	%edx,	%eax
		movl	%edx,	%edi
		popl	%edx
		popl	%eax
		pushl	%eax
		pushl	%edx
		movl	%edi,	%eax
		movl	%esi,	%edx
		cmp	%eax,	%edx
		setge	%al
		movzbl	%al,	%edx
		movl	%edx,	%esi
		popl	%edx
		popl	%eax
		movl	$696,	%edi
		movl	$311,	-4(%ebp)
		pushl	%eax
		pushl	%edx
		xorl	%eax,	%eax
		movl	-4(%ebp),	%edx
		orl	%edi,	%edx
		cmp	%edx,	%eax
		setne	%al
		movl	%eax,	%edi
		popl	%edx
		popl	%eax
		pushl	%eax
		pushl	%edx
		movl	x3,	%eax
		movl	-4(%ebp),	%edx
		movl	%eax,	%edx
		movl	%edx,	-4(%ebp)
		popl	%edx
		popl	%eax
		pushl	%eax
		pushl	%edx
		movl	x3,	%eax
		movl	-8(%ebp),	%edx
		movl	%eax,	%edx
		movl	%edx,	-8(%ebp)
		popl	%edx
		popl	%eax
		pushl	%eax
		pushl	%edx
		movl	-8(%ebp),	%eax
		movl	-4(%ebp),	%edx
		cmp	%eax,	%edx
		setl	%al
		movzbl	%al,	%edx
		movl	%edx,	-4(%ebp)
		popl	%edx
		popl	%eax
		pushl	%eax
		pushl	%edx
		movl	-4(%ebp),	%eax
		movl	%edi,	%edx
		cmp	%eax,	%edx
		setge	%al
		movzbl	%al,	%edx
		movl	%edx,	%edi
		popl	%edx
		popl	%eax
		movl	$809,	-4(%ebp)
		movl	$219,	-8(%ebp)
		pushl	%eax
		pushl	%edx
		movl	-8(%ebp),	%eax
		movl	-4(%ebp),	%edx
		cmp	%eax,	%edx
		setge	%al
		movzbl	%al,	%edx
		movl	%edx,	-4(%ebp)
		popl	%edx
		popl	%eax
		movl	$40,	-8(%ebp)
		pushl	%eax
		pushl	%edx
		movl	x3,	%eax
		movl	-12(%ebp),	%edx
		movl	%eax,	%edx
		movl	%edx,	-12(%ebp)
		popl	%edx
		popl	%eax
		pushl	%eax
		pushl	%edx
		movl	-12(%ebp),	%eax
		movl	-8(%ebp),	%edx
		addl	%eax,	%edx
		movl	%edx,	%eax
		movl	%edx,	-8(%ebp)
		popl	%edx
		popl	%eax
		pushl	%eax
		pushl	%edx
		xorl	%eax,	%eax
		movl	-8(%ebp),	%edx
		cmp	%edx,	%eax
		setne	%al
		movl	-4(%ebp),	%edx
		imull	%eax,	%edx
		xorl	%eax,	%eax
		cmp	%edx,	%eax
		setne	%al
		movl	%eax,	-4(%ebp)
		popl	%edx
		popl	%eax
		pushl	%eax
		pushl	%edx
		movl	-4(%ebp),	%eax
		movl	%edi,	%edx
		cmp	%eax,	%edx
		setl	%al
		movzbl	%al,	%edx
		movl	%edx,	%edi
		popl	%edx
		popl	%eax
		pushl	%eax
		pushl	%edx
		movl	%edi,	%eax
		movl	%esi,	%edx
		subl	%eax,	%edx
		movl	%edx,	%eax
		movl	%edx,	%esi
		popl	%edx
		popl	%eax
		pushl	%eax
		pushl	%edx
		xorl	%eax,	%eax
		movl	%esi,	%edx
		orl	%ecx,	%edx
		cmp	%edx,	%eax
		setne	%al
		movl	%eax,	%ecx
		popl	%edx
		popl	%eax
		pushl	%eax
		pushl	%edx
		movl	%ecx,	%eax
		movl	%ebx,	%edx
		cmp	%eax,	%edx
		setg	%al
		movzbl	%al,	%edx
		movl	%edx,	%ebx
		popl	%edx
		popl	%eax
		pushl	%eax
		pushl	%edx
		movl	x3,	%eax
		movl	%ecx,	%edx
		movl	%eax,	%edx
		movl	%edx,	%ecx
		popl	%edx
		popl	%eax
		pushl	%eax
		pushl	%edx
		movl	x3,	%eax
		movl	%esi,	%edx
		movl	%eax,	%edx
		movl	%edx,	%esi
		popl	%edx
		popl	%eax
		pushl	%eax
		pushl	%edx
		movl	%esi,	%eax
		movl	%ecx,	%edx
		cmp	%eax,	%edx
		setle	%al
		movzbl	%al,	%edx
		movl	%edx,	%ecx
		popl	%edx
		popl	%eax
		movl	$555,	%esi
		pushl	%eax
		pushl	%edx
		movl	x2,	%eax
		movl	%edi,	%edx
		movl	%eax,	%edx
		movl	%edx,	%edi
		popl	%edx
		popl	%eax
		pushl	%eax
		pushl	%edx
		movl	%edi,	%eax
		movl	%esi,	%edx
		subl	%eax,	%edx
		movl	%edx,	%eax
		movl	%edx,	%esi
		popl	%edx
		popl	%eax
		pushl	%eax
		pushl	%edx
		movl	%esi,	%eax
		movl	%ecx,	%edx
		cmp	%eax,	%edx
		setg	%al
		movzbl	%al,	%edx
		movl	%edx,	%ecx
		popl	%edx
		popl	%eax
		movl	$388,	%esi
		movl	$852,	%edi
		pushl	%eax
		pushl	%edx
		xorl	%eax,	%eax
		movl	%edi,	%edx
		cmp	%edx,	%eax
		setne	%al
		movl	%esi,	%edx
		imull	%eax,	%edx
		xorl	%eax,	%eax
		cmp	%edx,	%eax
		setne	%al
		movl	%eax,	%esi
		popl	%edx
		popl	%eax
		pushl	%eax
		pushl	%edx
		movl	x0,	%eax
		movl	%edi,	%edx
		movl	%eax,	%edx
		movl	%edx,	%edi
		popl	%edx
		popl	%eax
		pushl	%eax
		pushl	%edx
		movl	x0,	%eax
		movl	-4(%ebp),	%edx
		movl	%eax,	%edx
		movl	%edx,	-4(%ebp)
		popl	%edx
		popl	%eax
		pushl	%eax
		pushl	%edx
		movl	%edi,	%eax
		imull	-4(%ebp),	%eax
		movl	%eax,	%edi
		popl	%edx
		popl	%eax
		pushl	%eax
		pushl	%edx
		movl	%edi,	%eax
		movl	%esi,	%edx
		cmp	%eax,	%edx
		setl	%al
		movzbl	%al,	%edx
		movl	%edx,	%esi
		popl	%edx
		popl	%eax
		pushl	%eax
		pushl	%edx
		movl	%esi,	%eax
		movl	%ecx,	%edx
		cmp	%eax,	%edx
		setle	%al
		movzbl	%al,	%edx
		movl	%edx,	%ecx
		popl	%edx
		popl	%eax
		movl	$822,	%esi
		pushl	%eax
		pushl	%edx
		movl	x1,	%eax
		movl	%edi,	%edx
		movl	%eax,	%edx
		movl	%edx,	%edi
		popl	%edx
		popl	%eax
		pushl	%eax
		pushl	%edx
		xorl	%eax,	%eax
		movl	%edi,	%edx
		orl	%esi,	%edx
		cmp	%edx,	%eax
		setne	%al
		movl	%eax,	%esi
		popl	%edx
		popl	%eax
		pushl	%eax
		pushl	%edx
		movl	x3,	%eax
		movl	%edi,	%edx
		movl	%eax,	%edx
		movl	%edx,	%edi
		popl	%edx
		popl	%eax
		pushl	%eax
		pushl	%edx
		movl	x0,	%eax
		movl	-4(%ebp),	%edx
		movl	%eax,	%edx
		movl	%edx,	-4(%ebp)
		popl	%edx
		popl	%eax
		pushl	%eax
		pushl	%edx
		movl	%edi,	%eax
		imull	-4(%ebp),	%eax
		movl	%eax,	%edi
		popl	%edx
		popl	%eax
		pushl	%eax
		pushl	%edx
		movl	%edi,	%eax
		movl	%esi,	%edx
		cmp	%eax,	%edx
		setle	%al
		movzbl	%al,	%edx
		movl	%edx,	%esi
		popl	%edx
		popl	%eax
		pushl	%eax
		pushl	%edx
		movl	x0,	%eax
		movl	%edi,	%edx
		movl	%eax,	%edx
		movl	%edx,	%edi
		popl	%edx
		popl	%eax
		movl	$617,	-4(%ebp)
		pushl	%eax
		pushl	%edx
		movl	-4(%ebp),	%eax
		movl	%edi,	%edx
		cmp	%eax,	%edx
		setg	%al
		movzbl	%al,	%edx
		movl	%edx,	%edi
		popl	%edx
		popl	%eax
		pushl	%eax
		pushl	%edx
		movl	x2,	%eax
		movl	-4(%ebp),	%edx
		movl	%eax,	%edx
		movl	%edx,	-4(%ebp)
		popl	%edx
		popl	%eax
		movl	$857,	-8(%ebp)
		pushl	%eax
		pushl	%edx
		movl	-8(%ebp),	%eax
		movl	-4(%ebp),	%edx
		cmp	%eax,	%edx
		setle	%al
		movzbl	%al,	%edx
		movl	%edx,	-4(%ebp)
		popl	%edx
		popl	%eax
		pushl	%eax
		pushl	%edx
		movl	-4(%ebp),	%eax
		movl	%edi,	%edx
		cmp	%eax,	%edx
		setg	%al
		movzbl	%al,	%edx
		movl	%edx,	%edi
		popl	%edx
		popl	%eax
		pushl	%eax
		pushl	%edx
		movl	%edi,	%eax
		movl	%esi,	%edx
		cmp	%eax,	%edx
		setl	%al
		movzbl	%al,	%edx
		movl	%edx,	%esi
		popl	%edx
		popl	%eax
		pushl	%eax
		pushl	%edx
		movl	%ecx,	%eax
		imull	%esi,	%eax
		movl	%eax,	%ecx
		popl	%edx
		popl	%eax
		movl	$993,	%esi
		movl	$319,	%edi
		pushl	%eax
		pushl	%edx
		movl	%edi,	%eax
		movl	%esi,	%edx
		subl	%eax,	%edx
		movl	%edx,	%eax
		movl	%edx,	%esi
		popl	%edx
		popl	%eax
		pushl	%eax
		pushl	%edx
		movl	x0,	%eax
		movl	%edi,	%edx
		movl	%eax,	%edx
		movl	%edx,	%edi
		popl	%edx
		popl	%eax
		movl	$82,	-4(%ebp)
		pushl	%eax
		pushl	%edx
		movl	-4(%ebp),	%eax
		movl	%edi,	%edx
		cmp	%eax,	%edx
		setg	%al
		movzbl	%al,	%edx
		movl	%edx,	%edi
		popl	%edx
		popl	%eax
		pushl	%eax
		pushl	%edx
		movl	%edi,	%eax
		movl	%esi,	%edx
		cmp	%eax,	%edx
		setge	%al
		movzbl	%al,	%edx
		movl	%edx,	%esi
		popl	%edx
		popl	%eax
		movl	$354,	%edi
		pushl	%eax
		pushl	%edx
		movl	x1,	%eax
		movl	-4(%ebp),	%edx
		movl	%eax,	%edx
		movl	%edx,	-4(%ebp)
		popl	%edx
		popl	%eax
		pushl	%eax
		pushl	%edx
		movl	-4(%ebp),	%eax
		movl	%edi,	%edx
		cmp	%eax,	%edx
		sete	%al
		movzbl	%al,	%edx
		movl	%edx,	%edi
		popl	%edx
		popl	%eax
		movl	$53,	-4(%ebp)
		movl	$612,	-8(%ebp)
		pushl	%eax
		pushl	%edx
		movl	-8(%ebp),	%eax
		movl	-4(%ebp),	%edx
		cmp	%eax,	%edx
		setle	%al
		movzbl	%al,	%edx
		movl	%edx,	-4(%ebp)
		popl	%edx
		popl	%eax
		pushl	%eax
		pushl	%edx
		movl	%edi,	%eax
		imull	-4(%ebp),	%eax
		movl	%eax,	%edi
		popl	%edx
		popl	%eax
		pushl	%eax
		pushl	%edx
		movl	%edi,	%eax
		movl	%esi,	%edx
		cmp	%eax,	%edx
		setge	%al
		movzbl	%al,	%edx
		movl	%edx,	%esi
		popl	%edx
		popl	%eax
		movl	$23,	%edi
		movl	$177,	-4(%ebp)
		pushl	%eax
		pushl	%edx
		movl	-4(%ebp),	%eax
		movl	%edi,	%edx
		cmp	%eax,	%edx
		setge	%al
		movzbl	%al,	%edx
		movl	%edx,	%edi
		popl	%edx
		popl	%eax
		movl	$338,	-4(%ebp)
		movl	$411,	-8(%ebp)
		pushl	%eax
		pushl	%edx
		movl	-8(%ebp),	%eax
		movl	-4(%ebp),	%edx
		cmp	%eax,	%edx
		setl	%al
		movzbl	%al,	%edx
		movl	%edx,	-4(%ebp)
		popl	%edx
		popl	%eax
		pushl	%eax
		pushl	%edx
		movl	-4(%ebp),	%eax
		movl	%edi,	%edx
		subl	%eax,	%edx
		movl	%edx,	%eax
		movl	%edx,	%edi
		popl	%edx
		popl	%eax
		pushl	%eax
		pushl	%edx
		movl	x1,	%eax
		movl	-4(%ebp),	%edx
		movl	%eax,	%edx
		movl	%edx,	-4(%ebp)
		popl	%edx
		popl	%eax
		movl	$684,	-8(%ebp)
		pushl	%eax
		pushl	%edx
		movl	-8(%ebp),	%eax
		movl	-4(%ebp),	%edx
		cmp	%eax,	%edx
		setne	%al
		movzbl	%al,	%edx
		movl	%edx,	-4(%ebp)
		popl	%edx
		popl	%eax
		pushl	%eax
		pushl	%edx
		movl	x0,	%eax
		movl	-8(%ebp),	%edx
		movl	%eax,	%edx
		movl	%edx,	-8(%ebp)
		popl	%edx
		popl	%eax
		pushl	%eax
		pushl	%edx
		movl	x0,	%eax
		movl	-12(%ebp),	%edx
		movl	%eax,	%edx
		movl	%edx,	-12(%ebp)
		popl	%edx
		popl	%eax
		pushl	%eax
		pushl	%edx
		movl	-12(%ebp),	%eax
		movl	-8(%ebp),	%edx
		cmp	%eax,	%edx
		setl	%al
		movzbl	%al,	%edx
		movl	%edx,	-8(%ebp)
		popl	%edx
		popl	%eax
		pushl	%eax
		pushl	%edx
		movl	-8(%ebp),	%eax
		movl	-4(%ebp),	%edx
		cmp	%eax,	%edx
		setge	%al
		movzbl	%al,	%edx
		movl	%edx,	-4(%ebp)
		popl	%edx
		popl	%eax
		pushl	%eax
		pushl	%edx
		movl	%edi,	%eax
		imull	-4(%ebp),	%eax
		movl	%eax,	%edi
		popl	%edx
		popl	%eax
		pushl	%eax
		pushl	%edx
		movl	%esi,	%eax
		imull	%edi,	%eax
		movl	%eax,	%esi
		popl	%edx
		popl	%eax
		pushl	%eax
		pushl	%edx
		xorl	%eax,	%eax
		movl	%esi,	%edx
		orl	%ecx,	%edx
		cmp	%edx,	%eax
		setne	%al
		movl	%eax,	%ecx
		popl	%edx
		popl	%eax
		pushl	%eax
		pushl	%edx
		movl	x0,	%eax
		movl	%esi,	%edx
		movl	%eax,	%edx
		movl	%edx,	%esi
		popl	%edx
		popl	%eax
		movl	$893,	%edi
		pushl	%eax
		pushl	%edx
		movl	%edi,	%eax
		movl	%esi,	%edx
		cmp	%eax,	%edx
		setne	%al
		movzbl	%al,	%edx
		movl	%edx,	%esi
		popl	%edx
		popl	%eax
		movl	$32,	%edi
		pushl	%eax
		pushl	%edx
		movl	x1,	%eax
		movl	-4(%ebp),	%edx
		movl	%eax,	%edx
		movl	%edx,	-4(%ebp)
		popl	%edx
		popl	%eax
		pushl	%eax
		pushl	%edx
		movl	-4(%ebp),	%eax
		movl	%edi,	%edx
		addl	%eax,	%edx
		movl	%edx,	%eax
		movl	%edx,	%edi
		popl	%edx
		popl	%eax
		pushl	%eax
		pushl	%edx
		movl	%edi,	%eax
		movl	%esi,	%edx
		cmp	%eax,	%edx
		setne	%al
		movzbl	%al,	%edx
		movl	%edx,	%esi
		popl	%edx
		popl	%eax
		pushl	%eax
		pushl	%edx
		movl	x2,	%eax
		movl	%edi,	%edx
		movl	%eax,	%edx
		movl	%edx,	%edi
		popl	%edx
		popl	%eax
		movl	$921,	-4(%ebp)
		pushl	%eax
		pushl	%edx
		movl	-4(%ebp),	%eax
		movl	%edi,	%edx
		subl	%eax,	%edx
		movl	%edx,	%eax
		movl	%edx,	%edi
		popl	%edx
		popl	%eax
		movl	$574,	-4(%ebp)
		pushl	%eax
		pushl	%edx
		movl	x3,	%eax
		movl	-8(%ebp),	%edx
		movl	%eax,	%edx
		movl	%edx,	-8(%ebp)
		popl	%edx
		popl	%eax
		pushl	%eax
		pushl	%edx
		movl	-8(%ebp),	%eax
		movl	-4(%ebp),	%edx
		addl	%eax,	%edx
		movl	%edx,	%eax
		movl	%edx,	-4(%ebp)
		popl	%edx
		popl	%eax
		pushl	%eax
		pushl	%edx
		movl	%edi,	%eax
		imull	-4(%ebp),	%eax
		movl	%eax,	%edi
		popl	%edx
		popl	%eax
		pushl	%eax
		pushl	%edx
		xorl	%eax,	%eax
		movl	%edi,	%edx
		cmp	%edx,	%eax
		setne	%al
		movl	%esi,	%edx
		imull	%eax,	%edx
		xorl	%eax,	%eax
		cmp	%edx,	%eax
		setne	%al
		movl	%eax,	%esi
		popl	%edx
		popl	%eax
		pushl	%eax
		pushl	%edx
		movl	x2,	%eax
		movl	%edi,	%edx
		movl	%eax,	%edx
		movl	%edx,	%edi
		popl	%edx
		popl	%eax
		movl	$443,	-4(%ebp)
		pushl	%eax
		pushl	%edx
		movl	-4(%ebp),	%eax
		movl	%edi,	%edx
		cmp	%eax,	%edx
		setl	%al
		movzbl	%al,	%edx
		movl	%edx,	%edi
		popl	%edx
		popl	%eax
		movl	$78,	-4(%ebp)
		pushl	%eax
		pushl	%edx
		movl	x2,	%eax
		movl	-8(%ebp),	%edx
		movl	%eax,	%edx
		movl	%edx,	-8(%ebp)
		popl	%edx
		popl	%eax
		pushl	%eax
		pushl	%edx
		movl	-8(%ebp),	%eax
		movl	-4(%ebp),	%edx
		cmp	%eax,	%edx
		setge	%al
		movzbl	%al,	%edx
		movl	%edx,	-4(%ebp)
		popl	%edx
		popl	%eax
		pushl	%eax
		pushl	%edx
		movl	%edi,	%eax
		imull	-4(%ebp),	%eax
		movl	%eax,	%edi
		popl	%edx
		popl	%eax
		pushl	%eax
		pushl	%edx
		movl	x2,	%eax
		movl	-4(%ebp),	%edx
		movl	%eax,	%edx
		movl	%edx,	-4(%ebp)
		popl	%edx
		popl	%eax
		movl	$855,	-8(%ebp)
		pushl	%eax
		pushl	%edx
		xorl	%eax,	%eax
		movl	-8(%ebp),	%edx
		orl	-4(%ebp),	%edx
		cmp	%edx,	%eax
		setne	%al
		movl	%eax,	-4(%ebp)
		popl	%edx
		popl	%eax
		movl	$982,	-8(%ebp)
		pushl	%eax
		pushl	%edx
		movl	x0,	%eax
		movl	-12(%ebp),	%edx
		movl	%eax,	%edx
		movl	%edx,	-12(%ebp)
		popl	%edx
		popl	%eax
		pushl	%eax
		pushl	%edx
		movl	-12(%ebp),	%eax
		movl	-8(%ebp),	%edx
		cmp	%eax,	%edx
		setge	%al
		movzbl	%al,	%edx
		movl	%edx,	-8(%ebp)
		popl	%edx
		popl	%eax
		pushl	%eax
		pushl	%edx
		movl	-8(%ebp),	%eax
		movl	-4(%ebp),	%edx
		cmp	%eax,	%edx
		setle	%al
		movzbl	%al,	%edx
		movl	%edx,	-4(%ebp)
		popl	%edx
		popl	%eax
		pushl	%eax
		pushl	%edx
		xorl	%eax,	%eax
		movl	-4(%ebp),	%edx
		orl	%edi,	%edx
		cmp	%edx,	%eax
		setne	%al
		movl	%eax,	%edi
		popl	%edx
		popl	%eax
		pushl	%eax
		pushl	%edx
		movl	%edi,	%eax
		movl	%esi,	%edx
		cmp	%eax,	%edx
		setl	%al
		movzbl	%al,	%edx
		movl	%edx,	%esi
		popl	%edx
		popl	%eax
		pushl	%eax
		pushl	%edx
		movl	x1,	%eax
		movl	%edi,	%edx
		movl	%eax,	%edx
		movl	%edx,	%edi
		popl	%edx
		popl	%eax
		movl	$205,	-4(%ebp)
		pushl	%eax
		pushl	%edx
		movl	%edi,	%eax
		imull	-4(%ebp),	%eax
		movl	%eax,	%edi
		popl	%edx
		popl	%eax
		pushl	%eax
		pushl	%edx
		movl	x0,	%eax
		movl	-4(%ebp),	%edx
		movl	%eax,	%edx
		movl	%edx,	-4(%ebp)
		popl	%edx
		popl	%eax
		pushl	%eax
		pushl	%edx
		movl	x3,	%eax
		movl	-8(%ebp),	%edx
		movl	%eax,	%edx
		movl	%edx,	-8(%ebp)
		popl	%edx
		popl	%eax
		pushl	%eax
		pushl	%edx
		xorl	%eax,	%eax
		movl	-8(%ebp),	%edx
		cmp	%edx,	%eax
		setne	%al
		movl	-4(%ebp),	%edx
		imull	%eax,	%edx
		xorl	%eax,	%eax
		cmp	%edx,	%eax
		setne	%al
		movl	%eax,	-4(%ebp)
		popl	%edx
		popl	%eax
		pushl	%eax
		pushl	%edx
		movl	-4(%ebp),	%eax
		movl	%edi,	%edx
		cmp	%eax,	%edx
		setge	%al
		movzbl	%al,	%edx
		movl	%edx,	%edi
		popl	%edx
		popl	%eax
		pushl	%eax
		pushl	%edx
		movl	x2,	%eax
		movl	-4(%ebp),	%edx
		movl	%eax,	%edx
		movl	%edx,	-4(%ebp)
		popl	%edx
		popl	%eax
		pushl	%eax
		pushl	%edx
		movl	x0,	%eax
		movl	-8(%ebp),	%edx
		movl	%eax,	%edx
		movl	%edx,	-8(%ebp)
		popl	%edx
		popl	%eax
		pushl	%eax
		pushl	%edx
		movl	-8(%ebp),	%eax
		movl	-4(%ebp),	%edx
		cmp	%eax,	%edx
		setne	%al
		movzbl	%al,	%edx
		movl	%edx,	-4(%ebp)
		popl	%edx
		popl	%eax
		pushl	%eax
		pushl	%edx
		movl	x0,	%eax
		movl	-8(%ebp),	%edx
		movl	%eax,	%edx
		movl	%edx,	-8(%ebp)
		popl	%edx
		popl	%eax
		pushl	%eax
		pushl	%edx
		movl	x0,	%eax
		movl	-12(%ebp),	%edx
		movl	%eax,	%edx
		movl	%edx,	-12(%ebp)
		popl	%edx
		popl	%eax
		pushl	%eax
		pushl	%edx
		movl	-8(%ebp),	%eax
		imull	-12(%ebp),	%eax
		movl	%eax,	-8(%ebp)
		popl	%edx
		popl	%eax
		pushl	%eax
		pushl	%edx
		movl	-8(%ebp),	%eax
		movl	-4(%ebp),	%edx
		addl	%eax,	%edx
		movl	%edx,	%eax
		movl	%edx,	-4(%ebp)
		popl	%edx
		popl	%eax
		pushl	%eax
		pushl	%edx
		movl	-4(%ebp),	%eax
		movl	%edi,	%edx
		cmp	%eax,	%edx
		setl	%al
		movzbl	%al,	%edx
		movl	%edx,	%edi
		popl	%edx
		popl	%eax
		movl	$265,	-4(%ebp)
		pushl	%eax
		pushl	%edx
		movl	x0,	%eax
		movl	-8(%ebp),	%edx
		movl	%eax,	%edx
		movl	%edx,	-8(%ebp)
		popl	%edx
		popl	%eax
		pushl	%eax
		pushl	%edx
		movl	-8(%ebp),	%eax
		movl	-4(%ebp),	%edx
		cmp	%eax,	%edx
		setl	%al
		movzbl	%al,	%edx
		movl	%edx,	-4(%ebp)
		popl	%edx
		popl	%eax
		pushl	%eax
		pushl	%edx
		movl	x0,	%eax
		movl	-8(%ebp),	%edx
		movl	%eax,	%edx
		movl	%edx,	-8(%ebp)
		popl	%edx
		popl	%eax
		movl	$846,	-12(%ebp)
		pushl	%eax
		pushl	%edx
		movl	-12(%ebp),	%eax
		movl	-8(%ebp),	%edx
		cmp	%eax,	%edx
		sete	%al
		movzbl	%al,	%edx
		movl	%edx,	-8(%ebp)
		popl	%edx
		popl	%eax
		pushl	%eax
		pushl	%edx
		movl	-8(%ebp),	%eax
		movl	-4(%ebp),	%edx
		cmp	%eax,	%edx
		setge	%al
		movzbl	%al,	%edx
		movl	%edx,	-4(%ebp)
		popl	%edx
		popl	%eax
		movl	$479,	-8(%ebp)
		pushl	%eax
		pushl	%edx
		movl	x0,	%eax
		movl	-12(%ebp),	%edx
		movl	%eax,	%edx
		movl	%edx,	-12(%ebp)
		popl	%edx
		popl	%eax
		pushl	%eax
		pushl	%edx
		movl	-12(%ebp),	%eax
		movl	-8(%ebp),	%edx
		addl	%eax,	%edx
		movl	%edx,	%eax
		movl	%edx,	-8(%ebp)
		popl	%edx
		popl	%eax
		movl	$467,	-12(%ebp)
		pushl	%eax
		pushl	%edx
		movl	x3,	%eax
		movl	-16(%ebp),	%edx
		movl	%eax,	%edx
		movl	%edx,	-16(%ebp)
		popl	%edx
		popl	%eax
		pushl	%eax
		pushl	%edx
		movl	-12(%ebp),	%eax
		imull	-16(%ebp),	%eax
		movl	%eax,	-12(%ebp)
		popl	%edx
		popl	%eax
		pushl	%eax
		pushl	%edx
		movl	-12(%ebp),	%eax
		movl	-8(%ebp),	%edx
		addl	%eax,	%edx
		movl	%edx,	%eax
		movl	%edx,	-8(%ebp)
		popl	%edx
		popl	%eax
		pushl	%eax
		pushl	%edx
		xorl	%eax,	%eax
		movl	-8(%ebp),	%edx
		orl	-4(%ebp),	%edx
		cmp	%edx,	%eax
		setne	%al
		movl	%eax,	-4(%ebp)
		popl	%edx
		popl	%eax
		pushl	%eax
		pushl	%edx
		movl	-4(%ebp),	%eax
		movl	%edi,	%edx
		cmp	%eax,	%edx
		sete	%al
		movzbl	%al,	%edx
		movl	%edx,	%edi
		popl	%edx
		popl	%eax
		pushl	%eax
		pushl	%edx
		movl	%edi,	%eax
		movl	%esi,	%edx
		cmp	%eax,	%edx
		sete	%al
		movzbl	%al,	%edx
		movl	%edx,	%esi
		popl	%edx
		popl	%eax
		pushl	%eax
		pushl	%edx
		movl	%esi,	%eax
		movl	%ecx,	%edx
		cmp	%eax,	%edx
		sete	%al
		movzbl	%al,	%edx
		movl	%edx,	%ecx
		popl	%edx
		popl	%eax
		pushl	%eax
		pushl	%edx
		movl	%ecx,	%eax
		movl	%ebx,	%edx
		subl	%eax,	%edx
		movl	%edx,	%eax
		movl	%edx,	%ebx
		popl	%edx
		popl	%eax
		movl	$757,	%ecx
		movl	$125,	%esi
		pushl	%eax
		pushl	%edx
		movl	%esi,	%eax
		movl	%ecx,	%edx
		addl	%eax,	%edx
		movl	%edx,	%eax
		movl	%edx,	%ecx
		popl	%edx
		popl	%eax
		movl	$361,	%esi
		pushl	%eax
		pushl	%edx
		movl	x1,	%eax
		movl	%edi,	%edx
		movl	%eax,	%edx
		movl	%edx,	%edi
		popl	%edx
		popl	%eax
		pushl	%eax
		pushl	%edx
		movl	%edi,	%eax
		movl	%esi,	%edx
		cmp	%eax,	%edx
		setl	%al
		movzbl	%al,	%edx
		movl	%edx,	%esi
		popl	%edx
		popl	%eax
		pushl	%eax
		pushl	%edx
		movl	%ecx,	%eax
		imull	%esi,	%eax
		movl	%eax,	%ecx
		popl	%edx
		popl	%eax
		movl	$139,	%esi
		movl	$193,	%edi
		pushl	%eax
		pushl	%edx
		movl	%edi,	%eax
		movl	%esi,	%edx
		subl	%eax,	%edx
		movl	%edx,	%eax
		movl	%edx,	%esi
		popl	%edx
		popl	%eax
		pushl	%eax
		pushl	%edx
		movl	x1,	%eax
		movl	%edi,	%edx
		movl	%eax,	%edx
		movl	%edx,	%edi
		popl	%edx
		popl	%eax
		pushl	%eax
		pushl	%edx
		movl	x0,	%eax
		movl	-4(%ebp),	%edx
		movl	%eax,	%edx
		movl	%edx,	-4(%ebp)
		popl	%edx
		popl	%eax
		pushl	%eax
		pushl	%edx
		movl	%edi,	%eax
		imull	-4(%ebp),	%eax
		movl	%eax,	%edi
		popl	%edx
		popl	%eax
		pushl	%eax
		pushl	%edx
		xorl	%eax,	%eax
		movl	%edi,	%edx
		orl	%esi,	%edx
		cmp	%edx,	%eax
		setne	%al
		movl	%eax,	%esi
		popl	%edx
		popl	%eax
		pushl	%eax
		pushl	%edx
		movl	%esi,	%eax
		movl	%ecx,	%edx
		cmp	%eax,	%edx
		setle	%al
		movzbl	%al,	%edx
		movl	%edx,	%ecx
		popl	%edx
		popl	%eax
		pushl	%eax
		pushl	%edx
		movl	x1,	%eax
		movl	%esi,	%edx
		movl	%eax,	%edx
		movl	%edx,	%esi
		popl	%edx
		popl	%eax
		pushl	%eax
		pushl	%edx
		movl	x2,	%eax
		movl	%edi,	%edx
		movl	%eax,	%edx
		movl	%edx,	%edi
		popl	%edx
		popl	%eax
		pushl	%eax
		pushl	%edx
		movl	%edi,	%eax
		movl	%esi,	%edx
		addl	%eax,	%edx
		movl	%edx,	%eax
		movl	%edx,	%esi
		popl	%edx
		popl	%eax
		pushl	%eax
		pushl	%edx
		movl	x2,	%eax
		movl	%edi,	%edx
		movl	%eax,	%edx
		movl	%edx,	%edi
		popl	%edx
		popl	%eax
		movl	$874,	-4(%ebp)
		pushl	%eax
		pushl	%edx
		movl	-4(%ebp),	%eax
		movl	%edi,	%edx
		cmp	%eax,	%edx
		setne	%al
		movzbl	%al,	%edx
		movl	%edx,	%edi
		popl	%edx
		popl	%eax
		pushl	%eax
		pushl	%edx
		movl	%edi,	%eax
		movl	%esi,	%edx
		addl	%eax,	%edx
		movl	%edx,	%eax
		movl	%edx,	%esi
		popl	%edx
		popl	%eax
		movl	$128,	%edi
		movl	$508,	-4(%ebp)
		pushl	%eax
		pushl	%edx
		movl	-4(%ebp),	%eax
		movl	%edi,	%edx
		cmp	%eax,	%edx
		setl	%al
		movzbl	%al,	%edx
		movl	%edx,	%edi
		popl	%edx
		popl	%eax
		pushl	%eax
		pushl	%edx
		movl	x1,	%eax
		movl	-4(%ebp),	%edx
		movl	%eax,	%edx
		movl	%edx,	-4(%ebp)
		popl	%edx
		popl	%eax
		pushl	%eax
		pushl	%edx
		movl	x2,	%eax
		movl	-8(%ebp),	%edx
		movl	%eax,	%edx
		movl	%edx,	-8(%ebp)
		popl	%edx
		popl	%eax
		pushl	%eax
		pushl	%edx
		movl	-8(%ebp),	%eax
		movl	-4(%ebp),	%edx
		cmp	%eax,	%edx
		setl	%al
		movzbl	%al,	%edx
		movl	%edx,	-4(%ebp)
		popl	%edx
		popl	%eax
		pushl	%eax
		pushl	%edx
		movl	-4(%ebp),	%eax
		movl	%edi,	%edx
		subl	%eax,	%edx
		movl	%edx,	%eax
		movl	%edx,	%edi
		popl	%edx
		popl	%eax
		pushl	%eax
		pushl	%edx
		movl	%edi,	%eax
		movl	%esi,	%edx
		cmp	%eax,	%edx
		setne	%al
		movzbl	%al,	%edx
		movl	%edx,	%esi
		popl	%edx
		popl	%eax
		pushl	%eax
		pushl	%edx
		movl	%esi,	%eax
		movl	%ecx,	%edx
		cmp	%eax,	%edx
		setne	%al
		movzbl	%al,	%edx
		movl	%edx,	%ecx
		popl	%edx
		popl	%eax
		movl	$413,	%esi
		movl	$0,	%edi
		pushl	%eax
		pushl	%edx
		xorl	%eax,	%eax
		movl	%edi,	%edx
		cmp	%edx,	%eax
		setne	%al
		movl	%esi,	%edx
		imull	%eax,	%edx
		xorl	%eax,	%eax
		cmp	%edx,	%eax
		setne	%al
		movl	%eax,	%esi
		popl	%edx
		popl	%eax
		pushl	%eax
		pushl	%edx
		movl	x1,	%eax
		movl	%edi,	%edx
		movl	%eax,	%edx
		movl	%edx,	%edi
		popl	%edx
		popl	%eax
		movl	$515,	-4(%ebp)
		pushl	%eax
		pushl	%edx
		movl	-4(%ebp),	%eax
		movl	%edi,	%edx
		cmp	%eax,	%edx
		setg	%al
		movzbl	%al,	%edx
		movl	%edx,	%edi
		popl	%edx
		popl	%eax
		pushl	%eax
		pushl	%edx
		movl	%edi,	%eax
		movl	%esi,	%edx
		subl	%eax,	%edx
		movl	%edx,	%eax
		movl	%edx,	%esi
		popl	%edx
		popl	%eax
		pushl	%eax
		pushl	%edx
		movl	x0,	%eax
		movl	%edi,	%edx
		movl	%eax,	%edx
		movl	%edx,	%edi
		popl	%edx
		popl	%eax
		pushl	%eax
		pushl	%edx
		movl	x0,	%eax
		movl	-4(%ebp),	%edx
		movl	%eax,	%edx
		movl	%edx,	-4(%ebp)
		popl	%edx
		popl	%eax
		pushl	%eax
		pushl	%edx
		xorl	%eax,	%eax
		movl	-4(%ebp),	%edx
		orl	%edi,	%edx
		cmp	%edx,	%eax
		setne	%al
		movl	%eax,	%edi
		popl	%edx
		popl	%eax
		movl	$384,	-4(%ebp)
		pushl	%eax
		pushl	%edx
		movl	x1,	%eax
		movl	-8(%ebp),	%edx
		movl	%eax,	%edx
		movl	%edx,	-8(%ebp)
		popl	%edx
		popl	%eax
		pushl	%eax
		pushl	%edx
		movl	-8(%ebp),	%eax
		movl	-4(%ebp),	%edx
		cmp	%eax,	%edx
		setl	%al
		movzbl	%al,	%edx
		movl	%edx,	-4(%ebp)
		popl	%edx
		popl	%eax
		pushl	%eax
		pushl	%edx
		movl	-4(%ebp),	%eax
		movl	%edi,	%edx
		cmp	%eax,	%edx
		setg	%al
		movzbl	%al,	%edx
		movl	%edx,	%edi
		popl	%edx
		popl	%eax
		pushl	%eax
		pushl	%edx
		movl	%esi,	%eax
		imull	%edi,	%eax
		movl	%eax,	%esi
		popl	%edx
		popl	%eax
		movl	$501,	%edi
		pushl	%eax
		pushl	%edx
		movl	x0,	%eax
		movl	-4(%ebp),	%edx
		movl	%eax,	%edx
		movl	%edx,	-4(%ebp)
		popl	%edx
		popl	%eax
		pushl	%eax
		pushl	%edx
		movl	-4(%ebp),	%eax
		movl	%edi,	%edx
		cmp	%eax,	%edx
		setne	%al
		movzbl	%al,	%edx
		movl	%edx,	%edi
		popl	%edx
		popl	%eax
		pushl	%eax
		pushl	%edx
		movl	x0,	%eax
		movl	-4(%ebp),	%edx
		movl	%eax,	%edx
		movl	%edx,	-4(%ebp)
		popl	%edx
		popl	%eax
		pushl	%eax
		pushl	%edx
		movl	x0,	%eax
		movl	-8(%ebp),	%edx
		movl	%eax,	%edx
		movl	%edx,	-8(%ebp)
		popl	%edx
		popl	%eax
		pushl	%eax
		pushl	%edx
		movl	-8(%ebp),	%eax
		movl	-4(%ebp),	%edx
		cmp	%eax,	%edx
		setge	%al
		movzbl	%al,	%edx
		movl	%edx,	-4(%ebp)
		popl	%edx
		popl	%eax
		pushl	%eax
		pushl	%edx
		movl	-4(%ebp),	%eax
		movl	%edi,	%edx
		cmp	%eax,	%edx
		setl	%al
		movzbl	%al,	%edx
		movl	%edx,	%edi
		popl	%edx
		popl	%eax
		pushl	%eax
		pushl	%edx
		movl	x3,	%eax
		movl	-4(%ebp),	%edx
		movl	%eax,	%edx
		movl	%edx,	-4(%ebp)
		popl	%edx
		popl	%eax
		pushl	%eax
		pushl	%edx
		movl	x3,	%eax
		movl	-8(%ebp),	%edx
		movl	%eax,	%edx
		movl	%edx,	-8(%ebp)
		popl	%edx
		popl	%eax
		pushl	%eax
		pushl	%edx
		movl	-8(%ebp),	%eax
		movl	-4(%ebp),	%edx
		subl	%eax,	%edx
		movl	%edx,	%eax
		movl	%edx,	-4(%ebp)
		popl	%edx
		popl	%eax
		pushl	%eax
		pushl	%edx
		movl	x3,	%eax
		movl	-8(%ebp),	%edx
		movl	%eax,	%edx
		movl	%edx,	-8(%ebp)
		popl	%edx
		popl	%eax
		movl	$927,	-12(%ebp)
		pushl	%eax
		pushl	%edx
		movl	-12(%ebp),	%eax
		movl	-8(%ebp),	%edx
		cmp	%eax,	%edx
		setge	%al
		movzbl	%al,	%edx
		movl	%edx,	-8(%ebp)
		popl	%edx
		popl	%eax
		pushl	%eax
		pushl	%edx
		movl	-8(%ebp),	%eax
		movl	-4(%ebp),	%edx
		cmp	%eax,	%edx
		setge	%al
		movzbl	%al,	%edx
		movl	%edx,	-4(%ebp)
		popl	%edx
		popl	%eax
		pushl	%eax
		pushl	%edx
		movl	%edi,	%eax
		imull	-4(%ebp),	%eax
		movl	%eax,	%edi
		popl	%edx
		popl	%eax
		pushl	%eax
		pushl	%edx
		movl	%edi,	%eax
		movl	%esi,	%edx
		cmp	%eax,	%edx
		setle	%al
		movzbl	%al,	%edx
		movl	%edx,	%esi
		popl	%edx
		popl	%eax
		pushl	%eax
		pushl	%edx
		movl	%ecx,	%eax
		imull	%esi,	%eax
		movl	%eax,	%ecx
		popl	%edx
		popl	%eax
		pushl	%eax
		pushl	%edx
		movl	x2,	%eax
		movl	%esi,	%edx
		movl	%eax,	%edx
		movl	%edx,	%esi
		popl	%edx
		popl	%eax
		movl	$297,	%edi
		pushl	%eax
		pushl	%edx
		movl	%edi,	%eax
		movl	%esi,	%edx
		subl	%eax,	%edx
		movl	%edx,	%eax
		movl	%edx,	%esi
		popl	%edx
		popl	%eax
		movl	$568,	%edi
		movl	$851,	-4(%ebp)
		pushl	%eax
		pushl	%edx
		xorl	%eax,	%eax
		movl	-4(%ebp),	%edx
		cmp	%edx,	%eax
		setne	%al
		movl	%edi,	%edx
		imull	%eax,	%edx
		xorl	%eax,	%eax
		cmp	%edx,	%eax
		setne	%al
		movl	%eax,	%edi
		popl	%edx
		popl	%eax
		pushl	%eax
		pushl	%edx
		movl	%edi,	%eax
		movl	%esi,	%edx
		cmp	%eax,	%edx
		setge	%al
		movzbl	%al,	%edx
		movl	%edx,	%esi
		popl	%edx
		popl	%eax
		movl	$445,	%edi
		movl	$467,	-4(%ebp)
		pushl	%eax
		pushl	%edx
		movl	-4(%ebp),	%eax
		movl	%edi,	%edx
		cmp	%eax,	%edx
		setge	%al
		movzbl	%al,	%edx
		movl	%edx,	%edi
		popl	%edx
		popl	%eax
		movl	$661,	-4(%ebp)
		movl	$791,	-8(%ebp)
		pushl	%eax
		pushl	%edx
		xorl	%eax,	%eax
		movl	-8(%ebp),	%edx
		cmp	%edx,	%eax
		setne	%al
		movl	-4(%ebp),	%edx
		imull	%eax,	%edx
		xorl	%eax,	%eax
		cmp	%edx,	%eax
		setne	%al
		movl	%eax,	-4(%ebp)
		popl	%edx
		popl	%eax
		pushl	%eax
		pushl	%edx
		movl	-4(%ebp),	%eax
		movl	%edi,	%edx
		cmp	%eax,	%edx
		setle	%al
		movzbl	%al,	%edx
		movl	%edx,	%edi
		popl	%edx
		popl	%eax
		pushl	%eax
		pushl	%edx
		xorl	%eax,	%eax
		movl	%edi,	%edx
		cmp	%edx,	%eax
		setne	%al
		movl	%esi,	%edx
		imull	%eax,	%edx
		xorl	%eax,	%eax
		cmp	%edx,	%eax
		setne	%al
		movl	%eax,	%esi
		popl	%edx
		popl	%eax
		movl	$225,	%edi
		pushl	%eax
		pushl	%edx
		movl	x1,	%eax
		movl	-4(%ebp),	%edx
		movl	%eax,	%edx
		movl	%edx,	-4(%ebp)
		popl	%edx
		popl	%eax
		pushl	%eax
		pushl	%edx
		movl	-4(%ebp),	%eax
		movl	%edi,	%edx
		cmp	%eax,	%edx
		setge	%al
		movzbl	%al,	%edx
		movl	%edx,	%edi
		popl	%edx
		popl	%eax
		pushl	%eax
		pushl	%edx
		movl	x2,	%eax
		movl	-4(%ebp),	%edx
		movl	%eax,	%edx
		movl	%edx,	-4(%ebp)
		popl	%edx
		popl	%eax
		movl	$118,	-8(%ebp)
		pushl	%eax
		pushl	%edx
		movl	-8(%ebp),	%eax
		movl	-4(%ebp),	%edx
		cmp	%eax,	%edx
		setne	%al
		movzbl	%al,	%edx
		movl	%edx,	-4(%ebp)
		popl	%edx
		popl	%eax
		pushl	%eax
		pushl	%edx
		xorl	%eax,	%eax
		movl	-4(%ebp),	%edx
		orl	%edi,	%edx
		cmp	%edx,	%eax
		setne	%al
		movl	%eax,	%edi
		popl	%edx
		popl	%eax
		movl	$915,	-4(%ebp)
		movl	$615,	-8(%ebp)
		pushl	%eax
		pushl	%edx
		movl	-8(%ebp),	%eax
		movl	-4(%ebp),	%edx
		cmp	%eax,	%edx
		sete	%al
		movzbl	%al,	%edx
		movl	%edx,	-4(%ebp)
		popl	%edx
		popl	%eax
		pushl	%eax
		pushl	%edx
		movl	x2,	%eax
		movl	-8(%ebp),	%edx
		movl	%eax,	%edx
		movl	%edx,	-8(%ebp)
		popl	%edx
		popl	%eax
		pushl	%eax
		pushl	%edx
		movl	x1,	%eax
		movl	-12(%ebp),	%edx
		movl	%eax,	%edx
		movl	%edx,	-12(%ebp)
		popl	%edx
		popl	%eax
		pushl	%eax
		pushl	%edx
		xorl	%eax,	%eax
		movl	-12(%ebp),	%edx
		orl	-8(%ebp),	%edx
		cmp	%edx,	%eax
		setne	%al
		movl	%eax,	-8(%ebp)
		popl	%edx
		popl	%eax
		pushl	%eax
		pushl	%edx
		movl	-8(%ebp),	%eax
		movl	-4(%ebp),	%edx
		cmp	%eax,	%edx
		setl	%al
		movzbl	%al,	%edx
		movl	%edx,	-4(%ebp)
		popl	%edx
		popl	%eax
		pushl	%eax
		pushl	%edx
		movl	-4(%ebp),	%eax
		movl	%edi,	%edx
		cmp	%eax,	%edx
		setl	%al
		movzbl	%al,	%edx
		movl	%edx,	%edi
		popl	%edx
		popl	%eax
		pushl	%eax
		pushl	%edx
		movl	%edi,	%eax
		movl	%esi,	%edx
		cmp	%eax,	%edx
		sete	%al
		movzbl	%al,	%edx
		movl	%edx,	%esi
		popl	%edx
		popl	%eax
		pushl	%eax
		pushl	%edx
		movl	x1,	%eax
		movl	%edi,	%edx
		movl	%eax,	%edx
		movl	%edx,	%edi
		popl	%edx
		popl	%eax
		pushl	%eax
		pushl	%edx
		movl	x3,	%eax
		movl	-4(%ebp),	%edx
		movl	%eax,	%edx
		movl	%edx,	-4(%ebp)
		popl	%edx
		popl	%eax
		pushl	%eax
		pushl	%edx
		movl	-4(%ebp),	%eax
		movl	%edi,	%edx
		cmp	%eax,	%edx
		setge	%al
		movzbl	%al,	%edx
		movl	%edx,	%edi
		popl	%edx
		popl	%eax
		pushl	%eax
		pushl	%edx
		movl	x3,	%eax
		movl	-4(%ebp),	%edx
		movl	%eax,	%edx
		movl	%edx,	-4(%ebp)
		popl	%edx
		popl	%eax
		pushl	%eax
		pushl	%edx
		movl	x3,	%eax
		movl	-8(%ebp),	%edx
		movl	%eax,	%edx
		movl	%edx,	-8(%ebp)
		popl	%edx
		popl	%eax
		pushl	%eax
		pushl	%edx
		movl	-4(%ebp),	%eax
		imull	-8(%ebp),	%eax
		movl	%eax,	-4(%ebp)
		popl	%edx
		popl	%eax
		pushl	%eax
		pushl	%edx
		movl	%edi,	%eax
		imull	-4(%ebp),	%eax
		movl	%eax,	%edi
		popl	%edx
		popl	%eax
		pushl	%eax
		pushl	%edx
		movl	x3,	%eax
		movl	-4(%ebp),	%edx
		movl	%eax,	%edx
		movl	%edx,	-4(%ebp)
		popl	%edx
		popl	%eax
		movl	$654,	-8(%ebp)
		pushl	%eax
		pushl	%edx
		movl	-8(%ebp),	%eax
		movl	-4(%ebp),	%edx
		cmp	%eax,	%edx
		setne	%al
		movzbl	%al,	%edx
		movl	%edx,	-4(%ebp)
		popl	%edx
		popl	%eax
		pushl	%eax
		pushl	%edx
		movl	x3,	%eax
		movl	-8(%ebp),	%edx
		movl	%eax,	%edx
		movl	%edx,	-8(%ebp)
		popl	%edx
		popl	%eax
		pushl	%eax
		pushl	%edx
		movl	x0,	%eax
		movl	-12(%ebp),	%edx
		movl	%eax,	%edx
		movl	%edx,	-12(%ebp)
		popl	%edx
		popl	%eax
		pushl	%eax
		pushl	%edx
		movl	-12(%ebp),	%eax
		movl	-8(%ebp),	%edx
		cmp	%eax,	%edx
		sete	%al
		movzbl	%al,	%edx
		movl	%edx,	-8(%ebp)
		popl	%edx
		popl	%eax
		pushl	%eax
		pushl	%edx
		movl	-8(%ebp),	%eax
		movl	-4(%ebp),	%edx
		cmp	%eax,	%edx
		setg	%al
		movzbl	%al,	%edx
		movl	%edx,	-4(%ebp)
		popl	%edx
		popl	%eax
		pushl	%eax
		pushl	%edx
		xorl	%eax,	%eax
		movl	-4(%ebp),	%edx
		orl	%edi,	%edx
		cmp	%edx,	%eax
		setne	%al
		movl	%eax,	%edi
		popl	%edx
		popl	%eax
		movl	$867,	-4(%ebp)
		movl	$569,	-8(%ebp)
		pushl	%eax
		pushl	%edx
		movl	-8(%ebp),	%eax
		movl	-4(%ebp),	%edx
		cmp	%eax,	%edx
		sete	%al
		movzbl	%al,	%edx
		movl	%edx,	-4(%ebp)
		popl	%edx
		popl	%eax
		movl	$807,	-8(%ebp)
		movl	$422,	-12(%ebp)
		pushl	%eax
		pushl	%edx
		movl	-12(%ebp),	%eax
		movl	-8(%ebp),	%edx
		addl	%eax,	%edx
		movl	%edx,	%eax
		movl	%edx,	-8(%ebp)
		popl	%edx
		popl	%eax
		pushl	%eax
		pushl	%edx
		movl	-8(%ebp),	%eax
		movl	-4(%ebp),	%edx
		cmp	%eax,	%edx
		setg	%al
		movzbl	%al,	%edx
		movl	%edx,	-4(%ebp)
		popl	%edx
		popl	%eax
		pushl	%eax
		pushl	%edx
		movl	x3,	%eax
		movl	-8(%ebp),	%edx
		movl	%eax,	%edx
		movl	%edx,	-8(%ebp)
		popl	%edx
		popl	%eax
		pushl	%eax
		pushl	%edx
		movl	x1,	%eax
		movl	-12(%ebp),	%edx
		movl	%eax,	%edx
		movl	%edx,	-12(%ebp)
		popl	%edx
		popl	%eax
		pushl	%eax
		pushl	%edx
		xorl	%eax,	%eax
		movl	-12(%ebp),	%edx
		orl	-8(%ebp),	%edx
		cmp	%edx,	%eax
		setne	%al
		movl	%eax,	-8(%ebp)
		popl	%edx
		popl	%eax
		pushl	%eax
		pushl	%edx
		movl	x0,	%eax
		movl	-12(%ebp),	%edx
		movl	%eax,	%edx
		movl	%edx,	-12(%ebp)
		popl	%edx
		popl	%eax
		movl	$503,	-16(%ebp)
		pushl	%eax
		pushl	%edx
		movl	-16(%ebp),	%eax
		movl	-12(%ebp),	%edx
		cmp	%eax,	%edx
		sete	%al
		movzbl	%al,	%edx
		movl	%edx,	-12(%ebp)
		popl	%edx
		popl	%eax
		pushl	%eax
		pushl	%edx
		movl	-12(%ebp),	%eax
		movl	-8(%ebp),	%edx
		cmp	%eax,	%edx
		sete	%al
		movzbl	%al,	%edx
		movl	%edx,	-8(%ebp)
		popl	%edx
		popl	%eax
		pushl	%eax
		pushl	%edx
		movl	-8(%ebp),	%eax
		movl	-4(%ebp),	%edx
		cmp	%eax,	%edx
		setl	%al
		movzbl	%al,	%edx
		movl	%edx,	-4(%ebp)
		popl	%edx
		popl	%eax
		pushl	%eax
		pushl	%edx
		movl	-4(%ebp),	%eax
		movl	%edi,	%edx
		subl	%eax,	%edx
		movl	%edx,	%eax
		movl	%edx,	%edi
		popl	%edx
		popl	%eax
		pushl	%eax
		pushl	%edx
		movl	%edi,	%eax
		movl	%esi,	%edx
		cmp	%eax,	%edx
		setne	%al
		movzbl	%al,	%edx
		movl	%edx,	%esi
		popl	%edx
		popl	%eax
		pushl	%eax
		pushl	%edx
		movl	%esi,	%eax
		movl	%ecx,	%edx
		cmp	%eax,	%edx
		setl	%al
		movzbl	%al,	%edx
		movl	%edx,	%ecx
		popl	%edx
		popl	%eax
		pushl	%eax
		pushl	%edx
		movl	x0,	%eax
		movl	%esi,	%edx
		movl	%eax,	%edx
		movl	%edx,	%esi
		popl	%edx
		popl	%eax
		pushl	%eax
		pushl	%edx
		movl	x3,	%eax
		movl	%edi,	%edx
		movl	%eax,	%edx
		movl	%edx,	%edi
		popl	%edx
		popl	%eax
		pushl	%eax
		pushl	%edx
		movl	%edi,	%eax
		movl	%esi,	%edx
		subl	%eax,	%edx
		movl	%edx,	%eax
		movl	%edx,	%esi
		popl	%edx
		popl	%eax
		pushl	%eax
		pushl	%edx
		movl	x0,	%eax
		movl	%edi,	%edx
		movl	%eax,	%edx
		movl	%edx,	%edi
		popl	%edx
		popl	%eax
		pushl	%eax
		pushl	%edx
		movl	x2,	%eax
		movl	-4(%ebp),	%edx
		movl	%eax,	%edx
		movl	%edx,	-4(%ebp)
		popl	%edx
		popl	%eax
		pushl	%eax
		pushl	%edx
		xorl	%eax,	%eax
		movl	-4(%ebp),	%edx
		orl	%edi,	%edx
		cmp	%edx,	%eax
		setne	%al
		movl	%eax,	%edi
		popl	%edx
		popl	%eax
		pushl	%eax
		pushl	%edx
		movl	%edi,	%eax
		movl	%esi,	%edx
		cmp	%eax,	%edx
		setle	%al
		movzbl	%al,	%edx
		movl	%edx,	%esi
		popl	%edx
		popl	%eax
		movl	$539,	%edi
		pushl	%eax
		pushl	%edx
		movl	x1,	%eax
		movl	-4(%ebp),	%edx
		movl	%eax,	%edx
		movl	%edx,	-4(%ebp)
		popl	%edx
		popl	%eax
		pushl	%eax
		pushl	%edx
		movl	-4(%ebp),	%eax
		movl	%edi,	%edx
		cmp	%eax,	%edx
		sete	%al
		movzbl	%al,	%edx
		movl	%edx,	%edi
		popl	%edx
		popl	%eax
		movl	$549,	-4(%ebp)
		pushl	%eax
		pushl	%edx
		movl	x3,	%eax
		movl	-8(%ebp),	%edx
		movl	%eax,	%edx
		movl	%edx,	-8(%ebp)
		popl	%edx
		popl	%eax
		pushl	%eax
		pushl	%edx
		movl	-8(%ebp),	%eax
		movl	-4(%ebp),	%edx
		subl	%eax,	%edx
		movl	%edx,	%eax
		movl	%edx,	-4(%ebp)
		popl	%edx
		popl	%eax
		pushl	%eax
		pushl	%edx
		movl	-4(%ebp),	%eax
		movl	%edi,	%edx
		cmp	%eax,	%edx
		setl	%al
		movzbl	%al,	%edx
		movl	%edx,	%edi
		popl	%edx
		popl	%eax
		pushl	%eax
		pushl	%edx
		movl	%edi,	%eax
		movl	%esi,	%edx
		cmp	%eax,	%edx
		setge	%al
		movzbl	%al,	%edx
		movl	%edx,	%esi
		popl	%edx
		popl	%eax
		pushl	%eax
		pushl	%edx
		movl	x1,	%eax
		movl	%edi,	%edx
		movl	%eax,	%edx
		movl	%edx,	%edi
		popl	%edx
		popl	%eax
		pushl	%eax
		pushl	%edx
		movl	x2,	%eax
		movl	-4(%ebp),	%edx
		movl	%eax,	%edx
		movl	%edx,	-4(%ebp)
		popl	%edx
		popl	%eax
		pushl	%eax
		pushl	%edx
		movl	-4(%ebp),	%eax
		movl	%edi,	%edx
		subl	%eax,	%edx
		movl	%edx,	%eax
		movl	%edx,	%edi
		popl	%edx
		popl	%eax
		pushl	%eax
		pushl	%edx
		movl	x2,	%eax
		movl	-4(%ebp),	%edx
		movl	%eax,	%edx
		movl	%edx,	-4(%ebp)
		popl	%edx
		popl	%eax
		pushl	%eax
		pushl	%edx
		movl	x0,	%eax
		movl	-8(%ebp),	%edx
		movl	%eax,	%edx
		movl	%edx,	-8(%ebp)
		popl	%edx
		popl	%eax
		pushl	%eax
		pushl	%edx
		movl	-8(%ebp),	%eax
		movl	-4(%ebp),	%edx
		cmp	%eax,	%edx
		sete	%al
		movzbl	%al,	%edx
		movl	%edx,	-4(%ebp)
		popl	%edx
		popl	%eax
		pushl	%eax
		pushl	%edx
		movl	-4(%ebp),	%eax
		movl	%edi,	%edx
		cmp	%eax,	%edx
		setl	%al
		movzbl	%al,	%edx
		movl	%edx,	%edi
		popl	%edx
		popl	%eax
		movl	$946,	-4(%ebp)
		pushl	%eax
		pushl	%edx
		movl	x0,	%eax
		movl	-8(%ebp),	%edx
		movl	%eax,	%edx
		movl	%edx,	-8(%ebp)
		popl	%edx
		popl	%eax
		pushl	%eax
		pushl	%edx
		movl	-8(%ebp),	%eax
		movl	-4(%ebp),	%edx
		cmp	%eax,	%edx
		sete	%al
		movzbl	%al,	%edx
		movl	%edx,	-4(%ebp)
		popl	%edx
		popl	%eax
		pushl	%eax
		pushl	%edx
		movl	x0,	%eax
		movl	-8(%ebp),	%edx
		movl	%eax,	%edx
		movl	%edx,	-8(%ebp)
		popl	%edx
		popl	%eax
		movl	$153,	-12(%ebp)
		pushl	%eax
		pushl	%edx
		movl	-12(%ebp),	%eax
		movl	-8(%ebp),	%edx
		subl	%eax,	%edx
		movl	%edx,	%eax
		movl	%edx,	-8(%ebp)
		popl	%edx
		popl	%eax
		pushl	%eax
		pushl	%edx
		movl	-8(%ebp),	%eax
		movl	-4(%ebp),	%edx
		cmp	%eax,	%edx
		sete	%al
		movzbl	%al,	%edx
		movl	%edx,	-4(%ebp)
		popl	%edx
		popl	%eax
		pushl	%eax
		pushl	%edx
		xorl	%eax,	%eax
		movl	-4(%ebp),	%edx
		cmp	%edx,	%eax
		setne	%al
		movl	%edi,	%edx
		imull	%eax,	%edx
		xorl	%eax,	%eax
		cmp	%edx,	%eax
		setne	%al
		movl	%eax,	%edi
		popl	%edx
		popl	%eax
		pushl	%eax
		pushl	%edx
		movl	%edi,	%eax
		movl	%esi,	%edx
		cmp	%eax,	%edx
		setge	%al
		movzbl	%al,	%edx
		movl	%edx,	%esi
		popl	%edx
		popl	%eax
		pushl	%eax
		pushl	%edx
		movl	x0,	%eax
		movl	%edi,	%edx
		movl	%eax,	%edx
		movl	%edx,	%edi
		popl	%edx
		popl	%eax
		movl	$76,	-4(%ebp)
		pushl	%eax
		pushl	%edx
		movl	-4(%ebp),	%eax
		movl	%edi,	%edx
		addl	%eax,	%edx
		movl	%edx,	%eax
		movl	%edx,	%edi
		popl	%edx
		popl	%eax
		pushl	%eax
		pushl	%edx
		movl	x3,	%eax
		movl	-4(%ebp),	%edx
		movl	%eax,	%edx
		movl	%edx,	-4(%ebp)
		popl	%edx
		popl	%eax
		pushl	%eax
		pushl	%edx
		movl	x1,	%eax
		movl	-8(%ebp),	%edx
		movl	%eax,	%edx
		movl	%edx,	-8(%ebp)
		popl	%edx
		popl	%eax
		pushl	%eax
		pushl	%edx
		movl	-8(%ebp),	%eax
		movl	-4(%ebp),	%edx
		cmp	%eax,	%edx
		setle	%al
		movzbl	%al,	%edx
		movl	%edx,	-4(%ebp)
		popl	%edx
		popl	%eax
		pushl	%eax
		pushl	%edx
		movl	-4(%ebp),	%eax
		movl	%edi,	%edx
		addl	%eax,	%edx
		movl	%edx,	%eax
		movl	%edx,	%edi
		popl	%edx
		popl	%eax
		pushl	%eax
		pushl	%edx
		movl	x1,	%eax
		movl	-4(%ebp),	%edx
		movl	%eax,	%edx
		movl	%edx,	-4(%ebp)
		popl	%edx
		popl	%eax
		movl	$864,	-8(%ebp)
		pushl	%eax
		pushl	%edx
		movl	-8(%ebp),	%eax
		movl	-4(%ebp),	%edx
		addl	%eax,	%edx
		movl	%edx,	%eax
		movl	%edx,	-4(%ebp)
		popl	%edx
		popl	%eax
		pushl	%eax
		pushl	%edx
		movl	x2,	%eax
		movl	-8(%ebp),	%edx
		movl	%eax,	%edx
		movl	%edx,	-8(%ebp)
		popl	%edx
		popl	%eax
		pushl	%eax
		pushl	%edx
		movl	x2,	%eax
		movl	-12(%ebp),	%edx
		movl	%eax,	%edx
		movl	%edx,	-12(%ebp)
		popl	%edx
		popl	%eax
		pushl	%eax
		pushl	%edx
		movl	-12(%ebp),	%eax
		movl	-8(%ebp),	%edx
		cmp	%eax,	%edx
		setle	%al
		movzbl	%al,	%edx
		movl	%edx,	-8(%ebp)
		popl	%edx
		popl	%eax
		pushl	%eax
		pushl	%edx
		movl	-8(%ebp),	%eax
		movl	-4(%ebp),	%edx
		cmp	%eax,	%edx
		sete	%al
		movzbl	%al,	%edx
		movl	%edx,	-4(%ebp)
		popl	%edx
		popl	%eax
		pushl	%eax
		pushl	%edx
		movl	-4(%ebp),	%eax
		movl	%edi,	%edx
		cmp	%eax,	%edx
		setle	%al
		movzbl	%al,	%edx
		movl	%edx,	%edi
		popl	%edx
		popl	%eax
		pushl	%eax
		pushl	%edx
		movl	x3,	%eax
		movl	-4(%ebp),	%edx
		movl	%eax,	%edx
		movl	%edx,	-4(%ebp)
		popl	%edx
		popl	%eax
		movl	$280,	-8(%ebp)
		pushl	%eax
		pushl	%edx
		movl	-8(%ebp),	%eax
		movl	-4(%ebp),	%edx
		addl	%eax,	%edx
		movl	%edx,	%eax
		movl	%edx,	-4(%ebp)
		popl	%edx
		popl	%eax
		movl	$147,	-8(%ebp)
		movl	$410,	-12(%ebp)
		pushl	%eax
		pushl	%edx
		movl	-8(%ebp),	%eax
		imull	-12(%ebp),	%eax
		movl	%eax,	-8(%ebp)
		popl	%edx
		popl	%eax
		pushl	%eax
		pushl	%edx
		movl	-8(%ebp),	%eax
		movl	-4(%ebp),	%edx
		cmp	%eax,	%edx
		setne	%al
		movzbl	%al,	%edx
		movl	%edx,	-4(%ebp)
		popl	%edx
		popl	%eax
		pushl	%eax
		pushl	%edx
		movl	x0,	%eax
		movl	-8(%ebp),	%edx
		movl	%eax,	%edx
		movl	%edx,	-8(%ebp)
		popl	%edx
		popl	%eax
		movl	$315,	-12(%ebp)
		pushl	%eax
		pushl	%edx
		movl	-12(%ebp),	%eax
		movl	-8(%ebp),	%edx
		cmp	%eax,	%edx
		setl	%al
		movzbl	%al,	%edx
		movl	%edx,	-8(%ebp)
		popl	%edx
		popl	%eax
		movl	$973,	-12(%ebp)
		movl	$324,	-16(%ebp)
		pushl	%eax
		pushl	%edx
		movl	-16(%ebp),	%eax
		movl	-12(%ebp),	%edx
		cmp	%eax,	%edx
		setle	%al
		movzbl	%al,	%edx
		movl	%edx,	-12(%ebp)
		popl	%edx
		popl	%eax
		pushl	%eax
		pushl	%edx
		movl	-12(%ebp),	%eax
		movl	-8(%ebp),	%edx
		cmp	%eax,	%edx
		setg	%al
		movzbl	%al,	%edx
		movl	%edx,	-8(%ebp)
		popl	%edx
		popl	%eax
		pushl	%eax
		pushl	%edx
		movl	-8(%ebp),	%eax
		movl	-4(%ebp),	%edx
		cmp	%eax,	%edx
		setg	%al
		movzbl	%al,	%edx
		movl	%edx,	-4(%ebp)
		popl	%edx
		popl	%eax
		pushl	%eax
		pushl	%edx
		movl	-4(%ebp),	%eax
		movl	%edi,	%edx
		cmp	%eax,	%edx
		setg	%al
		movzbl	%al,	%edx
		movl	%edx,	%edi
		popl	%edx
		popl	%eax
		pushl	%eax
		pushl	%edx
		movl	%edi,	%eax
		movl	%esi,	%edx
		subl	%eax,	%edx
		movl	%edx,	%eax
		movl	%edx,	%esi
		popl	%edx
		popl	%eax
		pushl	%eax
		pushl	%edx
		movl	x2,	%eax
		movl	%edi,	%edx
		movl	%eax,	%edx
		movl	%edx,	%edi
		popl	%edx
		popl	%eax
		pushl	%eax
		pushl	%edx
		movl	x3,	%eax
		movl	-4(%ebp),	%edx
		movl	%eax,	%edx
		movl	%edx,	-4(%ebp)
		popl	%edx
		popl	%eax
		pushl	%eax
		pushl	%edx
		movl	-4(%ebp),	%eax
		movl	%edi,	%edx
		cmp	%eax,	%edx
		setle	%al
		movzbl	%al,	%edx
		movl	%edx,	%edi
		popl	%edx
		popl	%eax
		pushl	%eax
		pushl	%edx
		movl	x0,	%eax
		movl	-4(%ebp),	%edx
		movl	%eax,	%edx
		movl	%edx,	-4(%ebp)
		popl	%edx
		popl	%eax
		movl	$205,	-8(%ebp)
		pushl	%eax
		pushl	%edx
		xorl	%eax,	%eax
		movl	-8(%ebp),	%edx
		cmp	%edx,	%eax
		setne	%al
		movl	-4(%ebp),	%edx
		imull	%eax,	%edx
		xorl	%eax,	%eax
		cmp	%edx,	%eax
		setne	%al
		movl	%eax,	-4(%ebp)
		popl	%edx
		popl	%eax
		pushl	%eax
		pushl	%edx
		movl	-4(%ebp),	%eax
		movl	%edi,	%edx
		cmp	%eax,	%edx
		setg	%al
		movzbl	%al,	%edx
		movl	%edx,	%edi
		popl	%edx
		popl	%eax
		pushl	%eax
		pushl	%edx
		movl	x0,	%eax
		movl	-4(%ebp),	%edx
		movl	%eax,	%edx
		movl	%edx,	-4(%ebp)
		popl	%edx
		popl	%eax
		pushl	%eax
		pushl	%edx
		movl	x1,	%eax
		movl	-8(%ebp),	%edx
		movl	%eax,	%edx
		movl	%edx,	-8(%ebp)
		popl	%edx
		popl	%eax
		pushl	%eax
		pushl	%edx
		movl	-8(%ebp),	%eax
		movl	-4(%ebp),	%edx
		addl	%eax,	%edx
		movl	%edx,	%eax
		movl	%edx,	-4(%ebp)
		popl	%edx
		popl	%eax
		movl	$924,	-8(%ebp)
		movl	$697,	-12(%ebp)
		pushl	%eax
		pushl	%edx
		movl	-12(%ebp),	%eax
		movl	-8(%ebp),	%edx
		cmp	%eax,	%edx
		setg	%al
		movzbl	%al,	%edx
		movl	%edx,	-8(%ebp)
		popl	%edx
		popl	%eax
		pushl	%eax
		pushl	%edx
		movl	-8(%ebp),	%eax
		movl	-4(%ebp),	%edx
		cmp	%eax,	%edx
		setl	%al
		movzbl	%al,	%edx
		movl	%edx,	-4(%ebp)
		popl	%edx
		popl	%eax
		pushl	%eax
		pushl	%edx
		movl	-4(%ebp),	%eax
		movl	%edi,	%edx
		subl	%eax,	%edx
		movl	%edx,	%eax
		movl	%edx,	%edi
		popl	%edx
		popl	%eax
		movl	$424,	-4(%ebp)
		pushl	%eax
		pushl	%edx
		movl	x2,	%eax
		movl	-8(%ebp),	%edx
		movl	%eax,	%edx
		movl	%edx,	-8(%ebp)
		popl	%edx
		popl	%eax
		pushl	%eax
		pushl	%edx
		movl	-8(%ebp),	%eax
		movl	-4(%ebp),	%edx
		cmp	%eax,	%edx
		setle	%al
		movzbl	%al,	%edx
		movl	%edx,	-4(%ebp)
		popl	%edx
		popl	%eax
		movl	$80,	-8(%ebp)
		movl	$279,	-12(%ebp)
		pushl	%eax
		pushl	%edx
		xorl	%eax,	%eax
		movl	-12(%ebp),	%edx
		orl	-8(%ebp),	%edx
		cmp	%edx,	%eax
		setne	%al
		movl	%eax,	-8(%ebp)
		popl	%edx
		popl	%eax
		pushl	%eax
		pushl	%edx
		movl	-8(%ebp),	%eax
		movl	-4(%ebp),	%edx
		subl	%eax,	%edx
		movl	%edx,	%eax
		movl	%edx,	-4(%ebp)
		popl	%edx
		popl	%eax
		pushl	%eax
		pushl	%edx
		movl	x3,	%eax
		movl	-8(%ebp),	%edx
		movl	%eax,	%edx
		movl	%edx,	-8(%ebp)
		popl	%edx
		popl	%eax
		pushl	%eax
		pushl	%edx
		movl	x2,	%eax
		movl	-12(%ebp),	%edx
		movl	%eax,	%edx
		movl	%edx,	-12(%ebp)
		popl	%edx
		popl	%eax
		pushl	%eax
		pushl	%edx
		movl	-12(%ebp),	%eax
		movl	-8(%ebp),	%edx
		subl	%eax,	%edx
		movl	%edx,	%eax
		movl	%edx,	-8(%ebp)
		popl	%edx
		popl	%eax
		movl	$361,	-12(%ebp)
		movl	$514,	-16(%ebp)
		pushl	%eax
		pushl	%edx
		movl	-16(%ebp),	%eax
		movl	-12(%ebp),	%edx
		addl	%eax,	%edx
		movl	%edx,	%eax
		movl	%edx,	-12(%ebp)
		popl	%edx
		popl	%eax
		pushl	%eax
		pushl	%edx
		movl	-12(%ebp),	%eax
		movl	-8(%ebp),	%edx
		cmp	%eax,	%edx
		setl	%al
		movzbl	%al,	%edx
		movl	%edx,	-8(%ebp)
		popl	%edx
		popl	%eax
		pushl	%eax
		pushl	%edx
		movl	-8(%ebp),	%eax
		movl	-4(%ebp),	%edx
		cmp	%eax,	%edx
		sete	%al
		movzbl	%al,	%edx
		movl	%edx,	-4(%ebp)
		popl	%edx
		popl	%eax
		pushl	%eax
		pushl	%edx
		xorl	%eax,	%eax
		movl	-4(%ebp),	%edx
		cmp	%edx,	%eax
		setne	%al
		movl	%edi,	%edx
		imull	%eax,	%edx
		xorl	%eax,	%eax
		cmp	%edx,	%eax
		setne	%al
		movl	%eax,	%edi
		popl	%edx
		popl	%eax
		pushl	%eax
		pushl	%edx
		movl	x1,	%eax
		movl	-4(%ebp),	%edx
		movl	%eax,	%edx
		movl	%edx,	-4(%ebp)
		popl	%edx
		popl	%eax
		pushl	%eax
		pushl	%edx
		movl	x1,	%eax
		movl	-8(%ebp),	%edx
		movl	%eax,	%edx
		movl	%edx,	-8(%ebp)
		popl	%edx
		popl	%eax
		pushl	%eax
		pushl	%edx
		movl	-8(%ebp),	%eax
		movl	-4(%ebp),	%edx
		cmp	%eax,	%edx
		setle	%al
		movzbl	%al,	%edx
		movl	%edx,	-4(%ebp)
		popl	%edx
		popl	%eax
		movl	$286,	-8(%ebp)
		pushl	%eax
		pushl	%edx
		movl	x2,	%eax
		movl	-12(%ebp),	%edx
		movl	%eax,	%edx
		movl	%edx,	-12(%ebp)
		popl	%edx
		popl	%eax
		pushl	%eax
		pushl	%edx
		movl	-8(%ebp),	%eax
		imull	-12(%ebp),	%eax
		movl	%eax,	-8(%ebp)
		popl	%edx
		popl	%eax
		pushl	%eax
		pushl	%edx
		xorl	%eax,	%eax
		movl	-8(%ebp),	%edx
		cmp	%edx,	%eax
		setne	%al
		movl	-4(%ebp),	%edx
		imull	%eax,	%edx
		xorl	%eax,	%eax
		cmp	%edx,	%eax
		setne	%al
		movl	%eax,	-4(%ebp)
		popl	%edx
		popl	%eax
		movl	$152,	-8(%ebp)
		pushl	%eax
		pushl	%edx
		movl	x2,	%eax
		movl	-12(%ebp),	%edx
		movl	%eax,	%edx
		movl	%edx,	-12(%ebp)
		popl	%edx
		popl	%eax
		pushl	%eax
		pushl	%edx
		movl	-12(%ebp),	%eax
		movl	-8(%ebp),	%edx
		cmp	%eax,	%edx
		setne	%al
		movzbl	%al,	%edx
		movl	%edx,	-8(%ebp)
		popl	%edx
		popl	%eax
		pushl	%eax
		pushl	%edx
		movl	x2,	%eax
		movl	-12(%ebp),	%edx
		movl	%eax,	%edx
		movl	%edx,	-12(%ebp)
		popl	%edx
		popl	%eax
		pushl	%eax
		pushl	%edx
		movl	x2,	%eax
		movl	-16(%ebp),	%edx
		movl	%eax,	%edx
		movl	%edx,	-16(%ebp)
		popl	%edx
		popl	%eax
		pushl	%eax
		pushl	%edx
		movl	-16(%ebp),	%eax
		movl	-12(%ebp),	%edx
		subl	%eax,	%edx
		movl	%edx,	%eax
		movl	%edx,	-12(%ebp)
		popl	%edx
		popl	%eax
		pushl	%eax
		pushl	%edx
		xorl	%eax,	%eax
		movl	-12(%ebp),	%edx
		orl	-8(%ebp),	%edx
		cmp	%edx,	%eax
		setne	%al
		movl	%eax,	-8(%ebp)
		popl	%edx
		popl	%eax
		pushl	%eax
		pushl	%edx
		movl	-4(%ebp),	%eax
		imull	-8(%ebp),	%eax
		movl	%eax,	-4(%ebp)
		popl	%edx
		popl	%eax
		pushl	%eax
		pushl	%edx
		movl	x0,	%eax
		movl	-8(%ebp),	%edx
		movl	%eax,	%edx
		movl	%edx,	-8(%ebp)
		popl	%edx
		popl	%eax
		movl	$212,	-12(%ebp)
		pushl	%eax
		pushl	%edx
		movl	-8(%ebp),	%eax
		imull	-12(%ebp),	%eax
		movl	%eax,	-8(%ebp)
		popl	%edx
		popl	%eax
		movl	$573,	-12(%ebp)
		pushl	%eax
		pushl	%edx
		movl	x3,	%eax
		movl	-16(%ebp),	%edx
		movl	%eax,	%edx
		movl	%edx,	-16(%ebp)
		popl	%edx
		popl	%eax
		pushl	%eax
		pushl	%edx
		movl	-16(%ebp),	%eax
		movl	-12(%ebp),	%edx
		subl	%eax,	%edx
		movl	%edx,	%eax
		movl	%edx,	-12(%ebp)
		popl	%edx
		popl	%eax
		pushl	%eax
		pushl	%edx
		movl	-8(%ebp),	%eax
		imull	-12(%ebp),	%eax
		movl	%eax,	-8(%ebp)
		popl	%edx
		popl	%eax
		movl	$867,	-12(%ebp)
		movl	$183,	-16(%ebp)
		pushl	%eax
		pushl	%edx
		movl	-12(%ebp),	%eax
		imull	-16(%ebp),	%eax
		movl	%eax,	-12(%ebp)
		popl	%edx
		popl	%eax
		movl	$876,	-16(%ebp)
		pushl	%eax
		pushl	%edx
		movl	x3,	%eax
		movl	-20(%ebp),	%edx
		movl	%eax,	%edx
		movl	%edx,	-20(%ebp)
		popl	%edx
		popl	%eax
		pushl	%eax
		pushl	%edx
		movl	-20(%ebp),	%eax
		movl	-16(%ebp),	%edx
		subl	%eax,	%edx
		movl	%edx,	%eax
		movl	%edx,	-16(%ebp)
		popl	%edx
		popl	%eax
		pushl	%eax
		pushl	%edx
		movl	-16(%ebp),	%eax
		movl	-12(%ebp),	%edx
		cmp	%eax,	%edx
		setge	%al
		movzbl	%al,	%edx
		movl	%edx,	-12(%ebp)
		popl	%edx
		popl	%eax
		pushl	%eax
		pushl	%edx
		movl	-8(%ebp),	%eax
		imull	-12(%ebp),	%eax
		movl	%eax,	-8(%ebp)
		popl	%edx
		popl	%eax
		pushl	%eax
		pushl	%edx
		xorl	%eax,	%eax
		movl	-8(%ebp),	%edx
		orl	-4(%ebp),	%edx
		cmp	%edx,	%eax
		setne	%al
		movl	%eax,	-4(%ebp)
		popl	%edx
		popl	%eax
		pushl	%eax
		pushl	%edx
		movl	-4(%ebp),	%eax
		movl	%edi,	%edx
		cmp	%eax,	%edx
		setne	%al
		movzbl	%al,	%edx
		movl	%edx,	%edi
		popl	%edx
		popl	%eax
		pushl	%eax
		pushl	%edx
		movl	%edi,	%eax
		movl	%esi,	%edx
		cmp	%eax,	%edx
		setl	%al
		movzbl	%al,	%edx
		movl	%edx,	%esi
		popl	%edx
		popl	%eax
		pushl	%eax
		pushl	%edx
		movl	%esi,	%eax
		movl	%ecx,	%edx
		cmp	%eax,	%edx
		setle	%al
		movzbl	%al,	%edx
		movl	%edx,	%ecx
		popl	%edx
		popl	%eax
		pushl	%eax
		pushl	%edx
		movl	%ecx,	%eax
		movl	%ebx,	%edx
		cmp	%eax,	%edx
		setne	%al
		movzbl	%al,	%edx
		movl	%edx,	%ebx
		popl	%edx
		popl	%eax
		movl	%ebx,	y
		pushl	%eax
		pushl	%edx
		movl	y,	%eax
		movl	%ebx,	%edx
		movl	%eax,	%edx
		movl	%edx,	%ebx
		popl	%edx
		popl	%eax
		pushl	%ebx
		call	lwrite
		popl	%ebx
	movl	%ebp,%esp
	popl	%ebp
	ret
