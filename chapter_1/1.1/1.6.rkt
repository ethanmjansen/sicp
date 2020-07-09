#lang sicp
; Eva Lu Ator's new-if program
(define (new-if predicate then-clause else-clause)
  (cond (predicate then-clause)
        (else else-clause)))

; new-if test
(new-if (= 2 3) 0 5)

(new-if (= 1 1) 0 5)


; If Alyssa P. Hacker uses the new-if with the sqrt-iter procedure
; the stack will overflow. The special form primitive operators don't
; evalute both operands, they only do one at a time. The new-if isn't
; a special form. 