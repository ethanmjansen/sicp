#lang sicp
(define (square x) (* x x)) ; Compound Procedure
(square 2) ; Compound Procedure in action
(square 21)
(square (+ 2 5))
(square (square 3))

(define (sum-of-squares x y) ; Sum of Squares definition and params
  (+ (square x) (square y))) ; Body 
  
(sum-of-squares 3 4) ; sum-of-squares in action

(define (f a) ; Further Procedure definition and params
  (sum-of-squares (+ a 1) (* a 2))) ; Further Procedure Body

(f 5)
