#lang sicp
; Conditional
(define (abs x)
  (cond ((> x 0) x)
        ((= x 0) x)
        ((< x 0) (- x))))

; Conditional Else
(define (abs-else x)
  (cond ((< x 0) (- x))
        (else x)))
        
; Conditional If
(define (abs-if x)
  (if (< x 0)
      (- x)
      x))

; AND
(define x 7)
(and (> x 5) (< x 10)) ; #t

; OR
(define (>= x y)
  (or (> x y) (= x y)))

; NOT
(define (alt>= x y)
  (not (< x y)))