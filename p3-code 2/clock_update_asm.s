.text                           # IMPORTANT: subsequent stuff is executable
.global  set_tod_from_ports
        
## ENTRY POINT FOR REQUIRED FUNCTION
set_tod_from_ports:
        ## assembly instructions here
        # %rdi is a pointer to a tod_t struct
        ## a useful technique for this problem

        
       # movX    SOME_GLOBAL_VAR(%rip), %reg  # load global variable into register
                                             # use movl / movq / movw / movb
                                             # and appropriately sized destination register
        movl    TIME_OF_DAY_PORT(%rip), %ecx    # copy global var to reg ecx

        ## Checking if it is in bounds

        testl   %ecx, %ecx                      # tests if TIME_OF_DAY_PORT is a non negative or greater than 0
        js      .OOB                          # jumps to error
        cmpl    $1382400, %ecx                  # checks if the time of day is over 24 hours
        jg      .OOB                          # jumps to error
                               

                                                # Converts TIME_OF_DAY_PORTS value into seconds using bit shifting which doesn't use a double variable like I used in clock_update.c
        movl    $7, %ebx                        # puts 7 into %ebx
        addl    %ecx, %ebx                      # adds 7 to %ecx
        sarl    $4, %ebx                        # bit shifts by 4
        movl    %ebx, (%rdi)                    # moves the ans into %rdi // this is the time of day in seconds

        movl    %ebx, %eax                      # moves %eax into %ebx to prepare for division
        movl    $3600, %esi                     # 3600 into %esi
        cltq                                    # prep for division with remainder
        cqto
        idivl   %esi                            # division
        movl    $12, %esi                       # 12 into %esi 
        cltq                                    # module by 12 to get hours
        cqto
        idivl   %esi
        movw    %dx, 8(%rdi)                    # sets hours in the stack register

        movl    %ebx, %eax                      # %ebx into %eax
        movl    $60, %esi                       # prepping for dividing by 60
        cltq
        cqto
        idivl   %esi                            # division
        cltq
        cqto
        idivl   %esi                            # module to get minutes
        movw    %dx, 6(%rdi)                    # sets minutes in the stack register

        movl    %ebx, %eax                      # %ebx into %eax
        cltq
        cqto
        idivl   %esi                            # module day seconds into seconds
        movw    %dx, 4(%rdi)                    # sets seconds in the stack register

        cmpl    $43200, %ebx                    # comparing 43200 to the tod in seconds // 43200 is half a day in seconds
        js      .setam                          # if it is less than 43200 it jumps to .setam 
        movb    $2, 10(%rdi)                    # if greater than sets pm by moving 2 into the %rdi stack at position 10
        jmp     .midnight                       # jumps to the midnight check

.setam:
        
        ## Updating values
        movb    $1, 10(%rdi)                    # sets am by moving 1 into the %rdi stack at position 10
        

.midnight:

        cmpw    $0, 7(%rdi)                     # checks if the time in hours is 0
        jz      .zero                           # if zero jumps to .zero
        jmp     .return                         # else jumps to .return

.zero:

        movw    $12, 8(%rdi)                    # if midnight it moves 12 into the %rdi stack because midnight cannot be 0
        jmp     .return                         # jumps to .return


.OOB:                   

        movl    $1, %eax                        # error function moves 1 into %eax 
        ret                                     # return 1 to indicate an error

.return:

        movl    $0, %eax                        # moves 0 into the return register %eax
        ret                                     # returns 0 to indicate success

### Data area associated with the next function
.data                           # IMPORTANT: use .data directive for data section
	
am_bit:                         # declare location an single int
        .int 0b0000001               # value 1 am

pm_bit:                      # declare another accessible via name 'other_int'
        .int 0b0000010             # value 2 pm

num_array:                              # declare multiple ints in a row 
        .int 0b1110111                  # zero
        .int 0b0100100                  # one
        .int 0b1011101                  # two
        .int 0b1101101                  # three
        .int 0b0101110                  # four
        .int 0b1101011                  # five                          
        .int 0b1111011                  # six
        .int 0b0100101                  # seven
        .int 0b1111111                  # eight
        .int 0b1101111                  # nine

clock_display:
        .int 0b0000000                  # blank clock display

.text                           # IMPORTANT: switch back to executable code after .data section
.global  set_display_from_tod

## ENTRY POINT FOR REQUIRED FUNCTION
set_display_from_tod:
        ## assembly instructions here

        pushq   %rbx                           # pushing callee register onto the stack so they can be used
        pushq   %r12
        pushq   %r13
        pushq   %r14
        pushq   %r15

        movq    %rsi, %r8                       # moves %rsi into %r8 to preform checks

        cmpw    $12, %r8w                      # next 20 lines are making sure input is inbounds using bit shifting and cmp
        jg      .error
        cmpw    $0, %r8w
        js     .error

        movq    %rdi, %r9
        sarq    $48, %r9

        cmpw    $59, %r9w
        jg      .error

        cmpw    $0, %r9w
        js      .error

        movq    %rdi, %r9
        sarq    $32, %r9

        cmpw    $59, %r9w
        jg      .error

        cmpw    $0, %r9w
        js      .error


        sarq    $16, %r8
        cmpb    $1, %r8b
        jne     .non1
        jmp     .set_ampm

