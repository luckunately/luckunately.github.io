

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
    