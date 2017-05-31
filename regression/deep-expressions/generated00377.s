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
		movl	$19,	%ebx
		pushl	%eax
		pushl	%edx
		movl	x2,	%eax
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
		setne	%al
		movzbl	%al,	%edx
		movl	%edx,	%ebx
		popl	%edx
		popl	%eax
		movl	$573,	%ecx
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
		addl	%eax,	%edx
		movl	%edx,	%eax
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
		movl	$954,	%esi
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
		movl	$246,	%esi
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
		movl	%ecx,	%eax
		movl	%ebx,	%edx
		cmp	%eax,	%edx
		setl	%al
		movzbl	%al,	%edx
		movl	%edx,	%ebx
		popl	%edx
		popl	%eax
		movl	$993,	%ecx
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
		xorl	%eax,	%eax
		movl	%esi,	%edx
		orl	%ecx,	%edx
		cmp	%edx,	%eax
		setne	%al
		movl	%eax,	%ecx
		popl	%edx
		popl	%eax
		movl	$411,	%esi
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
		movl	x3,	%eax
		movl	%esi,	%edx
		movl	%eax,	%edx
		movl	%edx,	%esi
		popl	%edx
		popl	%eax
		movl	$699,	%edi
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
		movl	$432,	%edi
		movl	$647,	-4(%ebp)
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
		setg	%al
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
		movl	$147,	%ecx
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
		setne	%al
		movzbl	%al,	%edx
		movl	%edx,	%ecx
		popl	%edx
		popl	%eax
		movl	$994,	%esi
		movl	$245,	%edi
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
		subl	%eax,	%edx
		movl	%edx,	%eax
		movl	%edx,	%ecx
		popl	%edx
		popl	%eax
		movl	$363,	%esi
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
		movl	$349,	%edi
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
		movl	%esi,	%eax
		movl	%ecx,	%edx
		cmp	%eax,	%edx
		setle	%al
		movzbl	%al,	%edx
		movl	%edx,	%ecx
		popl	%edx
		popl	%eax
		movl	$672,	%esi
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
		addl	%eax,	%edx
		movl	%edx,	%eax
		movl	%edx,	%esi
		popl	%edx
		popl	%eax
		movl	$996,	%edi
		movl	$853,	-4(%ebp)
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
		movl	x3,	%eax
		movl	-4(%ebp),	%edx
		movl	%eax,	%edx
		movl	%edx,	-4(%ebp)
		popl	%edx
		popl	%eax
		movl	$835,	-8(%ebp)
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
		movl	%ebx,	%eax
		imull	%ecx,	%eax
		movl	%eax,	%ebx
		popl	%edx
		popl	%eax
		movl	$330,	%ecx
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
		movl	%esi,	%eax
		movl	%ecx,	%edx
		cmp	%eax,	%edx
		setle	%al
		movzbl	%al,	%edx
		movl	%edx,	%ecx
		popl	%edx
		popl	%eax
		movl	$878,	%esi
		movl	$334,	%edi
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
		addl	%eax,	%edx
		movl	%edx,	%eax
		movl	%edx,	%ecx
		popl	%edx
		popl	%eax
		movl	$597,	%esi
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
		movl	$675,	%edi
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
		movl	$636,	%esi
		movl	$431,	%edi
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
		movl	$88,	%edi
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
		setle	%al
		movzbl	%al,	%edx
		movl	%edx,	%esi
		popl	%edx
		popl	%eax
		movl	$406,	%edi
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
		addl	%eax,	%edx
		movl	%edx,	%eax
		movl	%edx,	%edi
		popl	%edx
		popl	%eax
		movl	$824,	-4(%ebp)
		movl	$418,	-8(%ebp)
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
		subl	%eax,	%edx
		movl	%edx,	%eax
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
		movl	$511,	%edi
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
		movl	$619,	-4(%ebp)
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
		movl	$902,	%edi
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
		subl	%eax,	%edx
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
		movl	$831,	%edi
		movl	$153,	-4(%ebp)
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
		movl	$561,	-4(%ebp)
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
		movl	$734,	-4(%ebp)
		movl	$795,	-8(%ebp)
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
		setge	%al
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
		movl	%ecx,	%eax
		movl	%ebx,	%edx
		subl	%eax,	%edx
		movl	%edx,	%eax
		movl	%edx,	%ebx
		popl	%edx
		popl	%eax
		movl	$958,	%ecx
		movl	$82,	%esi
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
		movl	$326,	%esi
		movl	$983,	%edi
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
		sete	%al
		movzbl	%al,	%edx
		movl	%edx,	%ecx
		popl	%edx
		popl	%eax
		movl	$372,	%esi
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
		pushl	%eax
		pushl	%edx
		movl	%esi,	%eax
		movl	%ecx,	%edx
		addl	%eax,	%edx
		movl	%edx,	%eax
		movl	%edx,	%ecx
		popl	%edx
		popl	%eax
		movl	$974,	%esi
		movl	$806,	%edi
		pushl	%eax
		pushl	%edx
		movl	%edi,	%eax
		movl	%esi,	%edx
		subl	%eax,	%edx
		movl	%edx,	%eax
		movl	%edx,	%esi
		popl	%edx
		popl	%eax
		movl	$860,	%edi
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
		xorl	%eax,	%eax
		movl	%edi,	%edx
		orl	%esi,	%edx
		cmp	%edx,	%eax
		setne	%al
		movl	%eax,	%esi
		popl	%edx
		popl	%eax
		movl	$646,	%edi
		movl	$211,	-4(%ebp)
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
		movl	$652,	-4(%ebp)
		movl	$461,	-8(%ebp)
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
		movl	x3,	%eax
		movl	%esi,	%edx
		movl	%eax,	%edx
		movl	%edx,	%esi
		popl	%edx
		popl	%eax
		movl	$18,	%edi
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
		movl	$702,	-4(%ebp)
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
		addl	%eax,	%edx
		movl	%edx,	%eax
		movl	%edx,	%esi
		popl	%edx
		popl	%eax
		movl	$675,	%edi
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
		setl	%al
		movzbl	%al,	%edx
		movl	%edx,	%edi
		popl	%edx
		popl	%eax
		movl	$957,	-4(%ebp)
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
		movl	$498,	-4(%ebp)
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
		setge	%al
		movzbl	%al,	%edx
		movl	%edx,	%edi
		popl	%edx
		popl	%eax
		movl	$664,	-4(%ebp)
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
		movl	$63,	-8(%ebp)
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
		movl	$341,	%edi
		pushl	%eax
		pushl	%edx
		movl	%esi,	%eax
		imull	%edi,	%eax
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
		subl	%eax,	%edx
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
		pushl	%eax
		pushl	%edx
		movl	x1,	%eax
		movl	%edi,	%edx
		movl	%eax,	%edx
		movl	%edx,	%edi
		popl	%edx
		popl	%eax
		movl	$701,	-4(%ebp)
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
		movl	$824,	-4(%ebp)
		movl	$478,	-8(%ebp)
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
		setg	%al
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
		movl	$824,	%edi
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
		movl	-4(%ebp),	%eax
		movl	%edi,	%edx
		cmp	%eax,	%edx
		setne	%al
		movzbl	%al,	%edx
		movl	%edx,	%edi
		popl	%edx
		popl	%eax
		movl	$255,	-4(%ebp)
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
		setg	%al
		movzbl	%al,	%edx
		movl	%edx,	-4(%ebp)
		popl	%edx
		popl	%eax
		movl	$184,	-8(%ebp)
		movl	$901,	-12(%ebp)
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
		movl	-4(%ebp),	%eax
		movl	%edi,	%edx
		subl	%eax,	%edx
		movl	%edx,	%eax
		movl	%edx,	%edi
		popl	%edx
		popl	%eax
		movl	$714,	-4(%ebp)
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
		movl	$989,	-8(%ebp)
		movl	$812,	-12(%ebp)
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
		movl	$159,	-4(%ebp)
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
		movl	$605,	-8(%ebp)
		movl	$268,	-12(%ebp)
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
		movl	x1,	%eax
		movl	-8(%ebp),	%edx
		movl	%eax,	%edx
		movl	%edx,	-8(%ebp)
		popl	%edx
		popl	%eax
		movl	$73,	-12(%ebp)
		pushl	%eax
		pushl	%edx
		movl	-8(%ebp),	%eax
		imull	-12(%ebp),	%eax
		movl	%eax,	-8(%ebp)
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
		movl	$555,	-16(%ebp)
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
		setne	%al
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
		subl	%eax,	%edx
		movl	%edx,	%eax
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
		movl	$114,	%edi
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
		movl	$42,	%edi
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
		setne	%al
		movzbl	%al,	%edx
		movl	%edx,	%ecx
		popl	%edx
		popl	%eax
		movl	$430,	%esi
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
		movl	$806,	%edi
		movl	$138,	-4(%ebp)
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
		movl	$455,	%edi
		movl	$504,	-4(%ebp)
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
		movl	$522,	-4(%ebp)
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
		setge	%al
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
		movl	$634,	%edi
		pushl	%eax
		pushl	%edx
		movl	%edi,	%eax
		movl	%esi,	%edx
		addl	%eax,	%edx
		movl	%edx,	%eax
		movl	%edx,	%esi
		popl	%edx
		popl	%eax
		movl	$625,	%edi
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
		setle	%al
		movzbl	%al,	%edx
		movl	%edx,	%edi
		popl	%edx
		popl	%eax
		movl	$738,	-4(%ebp)
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
		movl	$756,	%edi
		movl	$308,	-4(%ebp)
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
		movl	x1,	%eax
		movl	-4(%ebp),	%edx
		movl	%eax,	%edx
		movl	%edx,	-4(%ebp)
		popl	%edx
		popl	%eax
		movl	$263,	-8(%ebp)
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
		movl	x3,	%eax
		movl	-8(%ebp),	%edx
		movl	%eax,	%edx
		movl	%edx,	-8(%ebp)
		popl	%edx
		popl	%eax
		movl	$533,	-12(%ebp)
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
		movl	x2,	%eax
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
		setle	%al
		movzbl	%al,	%edx
		movl	%edx,	%esi
		popl	%edx
		popl	%eax
		movl	$102,	%edi
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
		movl	$5,	%edi
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
		movl	$936,	-8(%ebp)
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
		cmp	%eax,	%edx
		sete	%al
		movzbl	%al,	%edx
		movl	%edx,	%esi
		popl	%edx
		popl	%eax
		movl	$73,	%edi
		movl	$913,	-4(%ebp)
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
		movl	x3,	%eax
		movl	-4(%ebp),	%edx
		movl	%eax,	%edx
		movl	%edx,	-4(%ebp)
		popl	%edx
		popl	%eax
		movl	$256,	-8(%ebp)
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
		movl	$623,	-4(%ebp)
		movl	$223,	-8(%ebp)
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
		movl	$426,	-8(%ebp)
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
		setne	%al
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
		movl	$420,	-4(%ebp)
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
		movl	$225,	-4(%ebp)
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
		setge	%al
		movzbl	%al,	%edx
		movl	%edx,	%edi
		popl	%edx
		popl	%eax
		movl	$854,	-4(%ebp)
		movl	$686,	-8(%ebp)
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
		movl	$944,	-12(%ebp)
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
		movl	x3,	%eax
		movl	-4(%ebp),	%edx
		movl	%eax,	%edx
		movl	%edx,	-4(%ebp)
		popl	%edx
		popl	%eax
		movl	$267,	-8(%ebp)
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
		movl	$226,	-12(%ebp)
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
		setl	%al
		movzbl	%al,	%edx
		movl	%edx,	-4(%ebp)
		popl	%edx
		popl	%eax
		movl	$270,	-8(%ebp)
		movl	$963,	-12(%ebp)
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
		movl	x0,	%eax
		movl	-12(%ebp),	%edx
		movl	%eax,	%edx
		movl	%edx,	-12(%ebp)
		popl	%edx
		popl	%eax
		movl	$994,	-16(%ebp)
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
		movl	%esi,	%eax
		movl	%ecx,	%edx
		cmp	%eax,	%edx
		setl	%al
		movzbl	%al,	%edx
		movl	%edx,	%ecx
		popl	%edx
		popl	%eax
		movl	$531,	%esi
		movl	$359,	%edi
		pushl	%eax
		pushl	%edx
		movl	%edi,	%eax
		movl	%esi,	%edx
		addl	%eax,	%edx
		movl	%edx,	%eax
		movl	%edx,	%esi
		popl	%edx
		popl	%eax
		movl	$433,	%edi
		movl	$412,	-4(%ebp)
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
		movl	$747,	%edi
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
		movl	$563,	-4(%ebp)
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
		movl	$401,	-4(%ebp)
		movl	$990,	-8(%ebp)
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
		movl	%edi,	%eax
		imull	-4(%ebp),	%eax
		movl	%eax,	%edi
		popl	%edx
		popl	%eax
		movl	$29,	-4(%ebp)
		movl	$702,	-8(%ebp)
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
		movl	x3,	%eax
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
		setg	%al
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
		setne	%al
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
		movl	$347,	-4(%ebp)
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
		movl	$703,	-4(%ebp)
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
		sete	%al
		movzbl	%al,	%edx
		movl	%edx,	%edi
		popl	%edx
		popl	%eax
		movl	$373,	-4(%ebp)
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
		setg	%al
		movzbl	%al,	%edx
		movl	%edx,	-4(%ebp)
		popl	%edx
		popl	%eax
		movl	$632,	-8(%ebp)
		movl	$432,	-12(%ebp)
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
		movl	$924,	-12(%ebp)
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
		movl	$115,	-8(%ebp)
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
		movl	x1,	%eax
		movl	-12(%ebp),	%edx
		movl	%eax,	%edx
		movl	%edx,	-12(%ebp)
		popl	%edx
		popl	%eax
		movl	$316,	-16(%ebp)
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
		addl	%eax,	%edx
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
		setg	%al
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
		setle	%al
		movzbl	%al,	%edx
		movl	%edx,	%edi
		popl	%edx
		popl	%eax
		movl	$569,	-4(%ebp)
		movl	$259,	-8(%ebp)
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
		movl	$426,	-8(%ebp)
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
		setge	%al
		movzbl	%al,	%edx
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
		movl	-4(%ebp),	%eax
		movl	%edi,	%edx
		cmp	%eax,	%edx
		setl	%al
		movzbl	%al,	%edx
		movl	%edx,	%edi
		popl	%edx
		popl	%eax
		movl	$249,	-4(%ebp)
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
		setne	%al
		movzbl	%al,	%edx
		movl	%edx,	-4(%ebp)
		popl	%edx
		popl	%eax
		movl	$747,	-8(%ebp)
		movl	$19,	-12(%ebp)
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
		setne	%al
		movzbl	%al,	%edx
		movl	%edx,	-4(%ebp)
		popl	%edx
		popl	%eax
		movl	$759,	-8(%ebp)
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
		movl	$284,	-12(%ebp)
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
		movl	-16(%ebp),	%eax
		movl	-12(%ebp),	%edx
		cmp	%eax,	%edx
		setl	%al
		movzbl	%al,	%edx
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
		movl	$208,	-4(%ebp)
		movl	$493,	-8(%ebp)
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
		movl	$624,	-8(%ebp)
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
		movl	$658,	-8(%ebp)
		movl	$23,	-12(%ebp)
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
		movl	x3,	%eax
		movl	-12(%ebp),	%edx
		movl	%eax,	%edx
		movl	%edx,	-12(%ebp)
		popl	%edx
		popl	%eax
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
		movl	x3,	%eax
		movl	-8(%ebp),	%edx
		movl	%eax,	%edx
		movl	%edx,	-8(%ebp)
		popl	%edx
		popl	%eax
		movl	$165,	-12(%ebp)
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
		movl	$157,	-16(%ebp)
		pushl	%eax
		pushl	%edx
		movl	-16(%ebp),	%eax
		movl	-12(%ebp),	%edx
		cmp	%eax,	%edx
		setg	%al
		movzbl	%al,	%edx
		movl	%edx,	-12(%ebp)
		popl	%edx
		popl	%eax
		pushl	%eax
		pushl	%edx
		movl	x3,	%eax
		movl	-16(%ebp),	%edx
		movl	%eax,	%edx
		movl	%edx,	-16(%ebp)
		popl	%edx
		popl	%eax
		movl	$548,	-20(%ebp)
		pushl	%eax
		pushl	%edx
		movl	-20(%ebp),	%eax
		movl	-16(%ebp),	%edx
		cmp	%eax,	%edx
		setl	%al
		movzbl	%al,	%edx
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
		setne	%al
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
		addl	%eax,	%edx
		movl	%edx,	%eax
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
