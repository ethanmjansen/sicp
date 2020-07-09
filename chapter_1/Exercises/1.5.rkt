#lang sicp
(define (p) (p))
(define (test x y)
  (if (= x 0) 0 y))

(test 0 (p))

; If the interpreter uses applicative-order evaluation the procedure
; will go on forever becasue it expands infinitley. 
; If the interpreter uses normal-order evaluation the procedure
; will return 0.