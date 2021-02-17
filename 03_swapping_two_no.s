.section .rodata

	msg_p1:
	.string "Enter Num 1"

	msg_p2:
	.string "Enter Num 2"
	
	msg_Num1:
	.string "Num 1 : %d"

	msg_Num2:
	.string "Num 2 : %d"	

	msg_s1:
	.string "%d"

	msg_s2:
	.string "%d"

.section .bss
	.comm Num1,4,4
	.comm Num2,4,4

.section .text
.globl  main
main:
	#prologoue
	pushl %ebp
	movl %esp,%ebp

	pushl $msg_p1
	call puts
	addl $4, %esp

	pushl $Num1
	pushl $msg_s1
	call scanf
	addl $8, %esp
	
	pushl $msg_p2
	call puts
	addl $4, %esp
	
	pushl $Num2
	pushl $msg_s2
	call scanf
	addl $8, %esp
	
	movl Num1,%esp
	movl Num2,%ebp
	movl %esp,Num2
	movl %ebp,Num1

	pushl $Num1
	pushl $msg_Num1
	call printf
	addl $8,%esp
	
	pushl $Num2
	pushl $msg_Num2
	call printf
	addl $8,%esp
	
	pushl 0
	call exit
	

