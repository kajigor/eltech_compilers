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
	movl	%eax,x0
	call	lread
	movl	%eax,x1
	call	lread
	movl	%eax,x2
	call	lread
	movl	%eax,x3
	movl	$544,%ebx
	movl	x0,%ecx
	movl	%ebx,%edx
	andl	%ebx,%edx
	movl	$0,%edx
	setne	%dl
	movl	%ecx,%eax
	andl	%ecx,%eax
	movl	$0,%eax
	setne	%al
	andl	%eax,%edx
	movl	$0,%edx
	setne	%dl
	movl	%edx,%ebx
	movl	$189,%ecx
	movl	x2,%esi
	addl	%esi,%ecx
	cmpl	%ecx,%ebx
	movl	$0,%edx
	setl	%dl
	movl	%edx,%ebx
	movl	x3,%ecx
	movl	x0,%esi
	orl	%esi,%ecx
	movl	$0,%edx
	setne	%dl
	movl	%edx,%ecx
	movl	$668,%esi
	movl	$36,%edi
	cmpl	%edi,%esi
	movl	$0,%edx
	setl	%dl
	movl	%edx,%esi
	subl	%esi,%ecx
	imull	%ecx,%ebx
	movl	$502,%ecx
	movl	x1,%esi
	cmpl	%esi,%ecx
	movl	$0,%edx
	setge	%dl
	movl	%edx,%ecx
	movl	$107,%esi
	movl	$146,%edi
	imull	%edi,%esi
	cmpl	%esi,%ecx
	movl	$0,%edx
	setg	%dl
	movl	%edx,%ecx
	movl	$582,%esi
	movl	$922,%edi
	cmpl	%edi,%esi
	movl	$0,%edx
	setne	%dl
	movl	%edx,%esi
	movl	x3,%edi
	movl	$572,-4(%ebp)
	cmpl	-4(%ebp),%edi
	movl	$0,%edx
	setl	%dl
	movl	%edx,%edi
	imull	%edi,%esi
	addl	%esi,%ecx
	cmpl	%ecx,%ebx
	movl	$0,%edx
	setle	%dl
	movl	%edx,%ebx
	movl	$955,%ecx
	movl	x1,%esi
	imull	%esi,%ecx
	movl	$306,%esi
	movl	$801,%edi
	orl	%edi,%esi
	movl	$0,%edx
	setne	%dl
	movl	%edx,%esi
	cmpl	%esi,%ecx
	movl	$0,%edx
	setl	%dl
	movl	%edx,%ecx
	movl	x0,%esi
	movl	$70,%edi
	cmpl	%edi,%esi
	movl	$0,%edx
	setl	%dl
	movl	%edx,%esi
	movl	$867,%edi
	movl	x2,%edx
	movl	%edx,-4(%ebp)
	cmpl	-4(%ebp),%edi
	movl	$0,%edx
	setle	%dl
	movl	%edx,%edi
	addl	%edi,%esi
	cmpl	%esi,%ecx
	movl	$0,%edx
	setne	%dl
	movl	%edx,%ecx
	movl	x3,%esi
	movl	x1,%edi
	cmpl	%edi,%esi
	movl	$0,%edx
	setge	%dl
	movl	%edx,%esi
	movl	$293,%edi
	movl	$644,-4(%ebp)
	imull	-4(%ebp),%edi
	orl	%edi,%esi
	movl	$0,%edx
	setne	%dl
	movl	%edx,%esi
	movl	x2,%edi
	movl	$466,-4(%ebp)
	cmpl	-4(%ebp),%edi
	movl	$0,%edx
	setl	%dl
	movl	%edx,%edi
	movl	x0,%edx
	movl	%edx,-4(%ebp)
	movl	$703,-8(%ebp)
	movl	-4(%ebp),%edx
	cmpl	-8(%ebp),%edx
	movl	$0,%edx
	sete	%dl
	movl	%edx,-4(%ebp)
	orl	-4(%ebp),%edi
	movl	$0,%edx
	setne	%dl
	movl	%edx,%edi
	cmpl	%edi,%esi
	movl	$0,%edx
	setne	%dl
	movl	%edx,%esi
	cmpl	%esi,%ecx
	movl	$0,%edx
	setg	%dl
	movl	%edx,%ecx
	cmpl	%ecx,%ebx
	movl	$0,%edx
	setg	%dl
	movl	%edx,%ebx
	movl	$81,%ecx
	movl	x3,%esi
	cmpl	%esi,%ecx
	movl	$0,%edx
	setge	%dl
	movl	%edx,%ecx
	movl	$595,%esi
	movl	$136,%edi
	imull	%edi,%esi
	orl	%esi,%ecx
	movl	$0,%edx
	setne	%dl
	movl	%edx,%ecx
	movl	$621,%esi
	movl	x1,%edi
	cmpl	%edi,%esi
	movl	$0,%edx
	setl	%dl
	movl	%edx,%esi
	movl	x3,%edi
	movl	x2,%edx
	movl	%edx,-4(%ebp)
	movl	%edi,%edx
	andl	%edi,%edx
	movl	$0,%edx
	setne	%dl
	movl	-4(%ebp),%eax
	andl	-4(%ebp),%eax
	movl	$0,%eax
	setne	%al
	andl	%eax,%edx
	movl	$0,%edx
	setne	%dl
	movl	%edx,%edi
	cmpl	%edi,%esi
	movl	$0,%edx
	setle	%dl
	movl	%edx,%esi
	cmpl	%esi,%ecx
	movl	$0,%edx
	setge	%dl
	movl	%edx,%ecx
	movl	x1,%esi
	movl	$573,%edi
	cmpl	%edi,%esi
	movl	$0,%edx
	sete	%dl
	movl	%edx,%esi
	movl	x0,%edi
	movl	x0,%edx
	movl	%edx,-4(%ebp)
	orl	-4(%ebp),%edi
	movl	$0,%edx
	setne	%dl
	movl	%edx,%edi
	cmpl	%edi,%esi
	movl	$0,%edx
	setl	%dl
	movl	%edx,%esi
	movl	$304,%edi
	movl	x1,%edx
	movl	%edx,-4(%ebp)
	subl	-4(%ebp),%edi
	movl	x3,%edx
	movl	%edx,-4(%ebp)
	movl	x1,%edx
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%edx
	cmpl	-8(%ebp),%edx
	movl	$0,%edx
	setl	%dl
	movl	%edx,-4(%ebp)
	subl	-4(%ebp),%edi
	cmpl	%edi,%esi
	movl	$0,%edx
	setle	%dl
	movl	%edx,%esi
	movl	%ecx,%edx
	andl	%ecx,%edx
	movl	$0,%edx
	setne	%dl
	movl	%esi,%eax
	andl	%esi,%eax
	movl	$0,%eax
	setne	%al
	andl	%eax,%edx
	movl	$0,%edx
	setne	%dl
	movl	%edx,%ecx
	movl	x1,%esi
	movl	$518,%edi
	cmpl	%edi,%esi
	movl	$0,%edx
	sete	%dl
	movl	%edx,%esi
	movl	x2,%edi
	movl	$756,-4(%ebp)
	imull	-4(%ebp),%edi
	subl	%edi,%esi
	movl	$889,%edi
	movl	x3,%edx
	movl	%edx,-4(%ebp)
	subl	-4(%ebp),%edi
	movl	x3,%edx
	movl	%edx,-4(%ebp)
	movl	x1,%edx
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%edx
	cmpl	-8(%ebp),%edx
	movl	$0,%edx
	setl	%dl
	movl	%edx,-4(%ebp)
	addl	-4(%ebp),%edi
	cmpl	%edi,%esi
	movl	$0,%edx
	setne	%dl
	movl	%edx,%esi
	movl	x2,%edi
	movl	x1,%edx
	movl	%edx,-4(%ebp)
	cmpl	-4(%ebp),%edi
	movl	$0,%edx
	setl	%dl
	movl	%edx,%edi
	movl	$512,-4(%ebp)
	movl	$357,-8(%ebp)
	movl	-4(%ebp),%edx
	cmpl	-8(%ebp),%edx
	movl	$0,%edx
	sete	%dl
	movl	%edx,-4(%ebp)
	orl	-4(%ebp),%edi
	movl	$0,%edx
	setne	%dl
	movl	%edx,%edi
	movl	x1,%edx
	movl	%edx,-4(%ebp)
	movl	x0,%edx
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%edx
	cmpl	-8(%ebp),%edx
	movl	$0,%edx
	sete	%dl
	movl	%edx,-4(%ebp)
	movl	$10,-8(%ebp)
	movl	$32,-12(%ebp)
	movl	-8(%ebp),%edx
	cmpl	-12(%ebp),%edx
	movl	$0,%edx
	setg	%dl
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%edx
	cmpl	-8(%ebp),%edx
	movl	$0,%edx
	setg	%dl
	movl	%edx,-4(%ebp)
	movl	%edi,%edx
	andl	%edi,%edx
	movl	$0,%edx
	setne	%dl
	movl	-4(%ebp),%eax
	andl	-4(%ebp),%eax
	movl	$0,%eax
	setne	%al
	andl	%eax,%edx
	movl	$0,%edx
	setne	%dl
	movl	%edx,%edi
	cmpl	%edi,%esi
	movl	$0,%edx
	setne	%dl
	movl	%edx,%esi
	cmpl	%esi,%ecx
	movl	$0,%edx
	setge	%dl
	movl	%edx,%ecx
	addl	%ecx,%ebx
	movl	$392,%ecx
	movl	$653,%esi
	cmpl	%esi,%ecx
	movl	$0,%edx
	setl	%dl
	movl	%edx,%ecx
	movl	x3,%esi
	movl	$193,%edi
	movl	%esi,%edx
	andl	%esi,%edx
	movl	$0,%edx
	setne	%dl
	movl	%edi,%eax
	andl	%edi,%eax
	movl	$0,%eax
	setne	%al
	andl	%eax,%edx
	movl	$0,%edx
	setne	%dl
	movl	%edx,%esi
	orl	%esi,%ecx
	movl	$0,%edx
	setne	%dl
	movl	%edx,%ecx
	movl	x0,%esi
	movl	x2,%edi
	movl	%esi,%edx
	andl	%esi,%edx
	movl	$0,%edx
	setne	%dl
	movl	%edi,%eax
	andl	%edi,%eax
	movl	$0,%eax
	setne	%al
	andl	%eax,%edx
	movl	$0,%edx
	setne	%dl
	movl	%edx,%esi
	movl	x3,%edi
	movl	x1,%edx
	movl	%edx,-4(%ebp)
	movl	%edi,%edx
	andl	%edi,%edx
	movl	$0,%edx
	setne	%dl
	movl	-4(%ebp),%eax
	andl	-4(%ebp),%eax
	movl	$0,%eax
	setne	%al
	andl	%eax,%edx
	movl	$0,%edx
	setne	%dl
	movl	%edx,%edi
	movl	%esi,%edx
	andl	%esi,%edx
	movl	$0,%edx
	setne	%dl
	movl	%edi,%eax
	andl	%edi,%eax
	movl	$0,%eax
	setne	%al
	andl	%eax,%edx
	movl	$0,%edx
	setne	%dl
	movl	%edx,%esi
	orl	%esi,%ecx
	movl	$0,%edx
	setne	%dl
	movl	%edx,%ecx
	movl	$931,%esi
	movl	$185,%edi
	cmpl	%edi,%esi
	movl	$0,%edx
	setle	%dl
	movl	%edx,%esi
	movl	$786,%edi
	movl	x3,%edx
	movl	%edx,-4(%ebp)
	imull	-4(%ebp),%edi
	cmpl	%edi,%esi
	movl	$0,%edx
	sete	%dl
	movl	%edx,%esi
	movl	x0,%edi
	movl	$928,-4(%ebp)
	subl	-4(%ebp),%edi
	movl	x2,%edx
	movl	%edx,-4(%ebp)
	movl	x2,%edx
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%edx
	cmpl	-8(%ebp),%edx
	movl	$0,%edx
	setge	%dl
	movl	%edx,-4(%ebp)
	subl	-4(%ebp),%edi
	cmpl	%edi,%esi
	movl	$0,%edx
	setge	%dl
	movl	%edx,%esi
	cmpl	%esi,%ecx
	movl	$0,%edx
	setge	%dl
	movl	%edx,%ecx
	movl	$467,%esi
	movl	$175,%edi
	imull	%edi,%esi
	movl	$485,%edi
	movl	x0,%edx
	movl	%edx,-4(%ebp)
	cmpl	-4(%ebp),%edi
	movl	$0,%edx
	setl	%dl
	movl	%edx,%edi
	subl	%edi,%esi
	movl	x3,%edi
	movl	x0,%edx
	movl	%edx,-4(%ebp)
	cmpl	-4(%ebp),%edi
	movl	$0,%edx
	setne	%dl
	movl	%edx,%edi
	movl	x1,%edx
	movl	%edx,-4(%ebp)
	movl	$922,-8(%ebp)
	movl	-4(%ebp),%edx
	cmpl	-8(%ebp),%edx
	movl	$0,%edx
	sete	%dl
	movl	%edx,-4(%ebp)
	orl	-4(%ebp),%edi
	movl	$0,%edx
	setne	%dl
	movl	%edx,%edi
	cmpl	%edi,%esi
	movl	$0,%edx
	setge	%dl
	movl	%edx,%esi
	movl	x0,%edi
	movl	$96,-4(%ebp)
	subl	-4(%ebp),%edi
	movl	x3,%edx
	movl	%edx,-4(%ebp)
	movl	$647,-8(%ebp)
	movl	-4(%ebp),%edx
	cmpl	-8(%ebp),%edx
	movl	$0,%edx
	setle	%dl
	movl	%edx,-4(%ebp)
	cmpl	-4(%ebp),%edi
	movl	$0,%edx
	setne	%dl
	movl	%edx,%edi
	movl	$270,-4(%ebp)
	movl	$701,-8(%ebp)
	movl	-4(%ebp),%edx
	cmpl	-8(%ebp),%edx
	movl	$0,%edx
	setle	%dl
	movl	%edx,-4(%ebp)
	movl	x1,%edx
	movl	%edx,-8(%ebp)
	movl	x3,%edx
	movl	%edx,-12(%ebp)
	movl	-8(%ebp),%edx
	andl	-8(%ebp),%edx
	movl	$0,%edx
	setne	%dl
	movl	-12(%ebp),%eax
	andl	-12(%ebp),%eax
	movl	$0,%eax
	setne	%al
	andl	%eax,%edx
	movl	$0,%edx
	setne	%dl
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%edx
	imull	-8(%ebp),%edx
	movl	%edx,-4(%ebp)
	subl	-4(%ebp),%edi
	cmpl	%edi,%esi
	movl	$0,%edx
	setge	%dl
	movl	%edx,%esi
	imull	%esi,%ecx
	movl	x1,%esi
	movl	$645,%edi
	cmpl	%edi,%esi
	movl	$0,%edx
	setle	%dl
	movl	%edx,%esi
	movl	$511,%edi
	movl	$244,-4(%ebp)
	movl	%edi,%edx
	andl	%edi,%edx
	movl	$0,%edx
	setne	%dl
	movl	-4(%ebp),%eax
	andl	-4(%ebp),%eax
	movl	$0,%eax
	setne	%al
	andl	%eax,%edx
	movl	$0,%edx
	setne	%dl
	movl	%edx,%edi
	cmpl	%edi,%esi
	movl	$0,%edx
	setle	%dl
	movl	%edx,%esi
	movl	$224,%edi
	movl	x0,%edx
	movl	%edx,-4(%ebp)
	addl	-4(%ebp),%edi
	movl	$359,-4(%ebp)
	movl	x1,%edx
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%edx
	cmpl	-8(%ebp),%edx
	movl	$0,%edx
	setl	%dl
	movl	%edx,-4(%ebp)
	cmpl	-4(%ebp),%edi
	movl	$0,%edx
	setge	%dl
	movl	%edx,%edi
	cmpl	%edi,%esi
	movl	$0,%edx
	setle	%dl
	movl	%edx,%esi
	movl	x3,%edi
	movl	x2,%edx
	movl	%edx,-4(%ebp)
	cmpl	-4(%ebp),%edi
	movl	$0,%edx
	setl	%dl
	movl	%edx,%edi
	movl	$517,-4(%ebp)
	movl	$123,-8(%ebp)
	movl	-4(%ebp),%edx
	cmpl	-8(%ebp),%edx
	movl	$0,%edx
	setne	%dl
	movl	%edx,-4(%ebp)
	subl	-4(%ebp),%edi
	movl	$880,-4(%ebp)
	movl	x1,%edx
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%edx
	orl	-8(%ebp),%edx
	movl	$0,%edx
	setne	%dl
	movl	%edx,-4(%ebp)
	movl	x1,%edx
	movl	%edx,-8(%ebp)
	movl	$297,-12(%ebp)
	movl	-8(%ebp),%edx
	cmpl	-12(%ebp),%edx
	movl	$0,%edx
	sete	%dl
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%edx
	cmpl	-8(%ebp),%edx
	movl	$0,%edx
	setl	%dl
	movl	%edx,-4(%ebp)
	movl	%edi,%edx
	andl	%edi,%edx
	movl	$0,%edx
	setne	%dl
	movl	-4(%ebp),%eax
	andl	-4(%ebp),%eax
	movl	$0,%eax
	setne	%al
	andl	%eax,%edx
	movl	$0,%edx
	setne	%dl
	movl	%edx,%edi
	cmpl	%edi,%esi
	movl	$0,%edx
	setg	%dl
	movl	%edx,%esi
	movl	x3,%edi
	movl	$585,-4(%ebp)
	addl	-4(%ebp),%edi
	movl	x2,%edx
	movl	%edx,-4(%ebp)
	movl	$872,-8(%ebp)
	movl	-4(%ebp),%edx
	cmpl	-8(%ebp),%edx
	movl	$0,%edx
	sete	%dl
	movl	%edx,-4(%ebp)
	cmpl	-4(%ebp),%edi
	movl	$0,%edx
	setle	%dl
	movl	%edx,%edi
	movl	x0,%edx
	movl	%edx,-4(%ebp)
	movl	$3,-8(%ebp)
	movl	-4(%ebp),%edx
	cmpl	-8(%ebp),%edx
	movl	$0,%edx
	setne	%dl
	movl	%edx,-4(%ebp)
	movl	x2,%edx
	movl	%edx,-8(%ebp)
	movl	x3,%edx
	movl	%edx,-12(%ebp)
	movl	-8(%ebp),%edx
	cmpl	-12(%ebp),%edx
	movl	$0,%edx
	setge	%dl
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%edx
	cmpl	-8(%ebp),%edx
	movl	$0,%edx
	setg	%dl
	movl	%edx,-4(%ebp)
	movl	%edi,%edx
	andl	%edi,%edx
	movl	$0,%edx
	setne	%dl
	movl	-4(%ebp),%eax
	andl	-4(%ebp),%eax
	movl	$0,%eax
	setne	%al
	andl	%eax,%edx
	movl	$0,%edx
	setne	%dl
	movl	%edx,%edi
	movl	x2,%edx
	movl	%edx,-4(%ebp)
	movl	$308,-8(%ebp)
	movl	-4(%ebp),%edx
	cmpl	-8(%ebp),%edx
	movl	$0,%edx
	setne	%dl
	movl	%edx,-4(%ebp)
	movl	x2,%edx
	movl	%edx,-8(%ebp)
	movl	$605,-12(%ebp)
	movl	-8(%ebp),%edx
	subl	-12(%ebp),%edx
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%edx
	subl	-8(%ebp),%edx
	movl	%edx,-4(%ebp)
	movl	x3,%edx
	movl	%edx,-8(%ebp)
	movl	$174,-12(%ebp)
	movl	-8(%ebp),%edx
	orl	-12(%ebp),%edx
	movl	$0,%edx
	setne	%dl
	movl	%edx,-8(%ebp)
	movl	x3,%edx
	movl	%edx,-12(%ebp)
	movl	$462,-16(%ebp)
	movl	-12(%ebp),%edx
	cmpl	-16(%ebp),%edx
	movl	$0,%edx
	setg	%dl
	movl	%edx,-12(%ebp)
	movl	-8(%ebp),%edx
	orl	-12(%ebp),%edx
	movl	$0,%edx
	setne	%dl
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%edx
	cmpl	-8(%ebp),%edx
	movl	$0,%edx
	setne	%dl
	movl	%edx,-4(%ebp)
	cmpl	-4(%ebp),%edi
	movl	$0,%edx
	setge	%dl
	movl	%edx,%edi
	cmpl	%edi,%esi
	movl	$0,%edx
	sete	%dl
	movl	%edx,%esi
	movl	%ecx,%edx
	andl	%ecx,%edx
	movl	$0,%edx
	setne	%dl
	movl	%esi,%eax
	andl	%esi,%eax
	movl	$0,%eax
	setne	%al
	andl	%eax,%edx
	movl	$0,%edx
	setne	%dl
	movl	%edx,%ecx
	cmpl	%ecx,%ebx
	movl	$0,%edx
	setne	%dl
	movl	%edx,%ebx
	movl	$459,%ecx
	movl	$34,%esi
	cmpl	%esi,%ecx
	movl	$0,%edx
	setge	%dl
	movl	%edx,%ecx
	movl	x1,%esi
	movl	x1,%edi
	cmpl	%edi,%esi
	movl	$0,%edx
	setge	%dl
	movl	%edx,%esi
	cmpl	%esi,%ecx
	movl	$0,%edx
	setle	%dl
	movl	%edx,%ecx
	movl	$270,%esi
	movl	$346,%edi
	imull	%edi,%esi
	movl	$845,%edi
	movl	$224,-4(%ebp)
	cmpl	-4(%ebp),%edi
	movl	$0,%edx
	setge	%dl
	movl	%edx,%edi
	imull	%edi,%esi
	subl	%esi,%ecx
	movl	x2,%esi
	movl	$456,%edi
	subl	%edi,%esi
	movl	x0,%edi
	movl	$313,-4(%ebp)
	cmpl	-4(%ebp),%edi
	movl	$0,%edx
	setg	%dl
	movl	%edx,%edi
	subl	%edi,%esi
	movl	x0,%edi
	movl	x2,%edx
	movl	%edx,-4(%ebp)
	cmpl	-4(%ebp),%edi
	movl	$0,%edx
	setne	%dl
	movl	%edx,%edi
	movl	$389,-4(%ebp)
	movl	$878,-8(%ebp)
	movl	-4(%ebp),%edx
	addl	-8(%ebp),%edx
	movl	%edx,-4(%ebp)
	cmpl	-4(%ebp),%edi
	movl	$0,%edx
	setg	%dl
	movl	%edx,%edi
	subl	%edi,%esi
	addl	%esi,%ecx
	movl	x2,%esi
	movl	$385,%edi
	cmpl	%edi,%esi
	movl	$0,%edx
	setne	%dl
	movl	%edx,%esi
	movl	x3,%edi
	movl	x2,%edx
	movl	%edx,-4(%ebp)
	cmpl	-4(%ebp),%edi
	movl	$0,%edx
	setne	%dl
	movl	%edx,%edi
	addl	%edi,%esi
	movl	x3,%edi
	movl	x2,%edx
	movl	%edx,-4(%ebp)
	movl	%edi,%edx
	andl	%edi,%edx
	movl	$0,%edx
	setne	%dl
	movl	-4(%ebp),%eax
	andl	-4(%ebp),%eax
	movl	$0,%eax
	setne	%al
	andl	%eax,%edx
	movl	$0,%edx
	setne	%dl
	movl	%edx,%edi
	movl	$182,-4(%ebp)
	movl	$743,-8(%ebp)
	movl	-4(%ebp),%edx
	cmpl	-8(%ebp),%edx
	movl	$0,%edx
	setl	%dl
	movl	%edx,-4(%ebp)
	orl	-4(%ebp),%edi
	movl	$0,%edx
	setne	%dl
	movl	%edx,%edi
	subl	%edi,%esi
	movl	$125,%edi
	movl	$481,-4(%ebp)
	subl	-4(%ebp),%edi
	movl	x2,%edx
	movl	%edx,-4(%ebp)
	movl	x2,%edx
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%edx
	cmpl	-8(%ebp),%edx
	movl	$0,%edx
	setne	%dl
	movl	%edx,-4(%ebp)
	addl	-4(%ebp),%edi
	movl	$115,-4(%ebp)
	movl	x0,%edx
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%edx
	cmpl	-8(%ebp),%edx
	movl	$0,%edx
	setle	%dl
	movl	%edx,-4(%ebp)
	movl	x2,%edx
	movl	%edx,-8(%ebp)
	movl	x2,%edx
	movl	%edx,-12(%ebp)
	movl	-8(%ebp),%edx
	cmpl	-12(%ebp),%edx
	movl	$0,%edx
	setge	%dl
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%edx
	cmpl	-8(%ebp),%edx
	movl	$0,%edx
	setne	%dl
	movl	%edx,-4(%ebp)
	cmpl	-4(%ebp),%edi
	movl	$0,%edx
	setne	%dl
	movl	%edx,%edi
	subl	%edi,%esi
	imull	%esi,%ecx
	movl	$300,%esi
	movl	$65,%edi
	cmpl	%edi,%esi
	movl	$0,%edx
	setge	%dl
	movl	%edx,%esi
	movl	x3,%edi
	movl	x3,%edx
	movl	%edx,-4(%ebp)
	orl	-4(%ebp),%edi
	movl	$0,%edx
	setne	%dl
	movl	%edx,%edi
	imull	%edi,%esi
	movl	x2,%edi
	movl	x1,%edx
	movl	%edx,-4(%ebp)
	cmpl	-4(%ebp),%edi
	movl	$0,%edx
	setge	%dl
	movl	%edx,%edi
	movl	x0,%edx
	movl	%edx,-4(%ebp)
	movl	x2,%edx
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%edx
	andl	-4(%ebp),%edx
	movl	$0,%edx
	setne	%dl
	movl	-8(%ebp),%eax
	andl	-8(%ebp),%eax
	movl	$0,%eax
	setne	%al
	andl	%eax,%edx
	movl	$0,%edx
	setne	%dl
	movl	%edx,-4(%ebp)
	cmpl	-4(%ebp),%edi
	movl	$0,%edx
	setge	%dl
	movl	%edx,%edi
	imull	%edi,%esi
	movl	$525,%edi
	movl	$470,-4(%ebp)
	cmpl	-4(%ebp),%edi
	movl	$0,%edx
	setge	%dl
	movl	%edx,%edi
	movl	$630,-4(%ebp)
	movl	x3,%edx
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%edx
	cmpl	-8(%ebp),%edx
	movl	$0,%edx
	setne	%dl
	movl	%edx,-4(%ebp)
	cmpl	-4(%ebp),%edi
	movl	$0,%edx
	sete	%dl
	movl	%edx,%edi
	movl	$508,-4(%ebp)
	movl	$851,-8(%ebp)
	movl	-4(%ebp),%edx
	orl	-8(%ebp),%edx
	movl	$0,%edx
	setne	%dl
	movl	%edx,-4(%ebp)
	movl	$462,-8(%ebp)
	movl	$216,-12(%ebp)
	movl	-8(%ebp),%edx
	subl	-12(%ebp),%edx
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%edx
	andl	-4(%ebp),%edx
	movl	$0,%edx
	setne	%dl
	movl	-8(%ebp),%eax
	andl	-8(%ebp),%eax
	movl	$0,%eax
	setne	%al
	andl	%eax,%edx
	movl	$0,%edx
	setne	%dl
	movl	%edx,-4(%ebp)
	cmpl	-4(%ebp),%edi
	movl	$0,%edx
	setg	%dl
	movl	%edx,%edi
	cmpl	%edi,%esi
	movl	$0,%edx
	setge	%dl
	movl	%edx,%esi
	movl	$372,%edi
	movl	$218,-4(%ebp)
	orl	-4(%ebp),%edi
	movl	$0,%edx
	setne	%dl
	movl	%edx,%edi
	movl	x3,%edx
	movl	%edx,-4(%ebp)
	movl	$155,-8(%ebp)
	movl	-4(%ebp),%edx
	cmpl	-8(%ebp),%edx
	movl	$0,%edx
	setne	%dl
	movl	%edx,-4(%ebp)
	cmpl	-4(%ebp),%edi
	movl	$0,%edx
	setne	%dl
	movl	%edx,%edi
	movl	x1,%edx
	movl	%edx,-4(%ebp)
	movl	$593,-8(%ebp)
	movl	-4(%ebp),%edx
	addl	-8(%ebp),%edx
	movl	%edx,-4(%ebp)
	movl	$233,-8(%ebp)
	movl	x3,%edx
	movl	%edx,-12(%ebp)
	movl	-8(%ebp),%edx
	cmpl	-12(%ebp),%edx
	movl	$0,%edx
	setl	%dl
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%edx
	cmpl	-8(%ebp),%edx
	movl	$0,%edx
	setg	%dl
	movl	%edx,-4(%ebp)
	movl	%edi,%edx
	andl	%edi,%edx
	movl	$0,%edx
	setne	%dl
	movl	-4(%ebp),%eax
	andl	-4(%ebp),%eax
	movl	$0,%eax
	setne	%al
	andl	%eax,%edx
	movl	$0,%edx
	setne	%dl
	movl	%edx,%edi
	movl	$866,-4(%ebp)
	movl	$903,-8(%ebp)
	movl	-4(%ebp),%edx
	andl	-4(%ebp),%edx
	movl	$0,%edx
	setne	%dl
	movl	-8(%ebp),%eax
	andl	-8(%ebp),%eax
	movl	$0,%eax
	setne	%al
	andl	%eax,%edx
	movl	$0,%edx
	setne	%dl
	movl	%edx,-4(%ebp)
	movl	x0,%edx
	movl	%edx,-8(%ebp)
	movl	$387,-12(%ebp)
	movl	-8(%ebp),%edx
	cmpl	-12(%ebp),%edx
	movl	$0,%edx
	setne	%dl
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%edx
	cmpl	-8(%ebp),%edx
	movl	$0,%edx
	setle	%dl
	movl	%edx,-4(%ebp)
	movl	x0,%edx
	movl	%edx,-8(%ebp)
	movl	$15,-12(%ebp)
	movl	-8(%ebp),%edx
	subl	-12(%ebp),%edx
	movl	%edx,-8(%ebp)
	movl	x0,%edx
	movl	%edx,-12(%ebp)
	movl	x2,%edx
	movl	%edx,-16(%ebp)
	movl	-12(%ebp),%edx
	orl	-16(%ebp),%edx
	movl	$0,%edx
	setne	%dl
	movl	%edx,-12(%ebp)
	movl	-8(%ebp),%edx
	cmpl	-12(%ebp),%edx
	movl	$0,%edx
	setle	%dl
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%edx
	addl	-8(%ebp),%edx
	movl	%edx,-4(%ebp)
	imull	-4(%ebp),%edi
	subl	%edi,%esi
	imull	%esi,%ecx
	movl	x3,%esi
	movl	x2,%edi
	cmpl	%edi,%esi
	movl	$0,%edx
	setg	%dl
	movl	%edx,%esi
	movl	x0,%edi
	movl	x0,%edx
	movl	%edx,-4(%ebp)
	cmpl	-4(%ebp),%edi
	movl	$0,%edx
	sete	%dl
	movl	%edx,%edi
	imull	%edi,%esi
	movl	$753,%edi
	movl	$269,-4(%ebp)
	cmpl	-4(%ebp),%edi
	movl	$0,%edx
	setge	%dl
	movl	%edx,%edi
	movl	x1,%edx
	movl	%edx,-4(%ebp)
	movl	x0,%edx
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%edx
	cmpl	-8(%ebp),%edx
	movl	$0,%edx
	setge	%dl
	movl	%edx,-4(%ebp)
	imull	-4(%ebp),%edi
	movl	%esi,%edx
	andl	%esi,%edx
	movl	$0,%edx
	setne	%dl
	movl	%edi,%eax
	andl	%edi,%eax
	movl	$0,%eax
	setne	%al
	andl	%eax,%edx
	movl	$0,%edx
	setne	%dl
	movl	%edx,%esi
	movl	x0,%edi
	movl	$595,-4(%ebp)
	cmpl	-4(%ebp),%edi
	movl	$0,%edx
	setg	%dl
	movl	%edx,%edi
	movl	x3,%edx
	movl	%edx,-4(%ebp)
	movl	x2,%edx
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%edx
	cmpl	-8(%ebp),%edx
	movl	$0,%edx
	sete	%dl
	movl	%edx,-4(%ebp)
	subl	-4(%ebp),%edi
	movl	$80,-4(%ebp)
	movl	x2,%edx
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%edx
	subl	-8(%ebp),%edx
	movl	%edx,-4(%ebp)
	movl	$890,-8(%ebp)
	movl	x0,%edx
	movl	%edx,-12(%ebp)
	movl	-8(%ebp),%edx
	subl	-12(%ebp),%edx
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%edx
	cmpl	-8(%ebp),%edx
	movl	$0,%edx
	setg	%dl
	movl	%edx,-4(%ebp)
	subl	-4(%ebp),%edi
	cmpl	%edi,%esi
	movl	$0,%edx
	setge	%dl
	movl	%edx,%esi
	movl	$345,%edi
	movl	x0,%edx
	movl	%edx,-4(%ebp)
	cmpl	-4(%ebp),%edi
	movl	$0,%edx
	setle	%dl
	movl	%edx,%edi
	movl	$665,-4(%ebp)
	movl	x2,%edx
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%edx
	cmpl	-8(%ebp),%edx
	movl	$0,%edx
	setne	%dl
	movl	%edx,-4(%ebp)
	cmpl	-4(%ebp),%edi
	movl	$0,%edx
	setne	%dl
	movl	%edx,%edi
	movl	x2,%edx
	movl	%edx,-4(%ebp)
	movl	$969,-8(%ebp)
	movl	-4(%ebp),%edx
	cmpl	-8(%ebp),%edx
	movl	$0,%edx
	sete	%dl
	movl	%edx,-4(%ebp)
	movl	x3,%edx
	movl	%edx,-8(%ebp)
	movl	$153,-12(%ebp)
	movl	-8(%ebp),%edx
	cmpl	-12(%ebp),%edx
	movl	$0,%edx
	setne	%dl
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%edx
	cmpl	-8(%ebp),%edx
	movl	$0,%edx
	setg	%dl
	movl	%edx,-4(%ebp)
	cmpl	-4(%ebp),%edi
	movl	$0,%edx
	setl	%dl
	movl	%edx,%edi
	movl	$382,-4(%ebp)
	movl	$223,-8(%ebp)
	movl	-4(%ebp),%edx
	orl	-8(%ebp),%edx
	movl	$0,%edx
	setne	%dl
	movl	%edx,-4(%ebp)
	movl	x3,%edx
	movl	%edx,-8(%ebp)
	movl	x0,%edx
	movl	%edx,-12(%ebp)
	movl	-8(%ebp),%edx
	orl	-12(%ebp),%edx
	movl	$0,%edx
	setne	%dl
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%edx
	cmpl	-8(%ebp),%edx
	movl	$0,%edx
	setg	%dl
	movl	%edx,-4(%ebp)
	movl	x2,%edx
	movl	%edx,-8(%ebp)
	movl	x3,%edx
	movl	%edx,-12(%ebp)
	movl	-8(%ebp),%edx
	imull	-12(%ebp),%edx
	movl	%edx,-8(%ebp)
	movl	x2,%edx
	movl	%edx,-12(%ebp)
	movl	$556,-16(%ebp)
	movl	-12(%ebp),%edx
	cmpl	-16(%ebp),%edx
	movl	$0,%edx
	setg	%dl
	movl	%edx,-12(%ebp)
	movl	-8(%ebp),%edx
	andl	-8(%ebp),%edx
	movl	$0,%edx
	setne	%dl
	movl	-12(%ebp),%eax
	andl	-12(%ebp),%eax
	movl	$0,%eax
	setne	%al
	andl	%eax,%edx
	movl	$0,%edx
	setne	%dl
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%edx
	cmpl	-8(%ebp),%edx
	movl	$0,%edx
	setg	%dl
	movl	%edx,-4(%ebp)
	addl	-4(%ebp),%edi
	movl	%esi,%edx
	andl	%esi,%edx
	movl	$0,%edx
	setne	%dl
	movl	%edi,%eax
	andl	%edi,%eax
	movl	$0,%eax
	setne	%al
	andl	%eax,%edx
	movl	$0,%edx
	setne	%dl
	movl	%edx,%esi
	movl	x0,%edi
	movl	x2,%edx
	movl	%edx,-4(%ebp)
	cmpl	-4(%ebp),%edi
	movl	$0,%edx
	setle	%dl
	movl	%edx,%edi
	movl	$517,-4(%ebp)
	movl	x3,%edx
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%edx
	cmpl	-8(%ebp),%edx
	movl	$0,%edx
	setle	%dl
	movl	%edx,-4(%ebp)
	subl	-4(%ebp),%edi
	movl	$236,-4(%ebp)
	movl	x3,%edx
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%edx
	cmpl	-8(%ebp),%edx
	movl	$0,%edx
	setne	%dl
	movl	%edx,-4(%ebp)
	movl	$41,-8(%ebp)
	movl	x1,%edx
	movl	%edx,-12(%ebp)
	movl	-8(%ebp),%edx
	cmpl	-12(%ebp),%edx
	movl	$0,%edx
	setle	%dl
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%edx
	cmpl	-8(%ebp),%edx
	movl	$0,%edx
	setne	%dl
	movl	%edx,-4(%ebp)
	imull	-4(%ebp),%edi
	movl	$215,-4(%ebp)
	movl	x0,%edx
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%edx
	andl	-4(%ebp),%edx
	movl	$0,%edx
	setne	%dl
	movl	-8(%ebp),%eax
	andl	-8(%ebp),%eax
	movl	$0,%eax
	setne	%al
	andl	%eax,%edx
	movl	$0,%edx
	setne	%dl
	movl	%edx,-4(%ebp)
	movl	x0,%edx
	movl	%edx,-8(%ebp)
	movl	x2,%edx
	movl	%edx,-12(%ebp)
	movl	-8(%ebp),%edx
	cmpl	-12(%ebp),%edx
	movl	$0,%edx
	setge	%dl
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%edx
	cmpl	-8(%ebp),%edx
	movl	$0,%edx
	setne	%dl
	movl	%edx,-4(%ebp)
	movl	x3,%edx
	movl	%edx,-8(%ebp)
	movl	$985,-12(%ebp)
	movl	-8(%ebp),%edx
	cmpl	-12(%ebp),%edx
	movl	$0,%edx
	setne	%dl
	movl	%edx,-8(%ebp)
	movl	x1,%edx
	movl	%edx,-12(%ebp)
	movl	x1,%edx
	movl	%edx,-16(%ebp)
	movl	-12(%ebp),%edx
	cmpl	-16(%ebp),%edx
	movl	$0,%edx
	setne	%dl
	movl	%edx,-12(%ebp)
	movl	-8(%ebp),%edx
	cmpl	-12(%ebp),%edx
	movl	$0,%edx
	setl	%dl
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%edx
	addl	-8(%ebp),%edx
	movl	%edx,-4(%ebp)
	imull	-4(%ebp),%edi
	movl	$109,-4(%ebp)
	movl	$634,-8(%ebp)
	movl	-4(%ebp),%edx
	cmpl	-8(%ebp),%edx
	movl	$0,%edx
	setne	%dl
	movl	%edx,-4(%ebp)
	movl	x3,%edx
	movl	%edx,-8(%ebp)
	movl	$155,-12(%ebp)
	movl	-8(%ebp),%edx
	cmpl	-12(%ebp),%edx
	movl	$0,%edx
	setge	%dl
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%edx
	cmpl	-8(%ebp),%edx
	movl	$0,%edx
	sete	%dl
	movl	%edx,-4(%ebp)
	movl	x1,%edx
	movl	%edx,-8(%ebp)
	movl	x1,%edx
	movl	%edx,-12(%ebp)
	movl	-8(%ebp),%edx
	subl	-12(%ebp),%edx
	movl	%edx,-8(%ebp)
	movl	x3,%edx
	movl	%edx,-12(%ebp)
	movl	x1,%edx
	movl	%edx,-16(%ebp)
	movl	-12(%ebp),%edx
	cmpl	-16(%ebp),%edx
	movl	$0,%edx
	setge	%dl
	movl	%edx,-12(%ebp)
	movl	-8(%ebp),%edx
	cmpl	-12(%ebp),%edx
	movl	$0,%edx
	setge	%dl
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%edx
	cmpl	-8(%ebp),%edx
	movl	$0,%edx
	setl	%dl
	movl	%edx,-4(%ebp)
	movl	x0,%edx
	movl	%edx,-8(%ebp)
	movl	$838,-12(%ebp)
	movl	-8(%ebp),%edx
	subl	-12(%ebp),%edx
	movl	%edx,-8(%ebp)
	movl	$791,-12(%ebp)
	movl	$382,-16(%ebp)
	movl	-12(%ebp),%edx
	cmpl	-16(%ebp),%edx
	movl	$0,%edx
	setne	%dl
	movl	%edx,-12(%ebp)
	movl	-8(%ebp),%edx
	addl	-12(%ebp),%edx
	movl	%edx,-8(%ebp)
	movl	$873,-12(%ebp)
	movl	$301,-16(%ebp)
	movl	-12(%ebp),%edx
	imull	-16(%ebp),%edx
	movl	%edx,-12(%ebp)
	movl	x3,%edx
	movl	%edx,-16(%ebp)
	movl	x0,%edx
	movl	%edx,-20(%ebp)
	movl	-16(%ebp),%edx
	cmpl	-20(%ebp),%edx
	movl	$0,%edx
	setg	%dl
	movl	%edx,-16(%ebp)
	movl	-12(%ebp),%edx
	cmpl	-16(%ebp),%edx
	movl	$0,%edx
	setle	%dl
	movl	%edx,-12(%ebp)
	movl	-8(%ebp),%edx
	cmpl	-12(%ebp),%edx
	movl	$0,%edx
	sete	%dl
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%edx
	addl	-8(%ebp),%edx
	movl	%edx,-4(%ebp)
	addl	-4(%ebp),%edi
	cmpl	%edi,%esi
	movl	$0,%edx
	sete	%dl
	movl	%edx,%esi
	cmpl	%esi,%ecx
	movl	$0,%edx
	setge	%dl
	movl	%edx,%ecx
	movl	%ebx,%edx
	andl	%ebx,%edx
	movl	$0,%edx
	setne	%dl
	movl	%ecx,%eax
	andl	%ecx,%eax
	movl	$0,%eax
	setne	%al
	andl	%eax,%edx
	movl	$0,%edx
	setne	%dl
	movl	%edx,%ebx
	movl	%ebx,y
	movl	y,%ebx
	pushl	%ebx
	call	lwrite
	popl	%edx
	movl	%ebp,%esp
	popl	%ebp
	ret