.non1:
        cmpb    $2, %r8b
        jne     .error

.set_ampm:

        movq    am_bit(%rip), %rax                      # sets %rax to the data at am_bit
        movq    pm_bit(%rip), %rbx                      # sets %rbx to the data at pm_bit
        movq    clock_display(%rip), %rcx               # sets %rcx to the data at clock_display
        leaq    num_array(%rip), %r10                   # sets %r10 to the num_array

        cmpb    $1, %r8b                                # checks if 1
        je      .set_am_bit                             # if %r8b = 1 jumps to .set_am_bit
        jmp     .set_pm_bit                             # else jumps to .set_pm_bit

.set_am_bit:

        salq    $28, %rax                               # left bitshift by 28 and into register %rax // am spot
        orq     %rax, %rcx                              # preforms an or operation 
        movl    %ecx, (%rdx)
        jmp     .minutes                                # jumps to minutes to skip the .set_pm_bit function

.set_pm_bit:

        salq    $28, %rbx                               # left bitshift by 28 and into register %rbx // pm spot
        orq     %rbx, %rcx                              # preforms an or operation
        movl    %ecx, (%rdx)

.minutes:

        movq    %rdx, %r15                              # moves %rdx into %r15
        movq    $0, %rax                                # moves 0 into %rax
        movw    %si, %ax                                
        movl    $10, %r11d                              
        cqto                                            # preps for division
        idivl   %r11d                                   # division                                   
        movq    %rax, %rbx                      
        movq    %rdx, %r12
        movq    %rdi, %r9
        sarq    $48, %r9                                # right bitshift 48 bits
        movq    %r9, %rax                               
        cqto                                            # preps for division
        idivl   %r11d                                   # division
        movq    %rax, %r11
        movq    %rdx, %r13
        cmpq    $0, %rbx                                # compares 0 to %rbx
        je      .HourOne                                # if %rbx is 0 // if the hour time is 10, 11, 12 jumps to .HourOne
        jmp     .HourZero                               # else hour has a 0 and jumps to .HourZero

.HourOne:

        movq    $0b0000000, %r14                        # moves binary number 0 into %r14
        sall    $21, %r14d                              # left bitshift by 21  // hour tens spot
        OR      %ecx, %r14d                             # or operation between %ecx and %r14
        movl    %ecx, (%r15)                            # moves %ecx into memory at %r15
        jmp     .display                                # jumps to display

.HourZero:

        movq    (%r10, %rbx, 4), %r14                   # moves the number in num_array into %r14
        sall    $21, %r14d                              # left bitshift by 21  // hour tens spot
        orl     %r14d, %ecx                             # or operation between %ecx and %r14
        movl    %ecx, (%r15)                            # moves %ecx into memory at %r15
        jmp     .display                                # jumps to display

.error:

        popq    %r12                                    # if an error occurs next few lines pop the stack and returns 1
        popq    %r13
        popq    %r14
        popq    %r15
        popq    %rbx
        movl    $1, %eax                        
        ret

.display:

        movq    (%r10, %r12, 4), %r14                   # moves the number from num_array into %r14
        sall    $14, %r14d                              # left bitshift by 14  // hour ones spot
        orl     %r14d, %ecx                             # or operation
        movl    %ecx, (%r15)

        movq    (%r10, %r11, 4), %r14                   # moves the number from num_array into %r14
        sall    $7, %r14d                               # left bitshift by 7  // minute tens spot
        orl     %r14d, %ecx                             
        movl    %ecx, (%r15)

        movq    (%r10, %r13, 4), %r14                   # moves the number from num_array into %r14
        orl     %r14d, %ecx                             # no bit shift // minute ones spot
        movl    %ecx,  (%r15)

        movq    %r15, %rdx                      
        popq    %r12                                    # pops the callee registers to prepare for the return
        popq    %r13
        popq    %r14
        popq    %r15
        popq    %rbx
        movl    $0, %eax                                # moves 0 into %eax and returns
        ret


.text
.global clock_update
        
## ENTRY POINT FOR REQUIRED FUNCTION
clock_update:
	## assembly instructions here

        subq    $184, %rsp                              # grows space on the stack  (184 + 8) / 16 = 12
        leaq    (%rsp), %rdi                            # moves %rsp into %rdi to prep for the call
        call    set_tod_from_ports                      # calls set_tod_from_ports
        cmpl    $0, %eax                                # compares the call return to 0
        je     .function_success                        # if %eax = 0 jumps to .function_success
        jmp    .function_error                          # else jumps to .function_error

.function_error:

        addq    $184, %rsp                              # shrinks the stack to prep for return
        movl    $1, %eax                                # moves 1 into return register %eax
        ret                                             # returns

.function_success:

        leaq    CLOCK_DISPLAY_PORT(%rip), %rdx          # loads the CLOCK_DISPLAY_PORT into %rdx
        movq    (%rsp), %rdi                            # moves %rsp into %rdi
        movl    8(%rsp), %esi                           
        call    set_display_from_tod                    # calls the function
        cmpl    $1, %eax                                # compares the return register to 1
        je      .function_error                         # if 1 jumps to .function_error
        addq    $184, %rsp                              # shrinks the stack
        movl    $0, %eax                                # moves 0 into return register %eax to indicate success
        ret                                             # returns

