.section .rodata
        msg_p:
        .string "Hello"

.section .text
.globl main
main:
        #prologuwe
        pushl %ebp
        movl %esp,%ebp

        pushl $msg_p
        call puts
        addl $4,%esp

        #exit
        pushl $0
        call exit

