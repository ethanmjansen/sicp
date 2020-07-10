#lang sicp

; square
(define (square x)
  (* x x))

; good-enough?
(define (good-enough? guess previous x)
  (< (abs (- guess previous)) (* guess 0.000000001)))

; average
(define (average x y)
  (/ (+ x y) 2))

; improve
(define (improve guess x)
  (/ (+ (/ x (square guess)) (* 2 guess))
     3))

; cubrt-iter
(define (cubrt-iter guess previous x)
  (if (good-enough? guess previous x)
      guess
      (cubrt-iter (improve guess x)
                     guess
                     x)))

; cubrt
(define (cubrt x)
  (cubrt-iter 1.0 0 x))

(cubrt 9)