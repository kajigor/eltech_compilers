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
		pushl	%eax
		pushl	%edx
		movl	x1,	%eax
		movl	%ebx,	%edx
		movl	%eax,	%edx
		movl	%edx,	%ebx
		popl	%edx
		popl	%eax
		movl	$107,	%ecx
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
		movl	$247,	%ecx
		movl	$538,	%esi
		pushl	%eax
		pushl	%edx
		movl	%ecx,	%eax
		imull	%esi,	%eax
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
		movl	$165,	%ecx
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
		movl	%ecx,	%eax
		imull	%esi,	%eax
		movl	%eax,	%ecx
		popl	%edx
		popl	%eax
		movl	$136,	%esi
		movl	$197,	%edi
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
		setg	%al
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
		movl	x2,	%eax
		movl	%ecx,	%edx
		movl	%eax,	%edx
		movl	%edx,	%ecx
		popl	%edx
		popl	%eax
		movl	$214,	%esi
		pushl	%eax
		pushl	%edx
		movl	%esi,	%eax
		movl	%ecx,	%edx
		cmp	%eax,	%edx
		setge	%al
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
		cmp	%eax,	%edx
		setne	%al
		movzbl	%al,	%edx
		movl	%edx,	%esi
		popl	%edx
		popl	%eax
		pushl	%eax
		pushl	%edx
		xorl	%eax,	%eax
		movl	%esi,	%edx
		cmp	%edx,	%eax
		setne	%al
		movl	%ecx,	%edx
		imull	%eax,	%edx
		xorl	%eax,	%eax
		cmp	%edx,	%eax
		setne	%al
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
		orl	%esi,	%edx
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
		setg	%al
		movzbl	%al,	%edx
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
		addl	%eax,	%edx
		movl	%edx,	%eax
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
		movl	x2,	%eax
		movl	%esi,	%edx
		movl	%eax,	%edx
		movl	%edx,	%esi
		popl	%edx
		popl	%eax
		movl	$91,	%edi
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
		cmp	%eax,	%edx
		setle	%al
		movzbl	%al,	%edx
		movl	%edx,	%ecx
		popl	%edx
		popl	%eax
		movl	$812,	%esi
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
		movl	$254,	%edi
		movl	$683,	-4(%ebp)
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
		movl	x2,	%eax
		movl	%esi,	%edx
		movl	%eax,	%edx
		movl	%edx,	%esi
		popl	%edx
		popl	%eax
		movl	$247,	%edi
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
		movl	$762,	%edi
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
		movl	$412,	-4(%ebp)
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
		movl	$21,	-4(%ebp)
		movl	$133,	-8(%ebp)
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
		setge	%al
		movzbl	%al,	%edx
		movl	%edx,	%esi
		popl	%edx
		popl	%eax
		pushl	%eax
		pushl	%edx
		xorl	%eax,	%eax
		movl	%esi,	%edx
		cmp	%edx,	%eax
		setne	%al
		movl	%ecx,	%edx
		imull	%eax,	%edx
		xorl	%eax,	%eax
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
		setle	%al
		movzbl	%al,	%edx
		movl	%edx,	%ebx
		popl	%edx
		popl	%eax
		movl	$572,	%ecx
		movl	$735,	%esi
		pushl	%eax
		pushl	%edx
		xorl	%eax,	%eax
		movl	%esi,	%edx
		cmp	%edx,	%eax
		setne	%al
		movl	%ecx,	%edx
		imull	%eax,	%edx
		xorl	%eax,	%eax
		cmp	%edx,	%eax
		setne	%al
		movl	%eax,	%ecx
		popl	%edx
		popl	%eax
		movl	$884,	%esi
		movl	$690,	%edi
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
		setle	%al
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
		movl	$884,	%edi
		pushl	%eax
		pushl	%edx
		movl	%esi,	%eax
		imull	%edi,	%eax
		movl	%eax,	%esi
		popl	%edx
		popl	%eax
		movl	$632,	%edi
		movl	$170,	-4(%ebp)
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
		movl	$594,	%edi
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
		movl	$307,	%edi
		movl	$34,	-4(%ebp)
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
		movl	x2,	%eax
		movl	%edi,	%edx
		movl	%eax,	%edx
		movl	%edx,	%edi
		popl	%edx
		popl	%eax
		movl	$853,	-4(%ebp)
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
		movl	$352,	-8(%ebp)
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
		setne	%al
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
		orl	%esi,	%edx
		cmp	%edx,	%eax
		setne	%al
		movl	%eax,	%esi
		popl	%edx
		popl	%eax
		movl	$689,	%edi
		movl	$27,	-4(%ebp)
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
		movl	$764,	%edi
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
		cmp	%eax,	%edx
		setl	%al
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
		movl	$65,	-8(%ebp)
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
		movl	%esi,	%eax
		imull	%edi,	%eax
		movl	%eax,	%esi
		popl	%edx
		popl	%eax
		movl	$966,	%edi
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
		subl	%eax,	%edx
		movl	%edx,	%eax
		movl	%edx,	%edi
		popl	%edx
		popl	%eax
		movl	$513,	-4(%ebp)
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
		setne	%al
		movzbl	%al,	%edx
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
		movl	$110,	-4(%ebp)
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
		setle	%al
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
		movl	$737,	-12(%ebp)
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
		setge	%al
		movzbl	%al,	%edx
		movl	%edx,	%ecx
		popl	%edx
		popl	%eax
		pushl	%eax
		pushl	%edx
		movl	%ecx,	%eax
		movl	%ebx,	%edx
		cmp	%eax,	%edx
		setle	%al
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
		movl	$952,	%esi
		pushl	%eax
		pushl	%edx
		movl	%esi,	%eax
		movl	%ecx,	%edx
		cmp	%eax,	%edx
		setge	%al
		movzbl	%al,	%edx
		movl	%edx,	%ecx
		popl	%edx
		popl	%eax
		movl	$39,	%esi
		movl	$611,	%edi
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
		xorl	%eax,	%eax
		movl	%esi,	%edx
		cmp	%edx,	%eax
		setne	%al
		movl	%ecx,	%edx
		imull	%eax,	%edx
		xorl	%eax,	%eax
		cmp	%edx,	%eax
		setne	%al
		movl	%eax,	%ecx
		popl	%edx
		popl	%eax
		movl	$168,	%esi
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
		cmp	%eax,	%edx
		setge	%al
		movzbl	%al,	%edx
		movl	%edx,	%esi
		popl	%edx
		popl	%eax
		movl	$173,	%edi
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
		movl	x0,	%eax
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
		movl	%edi,	%eax
		movl	%esi,	%edx
		cmp	%eax,	%edx
		sete	%al
		movzbl	%al,	%edx
		movl	%edx,	%esi
		popl	%edx
		popl	%eax
		movl	$982,	%edi
		movl	$785,	-4(%ebp)
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
		movl	x2,	%eax
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
		setle	%al
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
		setne	%al
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
		cmp	%eax,	%edx
		setg	%al
		movzbl	%al,	%edx
		movl	%edx,	%esi
		popl	%edx
		popl	%eax
		movl	$611,	%edi
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
		movl	x2,	%eax
		movl	%edi,	%edx
		movl	%eax,	%edx
		movl	%edx,	%edi
		popl	%edx
		popl	%eax
		movl	$672,	-4(%ebp)
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
		movl	x1,	%eax
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
		setle	%al
		movzbl	%al,	%edx
		movl	%edx,	%edi
		popl	%edx
		popl	%eax
		movl	$616,	-4(%ebp)
		movl	$517,	-8(%ebp)
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
		sete	%al
		movzbl	%al,	%edx
		movl	%edx,	%edi
		popl	%edx
		popl	%eax
		movl	$307,	-4(%ebp)
		movl	$182,	-8(%ebp)
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
		movl	$463,	-8(%ebp)
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
		movl	x2,	%eax
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
		cmp	%eax,	%edx
		sete	%al
		movzbl	%al,	%edx
		movl	%edx,	%esi
		popl	%edx
		popl	%eax
		movl	$613,	%edi
		movl	$103,	-4(%ebp)
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
		movl	$791,	%edi
		movl	$367,	-4(%ebp)
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
		movl	x2,	%eax
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
		movl	-4(%ebp),	%eax
		imull	-8(%ebp),	%eax
		movl	%eax,	-4(%ebp)
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
		movl	%esi,	%eax
		imull	%edi,	%eax
		movl	%eax,	%esi
		popl	%edx
		popl	%eax
		movl	$202,	%edi
		movl	$818,	-4(%ebp)
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
		movl	$741,	-4(%ebp)
		movl	$532,	-8(%ebp)
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
		setle	%al
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
		movl	$319,	-8(%ebp)
		movl	$320,	-12(%ebp)
		pushl	%eax
		pushl	%edx
		xorl	%eax,	%eax
		movl	-12(%ebp),	%edx
		cmp	%edx,	%eax
		setne	%al
		movl	-8(%ebp),	%edx
		imull	%eax,	%edx
		xorl	%eax,	%eax
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
		setle	%al
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
		movl	$6,	%edi
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
		movl	$750,	-4(%ebp)
		movl	$821,	-8(%ebp)
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
		setne	%al
		movzbl	%al,	%edx
		movl	%edx,	%edi
		popl	%edx
		popl	%eax
		movl	$506,	-4(%ebp)
		movl	$57,	-8(%ebp)
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
		movl	$718,	-8(%ebp)
		movl	$345,	-12(%ebp)
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
		movl	-4(%ebp),	%eax
		imull	-8(%ebp),	%eax
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
		movl	$799,	-4(%ebp)
		movl	$659,	-8(%ebp)
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
		movl	$257,	-8(%ebp)
		movl	$435,	-12(%ebp)
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
		setl	%al
		movzbl	%al,	%edx
		movl	%edx,	-4(%ebp)
		popl	%edx
		popl	%eax
		movl	$984,	-8(%ebp)
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
		setne	%al
		movzbl	%al,	%edx
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
		movl	x1,	%eax
		movl	-16(%ebp),	%edx
		movl	%eax,	%edx
		movl	%edx,	-16(%ebp)
		popl	%edx
		popl	%eax
		pushl	%eax
		pushl	%edx
		xorl	%eax,	%eax
		movl	-16(%ebp),	%edx
		orl	-12(%ebp),	%edx
		cmp	%edx,	%eax
		setne	%al
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
		addl	%eax,	%edx
		movl	%edx,	%eax
		movl	%edx,	%ebx
		popl	%edx
		popl	%eax
		movl	$557,	%ecx
		movl	$67,	%esi
		pushl	%eax
		pushl	%edx
		movl	%esi,	%eax
		movl	%ecx,	%edx
		cmp	%eax,	%edx
		setge	%al
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
		movl	$931,	%edi
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
		movl	%ecx,	%eax
		imull	%esi,	%eax
		movl	%eax,	%ecx
		popl	%edx
		popl	%eax
		movl	$356,	%esi
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
		setne	%al
		movzbl	%al,	%edx
		movl	%edx,	%esi
		popl	%edx
		popl	%eax
		movl	$21,	%edi
		movl	$117,	-4(%ebp)
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
		movl	%esi,	%eax
		movl	%ecx,	%edx
		addl	%eax,	%edx
		movl	%edx,	%eax
		movl	%edx,	%ecx
		popl	%edx
		popl	%eax
		movl	$594,	%esi
		movl	$633,	%edi
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
		movl	$193,	%edi
		movl	$407,	-4(%ebp)
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
		addl	%eax,	%edx
		movl	%edx,	%eax
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
		addl	%eax,	%edx
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
		subl	%eax,	%edx
		movl	%edx,	%eax
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
		movl	$280,	%esi
		movl	$146,	%edi
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
		movl	$875,	-4(%ebp)
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
		movl	$607,	-4(%ebp)
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
		setne	%al
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
		movl	$635,	%edi
		movl	$13,	-4(%ebp)
		pushl	%eax
		pushl	%edx
		movl	%edi,	%eax
		imull	-4(%ebp),	%eax
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
		movl	$450,	-8(%ebp)
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
		movl	$216,	-4(%ebp)
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
		movl	$356,	-8(%ebp)
		movl	$688,	-12(%ebp)
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
		setge	%al
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
		movl	x3,	%eax
		movl	%esi,	%edx
		movl	%eax,	%edx
		movl	%edx,	%esi
		popl	%edx
		popl	%eax
		movl	$474,	%edi
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
		movl	x2,	%eax
		movl	%edi,	%edx
		movl	%eax,	%edx
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
		pushl	%eax
		pushl	%edx
		movl	x0,	%eax
		movl	-4(%ebp),	%edx
		movl	%eax,	%edx
		movl	%edx,	-4(%ebp)
		popl	%edx
		popl	%eax
		movl	$226,	-8(%ebp)
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
		cmp	%eax,	%edx
		setg	%al
		movzbl	%al,	%edx
		movl	%edx,	%esi
		popl	%edx
		popl	%eax
		movl	$221,	%edi
		movl	$536,	-4(%ebp)
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
		movl	$814,	-4(%ebp)
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
		movl	x0,	%eax
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
		addl	%eax,	%edx
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
		movl	$330,	%edi
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
		setg	%al
		movzbl	%al,	%edx
		movl	%edx,	%edi
		popl	%edx
		popl	%eax
		movl	$658,	-4(%ebp)
		movl	$806,	-8(%ebp)
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
		movl	x1,	%eax
		movl	-4(%ebp),	%edx
		movl	%eax,	%edx
		movl	%edx,	-4(%ebp)
		popl	%edx
		popl	%eax
		movl	$567,	-8(%ebp)
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
		movl	$802,	-12(%ebp)
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
		sete	%al
		movzbl	%al,	%edx
		movl	%edx,	-4(%ebp)
		popl	%edx
		popl	%eax
		movl	$278,	-8(%ebp)
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
		setle	%al
		movzbl	%al,	%edx
		movl	%edx,	-4(%ebp)
		popl	%edx
		popl	%eax
		movl	$309,	-8(%ebp)
		movl	$97,	-12(%ebp)
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
		movl	x1,	%eax
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
		xorl	%eax,	%eax
		movl	-16(%ebp),	%edx
		orl	-12(%ebp),	%edx
		cmp	%edx,	%eax
		setne	%al
		movl	%eax,	-12(%ebp)
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
		movl	-4(%ebp),	%eax
		imull	-8(%ebp),	%eax
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
		movl	%esi,	%eax
		imull	%edi,	%eax
		movl	%eax,	%esi
		popl	%edx
		popl	%eax
		pushl	%eax
		pushl	%edx
		movl	%ecx,	%eax
		imull	%esi,	%eax
		movl	%eax,	%ecx
		popl	%edx
		popl	%eax
		movl	$804,	%esi
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
		movl	$428,	-4(%ebp)
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
		subl	%eax,	%edx
		movl	%edx,	%eax
		movl	%edx,	%esi
		popl	%edx
		popl	%eax
		movl	$577,	%edi
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
		cmp	%eax,	%edx
		setne	%al
		movzbl	%al,	%edx
		movl	%edx,	%edi
		popl	%edx
		popl	%eax
		movl	$568,	-4(%ebp)
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
		movl	$235,	%edi
		movl	$12,	-4(%ebp)
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
		cmp	%eax,	%edx
		sete	%al
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
		movl	$681,	-8(%ebp)
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
		cmp	%eax,	%edx
		setne	%al
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
		setg	%al
		movzbl	%al,	%edx
		movl	%edx,	%esi
		popl	%edx
		popl	%eax
		movl	$958,	%edi
		movl	$7,	-4(%ebp)
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
		movl	$38,	-8(%ebp)
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
		sete	%al
		movzbl	%al,	%edx
		movl	%edx,	%edi
		popl	%edx
		popl	%eax
		movl	$80,	-4(%ebp)
		movl	$891,	-8(%ebp)
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
		movl	$347,	-8(%ebp)
		movl	$85,	-12(%ebp)
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
		movl	$447,	-4(%ebp)
		movl	$925,	-8(%ebp)
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
		movl	$600,	-8(%ebp)
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
		setl	%al
		movzbl	%al,	%edx
		movl	%edx,	-8(%ebp)
		popl	%edx
		popl	%eax
		movl	$158,	-12(%ebp)
		movl	$287,	-16(%ebp)
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
		movl	%edi,	%eax
		movl	%esi,	%edx
		addl	%eax,	%edx
		movl	%edx,	%eax
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
		movl	$321,	-4(%ebp)
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
		movl	$502,	-4(%ebp)
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
		movl	-4(%ebp),	%eax
		imull	-8(%ebp),	%eax
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
		movl	$891,	-4(%ebp)
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
		movl	x0,	%eax
		movl	-8(%ebp),	%edx
		movl	%eax,	%edx
		movl	%edx,	-8(%ebp)
		popl	%edx
		popl	%eax
		movl	$886,	-12(%ebp)
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
		movl	$855,	-4(%ebp)
		movl	$284,	-8(%ebp)
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
		movl	x3,	%eax
		movl	-8(%ebp),	%edx
		movl	%eax,	%edx
		movl	%edx,	-8(%ebp)
		popl	%edx
		popl	%eax
		movl	$993,	-12(%ebp)
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
		movl	$386,	-8(%ebp)
		movl	$215,	-12(%ebp)
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
		movl	x2,	%eax
		movl	-12(%ebp),	%edx
		movl	%eax,	%edx
		movl	%edx,	-12(%ebp)
		popl	%edx
		popl	%eax
		movl	$275,	-16(%ebp)
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
		setg	%al
		movzbl	%al,	%edx
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
		addl	%eax,	%edx
		movl	%edx,	%eax
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
		movl	$739,	-8(%ebp)
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
		movl	$513,	-8(%ebp)
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
		subl	%eax,	%edx
		movl	%edx,	%eax
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
		movl	-8(%ebp),	%eax
		imull	-12(%ebp),	%eax
		movl	%eax,	-8(%ebp)
		popl	%edx
		popl	%eax
		movl	$944,	-12(%ebp)
		movl	$99,	-16(%ebp)
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
		movl	$285,	-8(%ebp)
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
		setg	%al
		movzbl	%al,	%edx
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
		movl	x2,	%eax
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
		cmp	%eax,	%edx
		setle	%al
		movzbl	%al,	%edx
		movl	%edx,	-8(%ebp)
		popl	%edx
		popl	%eax
		movl	$391,	-12(%ebp)
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
		xorl	%eax,	%eax
		movl	-16(%ebp),	%edx
		orl	-12(%ebp),	%edx
		cmp	%edx,	%eax
		setne	%al
		movl	%eax,	-12(%ebp)
		popl	%edx
		popl	%eax
		pushl	%eax
		pushl	%edx
		movl	x0,	%eax
		movl	-16(%ebp),	%edx
		movl	%eax,	%edx
		movl	%edx,	-16(%ebp)
		popl	%edx
		popl	%eax
		movl	$827,	-20(%ebp)
		pushl	%eax
		pushl	%edx
		movl	-20(%ebp),	%eax
		movl	-16(%ebp),	%edx
		cmp	%eax,	%edx
		setne	%al
		movzbl	%al,	%edx
		movl	%edx,	-16(%ebp)
		popl	%edx
		popl	%eax
		pushl	%eax
		pushl	%edx
		xorl	%eax,	%eax
		movl	-16(%ebp),	%edx
		cmp	%edx,	%eax
		setne	%al
		movl	-12(%ebp),	%edx
		imull	%eax,	%edx
		xorl	%eax,	%eax
		cmp	%edx,	%eax
		setne	%al
		movl	%eax,	-12(%ebp)
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
		setge	%al
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
		setle	%al
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
