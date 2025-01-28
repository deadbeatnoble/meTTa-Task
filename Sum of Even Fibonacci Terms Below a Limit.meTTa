(= (fibonacci-sum $limit $a $b)
    ; we first check if the current number we're on is below the limit or not
    (if (> $limit $a)
        ; since its not below the set limit we then check if its even (divisible by 2)
        (if (== 0 (% $a 2))
            ; since it is we add that number and the value we get after calling the function with the sum of the current a and b
            (+ $a (fibonacci-sum $limit $b (+ $a $b)))
            ; since it is an even then we give up on the current value fo a and return the value we get after calling the functoin with a new a and b
            (fibonacci-sum $limit $b (+ $a $b)))
        ; since the current number is above the limit then we return 0 as we've reached the limit
        0)
)
; this is the function where we pass the limit
(= (sum-of-even-fibonacci $limit)
    ; it then sends the limit and 1,2 (which are the start fo the fibonacci sequence)  to the fibonacci-sum function
    (fibonacci-sum $limit 1 2)
)
!(sum-of-even-fibonacci 100)
