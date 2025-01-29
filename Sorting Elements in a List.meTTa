; this is when the value we got is empty list, hence we return back the empty list itself
(= (bubble-sort ())
    ()
)
; this is when we pass only 1 value meaning we're on the last number of the list, then we return it back as a list, with a and empty list
(= (bubble-sort (:: $a ()))
    (:: $a ())
)
; this is when the value we got is empty list, hence we return back the empty list itself
(= (bubble-swap ())
    ()
)
; this is when we pass only 1 value meaning we're on the last number of the list, then we return it back as a list, with a and empty list
(= (bubble-swap (:: $a ()))
    (:: $a ())
)
; this function recives a list and we perform decomposition to get the frist 2 number and the tail from the list
(= (bubble-swap (:: $a (:: $b $tail)))
    ; we check if the 2 numbers are in the right order or not
    (if (> $a $b)
        ; since its not, we return a new list with the second number as the head and recalling this function with a new list (formed from the first number a and the tails)
        (:: $b (bubble-swap (:: $a $tail)))
        ; since it is, we return a list starting with a and the value from bubble-swap (which we passed a new list, formed from b and the tails)
        (:: $a (bubble-swap (:: $b $tail))))
)
; this function recives the list as parameter
(= (bubble-sort $list)
    ; we check if the list and the value returned from the bubble-swap are equal (meaning, if there needs to be a sorting)
    (if (== (bubble-swap $list) $list)
        ; since it is, then we just return the list
        $list
        ; since its not, we call this function again and pass the value from the bubble-swap, where we will pass to it the current list
        (bubble-sort (bubble-swap $list)))
)
; we pass the list tot he buble-sort
!(bubble-sort (:: 4 (:: 2 (:: 1 (:: 5 (:: 3 ()))))))
