

.global fib
fib: 
    // start here, assuming x0 has value n
    // return fib(n)

    cmp x0, #0 //check if it is zero
    beq one_or_zero //jump to zero if it is
    cmp x0, #1 //check 
    beq one_or_zero
    mov x1, 1
    mov x2, 1
not_done:
    //add last 2
    add x3, x1, x2
    //mov them down
    mov x1, x2
    mov x2, x3

    sub x0, x0, #1 
    //most recent stored in x2
    cmp x0, #0
    beq not_done
done:
    ret

one_or_zero: 
    //in both cases, it is zero
    mov x0, #1
    b done


.global fib
fib: 
  
    // start here, assuming x0 has value n
    // return fib(n)

    //mov n to x7
    mov x7, x0
    //store result in x6 for now
    mov x6, #1
rec:
    cmp x7, #1 //check 
    beq one_or_zero
    cmp x7, #0 //check if it is zero
    beq one_or_zero //jump to zero if it is
    
    //do recursion here
    
    sub x7, x7, #1
    b rec 
    add x6, x6, x0 //add the result
    mov x0, x6 //pass to others

done:
    ret

one_or_zero: 
    //in both cases, it is zero
    mov x0, #1
    ret 
    





//mie's code
fib:
    cmp x0, 1 //I would assume that this is the base case, if x0 = 1, it should return 1 directly.
    --ANS1-- b.le end //if it is 1 or smaller, should reutrn 1 directly
    --ANS2-- sub sp, sp, 8 //allocate space for the return address and the value of x0
    str lr, [sp, 8] //store the return address
    --ANS3-- //what else do I need to store?
    str x0, [sp] //store the value of x0
    --ANS4-- add x4 x2, x3 //add the last two numbers
    --ANS5-- mov x2, x3 //move the last number to the second last
    --ANS6-- mov x3, x4 //move the sum to the last number
    //Here is the problem, x2 and x3 is not initialized
    sub x0, x1, 1 //decrement the number of iterations left and pass to next recursion
    bl  fib
    ldr x1, [sp]
    --ANS7--
    ldr lr, [sp, 8] //but the stack pointer is not increased
    --ANS8-- mov x0, x4 //move the result to x0 
end:
    ret


//mie's code
fib:
    cmp x0, 1 //I would assume that this is the base case, if x0 = 1, it should return 1 directly.
    --ANS1-- b.le end //if it is 1 or smaller, should reutrn 1 directly
    --ANS2-- sub sp, sp, 16 //allocate space for the return address and the value of x0
    str lr, [sp, 8] //store the return address
    --ANS3-- sub x0, x0, 1 //decrement the number of iterations left and pass to next recursion
    str x0, [sp] //store the value of n-1
    --ANS4-- bl fib //do recursion here fib(n-1)
    --ANS5-- ldr x1, [sp] //load n-1 back
    --ANS6-- str x0, [sp] //store the result of fib(n-1)
    sub x0, x1, 1 //decrement the number of iterations left and pass to next recursion
    bl  fib
    ldr x1, [sp]
    --ANS7-- add x0, x0, x1 //add the result of fib(n-1) and fib(n-2)
    ldr lr, [sp, 8] //but the stack pointer is not increased
    --ANS8-- //maybe used some repetitive code here
end:
    ret