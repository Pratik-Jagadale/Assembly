.section .rodata
	
	msg_p1:
	.string "Enter Student Name "

	msg_p2:
	.string "Enter Roll no "

	msg_p3:
	.string "Enter Course "
	
	msg_p4:
	.string "Enter city "

	msg_p5:
	.string "name : %s, Roll no: %d, Course : %s, City : %s "  

	msg_s1:
	.string "%s"

	msg_s2:
	.string "%d"
	
	msg_s3:
	.string "%s"

	msg_s4:
	.string "%s"

.section .bss
	.comm Name, 4, 4 

	.comm R_No, 4, 4 

	.comm Course, 4, 4
	
	.comm City , 4, 4

.section .text
.globl main
main:
	#prologoue
	pushl %ebp
	movl %esp,%ebp

#print First Line
	pushl $msg_p1
	call printf
	addl $4,%esp	

	#scanf
	pushl $Name
	pushl $msg_s1
	call scanf
	addl $8, %esp
#print R no
	pushl $msg_p2
	call printf
	addl $4, %esp

	#sacnf
	pushl $R_No
	pushl $msg_s2
	call scanf
	addl $8, %esp
	
#Course input
	pushl $msg_p3
	call printf
	addl $4, %esp
	
	#scanf
	pushl $Course
	pushl $msg_s3
	call scanf
	addl $8, %esp
	
#City
	pushl $msg_p4
	call printf
	addl $4,%esp
	
	#scanf
	pushl $City
	pushl $msg_s4
	call scanf
	addl $8, %esp


#Print Whole String
	pushl $City
	pushl $Course	
	pushl $R_No
	pushl $Name	
	pushl $msg_p5
	call printf
	addl $32, %esp   #32
 
	pushl $0
	call exit	

