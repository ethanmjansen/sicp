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