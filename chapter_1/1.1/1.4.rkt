#lang sicp
(define (a-plus-abs-b a b)
  ((if (> b 0) + -) a b))
; This procedure says that if b is greater than zero then add a to b
; else b isn't greater than 0 then subtract b from a
(a-plus-abs-b 7 -10)