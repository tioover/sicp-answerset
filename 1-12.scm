#lang r5rs

(define (pascal level n)
  (cond ((or (= n 1) (= n level)) 1)
        (else (+ 
                (pascal (- level 1) (- n 1))
                (pascal (- level 1) n)))))
