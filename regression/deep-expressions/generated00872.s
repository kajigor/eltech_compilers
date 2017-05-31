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
		movl	x3,	%eax
		movl	%ebx,	%edx
		movl	%eax,	%edx
		movl	%edx,	%ebx
		popl	%edx
		popl	%eax
		movl	$314,	%ecx
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
		movl	x0,	%eax
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
		movl	$79,	%ecx
		movl	$338,	%esi
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
		setg	%al
		movzbl	%al,	%edx
		movl	%edx,	%ebx
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
		setle	%al
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
		movl	x1,	%eax
		movl	%esi,	%edx
		movl	%eax,	%edx
		movl	%edx,	%esi
		popl	%edx
		popl	%eax
		movl	$80,	%edi
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
		setg	%al
		movzbl	%al,	%edx
		movl	%edx,	%ebx
		popl	%edx
		popl	%eax
		movl	$722,	%ecx
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
		subl	%eax,	%edx
		movl	%edx,	%eax
		movl	%edx,	%ecx
		popl	%edx
		popl	%eax
		movl	$41,	%esi
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
		movl	$483,	%edi
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
		movl	x3,	%eax
		movl	%edi,	%edx
		movl	%eax,	%edx
		movl	%edx,	%edi
		popl	%edx
		popl	%eax
		movl	$990,	-4(%ebp)
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
		movl	$290,	%esi
		movl	$83,	%edi
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
		movl	%edi,	%eax
		movl	%esi,	%edx
		subl	%eax,	%edx
		movl	%edx,	%eax
		movl	%edx,	%esi
		popl	%edx
		popl	%eax
		movl	$597,	%edi
		movl	$891,	-4(%ebp)
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
		movl	$324,	-4(%ebp)
		movl	$517,	-8(%ebp)
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
		movl	%ecx,	%eax
		imull	%esi,	%eax
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
		pushl	%eax
		pushl	%edx
		movl	x2,	%eax
		movl	%ecx,	%edx
		movl	%eax,	%edx
		movl	%edx,	%ecx
		popl	%edx
		popl	%eax
		movl	$123,	%esi
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
		movl	x3,	%eax
		movl	%esi,	%edx
		movl	%eax,	%edx
		movl	%edx,	%esi
		popl	%edx
		popl	%eax
		movl	$873,	%edi
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
		movl	$997,	-4(%ebp)
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
		movl	x3,	%eax
		movl	%esi,	%edx
		movl	%eax,	%edx
		movl	%edx,	%esi
		popl	%edx
		popl	%eax
		movl	$632,	%edi
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
		movl	$983,	-4(%ebp)
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
		movl	$849,	-8(%ebp)
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
		pushl	%eax
		pushl	%edx
		movl	x0,	%eax
		movl	%esi,	%edx
		movl	%eax,	%edx
		movl	%edx,	%esi
		popl	%edx
		popl	%eax
		movl	$613,	%edi
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
		movl	x1,	%eax
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
		movl	$701,	-4(%ebp)
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
		movl	$727,	-4(%ebp)
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
		movl	x3,	%eax
		movl	%edi,	%edx
		movl	%eax,	%edx
		movl	%edx,	%edi
		popl	%edx
		popl	%eax
		movl	$271,	-4(%ebp)
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
		movl	$786,	-4(%ebp)
		movl	$837,	-8(%ebp)
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
		movl	$477,	-4(%ebp)
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
		pushl	%eax
		pushl	%edx
		movl	x2,	%eax
		movl	-8(%ebp),	%edx
		movl	%eax,	%edx
		movl	%edx,	-8(%ebp)
		popl	%edx
		popl	%eax
		movl	$711,	-12(%ebp)
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
		movl	x1,	%eax
		movl	%ecx,	%edx
		movl	%eax,	%edx
		movl	%edx,	%ecx
		popl	%edx
		popl	%eax
		movl	$271,	%esi
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
		movl	%esi,	%eax
		movl	%ecx,	%edx
		cmp	%eax,	%edx
		setne	%al
		movzbl	%al,	%edx
		movl	%edx,	%ecx
		popl	%edx
		popl	%eax
		movl	$349,	%esi
		movl	$150,	%edi
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
		movl	$952,	%edi
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
		setge	%al
		movzbl	%al,	%edx
		movl	%edx,	%ecx
		popl	%edx
		popl	%eax
		movl	$425,	%esi
		movl	$635,	%edi
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
		setge	%al
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
		movl	$746,	%edi
		movl	$946,	-4(%ebp)
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
		movl	$381,	-4(%ebp)
		movl	$581,	-8(%ebp)
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
		setge	%al
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
		movl	$228,	%edi
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
		movl	$483,	-4(%ebp)
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
		movl	$328,	-4(%ebp)
		movl	$403,	-8(%ebp)
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
		movl	x2,	%eax
		movl	-4(%ebp),	%edx
		movl	%eax,	%edx
		movl	%edx,	-4(%ebp)
		popl	%edx
		popl	%eax
		movl	$258,	-8(%ebp)
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
		setg	%al
		movzbl	%al,	%edx
		movl	%edx,	%ecx
		popl	%edx
		popl	%eax
		movl	$436,	%esi
		movl	$571,	%edi
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
		movl	$833,	%edi
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
		movl	$154,	-4(%ebp)
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
		movl	$621,	%edi
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
		movl	%edi,	%eax
		imull	-4(%ebp),	%eax
		movl	%eax,	%edi
		popl	%edx
		popl	%eax
		movl	$426,	-4(%ebp)
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
		addl	%eax,	%edx
		movl	%edx,	%eax
		movl	%edx,	%esi
		popl	%edx
		popl	%eax
		movl	$777,	%edi
		movl	$484,	-4(%ebp)
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
		movl	$425,	-4(%ebp)
		movl	$853,	-8(%ebp)
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
		subl	%eax,	%edx
		movl	%edx,	%eax
		movl	%edx,	%edi
		popl	%edx
		popl	%eax
		movl	$919,	-4(%ebp)
		movl	$261,	-8(%ebp)
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
		setne	%al
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
		movl	$505,	-8(%ebp)
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
		movl	$647,	-8(%ebp)
		movl	$530,	-12(%ebp)
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
		movl	x1,	%eax
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
		movl	$847,	-16(%ebp)
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
		setl	%al
		movzbl	%al,	%edx
		movl	%edx,	%ebx
		popl	%edx
		popl	%eax
		movl	$154,	%ecx
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
		addl	%eax,	%edx
		movl	%edx,	%eax
		movl	%edx,	%ecx
		popl	%edx
		popl	%eax
		movl	$605,	%esi
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
		movl	$48,	%esi
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
		movl	%esi,	%eax
		movl	%ecx,	%edx
		subl	%eax,	%edx
		movl	%edx,	%eax
		movl	%edx,	%ecx
		popl	%edx
		popl	%eax
		movl	$341,	%esi
		movl	$127,	%edi
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
		movl	$411,	%edi
		movl	$731,	-4(%ebp)
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
		sete	%al
		movzbl	%al,	%edx
		movl	%edx,	%esi
		popl	%edx
		popl	%eax
		movl	$418,	%edi
		movl	$300,	-4(%ebp)
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
		movl	$485,	-4(%ebp)
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
		sete	%al
		movzbl	%al,	%edx
		movl	%edx,	%ecx
		popl	%edx
		popl	%eax
		movl	$794,	%esi
		movl	$337,	%edi
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
		movl	$344,	%edi
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
		movl	x3,	%eax
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
		movl	$41,	-8(%ebp)
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
		addl	%eax,	%edx
		movl	%edx,	%eax
		movl	%edx,	%edi
		popl	%edx
		popl	%eax
		movl	$153,	-4(%ebp)
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
		movl	$49,	-8(%ebp)
		movl	$386,	-12(%ebp)
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
		movl	%ecx,	%eax
		imull	%esi,	%eax
		movl	%eax,	%ecx
		popl	%edx
		popl	%eax
		movl	$103,	%esi
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
		movl	%esi,	%eax
		imull	%edi,	%eax
		movl	%eax,	%esi
		popl	%edx
		popl	%eax
		movl	$575,	%edi
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
		movl	$982,	-4(%ebp)
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
		movl	$355,	-8(%ebp)
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
		movl	x1,	%eax
		movl	%edi,	%edx
		movl	%eax,	%edx
		movl	%edx,	%edi
		popl	%edx
		popl	%eax
		movl	$914,	-4(%ebp)
		pushl	%eax
		pushl	%edx
		movl	-4(%ebp),	%eax
		movl	%edi,	%edx
		subl	%eax,	%edx
		movl	%edx,	%eax
		movl	%edx,	%edi
		popl	%edx
		popl	%eax
		movl	$540,	-4(%ebp)
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
		cmp	%eax,	%edx
		setge	%al
		movzbl	%al,	%edx
		movl	%edx,	-4(%ebp)
		popl	%edx
		popl	%eax
		movl	$628,	-8(%ebp)
		movl	$123,	-12(%ebp)
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
		xorl	%eax,	%eax
		movl	%edi,	%edx
		orl	%esi,	%edx
		cmp	%edx,	%eax
		setne	%al
		movl	%eax,	%esi
		popl	%edx
		popl	%eax
		movl	$490,	%edi
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
		movl	$198,	-4(%ebp)
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
		orl	-4(%ebp),	%edx
		cmp	%edx,	%eax
		setne	%al
		movl	%eax,	-4(%ebp)
		popl	%edx
		popl	%eax
		movl	$385,	-8(%ebp)
		movl	$598,	-12(%ebp)
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
		movl	x2,	%eax
		movl	-4(%ebp),	%edx
		movl	%eax,	%edx
		movl	%edx,	-4(%ebp)
		popl	%edx
		popl	%eax
		movl	$913,	-8(%ebp)
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
		movl	$885,	-8(%ebp)
		movl	$650,	-12(%ebp)
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
		movl	$588,	-8(%ebp)
		movl	$686,	-12(%ebp)
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
		movl	$735,	-12(%ebp)
		movl	$686,	-16(%ebp)
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
		movl	$283,	%esi
		movl	$826,	%edi
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
		movl	%edi,	%eax
		movl	%esi,	%edx
		cmp	%eax,	%edx
		setge	%al
		movzbl	%al,	%edx
		movl	%edx,	%esi
		popl	%edx
		popl	%eax
		movl	$757,	%edi
		movl	$223,	-4(%ebp)
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
		movl	$235,	-4(%ebp)
		movl	$97,	-8(%ebp)
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
		movl	$73,	-4(%ebp)
		movl	$178,	-8(%ebp)
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
		movl	x1,	%eax
		movl	-8(%ebp),	%edx
		movl	%eax,	%edx
		movl	%edx,	-8(%ebp)
		popl	%edx
		popl	%eax
		movl	$256,	-12(%ebp)
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
		movl	x1,	%eax
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
		movl	$711,	-8(%ebp)
		pushl	%eax
		pushl	%edx
		movl	-4(%ebp),	%eax
		imull	-8(%ebp),	%eax
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
		movl	$100,	-4(%ebp)
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
		movl	$325,	-8(%ebp)
		movl	$644,	-12(%ebp)
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
		movl	$909,	-4(%ebp)
		pushl	%eax
		pushl	%edx
		movl	-4(%ebp),	%eax
		movl	%edi,	%edx
		addl	%eax,	%edx
		movl	%edx,	%eax
		movl	%edx,	%edi
		popl	%edx
		popl	%eax
		movl	$835,	-4(%ebp)
		movl	$235,	-8(%ebp)
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
		movl	$756,	-8(%ebp)
		movl	$332,	-12(%ebp)
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
		setg	%al
		movzbl	%al,	%edx
		movl	%edx,	%edi
		popl	%edx
		popl	%eax
		movl	$499,	-4(%ebp)
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
		movl	$407,	-8(%ebp)
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
		setle	%al
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
		movl	$84,	-12(%ebp)
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
		movl	$114,	-12(%ebp)
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
		movl	$565,	-4(%ebp)
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
		setle	%al
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
		addl	%eax,	%edx
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
		movl	$146,	-16(%ebp)
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
		movl	$166,	-8(%ebp)
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
		movl	$858,	-12(%ebp)
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
		cmp	%eax,	%edx
		setle	%al
		movzbl	%al,	%edx
		movl	%edx,	-8(%ebp)
		popl	%edx
		popl	%eax
		movl	$833,	-12(%ebp)
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
		setg	%al
		movzbl	%al,	%edx
		movl	%edx,	-12(%ebp)
		popl	%edx
		popl	%eax
		movl	$699,	-16(%ebp)
		movl	$135,	-20(%ebp)
		pushl	%eax
		pushl	%edx
		movl	-20(%ebp),	%eax
		movl	-16(%ebp),	%edx
		addl	%eax,	%edx
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
