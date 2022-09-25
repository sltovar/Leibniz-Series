#lang racket
; Leibniz Series

; findSign version
(define (leibniz1 i)
  (define (findSign x)
    (if (= (modulo x 2) 0) 
      1    
      -1))
  (if (<= i 0)  
      1  
      (+ (* (findSign i) (/ 1.0 (+ 1 (* i 2)))) (leibniz1 (- i 1)))))          
(printf "Leibniz of 100 with findSign: ")
(leibniz1 100) ; Answer should evaluate to 0.7854.... or so.

; lambda version
(define (leibniz2 i)
  (if (<= i 0)  
      1  
      (+ (* ((lambda (x)
               (if (= (modulo x 2) 0)
                   1
                   -1)) i)
            (/ 1.0 (+ 1 (* i 2)))) (leibniz2 (- i 1)))))          
(printf "Leibniz of 100 with lambda: ")
(leibniz2 100)

