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
	subl	$24,%esp
	call	lread
	movl	%eax,	x0
	call	lread
	movl	%eax,	x1
	call	lread
	movl	%eax,	x2
	call	lread
	movl	%eax,	x3
	movl	$716,	%ebx
	movl	x3,	%ecx
	addl	%ecx,	%ebx
	movl	$64,	%ecx
	movl	x2,	%edi
	movl	%edi,	-4(%ebp)
	pushl	%eax
	xor	%eax,	%eax
	cmpl	-4(%ebp),	%ecx
	setge	%al
	movl	%eax,	%ecx
	popl	%eax
	pushl	%eax
	xor	%eax,	%eax
	cmpl	$0,	%ebx
	setne	%al
	movl	%eax,	%ebx
	xor	%eax,	%eax
	cmpl	$0,	%ecx
	setne	%al
	movl	%eax,	%ecx
	andl	%ecx,	%ebx
	popl	%eax
	movl	x3,	%ecx
	movl	$949,	-4(%ebp)
	imull	-4(%ebp),	%ecx
	movl	$56,	-4(%ebp)
	movl	$123,	-8(%ebp)
	movl	-4(%ebp),	%esi
	pushl	%eax
	xor	%eax,	%eax
	cmpl	-8(%ebp),	%esi
	setl	%al
	movl	%eax,	%esi
	popl	%eax
	movl	%esi,	-4(%ebp)
	pushl	%eax
	xor	%eax,	%eax
	cmpl	$0,	%ecx
	setne	%al
	movl	%eax,	%ecx
	xor	%eax,	%eax
	cmpl	$0,	-4(%ebp)
	setne	%al
	movl	%eax,	-4(%ebp)
	andl	-4(%ebp),	%ecx
	popl	%eax
	pushl	%eax
	xor	%eax,	%eax
	cmpl	%ecx,	%ebx
	setg	%al
	movl	%eax,	%ebx
	popl	%eax
	movl	$836,	%ecx
	movl	$977,	-4(%ebp)
	pushl	%eax
	xor	%eax,	%eax
	cmpl	-4(%ebp),	%ecx
	setge	%al
	movl	%eax,	%ecx
	popl	%eax
	movl	$204,	-4(%ebp)
	movl	$178,	-8(%ebp)
	movl	-4(%ebp),	%esi
	pushl	%eax
	xor	%eax,	%eax
	cmpl	-8(%ebp),	%esi
	setl	%al
	movl	%eax,	%esi
	popl	%eax
	movl	%esi,	-4(%ebp)
	pushl	%eax
	xor	%eax,	%eax
	cmpl	-4(%ebp),	%ecx
	setle	%al
	movl	%eax,	%ecx
	popl	%eax
	movl	x0,	%edi
	movl	%edi,	-4(%ebp)
	movl	x2,	%edi
	movl	%edi,	-8(%ebp)
	movl	-4(%ebp),	%esi
	subl	-8(%ebp),	%esi
	movl	%esi,	-4(%ebp)
	movl	$574,	-8(%ebp)
	movl	x1,	%edi
	movl	%edi,	-12(%ebp)
	movl	-8(%ebp),	%esi
	pushl	%eax
	xor	%eax,	%eax
	cmpl	-12(%ebp),	%esi
	sete	%al
	movl	%eax,	%esi
	popl	%eax
	movl	%esi,	-8(%ebp)
	movl	-4(%ebp),	%esi
	pushl	%eax
	xor	%eax,	%eax
	cmpl	$0,	%esi
	setne	%al
	movl	%eax,	%esi
	xor	%eax,	%eax
	cmpl	$0,	-8(%ebp)
	setne	%al
	movl	%eax,	-8(%ebp)
	andl	-8(%ebp),	%esi
	popl	%eax
	movl	%esi,	-4(%ebp)
	pushl	%eax
	xor	%eax,	%eax
	cmpl	$0,	%ecx
	setne	%al
	movl	%eax,	%ecx
	xor	%eax,	%eax
	cmpl	$0,	-4(%ebp)
	setne	%al
	movl	%eax,	-4(%ebp)
	andl	-4(%ebp),	%ecx
	popl	%eax
	addl	%ecx,	%ebx
	movl	x1,	%ecx
	movl	$154,	-4(%ebp)
	pushl	%eax
	xor	%eax,	%eax
	cmpl	$0,	%ecx
	setne	%al
	movl	%eax,	%ecx
	xor	%eax,	%eax
	cmpl	$0,	-4(%ebp)
	setne	%al
	movl	%eax,	-4(%ebp)
	orl	-4(%ebp),	%ecx
	popl	%eax
	movl	x3,	%edi
	movl	%edi,	-4(%ebp)
	movl	x1,	%edi
	movl	%edi,	-8(%ebp)
	movl	-4(%ebp),	%esi
	pushl	%eax
	xor	%eax,	%eax
	cmpl	-8(%ebp),	%esi
	setne	%al
	movl	%eax,	%esi
	popl	%eax
	movl	%esi,	-4(%ebp)
	subl	-4(%ebp),	%ecx
	movl	$713,	-4(%ebp)
	movl	$510,	-8(%ebp)
	movl	-4(%ebp),	%esi
	pushl	%eax
	xor	%eax,	%eax
	cmpl	-8(%ebp),	%esi
	setl	%al
	movl	%eax,	%esi
	popl	%eax
	movl	%esi,	-4(%ebp)
	movl	x3,	%edi
	movl	%edi,	-8(%ebp)
	movl	x0,	%edi
	movl	%edi,	-12(%ebp)
	movl	-8(%ebp),	%esi
	pushl	%eax
	xor	%eax,	%eax
	cmpl	-12(%ebp),	%esi
	setl	%al
	movl	%eax,	%esi
	popl	%eax
	movl	%esi,	-8(%ebp)
	movl	-4(%ebp),	%esi
	imull	-8(%ebp),	%esi
	movl	%esi,	-4(%ebp)
	addl	-4(%ebp),	%ecx
	movl	$469,	-4(%ebp)
	movl	$280,	-8(%ebp)
	movl	-4(%ebp),	%esi
	pushl	%eax
	xor	%eax,	%eax
	cmpl	-8(%ebp),	%esi
	setl	%al
	movl	%eax,	%esi
	popl	%eax
	movl	%esi,	-4(%ebp)
	movl	x3,	%edi
	movl	%edi,	-8(%ebp)
	movl	$441,	-12(%ebp)
	movl	-8(%ebp),	%esi
	pushl	%eax
	xor	%eax,	%eax
	cmpl	-12(%ebp),	%esi
	sete	%al
	movl	%eax,	%esi
	popl	%eax
	movl	%esi,	-8(%ebp)
	movl	-4(%ebp),	%esi
	pushl	%eax
	xor	%eax,	%eax
	cmpl	$0,	%esi
	setne	%al
	movl	%eax,	%esi
	xor	%eax,	%eax
	cmpl	$0,	-8(%ebp)
	setne	%al
	movl	%eax,	-8(%ebp)
	orl	-8(%ebp),	%esi
	popl	%eax
	movl	%esi,	-4(%ebp)
	movl	x1,	%edi
	movl	%edi,	-8(%ebp)
	movl	$525,	-12(%ebp)
	movl	-8(%ebp),	%esi
	subl	-12(%ebp),	%esi
	movl	%esi,	-8(%ebp)
	movl	$940,	-12(%ebp)
	movl	$526,	-16(%ebp)
	movl	-12(%ebp),	%esi
	pushl	%eax
	xor	%eax,	%eax
	cmpl	-16(%ebp),	%esi
	sete	%al
	movl	%eax,	%esi
	popl	%eax
	movl	%esi,	-12(%ebp)
	movl	-8(%ebp),	%esi
	imull	-12(%ebp),	%esi
	movl	%esi,	-8(%ebp)
	movl	-4(%ebp),	%esi
	pushl	%eax
	xor	%eax,	%eax
	cmpl	-8(%ebp),	%esi
	setge	%al
	movl	%eax,	%esi
	popl	%eax
	movl	%esi,	-4(%ebp)
	pushl	%eax
	xor	%eax,	%eax
	cmpl	$0,	%ecx
	setne	%al
	movl	%eax,	%ecx
	xor	%eax,	%eax
	cmpl	$0,	-4(%ebp)
	setne	%al
	movl	%eax,	-4(%ebp)
	orl	-4(%ebp),	%ecx
	popl	%eax
	pushl	%eax
	xor	%eax,	%eax
	cmpl	%ecx,	%ebx
	setg	%al
	movl	%eax,	%ebx
	popl	%eax
	movl	$872,	%ecx
	movl	$387,	-4(%ebp)
	pushl	%eax
	xor	%eax,	%eax
	cmpl	-4(%ebp),	%ecx
	setne	%al
	movl	%eax,	%ecx
	popl	%eax
	movl	x0,	%edi
	movl	%edi,	-4(%ebp)
	movl	$129,	-8(%ebp)
	movl	-4(%ebp),	%esi
	pushl	%eax
	xor	%eax,	%eax
	cmpl	$0,	%esi
	setne	%al
	movl	%eax,	%esi
	xor	%eax,	%eax
	cmpl	$0,	-8(%ebp)
	setne	%al
	movl	%eax,	-8(%ebp)
	orl	-8(%ebp),	%esi
	popl	%eax
	movl	%esi,	-4(%ebp)
	pushl	%eax
	xor	%eax,	%eax
	cmpl	-4(%ebp),	%ecx
	setle	%al
	movl	%eax,	%ecx
	popl	%eax
	movl	x3,	%edi
	movl	%edi,	-4(%ebp)
	movl	$756,	-8(%ebp)
	movl	-4(%ebp),	%esi
	pushl	%eax
	xor	%eax,	%eax
	cmpl	-8(%ebp),	%esi
	setge	%al
	movl	%eax,	%esi
	popl	%eax
	movl	%esi,	-4(%ebp)
	movl	$660,	-8(%ebp)
	movl	x0,	%edi
	movl	%edi,	-12(%ebp)
	movl	-8(%ebp),	%esi
	pushl	%eax
	xor	%eax,	%eax
	cmpl	-12(%ebp),	%esi
	setle	%al
	movl	%eax,	%esi
	popl	%eax
	movl	%esi,	-8(%ebp)
	movl	-4(%ebp),	%esi
	pushl	%eax
	xor	%eax,	%eax
	cmpl	-8(%ebp),	%esi
	setl	%al
	movl	%eax,	%esi
	popl	%eax
	movl	%esi,	-4(%ebp)
	pushl	%eax
	xor	%eax,	%eax
	cmpl	-4(%ebp),	%ecx
	setl	%al
	movl	%eax,	%ecx
	popl	%eax
	movl	x2,	%edi
	movl	%edi,	-4(%ebp)
	movl	$373,	-8(%ebp)
	movl	-4(%ebp),	%esi
	pushl	%eax
	xor	%eax,	%eax
	cmpl	-8(%ebp),	%esi
	setg	%al
	movl	%eax,	%esi
	popl	%eax
	movl	%esi,	-4(%ebp)
	movl	$890,	-8(%ebp)
	movl	x3,	%edi
	movl	%edi,	-12(%ebp)
	movl	-8(%ebp),	%esi
	pushl	%eax
	xor	%eax,	%eax
	cmpl	$0,	%esi
	setne	%al
	movl	%eax,	%esi
	xor	%eax,	%eax
	cmpl	$0,	-12(%ebp)
	setne	%al
	movl	%eax,	-12(%ebp)
	andl	-12(%ebp),	%esi
	popl	%eax
	movl	%esi,	-8(%ebp)
	movl	-4(%ebp),	%esi
	addl	-8(%ebp),	%esi
	movl	%esi,	-4(%ebp)
	movl	x2,	%edi
	movl	%edi,	-8(%ebp)
	movl	$647,	-12(%ebp)
	movl	-8(%ebp),	%esi
	pushl	%eax
	xor	%eax,	%eax
	cmpl	-12(%ebp),	%esi
	setle	%al
	movl	%eax,	%esi
	popl	%eax
	movl	%esi,	-8(%ebp)
	movl	x2,	%edi
	movl	%edi,	-12(%ebp)
	movl	x3,	%edi
	movl	%edi,	-16(%ebp)
	movl	-12(%ebp),	%esi
	pushl	%eax
	xor	%eax,	%eax
	cmpl	$0,	%esi
	setne	%al
	movl	%eax,	%esi
	xor	%eax,	%eax
	cmpl	$0,	-16(%ebp)
	setne	%al
	movl	%eax,	-16(%ebp)
	orl	-16(%ebp),	%esi
	popl	%eax
	movl	%esi,	-12(%ebp)
	movl	-8(%ebp),	%esi
	pushl	%eax
	xor	%eax,	%eax
	cmpl	-12(%ebp),	%esi
	sete	%al
	movl	%eax,	%esi
	popl	%eax
	movl	%esi,	-8(%ebp)
	movl	-4(%ebp),	%esi
	pushl	%eax
	xor	%eax,	%eax
	cmpl	-8(%ebp),	%esi
	setge	%al
	movl	%eax,	%esi
	popl	%eax
	movl	%esi,	-4(%ebp)
	pushl	%eax
	xor	%eax,	%eax
	cmpl	-4(%ebp),	%ecx
	setg	%al
	movl	%eax,	%ecx
	popl	%eax
	movl	x0,	%edi
	movl	%edi,	-4(%ebp)
	movl	x2,	%edi
	movl	%edi,	-8(%ebp)
	movl	-4(%ebp),	%esi
	pushl	%eax
	xor	%eax,	%eax
	cmpl	-8(%ebp),	%esi
	setg	%al
	movl	%eax,	%esi
	popl	%eax
	movl	%esi,	-4(%ebp)
	movl	$190,	-8(%ebp)
	movl	x3,	%edi
	movl	%edi,	-12(%ebp)
	movl	-8(%ebp),	%esi
	pushl	%eax
	xor	%eax,	%eax
	cmpl	-12(%ebp),	%esi
	setg	%al
	movl	%eax,	%esi
	popl	%eax
	movl	%esi,	-8(%ebp)
	movl	-4(%ebp),	%esi
	imull	-8(%ebp),	%esi
	movl	%esi,	-4(%ebp)
	movl	$899,	-8(%ebp)
	movl	x1,	%edi
	movl	%edi,	-12(%ebp)
	movl	-8(%ebp),	%esi
	pushl	%eax
	xor	%eax,	%eax
	cmpl	-12(%ebp),	%esi
	setge	%al
	movl	%eax,	%esi
	popl	%eax
	movl	%esi,	-8(%ebp)
	movl	x2,	%edi
	movl	%edi,	-12(%ebp)
	movl	x1,	%edi
	movl	%edi,	-16(%ebp)
	movl	-12(%ebp),	%esi
	pushl	%eax
	xor	%eax,	%eax
	cmpl	$0,	%esi
	setne	%al
	movl	%eax,	%esi
	xor	%eax,	%eax
	cmpl	$0,	-16(%ebp)
	setne	%al
	movl	%eax,	-16(%ebp)
	orl	-16(%ebp),	%esi
	popl	%eax
	movl	%esi,	-12(%ebp)
	movl	-8(%ebp),	%esi
	pushl	%eax
	xor	%eax,	%eax
	cmpl	-12(%ebp),	%esi
	setl	%al
	movl	%eax,	%esi
	popl	%eax
	movl	%esi,	-8(%ebp)
	movl	-4(%ebp),	%esi
	pushl	%eax
	xor	%eax,	%eax
	cmpl	-8(%ebp),	%esi
	setle	%al
	movl	%eax,	%esi
	popl	%eax
	movl	%esi,	-4(%ebp)
	movl	$820,	-8(%ebp)
	movl	$877,	-12(%ebp)
	movl	-8(%ebp),	%esi
	subl	-12(%ebp),	%esi
	movl	%esi,	-8(%ebp)
	movl	$149,	-12(%ebp)
	movl	x3,	%edi
	movl	%edi,	-16(%ebp)
	movl	-12(%ebp),	%esi
	pushl	%eax
	xor	%eax,	%eax
	cmpl	-16(%ebp),	%esi
	setg	%al
	movl	%eax,	%esi
	popl	%eax
	movl	%esi,	-12(%ebp)
	movl	-8(%ebp),	%esi
	pushl	%eax
	xor	%eax,	%eax
	cmpl	-12(%ebp),	%esi
	setl	%al
	movl	%eax,	%esi
	popl	%eax
	movl	%esi,	-8(%ebp)
	movl	$529,	-12(%ebp)
	movl	x2,	%edi
	movl	%edi,	-16(%ebp)
	movl	-12(%ebp),	%esi
	pushl	%eax
	xor	%eax,	%eax
	cmpl	-16(%ebp),	%esi
	setl	%al
	movl	%eax,	%esi
	popl	%eax
	movl	%esi,	-12(%ebp)
	movl	$179,	-16(%ebp)
	movl	x3,	%edi
	movl	%edi,	-20(%ebp)
	movl	-16(%ebp),	%esi
	pushl	%eax
	xor	%eax,	%eax
	cmpl	$0,	%esi
	setne	%al
	movl	%eax,	%esi
	xor	%eax,	%eax
	cmpl	$0,	-20(%ebp)
	setne	%al
	movl	%eax,	-20(%ebp)
	orl	-20(%ebp),	%esi
	popl	%eax
	movl	%esi,	-16(%ebp)
	movl	-12(%ebp),	%esi
	pushl	%eax
	xor	%eax,	%eax
	cmpl	-16(%ebp),	%esi
	setge	%al
	movl	%eax,	%esi
	popl	%eax
	movl	%esi,	-12(%ebp)
	movl	-8(%ebp),	%esi
	pushl	%eax
	xor	%eax,	%eax
	cmpl	-12(%ebp),	%esi
	setl	%al
	movl	%eax,	%esi
	popl	%eax
	movl	%esi,	-8(%ebp)
	movl	-4(%ebp),	%esi
	pushl	%eax
	xor	%eax,	%eax
	cmpl	-8(%ebp),	%esi
	setge	%al
	movl	%eax,	%esi
	popl	%eax
	movl	%esi,	-4(%ebp)
	addl	-4(%ebp),	%ecx
	pushl	%eax
	xor	%eax,	%eax
	cmpl	%ecx,	%ebx
	sete	%al
	movl	%eax,	%ebx
	popl	%eax
	movl	$640,	%ecx
	movl	x2,	%edi
	movl	%edi,	-4(%ebp)
	subl	-4(%ebp),	%ecx
	movl	$908,	-4(%ebp)
	movl	x3,	%edi
	movl	%edi,	-8(%ebp)
	movl	-4(%ebp),	%esi
	pushl	%eax
	xor	%eax,	%eax
	cmpl	-8(%ebp),	%esi
	setge	%al
	movl	%eax,	%esi
	popl	%eax
	movl	%esi,	-4(%ebp)
	pushl	%eax
	xor	%eax,	%eax
	cmpl	-4(%ebp),	%ecx
	setg	%al
	movl	%eax,	%ecx
	popl	%eax
	movl	x2,	%edi
	movl	%edi,	-4(%ebp)
	movl	$535,	-8(%ebp)
	movl	-4(%ebp),	%esi
	pushl	%eax
	xor	%eax,	%eax
	cmpl	$0,	%esi
	setne	%al
	movl	%eax,	%esi
	xor	%eax,	%eax
	cmpl	$0,	-8(%ebp)
	setne	%al
	movl	%eax,	-8(%ebp)
	andl	-8(%ebp),	%esi
	popl	%eax
	movl	%esi,	-4(%ebp)
	movl	x0,	%edi
	movl	%edi,	-8(%ebp)
	movl	x1,	%edi
	movl	%edi,	-12(%ebp)
	movl	-8(%ebp),	%esi
	pushl	%eax
	xor	%eax,	%eax
	cmpl	$0,	%esi
	setne	%al
	movl	%eax,	%esi
	xor	%eax,	%eax
	cmpl	$0,	-12(%ebp)
	setne	%al
	movl	%eax,	-12(%ebp)
	orl	-12(%ebp),	%esi
	popl	%eax
	movl	%esi,	-8(%ebp)
	movl	-4(%ebp),	%esi
	pushl	%eax
	xor	%eax,	%eax
	cmpl	-8(%ebp),	%esi
	setle	%al
	movl	%eax,	%esi
	popl	%eax
	movl	%esi,	-4(%ebp)
	pushl	%eax
	xor	%eax,	%eax
	cmpl	-4(%ebp),	%ecx
	setge	%al
	movl	%eax,	%ecx
	popl	%eax
	movl	$406,	-4(%ebp)
	movl	$802,	-8(%ebp)
	movl	-4(%ebp),	%esi
	pushl	%eax
	xor	%eax,	%eax
	cmpl	-8(%ebp),	%esi
	setge	%al
	movl	%eax,	%esi
	popl	%eax
	movl	%esi,	-4(%ebp)
	movl	x3,	%edi
	movl	%edi,	-8(%ebp)
	movl	x2,	%edi
	movl	%edi,	-12(%ebp)
	movl	-8(%ebp),	%esi
	pushl	%eax
	xor	%eax,	%eax
	cmpl	$0,	%esi
	setne	%al
	movl	%eax,	%esi
	xor	%eax,	%eax
	cmpl	$0,	-12(%ebp)
	setne	%al
	movl	%eax,	-12(%ebp)
	andl	-12(%ebp),	%esi
	popl	%eax
	movl	%esi,	-8(%ebp)
	movl	-4(%ebp),	%esi
	pushl	%eax
	xor	%eax,	%eax
	cmpl	-8(%ebp),	%esi
	setge	%al
	movl	%eax,	%esi
	popl	%eax
	movl	%esi,	-4(%ebp)
	movl	$926,	-8(%ebp)
	movl	$406,	-12(%ebp)
	movl	-8(%ebp),	%esi
	pushl	%eax
	xor	%eax,	%eax
	cmpl	-12(%ebp),	%esi
	setg	%al
	movl	%eax,	%esi
	popl	%eax
	movl	%esi,	-8(%ebp)
	movl	$997,	-12(%ebp)
	movl	$640,	-16(%ebp)
	movl	-12(%ebp),	%esi
	pushl	%eax
	xor	%eax,	%eax
	cmpl	$0,	%esi
	setne	%al
	movl	%eax,	%esi
	xor	%eax,	%eax
	cmpl	$0,	-16(%ebp)
	setne	%al
	movl	%eax,	-16(%ebp)
	andl	-16(%ebp),	%esi
	popl	%eax
	movl	%esi,	-12(%ebp)
	movl	-8(%ebp),	%esi
	pushl	%eax
	xor	%eax,	%eax
	cmpl	-12(%ebp),	%esi
	sete	%al
	movl	%eax,	%esi
	popl	%eax
	movl	%esi,	-8(%ebp)
	movl	-4(%ebp),	%esi
	pushl	%eax
	xor	%eax,	%eax
	cmpl	-8(%ebp),	%esi
	setge	%al
	movl	%eax,	%esi
	popl	%eax
	movl	%esi,	-4(%ebp)
	pushl	%eax
	xor	%eax,	%eax
	cmpl	-4(%ebp),	%ecx
	setle	%al
	movl	%eax,	%ecx
	popl	%eax
	movl	x2,	%edi
	movl	%edi,	-4(%ebp)
	movl	$986,	-8(%ebp)
	movl	-4(%ebp),	%esi
	pushl	%eax
	xor	%eax,	%eax
	cmpl	-8(%ebp),	%esi
	setg	%al
	movl	%eax,	%esi
	popl	%eax
	movl	%esi,	-4(%ebp)
	movl	x0,	%edi
	movl	%edi,	-8(%ebp)
	movl	$967,	-12(%ebp)
	movl	-8(%ebp),	%esi
	imull	-12(%ebp),	%esi
	movl	%esi,	-8(%ebp)
	movl	-4(%ebp),	%esi
	imull	-8(%ebp),	%esi
	movl	%esi,	-4(%ebp)
	movl	$79,	-8(%ebp)
	movl	$74,	-12(%ebp)
	movl	-8(%ebp),	%esi
	subl	-12(%ebp),	%esi
	movl	%esi,	-8(%ebp)
	movl	$329,	-12(%ebp)
	movl	$391,	-16(%ebp)
	movl	-12(%ebp),	%esi
	pushl	%eax
	xor	%eax,	%eax
	cmpl	$0,	%esi
	setne	%al
	movl	%eax,	%esi
	xor	%eax,	%eax
	cmpl	$0,	-16(%ebp)
	setne	%al
	movl	%eax,	-16(%ebp)
	andl	-16(%ebp),	%esi
	popl	%eax
	movl	%esi,	-12(%ebp)
	movl	-8(%ebp),	%esi
	pushl	%eax
	xor	%eax,	%eax
	cmpl	-12(%ebp),	%esi
	setg	%al
	movl	%eax,	%esi
	popl	%eax
	movl	%esi,	-8(%ebp)
	movl	-4(%ebp),	%esi
	pushl	%eax
	xor	%eax,	%eax
	cmpl	-8(%ebp),	%esi
	setge	%al
	movl	%eax,	%esi
	popl	%eax
	movl	%esi,	-4(%ebp)
	movl	$695,	-8(%ebp)
	movl	x1,	%edi
	movl	%edi,	-12(%ebp)
	movl	-8(%ebp),	%esi
	pushl	%eax
	xor	%eax,	%eax
	cmpl	-12(%ebp),	%esi
	setne	%al
	movl	%eax,	%esi
	popl	%eax
	movl	%esi,	-8(%ebp)
	movl	x3,	%edi
	movl	%edi,	-12(%ebp)
	movl	$917,	-16(%ebp)
	movl	-12(%ebp),	%esi
	pushl	%eax
	xor	%eax,	%eax
	cmpl	-16(%ebp),	%esi
	sete	%al
	movl	%eax,	%esi
	popl	%eax
	movl	%esi,	-12(%ebp)
	movl	-8(%ebp),	%esi
	addl	-12(%ebp),	%esi
	movl	%esi,	-8(%ebp)
	movl	$524,	-12(%ebp)
	movl	$799,	-16(%ebp)
	movl	-12(%ebp),	%esi
	addl	-16(%ebp),	%esi
	movl	%esi,	-12(%ebp)
	movl	x2,	%edi
	movl	%edi,	-16(%ebp)
	movl	x3,	%edi
	movl	%edi,	-20(%ebp)
	movl	-16(%ebp),	%esi
	pushl	%eax
	xor	%eax,	%eax
	cmpl	$0,	%esi
	setne	%al
	movl	%eax,	%esi
	xor	%eax,	%eax
	cmpl	$0,	-20(%ebp)
	setne	%al
	movl	%eax,	-20(%ebp)
	andl	-20(%ebp),	%esi
	popl	%eax
	movl	%esi,	-16(%ebp)
	movl	-12(%ebp),	%esi
	pushl	%eax
	xor	%eax,	%eax
	cmpl	-16(%ebp),	%esi
	setg	%al
	movl	%eax,	%esi
	popl	%eax
	movl	%esi,	-12(%ebp)
	movl	-8(%ebp),	%esi
	pushl	%eax
	xor	%eax,	%eax
	cmpl	-12(%ebp),	%esi
	setg	%al
	movl	%eax,	%esi
	popl	%eax
	movl	%esi,	-8(%ebp)
	movl	-4(%ebp),	%esi
	pushl	%eax
	xor	%eax,	%eax
	cmpl	-8(%ebp),	%esi
	setne	%al
	movl	%eax,	%esi
	popl	%eax
	movl	%esi,	-4(%ebp)
	pushl	%eax
	xor	%eax,	%eax
	cmpl	-4(%ebp),	%ecx
	setle	%al
	movl	%eax,	%ecx
	popl	%eax
	movl	$507,	-4(%ebp)
	movl	$318,	-8(%ebp)
	movl	-4(%ebp),	%esi
	pushl	%eax
	xor	%eax,	%eax
	cmpl	-8(%ebp),	%esi
	setge	%al
	movl	%eax,	%esi
	popl	%eax
	movl	%esi,	-4(%ebp)
	movl	x0,	%edi
	movl	%edi,	-8(%ebp)
	movl	x2,	%edi
	movl	%edi,	-12(%ebp)
	movl	-8(%ebp),	%esi
	pushl	%eax
	xor	%eax,	%eax
	cmpl	$0,	%esi
	setne	%al
	movl	%eax,	%esi
	xor	%eax,	%eax
	cmpl	$0,	-12(%ebp)
	setne	%al
	movl	%eax,	-12(%ebp)
	andl	-12(%ebp),	%esi
	popl	%eax
	movl	%esi,	-8(%ebp)
	movl	-4(%ebp),	%esi
	pushl	%eax
	xor	%eax,	%eax
	cmpl	-8(%ebp),	%esi
	setl	%al
	movl	%eax,	%esi
	popl	%eax
	movl	%esi,	-4(%ebp)
	movl	x1,	%edi
	movl	%edi,	-8(%ebp)
	movl	$472,	-12(%ebp)
	movl	-8(%ebp),	%esi
	imull	-12(%ebp),	%esi
	movl	%esi,	-8(%ebp)
	movl	x0,	%edi
	movl	%edi,	-12(%ebp)
	movl	$642,	-16(%ebp)
	movl	-12(%ebp),	%esi
	pushl	%eax
	xor	%eax,	%eax
	cmpl	-16(%ebp),	%esi
	setl	%al
	movl	%eax,	%esi
	popl	%eax
	movl	%esi,	-12(%ebp)
	movl	-8(%ebp),	%esi
	imull	-12(%ebp),	%esi
	movl	%esi,	-8(%ebp)
	movl	-4(%ebp),	%esi
	pushl	%eax
	xor	%eax,	%eax
	cmpl	-8(%ebp),	%esi
	setl	%al
	movl	%eax,	%esi
	popl	%eax
	movl	%esi,	-4(%ebp)
	movl	$200,	-8(%ebp)
	movl	x0,	%edi
	movl	%edi,	-12(%ebp)
	movl	-8(%ebp),	%esi
	addl	-12(%ebp),	%esi
	movl	%esi,	-8(%ebp)
	movl	x0,	%edi
	movl	%edi,	-12(%ebp)
	movl	$566,	-16(%ebp)
	movl	-12(%ebp),	%esi
	pushl	%eax
	xor	%eax,	%eax
	cmpl	-16(%ebp),	%esi
	setne	%al
	movl	%eax,	%esi
	popl	%eax
	movl	%esi,	-12(%ebp)
	movl	-8(%ebp),	%esi
	pushl	%eax
	xor	%eax,	%eax
	cmpl	-12(%ebp),	%esi
	sete	%al
	movl	%eax,	%esi
	popl	%eax
	movl	%esi,	-8(%ebp)
	movl	$831,	-12(%ebp)
	movl	$640,	-16(%ebp)
	movl	-12(%ebp),	%esi
	pushl	%eax
	xor	%eax,	%eax
	cmpl	-16(%ebp),	%esi
	setne	%al
	movl	%eax,	%esi
	popl	%eax
	movl	%esi,	-12(%ebp)
	movl	$997,	-16(%ebp)
	movl	$472,	-20(%ebp)
	movl	-16(%ebp),	%esi
	pushl	%eax
	xor	%eax,	%eax
	cmpl	$0,	%esi
	setne	%al
	movl	%eax,	%esi
	xor	%eax,	%eax
	cmpl	$0,	-20(%ebp)
	setne	%al
	movl	%eax,	-20(%ebp)
	orl	-20(%ebp),	%esi
	popl	%eax
	movl	%esi,	-16(%ebp)
	movl	-12(%ebp),	%esi
	pushl	%eax
	xor	%eax,	%eax
	cmpl	-16(%ebp),	%esi
	setne	%al
	movl	%eax,	%esi
	popl	%eax
	movl	%esi,	-12(%ebp)
	movl	-8(%ebp),	%esi
	pushl	%eax
	xor	%eax,	%eax
	cmpl	-12(%ebp),	%esi
	setle	%al
	movl	%eax,	%esi
	popl	%eax
	movl	%esi,	-8(%ebp)
	movl	-4(%ebp),	%esi
	addl	-8(%ebp),	%esi
	movl	%esi,	-4(%ebp)
	movl	$226,	-8(%ebp)
	movl	$93,	-12(%ebp)
	movl	-8(%ebp),	%esi
	subl	-12(%ebp),	%esi
	movl	%esi,	-8(%ebp)
	movl	x3,	%edi
	movl	%edi,	-12(%ebp)
	movl	$655,	-16(%ebp)
	movl	-12(%ebp),	%esi
	pushl	%eax
	xor	%eax,	%eax
	cmpl	$0,	%esi
	setne	%al
	movl	%eax,	%esi
	xor	%eax,	%eax
	cmpl	$0,	-16(%ebp)
	setne	%al
	movl	%eax,	-16(%ebp)
	andl	-16(%ebp),	%esi
	popl	%eax
	movl	%esi,	-12(%ebp)
	movl	-8(%ebp),	%esi
	pushl	%eax
	xor	%eax,	%eax
	cmpl	-12(%ebp),	%esi
	setne	%al
	movl	%eax,	%esi
	popl	%eax
	movl	%esi,	-8(%ebp)
	movl	x1,	%edi
	movl	%edi,	-12(%ebp)
	movl	x1,	%edi
	movl	%edi,	-16(%ebp)
	movl	-12(%ebp),	%esi
	pushl	%eax
	xor	%eax,	%eax
	cmpl	$0,	%esi
	setne	%al
	movl	%eax,	%esi
	xor	%eax,	%eax
	cmpl	$0,	-16(%ebp)
	setne	%al
	movl	%eax,	-16(%ebp)
	orl	-16(%ebp),	%esi
	popl	%eax
	movl	%esi,	-12(%ebp)
	movl	x3,	%edi
	movl	%edi,	-16(%ebp)
	movl	x2,	%edi
	movl	%edi,	-20(%ebp)
	movl	-16(%ebp),	%esi
	addl	-20(%ebp),	%esi
	movl	%esi,	-16(%ebp)
	movl	-12(%ebp),	%esi
	pushl	%eax
	xor	%eax,	%eax
	cmpl	-16(%ebp),	%esi
	setle	%al
	movl	%eax,	%esi
	popl	%eax
	movl	%esi,	-12(%ebp)
	movl	-8(%ebp),	%esi
	pushl	%eax
	xor	%eax,	%eax
	cmpl	-12(%ebp),	%esi
	sete	%al
	movl	%eax,	%esi
	popl	%eax
	movl	%esi,	-8(%ebp)
	movl	$351,	-12(%ebp)
	movl	$655,	-16(%ebp)
	movl	-12(%ebp),	%esi
	pushl	%eax
	xor	%eax,	%eax
	cmpl	$0,	%esi
	setne	%al
	movl	%eax,	%esi
	xor	%eax,	%eax
	cmpl	$0,	-16(%ebp)
	setne	%al
	movl	%eax,	-16(%ebp)
	andl	-16(%ebp),	%esi
	popl	%eax
	movl	%esi,	-12(%ebp)
	movl	x1,	%edi
	movl	%edi,	-16(%ebp)
	movl	$511,	-20(%ebp)
	movl	-16(%ebp),	%esi
	addl	-20(%ebp),	%esi
	movl	%esi,	-16(%ebp)
	movl	-12(%ebp),	%esi
	pushl	%eax
	xor	%eax,	%eax
	cmpl	$0,	%esi
	setne	%al
	movl	%eax,	%esi
	xor	%eax,	%eax
	cmpl	$0,	-16(%ebp)
	setne	%al
	movl	%eax,	-16(%ebp)
	orl	-16(%ebp),	%esi
	popl	%eax
	movl	%esi,	-12(%ebp)
	movl	x3,	%edi
	movl	%edi,	-16(%ebp)
	movl	x2,	%edi
	movl	%edi,	-20(%ebp)
	movl	-16(%ebp),	%esi
	pushl	%eax
	xor	%eax,	%eax
	cmpl	$0,	%esi
	setne	%al
	movl	%eax,	%esi
	xor	%eax,	%eax
	cmpl	$0,	-20(%ebp)
	setne	%al
	movl	%eax,	-20(%ebp)
	orl	-20(%ebp),	%esi
	popl	%eax
	movl	%esi,	-16(%ebp)
	movl	$383,	-20(%ebp)
	movl	x2,	%edi
	movl	%edi,	-24(%ebp)
	movl	-20(%ebp),	%esi
	pushl	%eax
	xor	%eax,	%eax
	cmpl	-24(%ebp),	%esi
	setl	%al
	movl	%eax,	%esi
	popl	%eax
	movl	%esi,	-20(%ebp)
	movl	-16(%ebp),	%esi
	pushl	%eax
	xor	%eax,	%eax
	cmpl	-20(%ebp),	%esi
	setg	%al
	movl	%eax,	%esi
	popl	%eax
	movl	%esi,	-16(%ebp)
	movl	-12(%ebp),	%esi
	addl	-16(%ebp),	%esi
	movl	%esi,	-12(%ebp)
	movl	-8(%ebp),	%esi
	pushl	%eax
	xor	%eax,	%eax
	cmpl	-12(%ebp),	%esi
	setg	%al
	movl	%eax,	%esi
	popl	%eax
	movl	%esi,	-8(%ebp)
	movl	-4(%ebp),	%esi
	pushl	%eax
	xor	%eax,	%eax
	cmpl	-8(%ebp),	%esi
	setl	%al
	movl	%eax,	%esi
	popl	%eax
	movl	%esi,	-4(%ebp)
	pushl	%eax
	xor	%eax,	%eax
	cmpl	$0,	%ecx
	setne	%al
	movl	%eax,	%ecx
	xor	%eax,	%eax
	cmpl	$0,	-4(%ebp)
	setne	%al
	movl	%eax,	-4(%ebp)
	andl	-4(%ebp),	%ecx
	popl	%eax
	pushl	%eax
	xor	%eax,	%eax
	cmpl	$0,	%ebx
	setne	%al
	movl	%eax,	%ebx
	xor	%eax,	%eax
	cmpl	$0,	%ecx
	setne	%al
	movl	%eax,	%ecx
	andl	%ecx,	%ebx
	popl	%eax
	movl	%ebx,	y
	movl	y,	%ebx
	pushl	%ebx
	call	lwrite
	popl	%ebx
	movl	%ebp,%esp
	popl	%ebp
	ret
