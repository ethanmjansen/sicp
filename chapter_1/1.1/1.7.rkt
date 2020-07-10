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
; (sqrt 10000000000000) This enters an infinite loop
; large numbers break the example in a range somewhere between big numers
; and absurdley large numbers, this is becasue the good-enough? can't tell
; the small difference between big numbers, therefore good-enough? will never
; be and imrpove will keep giving the same value. 

(define (new-sqrt-iter guess previous x)
  (if (new-good-enough? guess previous x)
      guess
      (new-sqrt-iter (improve guess x)
                     guess
                     x)))

(define (new-good-enough? guess previous x)
  (< (abs (- guess previous)) (* guess 0.000000001)))

(define (new-sqrt x)
  (new-sqrt-iter 1.0 0 x))

(new-sqrt 0.000001)