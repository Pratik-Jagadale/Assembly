.section .rodata
	msg_p1:
	.string "U:This is a start of the program"

	msg_p2:
	.string"C:This will be print if n1> n12"

	msg_p3:
	.string "U:This is a last statement of program"

.section .data
	n1:
	.int 10
	
	n2:
	.int 5

.section .text 
.globl main
main:
	
	#PROLOGUE
	pushl %ebp
	movl %esp, %ebp
	
#puts(msg_p1)
	pushl $msg_p1
	call puts
	addl $4, %esp
#S1 : Compare n1 and n2 store the result in eax
	movl n1, %eax
	movl n2, %edx
	cmpl %edx, %eax
	
	jng if
	
	pushl $msg_p2
	call puts
	addl $4, %esp
	
if:
	pushl $msg_p3
	call puts
	addl $4, %esp
	
	pushl $0
	call exit
