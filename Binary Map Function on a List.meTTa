; if the function recives empty list for the list parameter, then we return empty list
(= (binary-map-function $func $constNum ())
    ()
)
; we pass the function name, the constant number, and the list (once we pass the list we perform decomposition to separet the head from the rest)
(= (binary-map-function $func $constNum (:: $head $tail))
    ; we then construct a new list with the new value achived from the function by passing the constant number and the current head of the list, then call the function to do the same for the next head in the new list
    (:: ($func $constNum $head) (binary-map-function $func $constNum $tail))
)
; this is the function that returns the sum of the 2 numbers that are passed to it
(= (add-two $a $b)
    (+ $a $b)
)
; we pass the name of the function we want to operate, the constant number, and the list of numbers
!(binary-map-function add-two 10 (:: 1 (:: 2 (:: 3 ()))))
