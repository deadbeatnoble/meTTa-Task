(= (sum-muliple-of-3-or-5 $x)
    ; chekcing if we're on the last number after decrementing from the given x
    (if (> $x 0)
        ;check if the number we're at is divisible by 3 or 5
        (if (or (== 0 (% $x 3)) (== 0 (% $x 5)))
            ; since its divisible by one of them we add it and the value we get after calling the function with the decremeted value form the current one
            (+ $x (sum-muliple-of-3-or-5 (- $x 1)))
        ;if its not divisible by 3 ro 5 we dont add anything to it and proceed with the next decrement from the current value
        (sum-muliple-of-3-or-5 (- $x 1)))
    ; if we're at the last decrement we return 0  as we've reached the end
    0)
)
; the multiple of 3 and 5 below 9, include 9 itself
!(sum-muliple-of-3-or-5 9)
