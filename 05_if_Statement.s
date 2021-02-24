.section .rodata
	
	msg_p1:
	.string "U:Enter n1 : "

	msg_p2:
	.string "U:Enter n2 : "
	
	msg_p3:
	.string "C:n1 is less than or equl to n2"
	
	msg_p4:
	.string "U:End of Program"

	msg_s1:
	.string "%d"

.section .bss
	.comm n1,4,4
	.comm n2,4,4

.section .text
.globl main
main:
	#prologoue
	pushl %ebp
	movl %esp, %ebp
		
	pushl $msg_p1
	call printf
	addl $4,%esp

	pushl $n1	
	pushl $msg_s1
	call scanf
	addl $8, %esp

	pushl $msg_p2
	call printf
	addl $4,%esp

	pushl $n2
	pushl $msg_s1
	call scanf
	addl $8, %esp
	
	#if
	movl n1,%eax
	movl n2,%edx
	
	cmpl %edx, %eax	
	jnle if

	pushl $msg_p3
	call puts
	addl $4,%esp	
if:
	pushl $msg_p4
	call puts
	addl $4,%esp

	pushl $0
	call exit

