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
		movl	$637,	%ebx
		movl	$95,	%ecx
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
		movl	$490,	%ecx
		movl	$273,	%esi
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
		movl	$329,	%ecx
		movl	$139,	%esi
		pushl	%eax
		pushl	%edx
		movl	%esi,	%eax
		movl	%ecx,	%edx
		addl	%eax,	%edx
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
		movl	%ecx,	%eax
		movl	%ebx,	%edx
		cmp	%eax,	%edx
		setle	%al
		movzbl	%al,	%edx
		movl	%edx,	%ebx
		popl	%edx
		popl	%eax
		movl	$727,	%ecx
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
		movl	%ecx,	%eax
		imull	%esi,	%eax
		movl	%eax,	%ecx
		popl	%edx
		popl	%eax
		movl	$893,	%esi
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
		setg	%al
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
		movl	x0,	%eax
		movl	%esi,	%edx
		movl	%eax,	%edx
		movl	%edx,	%esi
		popl	%edx
		popl	%eax
		movl	$870,	%edi
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
		movl	$895,	%ecx
		movl	$455,	%esi
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
		sete	%al
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
		movl	$409,	%edi
		pushl	%eax
		pushl	%edx
		movl	%esi,	%eax
		imull	%edi,	%eax
		movl	%eax,	%esi
		popl	%edx
		popl	%eax
		movl	$350,	%edi
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
		movl	%esi,	%eax
		movl	%ecx,	%edx
		cmp	%eax,	%edx
		setne	%al
		movzbl	%al,	%edx
		movl	%edx,	%ecx
		popl	%edx
		popl	%eax
		movl	$642,	%esi
		movl	$321,	%edi
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
		setge	%al
		movzbl	%al,	%edx
		movl	%edx,	%esi
		popl	%edx
		popl	%eax
		movl	$819,	%edi
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
		movl	$567,	-4(%ebp)
		movl	$570,	-8(%ebp)
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
		addl	%eax,	%edx
		movl	%edx,	%eax
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
		movl	$129,	%esi
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
		movl	$275,	%edi
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
		movl	$357,	%esi
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
		setl	%al
		movzbl	%al,	%edx
		movl	%edx,	%esi
		popl	%edx
		popl	%eax
		movl	$215,	%edi
		movl	$122,	-4(%ebp)
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
		subl	%eax,	%edx
		movl	%edx,	%eax
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
		movl	$832,	%edi
		movl	$976,	-4(%ebp)
		pushl	%eax
		pushl	%edx
		movl	-4(%ebp),	%eax
		movl	%edi,	%edx
		addl	%eax,	%edx
		movl	%edx,	%eax
		movl	%edx,	%edi
		popl	%edx
		popl	%eax
		movl	$542,	-4(%ebp)
		movl	$406,	-8(%ebp)
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
		subl	%eax,	%edx
		movl	%edx,	%eax
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
		movl	$589,	-4(%ebp)
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
		movl	x0,	%eax
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
		subl	%eax,	%edx
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
		movl	x1,	%eax
		movl	%edi,	%edx
		movl	%eax,	%edx
		movl	%edx,	%edi
		popl	%edx
		popl	%eax
		movl	$813,	-4(%ebp)
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
		setl	%al
		movzbl	%al,	%edx
		movl	%edx,	%edi
		popl	%edx
		popl	%eax
		movl	$979,	-4(%ebp)
		movl	$564,	-8(%ebp)
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
		subl	%eax,	%edx
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
		setne	%al
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
		movl	%ecx,	%eax
		movl	%ebx,	%edx
		cmp	%eax,	%edx
		setl	%al
		movzbl	%al,	%edx
		movl	%edx,	%ebx
		popl	%edx
		popl	%eax
		movl	$167,	%ecx
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
		movl	x3,	%eax
		movl	%edi,	%edx
		movl	%eax,	%edx
		movl	%edx,	%edi
		popl	%edx
		popl	%eax
		movl	$893,	-4(%ebp)
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
		movl	$306,	%esi
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
		setne	%al
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
		movl	$157,	-4(%ebp)
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
		movl	x3,	%eax
		movl	%esi,	%edx
		movl	%eax,	%edx
		movl	%edx,	%esi
		popl	%edx
		popl	%eax
		movl	$786,	%edi
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
		movl	$925,	%edi
		movl	$152,	-4(%ebp)
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
		movl	$235,	%edi
		movl	$309,	-4(%ebp)
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
		movl	$410,	-8(%ebp)
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
		cmp	%eax,	%edx
		setne	%al
		movzbl	%al,	%edx
		movl	%edx,	%edi
		popl	%edx
		popl	%eax
		movl	$347,	-4(%ebp)
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
		movl	$399,	-8(%ebp)
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
		movl	$149,	-8(%ebp)
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
		movl	%esi,	%eax
		movl	%ecx,	%edx
		cmp	%eax,	%edx
		setge	%al
		movzbl	%al,	%edx
		movl	%edx,	%ecx
		popl	%edx
		popl	%eax
		movl	$415,	%esi
		movl	$803,	%edi
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
		movl	$637,	%edi
		movl	$453,	-4(%ebp)
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
		orl	%esi,	%edx
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
		movl	$530,	-4(%ebp)
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
		movl	$505,	-4(%ebp)
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
		setg	%al
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
		movl	$22,	%edi
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
		movl	$788,	-4(%ebp)
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
		movl	x0,	%eax
		movl	-8(%ebp),	%edx
		movl	%eax,	%edx
		movl	%edx,	-8(%ebp)
		popl	%edx
		popl	%eax
		movl	$324,	-12(%ebp)
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
		movl	-4(%ebp),	%eax
		imull	-8(%ebp),	%eax
		movl	%eax,	-4(%ebp)
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
		movl	x0,	%eax
		movl	%edi,	%edx
		movl	%eax,	%edx
		movl	%edx,	%edi
		popl	%edx
		popl	%eax
		movl	$610,	-4(%ebp)
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
		movl	$885,	-8(%ebp)
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
		addl	%eax,	%edx
		movl	%edx,	%eax
		movl	%edx,	%edi
		popl	%edx
		popl	%eax
		movl	$427,	-4(%ebp)
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
		setge	%al
		movzbl	%al,	%edx
		movl	%edx,	-4(%ebp)
		popl	%edx
		popl	%eax
		movl	$126,	-8(%ebp)
		movl	$534,	-12(%ebp)
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
		setne	%al
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
		movl	$875,	-8(%ebp)
		movl	$286,	-12(%ebp)
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
		movl	$353,	-8(%ebp)
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
		movl	$577,	-16(%ebp)
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
		movl	$872,	%ecx
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
		movl	$675,	%esi
		movl	$74,	%edi
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
		pushl	%eax
		pushl	%edx
		movl	x0,	%eax
		movl	%esi,	%edx
		movl	%eax,	%edx
		movl	%edx,	%esi
		popl	%edx
		popl	%eax
		movl	$487,	%edi
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
		movl	$596,	%edi
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
		xorl	%eax,	%eax
		movl	%esi,	%edx
		orl	%ecx,	%edx
		cmp	%edx,	%eax
		setne	%al
		movl	%eax,	%ecx
		popl	%edx
		popl	%eax
		movl	$621,	%esi
		movl	$600,	%edi
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
		movl	$645,	%edi
		movl	$522,	-4(%ebp)
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
		movl	%esi,	%eax
		imull	%edi,	%eax
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
		movl	$48,	-4(%ebp)
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
		movl	$956,	-8(%ebp)
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
		setge	%al
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
		movl	$807,	%esi
		movl	$481,	%edi
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
		movl	$81,	%edi
		movl	$285,	-4(%ebp)
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
		subl	%eax,	%edx
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
		movl	$845,	-4(%ebp)
		movl	$418,	-8(%ebp)
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
		movl	$525,	%edi
		movl	$123,	-4(%ebp)
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
		movl	$773,	-4(%ebp)
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
		xorl	%eax,	%eax
		movl	-4(%ebp),	%edx
		orl	%edi,	%edx
		cmp	%edx,	%eax
		setne	%al
		movl	%eax,	%edi
		popl	%edx
		popl	%eax
		movl	$675,	-4(%ebp)
		movl	$175,	-8(%ebp)
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
		movl	x0,	%eax
		movl	-8(%ebp),	%edx
		movl	%eax,	%edx
		movl	%edx,	-8(%ebp)
		popl	%edx
		popl	%eax
		movl	$152,	-12(%ebp)
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
		addl	%eax,	%edx
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
		movl	$885,	%esi
		movl	$353,	%edi
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
		movl	$645,	%edi
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
		setne	%al
		movzbl	%al,	%edx
		movl	%edx,	%esi
		popl	%edx
		popl	%eax
		movl	$355,	%edi
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
		movl	x0,	%eax
		movl	-4(%ebp),	%edx
		movl	%eax,	%edx
		movl	%edx,	-4(%ebp)
		popl	%edx
		popl	%eax
		movl	$953,	-8(%ebp)
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
		addl	%eax,	%edx
		movl	%edx,	%eax
		movl	%edx,	%edi
		popl	%edx
		popl	%eax
		movl	$37,	-4(%ebp)
		movl	$258,	-8(%ebp)
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
		movl	$347,	-8(%ebp)
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
		setg	%al
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
		setle	%al
		movzbl	%al,	%edx
		movl	%edx,	%esi
		popl	%edx
		popl	%eax
		movl	$881,	%edi
		movl	$804,	-4(%ebp)
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
		movl	$600,	-4(%ebp)
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
		movl	$144,	-4(%ebp)
		movl	$942,	-8(%ebp)
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
		movl	x1,	%eax
		movl	-8(%ebp),	%edx
		movl	%eax,	%edx
		movl	%edx,	-8(%ebp)
		popl	%edx
		popl	%eax
		movl	$519,	-12(%ebp)
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
		setg	%al
		movzbl	%al,	%edx
		movl	%edx,	%edi
		popl	%edx
		popl	%eax
		movl	$306,	-4(%ebp)
		movl	$674,	-8(%ebp)
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
		movl	$116,	-8(%ebp)
		movl	$517,	-12(%ebp)
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
		movl	x2,	%eax
		movl	-12(%ebp),	%edx
		movl	%eax,	%edx
		movl	%edx,	-12(%ebp)
		popl	%edx
		popl	%eax
		movl	$21,	-16(%ebp)
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
		setne	%al
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
		movl	$338,	%esi
		movl	$622,	%edi
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
		setge	%al
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
		movl	$284,	-8(%ebp)
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
		setne	%al
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
		movl	$271,	-4(%ebp)
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
		movl	$860,	-8(%ebp)
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
		setg	%al
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
		movl	$589,	-4(%ebp)
		pushl	%eax
		pushl	%edx
		movl	%edi,	%eax
		imull	-4(%ebp),	%eax
		movl	%eax,	%edi
		popl	%edx
		popl	%eax
		movl	$897,	-4(%ebp)
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
		setg	%al
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
		movl	$595,	-8(%ebp)
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
		movl	x1,	%eax
		movl	-8(%ebp),	%edx
		movl	%eax,	%edx
		movl	%edx,	-8(%ebp)
		popl	%edx
		popl	%eax
		movl	$655,	-12(%ebp)
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
		movl	$883,	-8(%ebp)
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
		movl	$1,	-8(%ebp)
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
		movl	x1,	%eax
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
		setge	%al
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
		movl	x1,	%eax
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
		movl	$580,	-4(%ebp)
		movl	$292,	-8(%ebp)
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
		sete	%al
		movzbl	%al,	%edx
		movl	%edx,	%edi
		popl	%edx
		popl	%eax
		movl	$765,	-4(%ebp)
		movl	$937,	-8(%ebp)
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
		movl	$452,	-4(%ebp)
		movl	$594,	-8(%ebp)
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
		movl	$183,	-8(%ebp)
		movl	$131,	-12(%ebp)
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
		movl	x2,	%eax
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
		movl	$754,	-12(%ebp)
		pushl	%eax
		pushl	%edx
		movl	x0,	%eax
		movl	-16(%ebp),	%edx
		movl	%eax,	%edx
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
		sete	%al
		movzbl	%al,	%edx
		movl	%edx,	%edi
		popl	%edx
		popl	%eax
		movl	$1,	-4(%ebp)
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
		subl	%eax,	%edx
		movl	%edx,	%eax
		movl	%edx,	-4(%ebp)
		popl	%edx
		popl	%eax
		movl	$949,	-8(%ebp)
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
		setl	%al
		movzbl	%al,	%edx
		movl	%edx,	-4(%ebp)
		popl	%edx
		popl	%eax
		movl	$935,	-8(%ebp)
		movl	$829,	-12(%ebp)
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
		movl	x0,	%eax
		movl	-12(%ebp),	%edx
		movl	%eax,	%edx
		movl	%edx,	-12(%ebp)
		popl	%edx
		popl	%eax
		movl	$427,	-16(%ebp)
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
		movl	$25,	-8(%ebp)
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
		setg	%al
		movzbl	%al,	%edx
		movl	%edx,	-8(%ebp)
		popl	%edx
		popl	%eax
		movl	$202,	-12(%ebp)
		movl	$611,	-16(%ebp)
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
		movl	$778,	-12(%ebp)
		movl	$314,	-16(%ebp)
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
		movl	$652,	-16(%ebp)
		pushl	%eax
		pushl	%edx
		movl	x0,	%eax
		movl	-20(%ebp),	%edx
		movl	%eax,	%edx
		movl	%edx,	-20(%ebp)
		popl	%edx
		popl	%eax
		pushl	%eax
		pushl	%edx
		movl	-20(%ebp),	%eax
		movl	-16(%ebp),	%edx
		cmp	%eax,	%edx
		sete	%al
		movzbl	%al,	%edx
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
		xorl	%eax,	%eax
		movl	%ecx,	%edx
		orl	%ebx,	%edx
		cmp	%edx,	%eax
		setne	%al
		movl	%eax,	%ebx
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
