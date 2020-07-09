#lang sicp

; square
(define (square x)
  (* x x))

; good-enough?
(define (good-enough? guess x)
  (< (abs (- (square guess) x)) 0.001))

; average
(define (average x y)
  (/ (+ x y) 2))

; improve
(define (improve guess x)
  (average guess (/ x guess)))

; sqrt-iter
(define (sqrt-iter guess x)
  (if (good-enough? guess x)
      guess
      (sqrt-iter (improve guess x) x)))

; sqrt
(define (sqrt x)
  (sqrt-iter 1.0 x))

; small number example
(sqrt 0.0001)
; small numbers break the example at a certain point because they keep
; improving the guess up until 0.001 but not after.

; large number example
; (sqrt 10000000000000)
; large numbers break the example in a range somewhere between big numers
; and absurdley large numbers, this is becasue the good-enough? looks at small
; numbers but not big ones, therefore good-enough? will never be and imrpove will
; keep returning the same value.

(define (new-sqrt-iter guess x)
  (if (new-good-enough? guess (improve guess x))
      guess
      (new-sqrt-iter (improve guess x) x)))

 (define (new-good-enough? guess x) 
  (< (abs (- (improve guess x) guess)) 
     (* guess .001))) 

(define (new-sqrt x)
  (new-sqrt-iter 1.0 x))

(new-sqrt 0.0001)