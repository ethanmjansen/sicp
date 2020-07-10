#lang sicp

; First Method
;(define (+ a b)
;  (if (= a 0) b (inc (+ (dec a) b))))

; (+ 3 4)
; (= 3 0) (inc (+ 2 4)
; (= 2 0) (inc (inc (+ 1 4)
; (= 1 0) (inc (inc (inc (+ 0 4)
; (= 0 0) (inc (inc 5)
; (= 0 0) (inc 6)
; (= 0 0) 7

; This method is recursive because it calls itself before incrementing. 

; Second Method
;(define (+ a b)
;  (if (= a 0) b (+ (dec a) (inc b))))

;(+ 3 4)
; (= 3 0) (+ 2 5)
; (= 2 0) (+ 1 6)
; (= 1 0) (+ 0 6)
; (= 0 0) 7

; This method is iterative because you can jump to any point and give the
; operands for it to work. 
