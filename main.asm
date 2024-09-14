.global _start

.section .data
prompt_message:
    .asciz "Please enter a string: \n"
input_buffer:
    .space 100  
output_message:
    .asciz "You entered: "

.section .text
_start:
        mov x0, 1
        ldr x1, =prompt_message
        mov x2, 23
        mov x8, 64
        svc 0

        mov x0, 0
        ldr x1, =input_buffer
        mov x2, 100
        mov x8, 63
        svc 0
        
        mov x4, x0

        mov x0, 1
        ldr x1, =output_message
        mov x2, 13
        mov x8, 64
        svc 0

        mov x0, 1
        ldr x1, =input_buffer
        mov x2, x4
        mov x8, 64
        svc 0

        mov x0, x4
        mov x8, 93
        svc 0
