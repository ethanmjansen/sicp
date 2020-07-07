#lang sicp
(+ 137 349) ; simple addition
(- 1000 334) ; simple subtraction
(* 5 99) ; simple multiplication
(/ 10 5) ; simple division
(+ 2.7 10) ; floating addition
(+ 21 35 12 7) ; multiple operands addition
(* 25 4 12) ; multiple operands subtraction

(+ (* 3 5) (- 10 6)) ; nested combinations
(+ (* 3 (+ (* 2 4) (+ 3 5))) (+ (- 10 7) 6)) ; complex nested combinations
(+ (* 3
      (+ (* 2 4)
         (+ 3 5)))
   (+ (- 10 7)
      6)) ; complext nested combinations pretty-printing