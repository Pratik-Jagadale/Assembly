.section .rodata
	msg_p1:
	.string "255  Amit    09  81  150  50.00"

	msg_p2:
	.string " 02  Sujata  70  80  200  66.67"

	msg_p3:
	.string "150  Ajay    82  18  170  56.67"
  
.section .text
.globl main
main:
	#prologoue
	pushl %ebp
	movl %esp,%ebp

	#print
	pushl $msg_p1
	call puts
	addl $4,%esp

	pushl $msg_p2
	call puts
	addl $4,%esp

	pushl $msg_p3
	call puts
	addl $4,%esp

	#eplogoue
	pushl $0
	call exit
