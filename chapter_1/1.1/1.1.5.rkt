#lang sicp
; Substitution Model for Procedure Application

; (f 5) -> (sum-of-squares (+ a 1) (* a 2))
; -> (sum-of-squares (+ 5 1) (* 5 2)) -> (+ (square 6) (square 10)
; -> (+ (* 6 6) (* 10 10)) -> (+ 36 100) -> 136


; Normal-Order Evaluation

; (f 5) -> (sum-of-squares (+ 5 1) (* 5 2)) 
;  -> (+ (square (+ 5 1) (square (* 5 2))
; -> ( + (* (+ 5 1) (+ 5 1)) (* (* 5 2) (* 5 2)))
; -> (+ (* 6 6) (* 10 10)) -> (+ 36 100) -> 136 