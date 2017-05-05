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
	movl	$535,	%ebx
	movl	$269,	%ecx
	imull	%ecx,	%ebx
	movl	x3,	%ecx
	movl	x3,	%esi
	subl	%esi,	%ecx
	pushl	%eax
	xor	%eax,	%eax
	cmpl	$0,	%ebx
	setne	%al
	movl	%eax,	%ebx
	xor	%eax,	%eax
	cmpl	$0,	%ecx
	setne	%al
	movl	%eax,	%ecx
	orl	%ecx,	%ebx
	popl	%eax
	movl	$601,	%ecx
	movl	$881,	%esi
	subl	%esi,	%ecx
	movl	x1,	%esi
	movl	x3,	%edi
	pushl	%eax
	xor	%eax,	%eax
	cmpl	%edi,	%esi
	setne	%al
	movl	%eax,	%esi
	popl	%eax
	addl	%esi,	%ecx
	imull	%ecx,	%ebx
	movl	x0,	%ecx
	movl	x0,	%esi
	addl	%esi,	%ecx
	movl	x2,	%esi
	movl	$288,	%edi
	pushl	%eax
	xor	%eax,	%eax
	cmpl	$0,	%esi
	setne	%al
	movl	%eax,	%esi
	xor	%eax,	%eax
	cmpl	$0,	%edi
	setne	%al
	movl	%eax,	%edi
	andl	%edi,	%esi
	popl	%eax
	imull	%esi,	%ecx
	movl	$824,	%esi
	movl	x2,	%edi
	pushl	%eax
	xor	%eax,	%eax
	cmpl	%edi,	%esi
	setge	%al
	movl	%eax,	%esi
	popl	%eax
	movl	$263,	%edi
	movl	$519,	-4(%ebp)
	pushl	%eax
	xor	%eax,	%eax
	cmpl	$0,	%edi
	setne	%al
	movl	%eax,	%edi
	xor	%eax,	%eax
	cmpl	$0,	-4(%ebp)
	setne	%al
	movl	%eax,	-4(%ebp)
	andl	-4(%ebp),	%edi
	popl	%eax
	pushl	%eax
	xor	%eax,	%eax
	cmpl	%edi,	%esi
	setge	%al
	movl	%eax,	%esi
	popl	%eax
	pushl	%eax
	xor	%eax,	%eax
	cmpl	%esi,	%ecx
	setge	%al
	movl	%eax,	%ecx
	popl	%eax
	pushl	%eax
	xor	%eax,	%eax
	cmpl	%ecx,	%ebx
	setg	%al
	movl	%eax,	%ebx
	popl	%eax
	movl	$411,	%ecx
	movl	x1,	%esi
	pushl	%eax
	xor	%eax,	%eax
	cmpl	%esi,	%ecx
	setg	%al
	movl	%eax,	%ecx
	popl	%eax
	movl	x0,	%esi
	movl	$35,	%edi
	addl	%edi,	%esi
	addl	%esi,	%ecx
	movl	$517,	%esi
	movl	x1,	%edi
	subl	%edi,	%esi
	movl	$349,	%edi
	movl	$257,	-4(%ebp)
	pushl	%eax
	xor	%eax,	%eax
	cmpl	$0,	%edi
	setne	%al
	movl	%eax,	%edi
	xor	%eax,	%eax
	cmpl	$0,	-4(%ebp)
	setne	%al
	movl	%eax,	-4(%ebp)
	orl	-4(%ebp),	%edi
	popl	%eax
	pushl	%eax
	xor	%eax,	%eax
	cmpl	%edi,	%esi
	setne	%al
	movl	%eax,	%esi
	popl	%eax
	pushl	%eax
	xor	%eax,	%eax
	cmpl	%esi,	%ecx
	setge	%al
	movl	%eax,	%ecx
	popl	%eax
	movl	x1,	%esi
	movl	x3,	%edi
	addl	%edi,	%esi
	movl	x1,	%edi
	movl	$231,	-4(%ebp)
	pushl	%eax
	xor	%eax,	%eax
	cmpl	-4(%ebp),	%edi
	setge	%al
	movl	%eax,	%edi
	popl	%eax
	pushl	%eax
	xor	%eax,	%eax
	cmpl	%edi,	%esi
	setle	%al
	movl	%eax,	%esi
	popl	%eax
	movl	$73,	%edi
	movl	x3,	-4(%ebp)
	pushl	%eax
	xor	%eax,	%eax
	cmpl	-4(%ebp),	%edi
	setl	%al
	movl	%eax,	%edi
	popl	%eax
	movl	x1,	-4(%ebp)
	movl	x2,	-8(%ebp)
	movl	-4(%ebp),	%edx
	pushl	%eax
	xor	%eax,	%eax
	cmpl	$0,	%edx
	setne	%al
	movl	%eax,	%edx
	xor	%eax,	%eax
	cmpl	$0,	-8(%ebp)
	setne	%al
	movl	%eax,	-8(%ebp)
	orl	-8(%ebp),	%edx
	popl	%eax
	movl	%edx,	-4(%ebp)
	pushl	%eax
	xor	%eax,	%eax
	cmpl	$0,	%edi
	setne	%al
	movl	%eax,	%edi
	xor	%eax,	%eax
	cmpl	$0,	-4(%ebp)
	setne	%al
	movl	%eax,	-4(%ebp)
	orl	-4(%ebp),	%edi
	popl	%eax
	addl	%edi,	%esi
	imull	%esi,	%ecx
	pushl	%eax
	xor	%eax,	%eax
	cmpl	%ecx,	%ebx
	setge	%al
	movl	%eax,	%ebx
	popl	%eax
	movl	$406,	%ecx
	movl	$348,	%esi
	pushl	%eax
	xor	%eax,	%eax
	cmpl	%esi,	%ecx
	setge	%al
	movl	%eax,	%ecx
	popl	%eax
	movl	x1,	%esi
	movl	$719,	%edi
	pushl	%eax
	xor	%eax,	%eax
	cmpl	$0,	%esi
	setne	%al
	movl	%eax,	%esi
	xor	%eax,	%eax
	cmpl	$0,	%edi
	setne	%al
	movl	%eax,	%edi
	andl	%edi,	%esi
	popl	%eax
	pushl	%eax
	xor	%eax,	%eax
	cmpl	%esi,	%ecx
	setl	%al
	movl	%eax,	%ecx
	popl	%eax
	movl	$345,	%esi
	movl	x0,	%edi
	pushl	%eax
	xor	%eax,	%eax
	cmpl	$0,	%esi
	setne	%al
	movl	%eax,	%esi
	xor	%eax,	%eax
	cmpl	$0,	%edi
	setne	%al
	movl	%eax,	%edi
	orl	%edi,	%esi
	popl	%eax
	movl	$360,	%edi
	movl	$415,	-4(%ebp)
	pushl	%eax
	xor	%eax,	%eax
	cmpl	-4(%ebp),	%edi
	sete	%al
	movl	%eax,	%edi
	popl	%eax
	pushl	%eax
	xor	%eax,	%eax
	cmpl	%edi,	%esi
	setne	%al
	movl	%eax,	%esi
	popl	%eax
	pushl	%eax
	xor	%eax,	%eax
	cmpl	%esi,	%ecx
	setl	%al
	movl	%eax,	%ecx
	popl	%eax
	movl	$828,	%esi
	movl	x2,	%edi
	pushl	%eax
	xor	%eax,	%eax
	cmpl	%edi,	%esi
	sete	%al
	movl	%eax,	%esi
	popl	%eax
	movl	x0,	%edi
	movl	$652,	-4(%ebp)
	pushl	%eax
	xor	%eax,	%eax
	cmpl	-4(%ebp),	%edi
	setne	%al
	movl	%eax,	%edi
	popl	%eax
	pushl	%eax
	xor	%eax,	%eax
	cmpl	%edi,	%esi
	setge	%al
	movl	%eax,	%esi
	popl	%eax
	movl	x3,	%edi
	movl	x0,	-4(%ebp)
	subl	-4(%ebp),	%edi
	movl	x3,	-4(%ebp)
	movl	x0,	-8(%ebp)
	movl	-4(%ebp),	%edx
	imull	-8(%ebp),	%edx
	movl	%edx,	-4(%ebp)
	pushl	%eax
	xor	%eax,	%eax
	cmpl	-4(%ebp),	%edi
	sete	%al
	movl	%eax,	%edi
	popl	%eax
	addl	%edi,	%esi
	pushl	%eax
	xor	%eax,	%eax
	cmpl	%esi,	%ecx
	setl	%al
	movl	%eax,	%ecx
	popl	%eax
	movl	x0,	%esi
	movl	$926,	%edi
	subl	%edi,	%esi
	movl	$837,	%edi
	movl	x1,	-4(%ebp)
	pushl	%eax
	xor	%eax,	%eax
	cmpl	-4(%ebp),	%edi
	sete	%al
	movl	%eax,	%edi
	popl	%eax
	pushl	%eax
	xor	%eax,	%eax
	cmpl	%edi,	%esi
	setg	%al
	movl	%eax,	%esi
	popl	%eax
	movl	x1,	%edi
	movl	$872,	-4(%ebp)
	pushl	%eax
	xor	%eax,	%eax
	cmpl	-4(%ebp),	%edi
	setge	%al
	movl	%eax,	%edi
	popl	%eax
	movl	$242,	-4(%ebp)
	movl	$531,	-8(%ebp)
	movl	-4(%ebp),	%edx
	pushl	%eax
	xor	%eax,	%eax
	cmpl	-8(%ebp),	%edx
	sete	%al
	movl	%eax,	%edx
	popl	%eax
	movl	%edx,	-4(%ebp)
	imull	-4(%ebp),	%edi
	pushl	%eax
	xor	%eax,	%eax
	cmpl	%edi,	%esi
	sete	%al
	movl	%eax,	%esi
	popl	%eax
	movl	x3,	%edi
	movl	x1,	-4(%ebp)
	pushl	%eax
	xor	%eax,	%eax
	cmpl	$0,	%edi
	setne	%al
	movl	%eax,	%edi
	xor	%eax,	%eax
	cmpl	$0,	-4(%ebp)
	setne	%al
	movl	%eax,	-4(%ebp)
	orl	-4(%ebp),	%edi
	popl	%eax
	movl	x2,	-4(%ebp)
	movl	x2,	-8(%ebp)
	movl	-4(%ebp),	%edx
	pushl	%eax
	xor	%eax,	%eax
	cmpl	-8(%ebp),	%edx
	setne	%al
	movl	%eax,	%edx
	popl	%eax
	movl	%edx,	-4(%ebp)
	pushl	%eax
	xor	%eax,	%eax
	cmpl	$0,	%edi
	setne	%al
	movl	%eax,	%edi
	xor	%eax,	%eax
	cmpl	$0,	-4(%ebp)
	setne	%al
	movl	%eax,	-4(%ebp)
	andl	-4(%ebp),	%edi
	popl	%eax
	movl	x2,	-4(%ebp)
	movl	$815,	-8(%ebp)
	movl	-4(%ebp),	%edx
	pushl	%eax
	xor	%eax,	%eax
	cmpl	-8(%ebp),	%edx
	setne	%al
	movl	%eax,	%edx
	popl	%eax
	movl	%edx,	-4(%ebp)
	movl	$935,	-8(%ebp)
	movl	x0,	-12(%ebp)
	movl	-8(%ebp),	%edx
	pushl	%eax
	xor	%eax,	%eax
	cmpl	-12(%ebp),	%edx
	setl	%al
	movl	%eax,	%edx
	popl	%eax
	movl	%edx,	-8(%ebp)
	movl	-4(%ebp),	%edx
	addl	-8(%ebp),	%edx
	movl	%edx,	-4(%ebp)
	pushl	%eax
	xor	%eax,	%eax
	cmpl	$0,	%edi
	setne	%al
	movl	%eax,	%edi
	xor	%eax,	%eax
	cmpl	$0,	-4(%ebp)
	setne	%al
	movl	%eax,	-4(%ebp)
	orl	-4(%ebp),	%edi
	popl	%eax
	imull	%edi,	%esi
	pushl	%eax
	xor	%eax,	%eax
	cmpl	%esi,	%ecx
	setne	%al
	movl	%eax,	%ecx
	popl	%eax
	addl	%ecx,	%ebx
	movl	x0,	%ecx
	movl	x2,	%esi
	pushl	%eax
	xor	%eax,	%eax
	cmpl	%esi,	%ecx
	setg	%al
	movl	%eax,	%ecx
	popl	%eax
	movl	$654,	%esi
	movl	$947,	%edi
	pushl	%eax
	xor	%eax,	%eax
	cmpl	%edi,	%esi
	setne	%al
	movl	%eax,	%esi
	popl	%eax
	pushl	%eax
	xor	%eax,	%eax
	cmpl	%esi,	%ecx
	setl	%al
	movl	%eax,	%ecx
	popl	%eax
	movl	$239,	%esi
	movl	$548,	%edi
	imull	%edi,	%esi
	movl	x1,	%edi
	movl	x0,	-4(%ebp)
	pushl	%eax
	xor	%eax,	%eax
	cmpl	-4(%ebp),	%edi
	sete	%al
	movl	%eax,	%edi
	popl	%eax
	pushl	%eax
	xor	%eax,	%eax
	cmpl	$0,	%esi
	setne	%al
	movl	%eax,	%esi
	xor	%eax,	%eax
	cmpl	$0,	%edi
	setne	%al
	movl	%eax,	%edi
	orl	%edi,	%esi
	popl	%eax
	addl	%esi,	%ecx
	movl	$839,	%esi
	movl	$192,	%edi
	subl	%edi,	%esi
	movl	x2,	%edi
	movl	$53,	-4(%ebp)
	pushl	%eax
	xor	%eax,	%eax
	cmpl	-4(%ebp),	%edi
	setl	%al
	movl	%eax,	%edi
	popl	%eax
	pushl	%eax
	xor	%eax,	%eax
	cmpl	%edi,	%esi
	setg	%al
	movl	%eax,	%esi
	popl	%eax
	movl	$962,	%edi
	movl	x0,	-4(%ebp)
	pushl	%eax
	xor	%eax,	%eax
	cmpl	$0,	%edi
	setne	%al
	movl	%eax,	%edi
	xor	%eax,	%eax
	cmpl	$0,	-4(%ebp)
	setne	%al
	movl	%eax,	-4(%ebp)
	andl	-4(%ebp),	%edi
	popl	%eax
	movl	x2,	-4(%ebp)
	movl	x3,	-8(%ebp)
	movl	-4(%ebp),	%edx
	addl	-8(%ebp),	%edx
	movl	%edx,	-4(%ebp)
	pushl	%eax
	xor	%eax,	%eax
	cmpl	$0,	%edi
	setne	%al
	movl	%eax,	%edi
	xor	%eax,	%eax
	cmpl	$0,	-4(%ebp)
	setne	%al
	movl	%eax,	-4(%ebp)
	andl	-4(%ebp),	%edi
	popl	%eax
	pushl	%eax
	xor	%eax,	%eax
	cmpl	$0,	%esi
	setne	%al
	movl	%eax,	%esi
	xor	%eax,	%eax
	cmpl	$0,	%edi
	setne	%al
	movl	%eax,	%edi
	orl	%edi,	%esi
	popl	%eax
	pushl	%eax
	xor	%eax,	%eax
	cmpl	%esi,	%ecx
	setne	%al
	movl	%eax,	%ecx
	popl	%eax
	movl	$278,	%esi
	movl	x1,	%edi
	pushl	%eax
	xor	%eax,	%eax
	cmpl	%edi,	%esi
	setle	%al
	movl	%eax,	%esi
	popl	%eax
	movl	x3,	%edi
	movl	$226,	-4(%ebp)
	imull	-4(%ebp),	%edi
	pushl	%eax
	xor	%eax,	%eax
	cmpl	$0,	%esi
	setne	%al
	movl	%eax,	%esi
	xor	%eax,	%eax
	cmpl	$0,	%edi
	setne	%al
	movl	%eax,	%edi
	orl	%edi,	%esi
	popl	%eax
	movl	$3,	%edi
	movl	$89,	-4(%ebp)
	pushl	%eax
	xor	%eax,	%eax
	cmpl	-4(%ebp),	%edi
	setne	%al
	movl	%eax,	%edi
	popl	%eax
	movl	x3,	-4(%ebp)
	movl	x0,	-8(%ebp)
	movl	-4(%ebp),	%edx
	imull	-8(%ebp),	%edx
	movl	%edx,	-4(%ebp)
	pushl	%eax
	xor	%eax,	%eax
	cmpl	$0,	%edi
	setne	%al
	movl	%eax,	%edi
	xor	%eax,	%eax
	cmpl	$0,	-4(%ebp)
	setne	%al
	movl	%eax,	-4(%ebp)
	andl	-4(%ebp),	%edi
	popl	%eax
	imull	%edi,	%esi
	movl	x3,	%edi
	movl	$939,	-4(%ebp)
	pushl	%eax
	xor	%eax,	%eax
	cmpl	-4(%ebp),	%edi
	setle	%al
	movl	%eax,	%edi
	popl	%eax
	movl	x2,	-4(%ebp)
	movl	x2,	-8(%ebp)
	movl	-4(%ebp),	%edx
	pushl	%eax
	xor	%eax,	%eax
	cmpl	-8(%ebp),	%edx
	setle	%al
	movl	%eax,	%edx
	popl	%eax
	movl	%edx,	-4(%ebp)
	addl	-4(%ebp),	%edi
	movl	x1,	-4(%ebp)
	movl	x2,	-8(%ebp)
	movl	-4(%ebp),	%edx
	pushl	%eax
	xor	%eax,	%eax
	cmpl	-8(%ebp),	%edx
	setle	%al
	movl	%eax,	%edx
	popl	%eax
	movl	%edx,	-4(%ebp)
	movl	$314,	-8(%ebp)
	movl	x3,	-12(%ebp)
	movl	-8(%ebp),	%edx
	pushl	%eax
	xor	%eax,	%eax
	cmpl	-12(%ebp),	%edx
	setle	%al
	movl	%eax,	%edx
	popl	%eax
	movl	%edx,	-8(%ebp)
	movl	-4(%ebp),	%edx
	imull	-8(%ebp),	%edx
	movl	%edx,	-4(%ebp)
	pushl	%eax
	xor	%eax,	%eax
	cmpl	-4(%ebp),	%edi
	setg	%al
	movl	%eax,	%edi
	popl	%eax
	pushl	%eax
	xor	%eax,	%eax
	cmpl	$0,	%esi
	setne	%al
	movl	%eax,	%esi
	xor	%eax,	%eax
	cmpl	$0,	%edi
	setne	%al
	movl	%eax,	%edi
	orl	%edi,	%esi
	popl	%eax
	pushl	%eax
	xor	%eax,	%eax
	cmpl	%esi,	%ecx
	setne	%al
	movl	%eax,	%ecx
	popl	%eax
	movl	x2,	%esi
	movl	x0,	%edi
	pushl	%eax
	xor	%eax,	%eax
	cmpl	$0,	%esi
	setne	%al
	movl	%eax,	%esi
	xor	%eax,	%eax
	cmpl	$0,	%edi
	setne	%al
	movl	%eax,	%edi
	andl	%edi,	%esi
	popl	%eax
	movl	$826,	%edi
	movl	x3,	-4(%ebp)
	subl	-4(%ebp),	%edi
	pushl	%eax
	xor	%eax,	%eax
	cmpl	%edi,	%esi
	setle	%al
	movl	%eax,	%esi
	popl	%eax
	movl	x0,	%edi
	movl	x1,	-4(%ebp)
	addl	-4(%ebp),	%edi
	movl	x3,	-4(%ebp)
	movl	$446,	-8(%ebp)
	movl	-4(%ebp),	%edx
	pushl	%eax
	xor	%eax,	%eax
	cmpl	-8(%ebp),	%edx
	sete	%al
	movl	%eax,	%edx
	popl	%eax
	movl	%edx,	-4(%ebp)
	addl	-4(%ebp),	%edi
	pushl	%eax
	xor	%eax,	%eax
	cmpl	%edi,	%esi
	setg	%al
	movl	%eax,	%esi
	popl	%eax
	movl	x1,	%edi
	movl	x1,	-4(%ebp)
	imull	-4(%ebp),	%edi
	movl	$448,	-4(%ebp)
	movl	$990,	-8(%ebp)
	movl	-4(%ebp),	%edx
	pushl	%eax
	xor	%eax,	%eax
	cmpl	-8(%ebp),	%edx
	setle	%al
	movl	%eax,	%edx
	popl	%eax
	movl	%edx,	-4(%ebp)
	pushl	%eax
	xor	%eax,	%eax
	cmpl	$0,	%edi
	setne	%al
	movl	%eax,	%edi
	xor	%eax,	%eax
	cmpl	$0,	-4(%ebp)
	setne	%al
	movl	%eax,	-4(%ebp)
	orl	-4(%ebp),	%edi
	popl	%eax
	movl	x0,	-4(%ebp)
	movl	$65,	-8(%ebp)
	movl	-4(%ebp),	%edx
	subl	-8(%ebp),	%edx
	movl	%edx,	-4(%ebp)
	movl	x0,	-8(%ebp)
	movl	x3,	-12(%ebp)
	movl	-8(%ebp),	%edx
	pushl	%eax
	xor	%eax,	%eax
	cmpl	-12(%ebp),	%edx
	setge	%al
	movl	%eax,	%edx
	popl	%eax
	movl	%edx,	-8(%ebp)
	movl	-4(%ebp),	%edx
	pushl	%eax
	xor	%eax,	%eax
	cmpl	-8(%ebp),	%edx
	setge	%al
	movl	%eax,	%edx
	popl	%eax
	movl	%edx,	-4(%ebp)
	imull	-4(%ebp),	%edi
	pushl	%eax
	xor	%eax,	%eax
	cmpl	%edi,	%esi
	setg	%al
	movl	%eax,	%esi
	popl	%eax
	movl	x2,	%edi
	movl	x2,	-4(%ebp)
	addl	-4(%ebp),	%edi
	movl	$236,	-4(%ebp)
	movl	x1,	-8(%ebp)
	movl	-4(%ebp),	%edx
	pushl	%eax
	xor	%eax,	%eax
	cmpl	-8(%ebp),	%edx
	setl	%al
	movl	%eax,	%edx
	popl	%eax
	movl	%edx,	-4(%ebp)
	pushl	%eax
	xor	%eax,	%eax
	cmpl	-4(%ebp),	%edi
	setl	%al
	movl	%eax,	%edi
	popl	%eax
	movl	x2,	-4(%ebp)
	movl	$865,	-8(%ebp)
	movl	-4(%ebp),	%edx
	pushl	%eax
	xor	%eax,	%eax
	cmpl	-8(%ebp),	%edx
	setle	%al
	movl	%eax,	%edx
	popl	%eax
	movl	%edx,	-4(%ebp)
	movl	$550,	-8(%ebp)
	movl	x0,	-12(%ebp)
	movl	-8(%ebp),	%edx
	imull	-12(%ebp),	%edx
	movl	%edx,	-8(%ebp)
	movl	-4(%ebp),	%edx
	pushl	%eax
	xor	%eax,	%eax
	cmpl	$0,	%edx
	setne	%al
	movl	%eax,	%edx
	xor	%eax,	%eax
	cmpl	$0,	-8(%ebp)
	setne	%al
	movl	%eax,	-8(%ebp)
	orl	-8(%ebp),	%edx
	popl	%eax
	movl	%edx,	-4(%ebp)
	pushl	%eax
	xor	%eax,	%eax
	cmpl	-4(%ebp),	%edi
	setg	%al
	movl	%eax,	%edi
	popl	%eax
	movl	$771,	-4(%ebp)
	movl	x1,	-8(%ebp)
	movl	-4(%ebp),	%edx
	pushl	%eax
	xor	%eax,	%eax
	cmpl	$0,	%edx
	setne	%al
	movl	%eax,	%edx
	xor	%eax,	%eax
	cmpl	$0,	-8(%ebp)
	setne	%al
	movl	%eax,	-8(%ebp)
	orl	-8(%ebp),	%edx
	popl	%eax
	movl	%edx,	-4(%ebp)
	movl	$316,	-8(%ebp)
	movl	$249,	-12(%ebp)
	movl	-8(%ebp),	%edx
	pushl	%eax
	xor	%eax,	%eax
	cmpl	-12(%ebp),	%edx
	sete	%al
	movl	%eax,	%edx
	popl	%eax
	movl	%edx,	-8(%ebp)
	movl	-4(%ebp),	%edx
	pushl	%eax
	xor	%eax,	%eax
	cmpl	-8(%ebp),	%edx
	setl	%al
	movl	%eax,	%edx
	popl	%eax
	movl	%edx,	-4(%ebp)
	movl	$835,	-8(%ebp)
	movl	x3,	-12(%ebp)
	movl	-8(%ebp),	%edx
	addl	-12(%ebp),	%edx
	movl	%edx,	-8(%ebp)
	movl	$531,	-12(%ebp)
	movl	$111,	-16(%ebp)
	movl	-12(%ebp),	%edx
	pushl	%eax
	xor	%eax,	%eax
	cmpl	-16(%ebp),	%edx
	sete	%al
	movl	%eax,	%edx
	popl	%eax
	movl	%edx,	-12(%ebp)
	movl	-8(%ebp),	%edx
	imull	-12(%ebp),	%edx
	movl	%edx,	-8(%ebp)
	movl	-4(%ebp),	%edx
	pushl	%eax
	xor	%eax,	%eax
	cmpl	-8(%ebp),	%edx
	setge	%al
	movl	%eax,	%edx
	popl	%eax
	movl	%edx,	-4(%ebp)
	pushl	%eax
	xor	%eax,	%eax
	cmpl	-4(%ebp),	%edi
	setne	%al
	movl	%eax,	%edi
	popl	%eax
	subl	%edi,	%esi
	imull	%esi,	%ecx
	pushl	%eax
	xor	%eax,	%eax
	cmpl	%ecx,	%ebx
	setne	%al
	movl	%eax,	%ebx
	popl	%eax
	movl	$805,	%ecx
	movl	$483,	%esi
	subl	%esi,	%ecx
	movl	$721,	%esi
	movl	x3,	%edi
	subl	%edi,	%esi
	addl	%esi,	%ecx
	movl	$187,	%esi
	movl	x0,	%edi
	pushl	%eax
	xor	%eax,	%eax
	cmpl	%edi,	%esi
	setge	%al
	movl	%eax,	%esi
	popl	%eax
	movl	x0,	%edi
	movl	$987,	-4(%ebp)
	pushl	%eax
	xor	%eax,	%eax
	cmpl	$0,	%edi
	setne	%al
	movl	%eax,	%edi
	xor	%eax,	%eax
	cmpl	$0,	-4(%ebp)
	setne	%al
	movl	%eax,	-4(%ebp)
	orl	-4(%ebp),	%edi
	popl	%eax
	pushl	%eax
	xor	%eax,	%eax
	cmpl	%edi,	%esi
	sete	%al
	movl	%eax,	%esi
	popl	%eax
	subl	%esi,	%ecx
	movl	$522,	%esi
	movl	x0,	%edi
	pushl	%eax
	xor	%eax,	%eax
	cmpl	$0,	%esi
	setne	%al
	movl	%eax,	%esi
	xor	%eax,	%eax
	cmpl	$0,	%edi
	setne	%al
	movl	%eax,	%edi
	orl	%edi,	%esi
	popl	%eax
	movl	$829,	%edi
	movl	x0,	-4(%ebp)
	pushl	%eax
	xor	%eax,	%eax
	cmpl	-4(%ebp),	%edi
	sete	%al
	movl	%eax,	%edi
	popl	%eax
	pushl	%eax
	xor	%eax,	%eax
	cmpl	%edi,	%esi
	setl	%al
	movl	%eax,	%esi
	popl	%eax
	movl	$98,	%edi
	movl	$960,	-4(%ebp)
	pushl	%eax
	xor	%eax,	%eax
	cmpl	-4(%ebp),	%edi
	setge	%al
	movl	%eax,	%edi
	popl	%eax
	movl	$908,	-4(%ebp)
	movl	$376,	-8(%ebp)
	movl	-4(%ebp),	%edx
	imull	-8(%ebp),	%edx
	movl	%edx,	-4(%ebp)
	pushl	%eax
	xor	%eax,	%eax
	cmpl	$0,	%edi
	setne	%al
	movl	%eax,	%edi
	xor	%eax,	%eax
	cmpl	$0,	-4(%ebp)
	setne	%al
	movl	%eax,	-4(%ebp)
	orl	-4(%ebp),	%edi
	popl	%eax
	pushl	%eax
	xor	%eax,	%eax
	cmpl	%edi,	%esi
	setl	%al
	movl	%eax,	%esi
	popl	%eax
	pushl	%eax
	xor	%eax,	%eax
	cmpl	$0,	%ecx
	setne	%al
	movl	%eax,	%ecx
	xor	%eax,	%eax
	cmpl	$0,	%esi
	setne	%al
	movl	%eax,	%esi
	andl	%esi,	%ecx
	popl	%eax
	movl	x2,	%esi
	movl	$986,	%edi
	pushl	%eax
	xor	%eax,	%eax
	cmpl	$0,	%esi
	setne	%al
	movl	%eax,	%esi
	xor	%eax,	%eax
	cmpl	$0,	%edi
	setne	%al
	movl	%eax,	%edi
	andl	%edi,	%esi
	popl	%eax
	movl	$88,	%edi
	movl	x3,	-4(%ebp)
	addl	-4(%ebp),	%edi
	pushl	%eax
	xor	%eax,	%eax
	cmpl	%edi,	%esi
	setg	%al
	movl	%eax,	%esi
	popl	%eax
	movl	$617,	%edi
	movl	x0,	-4(%ebp)
	pushl	%eax
	xor	%eax,	%eax
	cmpl	-4(%ebp),	%edi
	setne	%al
	movl	%eax,	%edi
	popl	%eax
	movl	$674,	-4(%ebp)
	movl	x3,	-8(%ebp)
	movl	-4(%ebp),	%edx
	pushl	%eax
	xor	%eax,	%eax
	cmpl	-8(%ebp),	%edx
	setge	%al
	movl	%eax,	%edx
	popl	%eax
	movl	%edx,	-4(%ebp)
	pushl	%eax
	xor	%eax,	%eax
	cmpl	-4(%ebp),	%edi
	setg	%al
	movl	%eax,	%edi
	popl	%eax
	pushl	%eax
	xor	%eax,	%eax
	cmpl	%edi,	%esi
	setne	%al
	movl	%eax,	%esi
	popl	%eax
	movl	x1,	%edi
	movl	$26,	-4(%ebp)
	pushl	%eax
	xor	%eax,	%eax
	cmpl	-4(%ebp),	%edi
	sete	%al
	movl	%eax,	%edi
	popl	%eax
	movl	x1,	-4(%ebp)
	movl	$374,	-8(%ebp)
	movl	-4(%ebp),	%edx
	pushl	%eax
	xor	%eax,	%eax
	cmpl	$0,	%edx
	setne	%al
	movl	%eax,	%edx
	xor	%eax,	%eax
	cmpl	$0,	-8(%ebp)
	setne	%al
	movl	%eax,	-8(%ebp)
	andl	-8(%ebp),	%edx
	popl	%eax
	movl	%edx,	-4(%ebp)
	pushl	%eax
	xor	%eax,	%eax
	cmpl	-4(%ebp),	%edi
	setl	%al
	movl	%eax,	%edi
	popl	%eax
	movl	x2,	-4(%ebp)
	movl	x2,	-8(%ebp)
	movl	-4(%ebp),	%edx
	pushl	%eax
	xor	%eax,	%eax
	cmpl	-8(%ebp),	%edx
	setne	%al
	movl	%eax,	%edx
	popl	%eax
	movl	%edx,	-4(%ebp)
	movl	x0,	-8(%ebp)
	movl	x1,	-12(%ebp)
	movl	-8(%ebp),	%edx
	pushl	%eax
	xor	%eax,	%eax
	cmpl	-12(%ebp),	%edx
	setg	%al
	movl	%eax,	%edx
	popl	%eax
	movl	%edx,	-8(%ebp)
	movl	-4(%ebp),	%edx
	addl	-8(%ebp),	%edx
	movl	%edx,	-4(%ebp)
	pushl	%eax
	xor	%eax,	%eax
	cmpl	$0,	%edi
	setne	%al
	movl	%eax,	%edi
	xor	%eax,	%eax
	cmpl	$0,	-4(%ebp)
	setne	%al
	movl	%eax,	-4(%ebp)
	orl	-4(%ebp),	%edi
	popl	%eax
	pushl	%eax
	xor	%eax,	%eax
	cmpl	%edi,	%esi
	setg	%al
	movl	%eax,	%esi
	popl	%eax
	pushl	%eax
	xor	%eax,	%eax
	cmpl	$0,	%ecx
	setne	%al
	movl	%eax,	%ecx
	xor	%eax,	%eax
	cmpl	$0,	%esi
	setne	%al
	movl	%eax,	%esi
	andl	%esi,	%ecx
	popl	%eax
	movl	x3,	%esi
	movl	x2,	%edi
	pushl	%eax
	xor	%eax,	%eax
	cmpl	%edi,	%esi
	setge	%al
	movl	%eax,	%esi
	popl	%eax
	movl	$248,	%edi
	movl	x0,	-4(%ebp)
	pushl	%eax
	xor	%eax,	%eax
	cmpl	-4(%ebp),	%edi
	setl	%al
	movl	%eax,	%edi
	popl	%eax
	pushl	%eax
	xor	%eax,	%eax
	cmpl	%edi,	%esi
	setge	%al
	movl	%eax,	%esi
	popl	%eax
	movl	$405,	%edi
	movl	x3,	-4(%ebp)
	pushl	%eax
	xor	%eax,	%eax
	cmpl	$0,	%edi
	setne	%al
	movl	%eax,	%edi
	xor	%eax,	%eax
	cmpl	$0,	-4(%ebp)
	setne	%al
	movl	%eax,	-4(%ebp)
	andl	-4(%ebp),	%edi
	popl	%eax
	movl	$478,	-4(%ebp)
	movl	$935,	-8(%ebp)
	movl	-4(%ebp),	%edx
	pushl	%eax
	xor	%eax,	%eax
	cmpl	-8(%ebp),	%edx
	sete	%al
	movl	%eax,	%edx
	popl	%eax
	movl	%edx,	-4(%ebp)
	pushl	%eax
	xor	%eax,	%eax
	cmpl	-4(%ebp),	%edi
	sete	%al
	movl	%eax,	%edi
	popl	%eax
	pushl	%eax
	xor	%eax,	%eax
	cmpl	%edi,	%esi
	setle	%al
	movl	%eax,	%esi
	popl	%eax
	movl	x1,	%edi
	movl	$269,	-4(%ebp)
	pushl	%eax
	xor	%eax,	%eax
	cmpl	-4(%ebp),	%edi
	setle	%al
	movl	%eax,	%edi
	popl	%eax
	movl	x2,	-4(%ebp)
	movl	$861,	-8(%ebp)
	movl	-4(%ebp),	%edx
	pushl	%eax
	xor	%eax,	%eax
	cmpl	-8(%ebp),	%edx
	setne	%al
	movl	%eax,	%edx
	popl	%eax
	movl	%edx,	-4(%ebp)
	pushl	%eax
	xor	%eax,	%eax
	cmpl	-4(%ebp),	%edi
	setle	%al
	movl	%eax,	%edi
	popl	%eax
	movl	x0,	-4(%ebp)
	movl	x2,	-8(%ebp)
	movl	-4(%ebp),	%edx
	pushl	%eax
	xor	%eax,	%eax
	cmpl	$0,	%edx
	setne	%al
	movl	%eax,	%edx
	xor	%eax,	%eax
	cmpl	$0,	-8(%ebp)
	setne	%al
	movl	%eax,	-8(%ebp)
	orl	-8(%ebp),	%edx
	popl	%eax
	movl	%edx,	-4(%ebp)
	movl	x0,	-8(%ebp)
	movl	$824,	-12(%ebp)
	movl	-8(%ebp),	%edx
	pushl	%eax
	xor	%eax,	%eax
	cmpl	-12(%ebp),	%edx
	setl	%al
	movl	%eax,	%edx
	popl	%eax
	movl	%edx,	-8(%ebp)
	movl	-4(%ebp),	%edx
	pushl	%eax
	xor	%eax,	%eax
	cmpl	$0,	%edx
	setne	%al
	movl	%eax,	%edx
	xor	%eax,	%eax
	cmpl	$0,	-8(%ebp)
	setne	%al
	movl	%eax,	-8(%ebp)
	orl	-8(%ebp),	%edx
	popl	%eax
	movl	%edx,	-4(%ebp)
	pushl	%eax
	xor	%eax,	%eax
	cmpl	-4(%ebp),	%edi
	setg	%al
	movl	%eax,	%edi
	popl	%eax
	subl	%edi,	%esi
	movl	$782,	%edi
	movl	x3,	-4(%ebp)
	pushl	%eax
	xor	%eax,	%eax
	cmpl	-4(%ebp),	%edi
	setle	%al
	movl	%eax,	%edi
	popl	%eax
	movl	$634,	-4(%ebp)
	movl	$842,	-8(%ebp)
	movl	-4(%ebp),	%edx
	pushl	%eax
	xor	%eax,	%eax
	cmpl	-8(%ebp),	%edx
	setl	%al
	movl	%eax,	%edx
	popl	%eax
	movl	%edx,	-4(%ebp)
	pushl	%eax
	xor	%eax,	%eax
	cmpl	-4(%ebp),	%edi
	setg	%al
	movl	%eax,	%edi
	popl	%eax
	movl	x0,	-4(%ebp)
	movl	x3,	-8(%ebp)
	movl	-4(%ebp),	%edx
	pushl	%eax
	xor	%eax,	%eax
	cmpl	-8(%ebp),	%edx
	setge	%al
	movl	%eax,	%edx
	popl	%eax
	movl	%edx,	-4(%ebp)
	movl	x3,	-8(%ebp)
	movl	$402,	-12(%ebp)
	movl	-8(%ebp),	%edx
	addl	-12(%ebp),	%edx
	movl	%edx,	-8(%ebp)
	movl	-4(%ebp),	%edx
	pushl	%eax
	xor	%eax,	%eax
	cmpl	$0,	%edx
	setne	%al
	movl	%eax,	%edx
	xor	%eax,	%eax
	cmpl	$0,	-8(%ebp)
	setne	%al
	movl	%eax,	-8(%ebp)
	andl	-8(%ebp),	%edx
	popl	%eax
	movl	%edx,	-4(%ebp)
	pushl	%eax
	xor	%eax,	%eax
	cmpl	-4(%ebp),	%edi
	setl	%al
	movl	%eax,	%edi
	popl	%eax
	movl	$311,	-4(%ebp)
	movl	$296,	-8(%ebp)
	movl	-4(%ebp),	%edx
	pushl	%eax
	xor	%eax,	%eax
	cmpl	$0,	%edx
	setne	%al
	movl	%eax,	%edx
	xor	%eax,	%eax
	cmpl	$0,	-8(%ebp)
	setne	%al
	movl	%eax,	-8(%ebp)
	andl	-8(%ebp),	%edx
	popl	%eax
	movl	%edx,	-4(%ebp)
	movl	$186,	-8(%ebp)
	movl	x1,	-12(%ebp)
	movl	-8(%ebp),	%edx
	pushl	%eax
	xor	%eax,	%eax
	cmpl	-12(%ebp),	%edx
	setle	%al
	movl	%eax,	%edx
	popl	%eax
	movl	%edx,	-8(%ebp)
	movl	-4(%ebp),	%edx
	pushl	%eax
	xor	%eax,	%eax
	cmpl	-8(%ebp),	%edx
	setl	%al
	movl	%eax,	%edx
	popl	%eax
	movl	%edx,	-4(%ebp)
	movl	$409,	-8(%ebp)
	movl	$719,	-12(%ebp)
	movl	-8(%ebp),	%edx
	addl	-12(%ebp),	%edx
	movl	%edx,	-8(%ebp)
	movl	x3,	-12(%ebp)
	movl	x1,	-16(%ebp)
	movl	-12(%ebp),	%edx
	pushl	%eax
	xor	%eax,	%eax
	cmpl	-16(%ebp),	%edx
	setle	%al
	movl	%eax,	%edx
	popl	%eax
	movl	%edx,	-12(%ebp)
	movl	-8(%ebp),	%edx
	imull	-12(%ebp),	%edx
	movl	%edx,	-8(%ebp)
	movl	-4(%ebp),	%edx
	subl	-8(%ebp),	%edx
	movl	%edx,	-4(%ebp)
	pushl	%eax
	xor	%eax,	%eax
	cmpl	-4(%ebp),	%edi
	setne	%al
	movl	%eax,	%edi
	popl	%eax
	pushl	%eax
	xor	%eax,	%eax
	cmpl	%edi,	%esi
	setle	%al
	movl	%eax,	%esi
	popl	%eax
	pushl	%eax
	xor	%eax,	%eax
	cmpl	$0,	%ecx
	setne	%al
	movl	%eax,	%ecx
	xor	%eax,	%eax
	cmpl	$0,	%esi
	setne	%al
	movl	%eax,	%esi
	orl	%esi,	%ecx
	popl	%eax
	movl	x3,	%esi
	movl	$792,	%edi
	pushl	%eax
	xor	%eax,	%eax
	cmpl	$0,	%esi
	setne	%al
	movl	%eax,	%esi
	xor	%eax,	%eax
	cmpl	$0,	%edi
	setne	%al
	movl	%eax,	%edi
	orl	%edi,	%esi
	popl	%eax
	movl	$751,	%edi
	movl	$272,	-4(%ebp)
	pushl	%eax
	xor	%eax,	%eax
	cmpl	$0,	%edi
	setne	%al
	movl	%eax,	%edi
	xor	%eax,	%eax
	cmpl	$0,	-4(%ebp)
	setne	%al
	movl	%eax,	-4(%ebp)
	andl	-4(%ebp),	%edi
	popl	%eax
	pushl	%eax
	xor	%eax,	%eax
	cmpl	%edi,	%esi
	sete	%al
	movl	%eax,	%esi
	popl	%eax
	movl	x1,	%edi
	movl	$873,	-4(%ebp)
	subl	-4(%ebp),	%edi
	movl	x2,	-4(%ebp)
	movl	x0,	-8(%ebp)
	movl	-4(%ebp),	%edx
	subl	-8(%ebp),	%edx
	movl	%edx,	-4(%ebp)
	pushl	%eax
	xor	%eax,	%eax
	cmpl	-4(%ebp),	%edi
	sete	%al
	movl	%eax,	%edi
	popl	%eax
	subl	%edi,	%esi
	movl	x0,	%edi
	movl	x1,	-4(%ebp)
	pushl	%eax
	xor	%eax,	%eax
	cmpl	$0,	%edi
	setne	%al
	movl	%eax,	%edi
	xor	%eax,	%eax
	cmpl	$0,	-4(%ebp)
	setne	%al
	movl	%eax,	-4(%ebp)
	orl	-4(%ebp),	%edi
	popl	%eax
	movl	x3,	-4(%ebp)
	movl	$959,	-8(%ebp)
	movl	-4(%ebp),	%edx
	pushl	%eax
	xor	%eax,	%eax
	cmpl	-8(%ebp),	%edx
	setle	%al
	movl	%eax,	%edx
	popl	%eax
	movl	%edx,	-4(%ebp)
	subl	-4(%ebp),	%edi
	movl	x3,	-4(%ebp)
	movl	$289,	-8(%ebp)
	movl	-4(%ebp),	%edx
	pushl	%eax
	xor	%eax,	%eax
	cmpl	-8(%ebp),	%edx
	setg	%al
	movl	%eax,	%edx
	popl	%eax
	movl	%edx,	-4(%ebp)
	movl	$20,	-8(%ebp)
	movl	x3,	-12(%ebp)
	movl	-8(%ebp),	%edx
	addl	-12(%ebp),	%edx
	movl	%edx,	-8(%ebp)
	movl	-4(%ebp),	%edx
	pushl	%eax
	xor	%eax,	%eax
	cmpl	-8(%ebp),	%edx
	setle	%al
	movl	%eax,	%edx
	popl	%eax
	movl	%edx,	-4(%ebp)
	pushl	%eax
	xor	%eax,	%eax
	cmpl	$0,	%edi
	setne	%al
	movl	%eax,	%edi
	xor	%eax,	%eax
	cmpl	$0,	-4(%ebp)
	setne	%al
	movl	%eax,	-4(%ebp)
	andl	-4(%ebp),	%edi
	popl	%eax
	pushl	%eax
	xor	%eax,	%eax
	cmpl	$0,	%esi
	setne	%al
	movl	%eax,	%esi
	xor	%eax,	%eax
	cmpl	$0,	%edi
	setne	%al
	movl	%eax,	%edi
	orl	%edi,	%esi
	popl	%eax
	movl	$943,	%edi
	movl	$701,	-4(%ebp)
	imull	-4(%ebp),	%edi
	movl	$943,	-4(%ebp)
	movl	x3,	-8(%ebp)
	movl	-4(%ebp),	%edx
	pushl	%eax
	xor	%eax,	%eax
	cmpl	-8(%ebp),	%edx
	setg	%al
	movl	%eax,	%edx
	popl	%eax
	movl	%edx,	-4(%ebp)
	pushl	%eax
	xor	%eax,	%eax
	cmpl	-4(%ebp),	%edi
	setl	%al
	movl	%eax,	%edi
	popl	%eax
	movl	x1,	-4(%ebp)
	movl	$45,	-8(%ebp)
	movl	-4(%ebp),	%edx
	pushl	%eax
	xor	%eax,	%eax
	cmpl	-8(%ebp),	%edx
	setne	%al
	movl	%eax,	%edx
	popl	%eax
	movl	%edx,	-4(%ebp)
	movl	$434,	-8(%ebp)
	movl	$146,	-12(%ebp)
	movl	-8(%ebp),	%edx
	pushl	%eax
	xor	%eax,	%eax
	cmpl	-12(%ebp),	%edx
	setge	%al
	movl	%eax,	%edx
	popl	%eax
	movl	%edx,	-8(%ebp)
	movl	-4(%ebp),	%edx
	pushl	%eax
	xor	%eax,	%eax
	cmpl	-8(%ebp),	%edx
	setl	%al
	movl	%eax,	%edx
	popl	%eax
	movl	%edx,	-4(%ebp)
	pushl	%eax
	xor	%eax,	%eax
	cmpl	-4(%ebp),	%edi
	setne	%al
	movl	%eax,	%edi
	popl	%eax
	movl	x0,	-4(%ebp)
	movl	x1,	-8(%ebp)
	movl	-4(%ebp),	%edx
	pushl	%eax
	xor	%eax,	%eax
	cmpl	$0,	%edx
	setne	%al
	movl	%eax,	%edx
	xor	%eax,	%eax
	cmpl	$0,	-8(%ebp)
	setne	%al
	movl	%eax,	-8(%ebp)
	andl	-8(%ebp),	%edx
	popl	%eax
	movl	%edx,	-4(%ebp)
	movl	x1,	-8(%ebp)
	movl	$768,	-12(%ebp)
	movl	-8(%ebp),	%edx
	imull	-12(%ebp),	%edx
	movl	%edx,	-8(%ebp)
	movl	-4(%ebp),	%edx
	addl	-8(%ebp),	%edx
	movl	%edx,	-4(%ebp)
	movl	x3,	-8(%ebp)
	movl	$856,	-12(%ebp)
	movl	-8(%ebp),	%edx
	imull	-12(%ebp),	%edx
	movl	%edx,	-8(%ebp)
	movl	x0,	-12(%ebp)
	movl	x1,	-16(%ebp)
	movl	-12(%ebp),	%edx
	pushl	%eax
	xor	%eax,	%eax
	cmpl	-16(%ebp),	%edx
	setle	%al
	movl	%eax,	%edx
	popl	%eax
	movl	%edx,	-12(%ebp)
	movl	-8(%ebp),	%edx
	pushl	%eax
	xor	%eax,	%eax
	cmpl	$0,	%edx
	setne	%al
	movl	%eax,	%edx
	xor	%eax,	%eax
	cmpl	$0,	-12(%ebp)
	setne	%al
	movl	%eax,	-12(%ebp)
	andl	-12(%ebp),	%edx
	popl	%eax
	movl	%edx,	-8(%ebp)
	movl	-4(%ebp),	%edx
	imull	-8(%ebp),	%edx
	movl	%edx,	-4(%ebp)
	addl	-4(%ebp),	%edi
	pushl	%eax
	xor	%eax,	%eax
	cmpl	%edi,	%esi
	setg	%al
	movl	%eax,	%esi
	popl	%eax
	movl	x2,	%edi
	movl	x3,	-4(%ebp)
	pushl	%eax
	xor	%eax,	%eax
	cmpl	-4(%ebp),	%edi
	setle	%al
	movl	%eax,	%edi
	popl	%eax
	movl	x3,	-4(%ebp)
	movl	x0,	-8(%ebp)
	movl	-4(%ebp),	%edx
	pushl	%eax
	xor	%eax,	%eax
	cmpl	-8(%ebp),	%edx
	setl	%al
	movl	%eax,	%edx
	popl	%eax
	movl	%edx,	-4(%ebp)
	pushl	%eax
	xor	%eax,	%eax
	cmpl	$0,	%edi
	setne	%al
	movl	%eax,	%edi
	xor	%eax,	%eax
	cmpl	$0,	-4(%ebp)
	setne	%al
	movl	%eax,	-4(%ebp)
	andl	-4(%ebp),	%edi
	popl	%eax
	movl	x3,	-4(%ebp)
	movl	x1,	-8(%ebp)
	movl	-4(%ebp),	%edx
	pushl	%eax
	xor	%eax,	%eax
	cmpl	-8(%ebp),	%edx
	setge	%al
	movl	%eax,	%edx
	popl	%eax
	movl	%edx,	-4(%ebp)
	movl	x1,	-8(%ebp)
	movl	x2,	-12(%ebp)
	movl	-8(%ebp),	%edx
	addl	-12(%ebp),	%edx
	movl	%edx,	-8(%ebp)
	movl	-4(%ebp),	%edx
	addl	-8(%ebp),	%edx
	movl	%edx,	-4(%ebp)
	pushl	%eax
	xor	%eax,	%eax
	cmpl	-4(%ebp),	%edi
	setg	%al
	movl	%eax,	%edi
	popl	%eax
	movl	$989,	-4(%ebp)
	movl	$274,	-8(%ebp)
	movl	-4(%ebp),	%edx
	pushl	%eax
	xor	%eax,	%eax
	cmpl	-8(%ebp),	%edx
	setl	%al
	movl	%eax,	%edx
	popl	%eax
	movl	%edx,	-4(%ebp)
	movl	$528,	-8(%ebp)
	movl	$654,	-12(%ebp)
	movl	-8(%ebp),	%edx
	pushl	%eax
	xor	%eax,	%eax
	cmpl	-12(%ebp),	%edx
	setl	%al
	movl	%eax,	%edx
	popl	%eax
	movl	%edx,	-8(%ebp)
	movl	-4(%ebp),	%edx
	pushl	%eax
	xor	%eax,	%eax
	cmpl	-8(%ebp),	%edx
	sete	%al
	movl	%eax,	%edx
	popl	%eax
	movl	%edx,	-4(%ebp)
	movl	x0,	-8(%ebp)
	movl	x1,	-12(%ebp)
	movl	-8(%ebp),	%edx
	pushl	%eax
	xor	%eax,	%eax
	cmpl	$0,	%edx
	setne	%al
	movl	%eax,	%edx
	xor	%eax,	%eax
	cmpl	$0,	-12(%ebp)
	setne	%al
	movl	%eax,	-12(%ebp)
	orl	-12(%ebp),	%edx
	popl	%eax
	movl	%edx,	-8(%ebp)
	movl	$839,	-12(%ebp)
	movl	$900,	-16(%ebp)
	movl	-12(%ebp),	%edx
	pushl	%eax
	xor	%eax,	%eax
	cmpl	-16(%ebp),	%edx
	setne	%al
	movl	%eax,	%edx
	popl	%eax
	movl	%edx,	-12(%ebp)
	movl	-8(%ebp),	%edx
	pushl	%eax
	xor	%eax,	%eax
	cmpl	-12(%ebp),	%edx
	setl	%al
	movl	%eax,	%edx
	popl	%eax
	movl	%edx,	-8(%ebp)
	movl	-4(%ebp),	%edx
	imull	-8(%ebp),	%edx
	movl	%edx,	-4(%ebp)
	addl	-4(%ebp),	%edi
	movl	$773,	-4(%ebp)
	movl	x3,	-8(%ebp)
	movl	-4(%ebp),	%edx
	pushl	%eax
	xor	%eax,	%eax
	cmpl	-8(%ebp),	%edx
	setl	%al
	movl	%eax,	%edx
	popl	%eax
	movl	%edx,	-4(%ebp)
	movl	$625,	-8(%ebp)
	movl	$23,	-12(%ebp)
	movl	-8(%ebp),	%edx
	pushl	%eax
	xor	%eax,	%eax
	cmpl	-12(%ebp),	%edx
	sete	%al
	movl	%eax,	%edx
	popl	%eax
	movl	%edx,	-8(%ebp)
	movl	-4(%ebp),	%edx
	pushl	%eax
	xor	%eax,	%eax
	cmpl	$0,	%edx
	setne	%al
	movl	%eax,	%edx
	xor	%eax,	%eax
	cmpl	$0,	-8(%ebp)
	setne	%al
	movl	%eax,	-8(%ebp)
	andl	-8(%ebp),	%edx
	popl	%eax
	movl	%edx,	-4(%ebp)
	movl	x0,	-8(%ebp)
	movl	$622,	-12(%ebp)
	movl	-8(%ebp),	%edx
	addl	-12(%ebp),	%edx
	movl	%edx,	-8(%ebp)
	movl	$215,	-12(%ebp)
	movl	$821,	-16(%ebp)
	movl	-12(%ebp),	%edx
	pushl	%eax
	xor	%eax,	%eax
	cmpl	$0,	%edx
	setne	%al
	movl	%eax,	%edx
	xor	%eax,	%eax
	cmpl	$0,	-16(%ebp)
	setne	%al
	movl	%eax,	-16(%ebp)
	orl	-16(%ebp),	%edx
	popl	%eax
	movl	%edx,	-12(%ebp)
	movl	-8(%ebp),	%edx
	pushl	%eax
	xor	%eax,	%eax
	cmpl	-12(%ebp),	%edx
	setl	%al
	movl	%eax,	%edx
	popl	%eax
	movl	%edx,	-8(%ebp)
	movl	-4(%ebp),	%edx
	pushl	%eax
	xor	%eax,	%eax
	cmpl	-8(%ebp),	%edx
	setg	%al
	movl	%eax,	%edx
	popl	%eax
	movl	%edx,	-4(%ebp)
	movl	x2,	-8(%ebp)
	movl	x3,	-12(%ebp)
	movl	-8(%ebp),	%edx
	pushl	%eax
	xor	%eax,	%eax
	cmpl	-12(%ebp),	%edx
	setle	%al
	movl	%eax,	%edx
	popl	%eax
	movl	%edx,	-8(%ebp)
	movl	x0,	-12(%ebp)
	movl	x0,	-16(%ebp)
	movl	-12(%ebp),	%edx
	pushl	%eax
	xor	%eax,	%eax
	cmpl	$0,	%edx
	setne	%al
	movl	%eax,	%edx
	xor	%eax,	%eax
	cmpl	$0,	-16(%ebp)
	setne	%al
	movl	%eax,	-16(%ebp)
	orl	-16(%ebp),	%edx
	popl	%eax
	movl	%edx,	-12(%ebp)
	movl	-8(%ebp),	%edx
	pushl	%eax
	xor	%eax,	%eax
	cmpl	$0,	%edx
	setne	%al
	movl	%eax,	%edx
	xor	%eax,	%eax
	cmpl	$0,	-12(%ebp)
	setne	%al
	movl	%eax,	-12(%ebp)
	orl	-12(%ebp),	%edx
	popl	%eax
	movl	%edx,	-8(%ebp)
	movl	x1,	-12(%ebp)
	movl	$91,	-16(%ebp)
	movl	-12(%ebp),	%edx
	pushl	%eax
	xor	%eax,	%eax
	cmpl	-16(%ebp),	%edx
	setne	%al
	movl	%eax,	%edx
	popl	%eax
	movl	%edx,	-12(%ebp)
	movl	x1,	-16(%ebp)
	movl	$745,	-20(%ebp)
	movl	-16(%ebp),	%edx
	imull	-20(%ebp),	%edx
	movl	%edx,	-16(%ebp)
	movl	-12(%ebp),	%edx
	pushl	%eax
	xor	%eax,	%eax
	cmpl	-16(%ebp),	%edx
	setg	%al
	movl	%eax,	%edx
	popl	%eax
	movl	%edx,	-12(%ebp)
	movl	-8(%ebp),	%edx
	pushl	%eax
	xor	%eax,	%eax
	cmpl	-12(%ebp),	%edx
	setge	%al
	movl	%eax,	%edx
	popl	%eax
	movl	%edx,	-8(%ebp)
	movl	-4(%ebp),	%edx
	pushl	%eax
	xor	%eax,	%eax
	cmpl	-8(%ebp),	%edx
	sete	%al
	movl	%eax,	%edx
	popl	%eax
	movl	%edx,	-4(%ebp)
	pushl	%eax
	xor	%eax,	%eax
	cmpl	-4(%ebp),	%edi
	setle	%al
	movl	%eax,	%edi
	popl	%eax
	pushl	%eax
	xor	%eax,	%eax
	cmpl	$0,	%esi
	setne	%al
	movl	%eax,	%esi
	xor	%eax,	%eax
	cmpl	$0,	%edi
	setne	%al
	movl	%eax,	%edi
	orl	%edi,	%esi
	popl	%eax
	pushl	%eax
	xor	%eax,	%eax
	cmpl	$0,	%ecx
	setne	%al
	movl	%eax,	%ecx
	xor	%eax,	%eax
	cmpl	$0,	%esi
	setne	%al
	movl	%eax,	%esi
	andl	%esi,	%ecx
	popl	%eax
	pushl	%eax
	xor	%eax,	%eax
	cmpl	%ecx,	%ebx
	sete	%al
	movl	%eax,	%ebx
	popl	%eax
	movl	%ebx,	y
	movl	y,	%ebx
	pushl	%ebx
	call	lwrite
	popl	%ebx
	movl	%ebp,%esp
	popl	%ebp
	ret
