#lang sicp

; Recursive function
(define (f n)
  (if (< n 3)
      n
      (+ (f (- n 1))
         (* 2 (f (- n 2)))
         (* 3 (f (- n 3))))))

(f 5)

; Iterative function
(define (iterative-f n)
  (define (f-iter a b c count) 
    (cond ((< n 3) n)
          ((= count 0) a)
          (else (f-iter
                 (+ a (* 2 b) (* 3 c)) a b (- count 1)))))
    (f-iter 2 1 0 ( - n 2))) ; initialize

(iterative-f 3)
(iterative-f 40)
