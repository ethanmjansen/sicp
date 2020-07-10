#lang sicp

; square
(define (square x)
  (* x x))

; good-enough?
(define (good-enough? guess x)
  (< (abs (- (improve guess x) guess)) 
     (* guess .001)))

; average
(define (average x y)
  (/ (+ x y) 2))

; improve
(define (improve guess x)
  (/ (+ (/ x (square guess)) (* 2 guess))
     3))

; cubrt-iter
(define (cubrt-iter guess x)
  (if (good-enough? guess x)
      guess
      (cubrt-iter (improve guess x) x)))

; cubrt
(define (cubrt x)
  (cubrt-iter 1.0 x))

(cubrt 512)